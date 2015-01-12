#include <math.h>
#include <stdio.h>
#include <assert.h>

#include <SDL2/SDL.h>

#include "../XError.h"

#ifndef M_PI
#define M_PI 3.141592f
#endif

#define UNUSED_PARAM(p) (void) p

enum {
  DEFAULT_WIDTH = 640,
  DEFAULT_HEIGHT = 480
};

#define DEFAULT_TITLE "Draw Point"

static const SDL_Color BG_COLOR = {255, 255, 255, 255};
static const SDL_Color LINE_COLOR = {0, 127, 31, 255};

enum {
  DEFAULT_PIXEL_FORMAT = SDL_PIXELFORMAT_RGB888
};

struct Screen {
  SDL_Texture *texture;
  int width, height, pitch;
  void *pixels;
  SDL_PixelFormat *pixel_fmt;
};

#define EMPTY_SCREEN_INIT {0, 0, 0, 0, 0, 0}

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
    SDL_WINDOWPOS_UNDEFINED, width, height, SDL_WINDOW_SHOWN);
  ErrIf0(win, -1, SDL_GetError());
  vid_out->win = win;

  SDL_Renderer *rend = SDL_CreateRenderer(win, -1,
    SDL_RENDERER_PRESENTVSYNC | SDL_RENDERER_ACCELERATED);
  ErrIf0(rend, -1, SDL_GetError());
  vid_out->rend = rend;

  vid_out->title = title;

  SDL_Texture *tex = SDL_CreateTexture(rend, DEFAULT_PIXEL_FORMAT,
    SDL_TEXTUREACCESS_STREAMING, width, height);
  ErrIf0(tex, -1, SDL_GetError());
  vid_out->screen.texture = tex;

  SDL_PixelFormat *pixel_fmt = SDL_AllocFormat(DEFAULT_PIXEL_FORMAT);
  ErrIf0(pixel_fmt, -1, SDL_GetError());
  vid_out->screen.pixel_fmt = pixel_fmt;

  vid_out->screen.width = width;
  vid_out->screen.height = height;

  return 0;
}

static void
Cleanup(struct VideoScreen *vid) {
  if (vid->screen.pixel_fmt) {
    SDL_FreeFormat(vid->screen.pixel_fmt);
  }
  if (vid->screen.texture) {
    SDL_DestroyTexture(vid->screen.texture);
  }
  if (vid->rend) {
    SDL_DestroyRenderer(vid->rend);
  }
  if (vid->win) {
    SDL_DestroyWindow(vid->win);
  }
  SDL_Quit();
}

static void
ClearScreen(struct Screen *screen, SDL_Color color) {
  SDL_PixelFormat *pixel_fmt = screen->pixel_fmt;
  for (int row = 0; row < screen->height; row++) {
    Uint32 *pixels = (Uint32*) (
      (char*)screen->pixels + screen->pitch*row
    );
    for (int col = 0; col < screen->width; col++) {
      *pixels = SDL_MapRGB(pixel_fmt, color.r, color.g, color.b);
      pixels++;
    }
  }
}

static inline void
DrawPoint(struct Screen *s, int x, int y, SDL_Color color) {
  assert(x >= 0);
  assert(y >= 0);
  assert(x < s->width);
  assert(y < s->height);
  Uint32 *pixel = (Uint32*) (
    ((char*)s->pixels + y*s->pitch) + x*sizeof (Uint32)
  );
  *pixel = SDL_MapRGB(s->pixel_fmt, color.r, color.g, color.b);
}

static void
DrawLine_Bresenham(struct Screen *s,
                   int x1, int y1, int x2, int y2,
                   SDL_Color color)
{
  /*
   * I wanted to keep the drawing loop a single piece of code, instead of
   * having several ones for the different cases of this algorithm. This is the
   * reason why flip, x_sign and y_sign exist. It's also the reason the
   * DRAW macro was defined below: the statement which would issue a print
   * pixel command got so complicated (because it had to take flip and the
   * signs into account) that it was making the code extremely unpleasant. The
   * macro dealt with that.
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
     * OR (see the DRAW macro below to verify how flip is used to select
     * which of x or y is the first and second parameter).
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

  // 0 <= m < 1
  assert(dx >= 0);
  assert(dy >= 0);
  assert(dy <= dx);

#if 0
  /*
   * This macro (DRAW) acts like a local function which makes the drawing
   * taking into consideration arguments flips and sign flips.
   *
   * It basically calls DrawPoint(s, x1, y1, x2, y2, color) when flip is 0, or
   * DrawPoint(s, y1, x1, y2, x2, color) for when flip is ~0. However, it
   * also makes sure that the original sign is taken into account.
   *
   * As of now, this implementation of DRAW is in here for educational
   * purposes only. In practice, the alternative one using an `if` seems runs
   * a bit faster.
   */
  #define DRAW(x, y) \
    do { \
      int aux__x = (x)*x_sign; \
      int aux__y = (y)*y_sign; \
      DrawPoint(s, (aux__x & ~flip) | (aux__y & flip), \
                   (aux__y & ~flip) | (aux__x & flip), color); \
    } while (0)
#else
  /*
   * The idea is that this one is a simplification of the above. Instead of
   * relying on bitwise operators, it just does an if.
   */
  #define DRAW(x, y) \
    do { \
      if (flip == 0) DrawPoint(s, (x)*x_sign, (y)*y_sign, color); \
      else DrawPoint(s, (y)*y_sign, (x)*x_sign, color); \
    } while (0)
#endif

  /*
   * The algorithm then can run just as usual. From its point of view, this
   * line has its slope positive and less than 1.
   */
  int D = 2*dy - dx;
  int x = x1;
  int y_prev = y1;
  DRAW(x, y_prev);
  for (x = x1 + 1; x <= x2; x++) {
    int y = D > 0 ? y_prev + 1 : y_prev;
    DRAW(x, y);
    D += 2*dy - 2*dx*(y - y_prev);
    y_prev = y;
  }

  #undef DRAW
}

static void
Draw(struct Screen *s) {
  enum {
    /*
     * With this amount of lines, I was achieving about 60 fps according to
     * the simple count made in the DrawLoop function.
     *
     * This means that the program was drawing 368640 lines per second, which
     * is a HUGE number! That was on my intel chip.
     */
    N_LINES = (512 << 3) + (512 << 2)
  };

  const float ANGLE_DIFF = (M_PI*2.0f)/(float)N_LINES;
  const float ANGLE_LIMIT = 2.0f*M_PI;

  const int x1 = s->width/2;
  const int y1 = s->height/2;

  const float RAD = (x1 < y1 ? x1 : y1)/1.1f;

  SDL_Color c = LINE_COLOR;
  c.b = c.g = 0;

  for (float angle = 0; angle < ANGLE_LIMIT; angle += ANGLE_DIFF) {
    int x2 = x1 + cosf(angle)*RAD;
    int y2 = y1 + sinf(angle)*RAD;
    c.g = 255 * angle/ANGLE_LIMIT;
    DrawLine_Bresenham(s, x1, y1, x2, y2, c);
  }
}

static int
DrawLoop(struct VideoScreen *vid) {
  SDL_Event e;
  struct Screen *s = &vid->screen;
  long frames = 0;

  Uint32 beginning = SDL_GetTicks();
  for (;;) {
    while (SDL_PollEvent(&e)) {
      if (e.type == SDL_QUIT) {
        double d_frames = frames;
        double t = SDL_GetTicks();
        t -= beginning;
        t /= 1000;
        fprintf(stderr, "%f\n", d_frames/t);
        return 0;
      }
    }
    ErrLt0(SDL_LockTexture(s->texture, 0, &s->pixels, &s->pitch),
      SDL_GetError());
    ClearScreen(s, BG_COLOR);
    Draw(s);
    SDL_UnlockTexture(s->texture);
    ErrLt0(SDL_RenderCopy(vid->rend, s->texture, 0, 0), SDL_GetError());
    frames++;
    SDL_RenderPresent(vid->rend);
  }

  // Basically, this should never happen.
  return -1;
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
  Cleanup(&video);
  return 1;
}
