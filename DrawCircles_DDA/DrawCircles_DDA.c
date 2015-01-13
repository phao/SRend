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

#define DEFAULT_TITLE "Draw Circles"

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
DrawCircle_DDA(struct Screen *s,
               int cx, int cy, int rad,
               ColorUint color)
{
  assert(x >= 0);
  assert(y >= 0);
  assert(x < s->width);
  assert(y < s->height);
  assert(rad > 0);

  float y = rad;
  int x = 0;
  while (y > x) {
    /*
     * Forgetting to round x and y before plotting computing the plotting
     * values cost me something like half an hour. And if I hadn't looked up
     * the book's source code, I probably wouldn't have guessed I should have
     * done that.
     *
     * It makes complete sense to round since you want the int-coordinated
     * point **closest** to the float-coordinated point.
     */
    int round_y = y + 0.5f;

    WritePixel(s, cx+x, cy+round_y, color);
    WritePixel(s, cx+round_y, cy+x, color);
    WritePixel(s, cx-x, cy+round_y, color);
    WritePixel(s, cx-round_y, cy+x, color);
    WritePixel(s, cx+x, cy-round_y, color);
    WritePixel(s, cx+round_y, cy-x, color);
    WritePixel(s, cx-x, cy-round_y, color);
    WritePixel(s, cx-round_y, cy-x, color);

    /*
     * The book (Computer Graphics via Java) talks about picking a value
     * E such that E*y is about 1. Then, x would be incremented by E*y and
     * y would be incremented by -E*(previous_x). However:
     *
     * - If E*y is about 1 and x's increment per iteration is 1, then
     * - E is about 1/y; and
     * - y's increment (-E*previous_X) is about -(previous_x)/y.
     *
     * Finding E doesn't seem necessary. I'll probably be studying the Digital
     * Differential Analysis algorithm for drawing circles again in the future,
     * so I won't spend much time in here much more.
     *
     * Another thing about the book's E value is that it's supposed to be the
     * inverse of the smallest power of 2 strictly larger than the given
     * radius. Visually speaking, picking 1/rad seems just as good.
     */

    y -= x/y;
    x++;
  }
}

static void
Draw(struct Screen *s) {
  for (int i = 0; i < 10; i++) {
    DrawCircle_DDA(s, 200+i*10, 200, 10, MAP_COLOR_RGB(0, 0, 0));
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
