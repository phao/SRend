#include <math.h>
#include <stdio.h>
#include <assert.h>

#include <SDL2/SDL.h>

#include "../XError.h"
#include "../XFlow.h"

#ifndef M_PI
#define M_PI 3.141592f
#endif

#define UNUSED_PARAM(p) ((void) (p))

enum {
  DEFAULT_WIDTH = 640,
  DEFAULT_HEIGHT = 480
};

#define DEFAULT_TITLE "Draw Point"

static const SDL_Color BG_COLOR = {255, 255, 255, 255};

/*
 * The constant PIXEL_FORMAT and the typedef ColorUint are tightly related. So
 * are the color manipulation macro/function like MAP_COLOR_RGB. They should
 * be manipulated together and dealt with together.
 */

enum {
  PIXEL_FORMAT = SDL_PIXELFORMAT_RGB888
};

typedef Uint32 ColorUint;

/**
 * The values r, g, b must be in between 0 and 255 inclusive.
 */
#define MAP_COLOR_RGB(r, g, b) \
  ((~(Uint32)0 >> 8) & (((r) << 16) | ((g) << 8) | (b)))

#define COLOR_RED(c) (((c) >> 16) & 0xff)

#define COLOR_GREEN(c) (((c) >> 8) & 0xff)

#define COLOR_BLUE(c) ((c) & 0xff)

struct Screen {
  SDL_Texture *texture;
  int width, height, pitch;
  void *pixels;
};

#define EMPTY_SCREEN_INIT {0, 0, 0, 0, 0,}

struct VideoScreen {
  SDL_Window *win;
  SDL_Renderer *rend;
  const char *title;
  struct Screen screen;
};

#define EMPTY_VIDEO_SCREEN_INIT {0, 0, 0, EMPTY_SCREEN_INIT}

static int
Init(struct VideoScreen *vid_out, const char *title, int width, int height) {
  ErrLt0(SDL_Init(SDL_INIT_VIDEO), SDL_GetError());

  SDL_Window *win = SDL_CreateWindow(title, SDL_WINDOWPOS_UNDEFINED,
                                     SDL_WINDOWPOS_UNDEFINED, width, height,
                                     SDL_WINDOW_SHOWN);
  ErrIf0(win, -1, SDL_GetError());
  vid_out->win = win;
  vid_out->title = title;

  SDL_Renderer *rend = SDL_CreateRenderer(win, -1,
                                          SDL_RENDERER_ACCELERATED
                                          | SDL_RENDERER_PRESENTVSYNC);
  ErrIf0(rend, -1, SDL_GetError());
  vid_out->rend = rend;

  SDL_Texture *tex = SDL_CreateTexture(rend, PIXEL_FORMAT,
                                       SDL_TEXTUREACCESS_STREAMING,
                                       width, height);
  ErrIf0(tex, -1, SDL_GetError());
  vid_out->screen.texture = tex;

  vid_out->screen.width = width;
  vid_out->screen.height = height;

  return 0;
}

static void
Cleanup(struct VideoScreen *vid) {
  DoIf(vid->screen.texture, SDL_DestroyTexture(vid->screen.texture));
  DoIf(vid->rend, SDL_DestroyRenderer(vid->rend));
  DoIf(vid->win, SDL_DestroyWindow(vid->win));
  SDL_Quit();
}

static void
ClearScreen(struct Screen *screen, ColorUint color) {
  for (int row = 0; row < screen->height; row++) {
    ColorUint *pixels = (ColorUint*) (
      (char*)screen->pixels + screen->pitch*row
    );
    for (int col = 0; col < screen->width; col++) {
      *pixels = color;
      pixels++;
    }
  }
}

static inline void
WritePixel(struct Screen *s, int x, int y, ColorUint color) {
  assert(x >= 0);
  assert(y >= 0);
  assert(x < s->width);
  assert(y < s->height);

  const size_t row_offset = y*s->pitch;
  const size_t col_offset = x*sizeof(ColorUint);
  const size_t offset = row_offset + col_offset;
  ColorUint *pixel = (ColorUint*) ((char*)s->pixels + offset);
  *pixel = color;
}

static void
DrawLine_Bresenham(struct Screen *s,
                   int x1, int y1, int x2, int y2,
                   ColorUint color)
{
  /*
   * I wanted to keep the drawing loop a single piece of code, instead of
   * having several ones for the different cases of this algorithm. This is
   * the reason why flip, x_sign and y_sign exist. It's also the reason the
   * WRITE_PIXEL macro was defined below: the statement which would issue a
   * print pixel command got so complicated (because it had to take flip and
   * the signs into account) that it was making the code extremely unpleasant.
   * The macro dealt with that.
   *
   * I don't claim that this is a good implementation of the Bresenham
   * algorithm. This is only my first attempt. I imagine I'll be implementing
   * other line drawing algorithms, including different versions of this one,
   * as time goes by.
   *
   * The overall idea here is to analyze delta-x and delta-y to know how to
   * transform x1,y1 and x2,y2, and also how to set up flip,x_sign and y_sign
   * so that the loop in the end can work regardless of where things are.
   */

  assert(x1 >= 0);
  assert(y1 >= 0);
  assert(x1 < s->width);
  assert(y1 < s->height);

  assert(x2 >= 0);
  assert(y2 >= 0);
  assert(x2 < s->width);
  assert(y2 < s->height);

  int dx = x2-x1;
  int dy = y2-y1;

  int x_sign = 1;
  int y_sign = 1;
  int flip = 0;

  if (dx < 0) {
    /*
     * Going backwards. Flip the sign so the loop can works as usual, but
     * remember to flip the sign before plotting x.
     */
    x_sign = -1;
    x1 *= -1;
    x2 *= -1;
  }
  if (dy < 0) {
    /*
     * Going downwards (i.e. y is decreasing going from y1 to y2). Flip the
     * sign so the loop can works as usual, but remember to flip the sign
     * before plotting y.
     */
    y_sign = -1;
    y1 *= -1;
    y2 *= -1;
  }

  dx = x2-x1;
  dy = y2-y1;
  if (dy >= dx) {
    /*
     * We are now in the second octant. We should flip around the line y=x.
     * That means replacing x with y and y with x. This is the specific reason
     * why flip exists. It's set as a string of 0 bits or 1 bits so that I can
     * logically AND it or its complement with a number and have the effect of
     * enabling/disabling that number.
     *
     * Another way to do it is to have flip as 0 or 1 and use multiplication
     * and addition, instead of having it as 0 or ~0 and use logical AND and
     * OR (see the WRITE_PIXEL macro below to verify how flip is used to
     * select which of x or y is the first and second parameter).
     *
     * A third way is to simply use an if.
     */

    x1 = x1^y1;
    y1 = x1^y1;
    x1 = x1^y1;

    x2 = x2^y2;
    y2 = x2^y2;
    x2 = x2^y2;

    x_sign = x_sign^y_sign;
    y_sign = x_sign^y_sign;
    x_sign = x_sign^y_sign;

    flip = ~0;

    dx = x2-x1;
    dy = y2-y1;
  }

  // 0 <= m <= 1
  assert(dx >= 0);
  assert(dy >= 0);
  assert(dy <= dx);

#if 0
  /*
   * This macro (WRITE_PIXEL) acts like a local function which makes the
   * drawing taking into consideration arguments flips and sign flips.
   *
   * It basically calls WritePixel(s, x1, y1, x2, y2, color) when flip is 0,
   * or WritePixel(s, y1, x1, y2, x2, color) for when flip is ~0. However, it
   * also makes sure that the original sign is taken into account.
   *
   * As of now, this implementation of WRITE_PIXEL is in here for educational
   * purposes only. In practice, the alternative one using an `if` seems runs
   * a bit faster (~5% from what I've measured).
   */
# define WRITE_PIXEL(x, y) \
    do { \
      int aux__x = (x)*x_sign; \
      int aux__y = (y)*y_sign; \
      WritePixel(s, (aux__x & ~flip) | (aux__y & flip), \
                    (aux__y & ~flip) | (aux__x & flip), color); \
    } while (0)
#else
  /*
   * The idea is that this one is a simplification of the above. Instead of
   * relying on bitwise operators, it just does an `if`.
   */
# define WRITE_PIXEL(x, y) \
    do { \
      if (flip == 0) WritePixel(s, (x)*x_sign, (y)*y_sign, color); \
      else WritePixel(s, (y)*y_sign, (x)*x_sign, color); \
    } while (0)
#endif

  /*
   * The algorithm then can run just as usual. From its point of view, this
   * line has its slope positive and less than 1.
   */
  int discriminant = 2*dy - dx;
  int x = x1;
  int y_prev = y1;
  WRITE_PIXEL(x, y_prev);
  for (x = x1 + 1; x <= x2; x++) {
    int y = discriminant > 0 ? y_prev + 1 : y_prev;
    WRITE_PIXEL(x, y);
    discriminant += 2*dy - 2*dx*(y - y_prev);
    y_prev = y;
  }

  #undef WRITE_PIXEL
}

static void
Draw(struct Screen *s) {
  enum {
    /*
     * With this amount of lines, I was achieving about 60 fps according to
     * the simple count made in the DrawLoop function.
     */
    N_LINES = 512*64
  };

  static
  struct Line {
    int x1, y1, x2, y2;
    ColorUint color;
  }
  lines[N_LINES];

  static int filled;

  const float ANGLE_DIFF = (M_PI*2.0f)/(float)N_LINES;
  const float ANGLE_LIMIT = 2.0f*M_PI;

  const int x1 = s->width/2;
  const int y1 = s->height/2;

  const float RAD = (x1 < y1 ? x1 : y1)/1.1f;

  if (!filled) {
    fprintf(stderr, "Size of lines buffer: %zu bytes.\n", sizeof lines);
    int i = 0;
    for (float angle = 0; angle < ANGLE_LIMIT; angle += ANGLE_DIFF) {
      int x2 = x1 + cosf(angle)*RAD;
      int y2 = y1 + sinf(angle)*RAD;
      int green = 255 * angle/ANGLE_LIMIT;
      ColorUint color = MAP_COLOR_RGB(0, green, 0);
      lines[i] = (struct Line) {x1, y1, x2, y2, color};
      i++;
    }
    filled = 1;
  }

  for (int i = 0; i < N_LINES; i++) {
    DrawLine_Bresenham(s, lines[i].x1, lines[i].y1,
                          lines[i].x2, lines[i].y2, lines[i].color);
  }
}

static int
DrawLoop(struct VideoScreen *vid) {
  SDL_Event e;
  struct Screen *s = &vid->screen;
  long frames = 0;

  ColorUint bg_color = MAP_COLOR_RGB(BG_COLOR.r, BG_COLOR.g, BG_COLOR.b);

  Uint64 beginning = SDL_GetPerformanceCounter();
  for (;;) {
    double t = (SDL_GetPerformanceCounter() - beginning);
    t /= SDL_GetPerformanceFrequency();
    if (t >= 2) {
      printf("%f\n", frames/t);
      frames = 0;
      beginning = SDL_GetPerformanceCounter();
    }
    while (SDL_PollEvent(&e)) {
      if (e.type == SDL_QUIT) {
        return 0;
      }
    }
    ErrLt0(SDL_LockTexture(s->texture, 0, &s->pixels, &s->pitch),
      SDL_GetError());
    ClearScreen(s, bg_color);
    Draw(s);
    SDL_UnlockTexture(s->texture);
    ErrLt0(SDL_RenderCopy(vid->rend, s->texture, 0, 0), SDL_GetError());
    SDL_RenderPresent(vid->rend);
    frames++;
  }

  // This should never happen.
  return -1;
}

static inline const char *
FmtMessage(const char *msg, const char *alt) {
  return msg ? (*msg ? msg : alt) : alt;
}

static void
ReportError(void) {
  struct XERR_ErrorSequence err_seq = XERR_CopyErrors();
  if (!err_seq.errors) {
    fputs("Couldn't get error information.\n", stderr);
  }
  const char *fmt = "\t%s: L%d: %s: %s\n"
    "\t\t%s\n";
  fputs("Error! Aborting program.\n"
         "Bread Crumbs:\n"
         "=============\n", stderr);
  for (size_t i = 0; i < err_seq.count; i++) {
    struct XERR_Error *err = err_seq.errors + i;
    fprintf(stderr, fmt,
      FmtMessage(err->file.data, "(missing file name)"),
      err->line,
      FmtMessage(err->func.data, "(missing function name)"),
      FmtMessage(err->msg.data, "(missing message)"),
      FmtMessage(err->code.data, "(missing code)"));
  }
  XERR_FreeErrors(err_seq);
  XERR_ClearInternalSequence();
}

int
main(int argc, char *argv[]) {
  UNUSED_PARAM(argc);
  UNUSED_PARAM(argv);

  struct VideoScreen video = EMPTY_VIDEO_SCREEN_INIT;

  jPErrLt0(Init(&video, DEFAULT_TITLE, DEFAULT_WIDTH, DEFAULT_HEIGHT), err);
  jPErrLt0(DrawLoop(&video), err);
  Cleanup(&video);
  return 0;

err:
  ReportError();
  Cleanup(&video);
  return 1;
}
