#include <limits.h>
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

#define DEFAULT_TITLE "Draw Triangle"

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

#define SCREEN_INIT_ZERO {0, 0, 0, 0, 0}

struct VideoScreen {
  SDL_Window *win;
  SDL_Renderer *rend;
  const char * title;
  struct Screen screen;
};

#define VIDEO_SCREEN_INIT_EMPTY {0, 0, 0, SCREEN_INIT_ZERO}

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

static inline ColorUint *
RowPixels(struct Screen *s, int row) {
  return (ColorUint*) ((char*)s->pixels + s->pitch*row);
}

static inline ColorUint *
GetPixel(struct Screen *s, int row, int col) {
  return RowPixels(s, row) + col;
}

static void
ClearScreen(struct Screen *screen, ColorUint color) {
  for (int row = 0; row < screen->height; row++) {
    for (int col = 0; col < screen->width; col++) {
      *GetPixel(screen, row, col) = color;
    }
  }
}

static inline void
WritePixel(struct Screen *s, int x, int y, ColorUint color) {
  assert(x >= 0);
  assert(y >= 0);
  assert(x < s->width);
  assert(y < s->height);

  *GetPixel(s, y, x) = color;
}

struct Segment {
  int x1, y1, x2, y2;
};

static inline void
SegmentSetup(struct Segment *e, int x1, int y1, int x2, int y2) {
  if (y1 < y2) {
    e->x1 = x1;
    e->y1 = y1;
    e->x2 = x2;
    e->y2 = y2;
  }
  else {
    e->x1 = x2;
    e->y1 = y2;
    e->x2 = x1;
    e->y2 = y1;
  }
}

static inline int
SegmentHeight(const struct Segment *e) {
  assert(e->y2 >= e->y1);

  return e->y2 - e->y1;
}

static inline void
SegmentSwap(struct Segment *e1, struct Segment *e2) {
  struct Segment aux = *e1;
  *e1 = *e2;
  *e2 = aux;
}

static int
SegmentXFromY(struct Segment segment, int y) {
  /*
   * If y1 == y2, which X to return? If equal, there is no function to
   * compute (i.e. there is no x(y) = K*y + L).
   */
  assert(segment.y1 != segment.y2);

  enum {
    FRAC_BITS = 10,
    HALF = 1 << (FRAC_BITS - 1)
  };

  /*
   * Using FRAC_BITS bits for fractional part. Or maybe I should just use
   * floating point in here (idk). Anyway, this seems to be cool use of fixed
   * point.
   *
   * A downside though is that this wouldn't work for 16 bit integers. In fact,
   * it probably wouldn't work for anything smaller than ~20 bit integers. I
   * didn't do the math to find the actual number, but it surely should work on
   * 32 bit integers.
   *
   * The idea here relies in the fact that we're only drawing inside a screen
   * that is probably 'small' in the sense that we only need thousands in ints,
   * not billions or millions.
   *
   * Also, deciding the value of FRAC_BITS doesn't seem easy. For all I can
   * tell, 7-10 bits ought to be enough.
   */

  int m_inv = (segment.x2 - segment.x1) << FRAC_BITS;
  m_inv /= segment.y2 - segment.y1;
  int b_inv_m = m_inv*segment.y1 - (segment.x1 << FRAC_BITS);

  /*
   * Note that the result value is always positive. Thus even with zero or sign
   * extension, this right shift will work.
   *
   * Adding HALF is for rounding behavior.
   */

  return (y*m_inv - b_inv_m + HALF) >> FRAC_BITS;

}

static void
DrawHorizontalLine(struct Screen *s,
                   int x1, int x2, int y,
                   ColorUint color)
{
  if (x2 < x1) {
    x1 ^= x2;
    x2 ^= x1;
    x1 ^= x2;
  }

  while (x1 <= x2) {
    WritePixel(s, x1, y, color);
    x1++;
  }
}

static void
FillTrianglePart(struct Screen *s,
                 struct Segment segment_tall,
                 struct Segment segment_small,
                 ColorUint color)
{
  assert(segment_tall.y2 >= segment_tall.y1);
  assert(segment_small.y2 >= segment_small.y1);

  /*
   * To fill a triangle part having smaller and taller segments of the
   * triangle, we should go through all the height points in the smaller
   * segment filling the horizontal lines from the smaller segment to the
   * larger one.
   */

  int small_y1 = segment_small.y1;
  int small_y2 = segment_small.y2;

  if (small_y1 == small_y2) {
    int x1 = segment_small.x1;
    int x2 = segment_small.x2;
    DrawHorizontalLine(s, x1, x2, small_y1, color);
  }
  else {
    for (int i = small_y1; i <= small_y2; i++) {
      int tall_x = SegmentXFromY(segment_tall, i);
      int small_x = SegmentXFromY(segment_small, i);
      DrawHorizontalLine(s, tall_x, small_x, i, color);
    }
  }
}

static void
FillTriangle(struct Screen *s,
             int x1, int y1,
             int x2, int y2,
             int x3, int y3,
             ColorUint color)
{
  // First we need to find the tallest segment.
  struct Segment segment_tall, segment1, segment2;

  SegmentSetup(&segment_tall, x1, y1, x2, y2);
  SegmentSetup(&segment1, x2, y2, x3, y3);
  SegmentSetup(&segment2, x3, y3, x1, y1);

  int height_tall = SegmentHeight(&segment_tall);
  int height_aux = SegmentHeight(&segment1);
  if (height_tall < height_aux) {
    SegmentSwap(&segment_tall, &segment1);
    height_tall = height_aux;
  }

  height_aux = SegmentHeight(&segment2);
  if (height_tall < height_aux) {
    SegmentSwap(&segment_tall, &segment2);
    height_tall = height_aux;
  }

  /*
   * Now that we have the tallest segment, we should draw the two regions of
   * the triangle. One involving the smaller segment, and the other involving
   * the other smaller segment.
   */

  FillTrianglePart(s, segment_tall, segment1, color);
  FillTrianglePart(s, segment_tall, segment2, color);
}

static void
Draw(struct Screen *s) {
  const ColorUint black = MAP_COLOR_RGB(0, 0, 0);

  FillTriangle(s, 10, 10, 11, 470, 630, 470, black);
}

static int
DrawLoop(struct VideoScreen *vid) {
  SDL_Event e;
  struct Screen *s = &vid->screen;

  ColorUint bg_color = MAP_COLOR_RGB(BG_COLOR.r, BG_COLOR.g, BG_COLOR.b);

  for (;;) {
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

  struct VideoScreen video = VIDEO_SCREEN_INIT_EMPTY;

  jPErrLt0(Init(&video, DEFAULT_TITLE, DEFAULT_WIDTH, DEFAULT_HEIGHT), err);
  jPErrLt0(DrawLoop(&video), err);
  Cleanup(&video);
  return 0;

err:
  ReportError();
  Cleanup(&video);
  return 1;
}
