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

#define DEFAULT_TITLE "Splines 2D"

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

struct Int2 {
  int x, y;
};

static inline int
Factorial(int n) {
  assert(n >= 0);

  int fact = 1;
  while (n > 0) {
    fact *= n;
    n--;
  }
  return fact;
}

static void
DrawBezier2D(struct Screen *s,
             const struct Int2 *points,
             int n_points,
             ColorUint color)
{
  assert(n_points >= 4);

  const int num_intervals = 50;
  const float interval_length = 1.0f/num_intervals;

  /*
   * 'n' is the number of segments, which is 1 less than how many points we
   * have.
   */

  const int n = n_points-1;
  const int n_fact = Factorial(n);

  float x1 = points[0].x;
  float y1 = points[0].y;

  for (int inter = 1; inter <= num_intervals; inter++) {
    const float t = inter*interval_length;

    /*
     * The way t_compl, t_compl_inverse_ish and t_compl_power got handled
     * was pretty bad.
     *
     * - t_compl_inverse_ish: We need to guard against division by zero in
     * setting it up when t is 1.
     *
     * - t_compl_power: When t is 1 and i is n, we need to make sure that this
     * is 1 (because t_compl^(n-i) is 0^0, which is 1). This led to an
     * application to the ternary operator (in the end of the for-loop below)
     * that I disliked.
     *
     * - t_compl_power: To initially set this up before the for-loop, we need
     * to call powf. Can we avoid that?
     */

    const float t_compl = 1-t;
    const float t_compl_inverse_ish = t_compl > 0.0f ? 1.0f/t_compl : 0.0f;

    float x2 = 0.0f;
    float y2 = 0.0f;

    float i_fact = 1.0f;
    float n_sub_i_fact = n_fact;
    float t_power = 1.0f;
    float t_compl_power = powf(t_compl, n);
    float back_n = n;

    int i = 0;
    for (;;) {
      assert(i_fact >= 0.0f);
      assert(n_sub_i_fact >= 0.0f);
      assert(t_power >= 0.0f);
      assert(t_compl_power >= 0.0f);

      const float bezier_pol = n_fact/(i_fact * n_sub_i_fact) *
                               t_power *
                               t_compl_power;

      /*
       * Throughout this for-loop, at this point, we'd like to maintain that
       * bezier_pol equals to n!/(i! * (n-i)!) * t^i * (1-t)^(n-i).
       *
       * To avoiding performing several of the expensive calculations in that
       * expression, we compute the initial value for several pieces in it
       * before this loop starts, and then we update those pieces right before
       * the end of each iteration so that when this above declaration gets
       * done again in the later iteration, it'll contain the right values for
       * the newer value of i.
       */

      x2 += points[i].x*bezier_pol;
      y2 += points[i].y*bezier_pol;

      i++;
      if (i >= n_points) {
        break;
      }

      assert(back_n != 0);

      i_fact *= i;
      n_sub_i_fact /= back_n;
      t_power *= t;

      /*
       * Notice that if back_n goes to 0, in the next iteration i will be equal
       * to n_points and iteration will end. No risk of dividing by 0 then.
       */
      back_n -= 1.0f;

      /*
       * If i equals n, we have a 0 exponent, which means that the result must
       * be one. Achieving this effect of placing 1 into t_compl_power
       * without this ternary operator is beyond by skills right now. Maybe I
       * will take a look at this later.
       */
      t_compl_power = i == n ? 1.0f : t_compl_power*t_compl_inverse_ish;
    }

    DrawLine_Bresenham(s, x1, y1, x2, y2, color);
    x1 = x2;
    y1 = y2;
  }
}

static void
Draw(struct Screen *s) {
  const ColorUint black = MAP_COLOR_RGB(0, 0, 0);
  const ColorUint red = MAP_COLOR_RGB(255, 0, 0);

  const struct Int2
  points[] = {{40, 40}, {50, 300}, {240, 30}, {450, 160}};

  enum {
    NUM_POINTS = sizeof points / sizeof *points
  };

  DrawBezier2D(s, points, NUM_POINTS, black);

  for (int i = 0; i < NUM_POINTS; i++) {
    for (int j = -2; j <= 2; j++) {
      for (int k = -2; k <= 2; k++) {
        if (abs(k) == 2 && abs(j) == 2) {
          continue;
        }
        WritePixel(s, points[i].x + j, points[i].y + k, red);
      }
    }
  }
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
