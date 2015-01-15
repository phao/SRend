#include <assert.h>

#include "srend.h"

#define XOR_SWAP(a, b) \
  do { \
    (a) ^= (b); \
    (b) ^= (a); \
    (a) ^= (b); \
  } while (0)

#ifndef NDEBUG

static inline int
PointInScreen(struct Screen *s, int x, int y) {
  return x >= 0 && x < s->width && y >= 0 && y < s->height;
}

#endif

void
WritePixel(struct Screen *s, int x, int y, ColorUint color) {
  assert(PointInScreen(s, x, y));

  const size_t row_offset = y*s->pitch;
  const size_t col_offset = x*sizeof(ColorUint);
  const size_t offset = row_offset + col_offset;
  ColorUint *pixel = (ColorUint*) ((char*)s->pixels + offset);
  *pixel = color;
}

void
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

void
DrawVerticalLine(struct Screen *s,
                 int at_x, int y1, int y2,
                 ColorUint color)
{
  assert(PointInScreen(s, at_x, y1));
  assert(PointInScreen(s, at_x, y2));

  if (y1 > y2) {
    XOR_SWAP(y1, y2);
  }
  while (y1 <= y2) {
    WritePixel(s, at_x, y1, color);
    y1++;
  }
}

void
DrawVerticalLine_PointDistance(struct Screen *s,
                               int x_at, int y_at, int dist,
                               ColorUint color)
{
  assert(PointInScreen(s, x_at, y_at));
  assert(PointInScreen(s, x_at, y_at+dist));

  for (int i = 0; i < dist; i++) {
    WritePixel(s, x_at, y_at+i, color);
  }
}

void
DrawHorizontalLine(struct Screen *s,
                   int at_y, int x1, int x2,
                   ColorUint color)
{
  assert(PointInScreen(s, x1, at_y));
  assert(PointInScreen(s, x2, at_y));

  if (x1 > x2) {
    XOR_SWAP(x1, x2);
  }
  while (x1 <= x2) {
    WritePixel(s, x1, at_y, color);
    x1++;
  }
}

void
DrawHorizontalLine_PointDistance(struct Screen *s,
                                 int x_at, int y_at, int dist,
                                 ColorUint color)
{
  assert(PointInScreen(s, x_at, y_at));
  assert(PointInScreen(s, x_at+dist, y_at));

  for (int i = 0; i < dist; i++) {
    WritePixel(s, x_at+i, y_at, color);
  }
}

static inline void
Bresenham_DrawCircle_UpRight_Update(int *x, int *y, int *D) {
  /*
   * Note that we're starting at the top of the circle (0,rad) and going
   * right, which means that y will decrease as x increases.
   *
   * This is important because the decision making based on D depends on this
   * knowledge.
   */

  if (*D < 0) {
    /*
     * Pixel inside the circle is more distant from the border than
     * pixel outside the circle. Choosing pixel outside the circle, which
     * means y remains the same.
     */
    *D += 4*(*x) + 6;
  }
  else {
    /*
     * Pixel outside the circle is more distant from the border than pixel
     * inside the circle. Choosing pixel inside the circle, which means
     * y decreases.
     */
    *D += 4*(*x - *y) + 10;
    (*y)--;
  }
  (*x)++;
}

void
DrawCircle(struct Screen *s,
           int cx, int cy, int rad,
           ColorUint color)
{
  assert(PointInScreen(s, cx, cy));
  assert(rad > 0);

  int D = 3 - 2*rad;
  int x = 0;
  int y = rad;

  /*
   * Note that we're starting at the top of the circle (0,rad) and going
   * right, which means that y will decrease as x increases.
   *
   * This is important because the decision making based on D depends on this
   * knowledge.
   */

  while (y >= x) {
    WritePixel(s, cx+x, cy+y, color);
    WritePixel(s, cx+y, cy+x, color);
    WritePixel(s, cx-x, cy+y, color);
    WritePixel(s, cx-y, cy+x, color);
    WritePixel(s, cx+x, cy-y, color);
    WritePixel(s, cx+y, cy-x, color);
    WritePixel(s, cx-x, cy-y, color);
    WritePixel(s, cx-y, cy-x, color);

    Bresenham_DrawCircle_UpRight_Update(&x, &y, &D);
  }
}

void
FillCircle(struct Screen *s,
           int cx, int cy, int rad,
           ColorUint color)
{
  /*
   * Copy and paste from DrawCircle.
   */

  assert(PointInScreen(s, cx, cy));
  assert(rad > 0);

  int D = 3 - 2*rad;
  int x = 0;
  int y = rad;

  /*
   * Note that we're starting at the top of the circle (0,rad) and going
   * right, which means that y will decrease as x increases.
   *
   * This is important because the decision making based on D depends on this
   * knowledge.
   */

  while (y >= x) {
    DrawHorizontalLine(s, cy+y, cx-x, cx+x, color);
    DrawHorizontalLine(s, cy+x, cx-y, cx+y, color);
    DrawHorizontalLine(s, cy-x, cx-y, cx+y, color);
    DrawHorizontalLine(s, cy-y, cx-x, cx+x, color);

    Bresenham_DrawCircle_UpRight_Update(&x, &y, &D);
  }
}

void
FillInnerCircle(struct Screen *s,
                int cx, int cy, int rad,
                ColorUint color)
{
  /*
   * Copy and paste from FillCircle.
   */

  assert(PointInScreen(s, cx, cy));
  assert(rad > 0);

  int D = 3 - 2*rad;
  int x = 0;
  int y = rad;

  /*
   * Note that we're starting at the top of the circle (0,rad) and going
   * right, which means that y will decrease as x increases.
   *
   * This is important because the decision making based on D depends on this
   * knowledge.
   */

  while (y >= x) {
    int x_dist = 2*x-1;
    if (x_dist < 0) {
      x_dist = 0;
    }
    int y_dist = 2*y-1;
    if (y_dist < 0) {
      y_dist = 0;
    }
    DrawHorizontalLine_PointDistance(s, cx-x+1, cy+y, x_dist, color);
    DrawHorizontalLine_PointDistance(s, cx-y+1, cy+x, y_dist, color);
    DrawHorizontalLine_PointDistance(s, cx-x+1, cy-y, x_dist, color);
    DrawHorizontalLine_PointDistance(s, cx-y+1, cy-x, y_dist, color);

    Bresenham_DrawCircle_UpRight_Update(&x, &y, &D);
  };
}

void
DrawLine(struct Screen *s,
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

  assert(PointInScreen(s, x1, y1));
  assert(PointInScreen(s, x2, y2));

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
     * That means replacing "x with y and y with x". This is the specific
     * reason why flip exists. It's set as a string of 0 bits or 1 bits so
     * that I can logically AND it or its complement with a number and have
     * the effect of enabling/disabling that number.
     *
     * Another way to do it is to have flip as 0 or 1 and use multiplication
     * and addition, instead of having it as 0 or ~0 and use logical AND and
     * OR (see the WRITE_PIXEL macro below to verify how flip is used to
     * select which of x or y is the first and second parameter).
     *
     * A third way is to simply use an if.
     */

    XOR_SWAP(x1, y1);
    XOR_SWAP(x2, y2);
    XOR_SWAP(x_sign, y_sign);

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

void
DrawRectangle(struct Screen *s,
              int x, int y,
              int w, int h,
              ColorUint color)
{
  assert(PointInScreen(s, x, y));
  assert(PointInScreen(s, x+w, y+h));

  if (w >= 1) {
    // Top,Horizontal
    DrawHorizontalLine_PointDistance(s, x, y, w, color);
    if (h >= 2) {
      // Bottom,Horizontal
      DrawHorizontalLine_PointDistance(s, x, y+h-1, w, color);
      if (h >= 3) {
        // Left,Vertical
        DrawVerticalLine_PointDistance(s, x, y+1, h-2, color);
        if (w >= 2) {
          // Right,Vertical
          DrawVerticalLine_PointDistance(s, x+w-1, y+1, h-2, color);
        }
      }
    }
  }
}

void
FillRectangle(struct Screen *s,
              int x, int y,
              int w, int h,
              ColorUint color)
{
  assert(PointInScreen(s, x, y));
  assert(PointInScreen(s, x+w, y+h));

  if (w >= 1) {
    for (int i = 0; i < h; i++) {
      DrawHorizontalLine_PointDistance(s, x, y+i, w, color);
    }
  }
}

//FillInnerRectangle + DrawRectangle => FillRectangle.
void
FillInnerRectangle(struct Screen *s,
                   int x, int y,
                   int w, int h,
                   ColorUint color)
{
  assert(PointInScreen(s, x, y));
  assert(PointInScreen(s, x+w, y+h));

  if (w >= 3) {
    for (int i = 1; i < h-1; i++) {
      DrawHorizontalLine_PointDistance(s, x+1, y+i, w-2, color);
    }
  }
}

