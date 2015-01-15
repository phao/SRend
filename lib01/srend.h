#ifndef S_REND_H
#define S_REND_H

#include <SDL2/SDL.h>

struct Screen {
  int width, height;
  int pitch;
  void *pixels;
};

#define EMPTY_SCREEN_INIT {0, 0, 0, 0}

/*
 * The constant PIXEL_FORMAT and the typedef ColorUint are tightly related. So
 * are the color manipulation macro/function like MapColorRGB. They should
 * be coded, handled, modified, and so forth, together.
 */

enum {
  PIXEL_FORMAT = SDL_PIXELFORMAT_RGB888
};

typedef Uint32 ColorUint;

static inline ColorUint
MapColorRGB(Uint8 r, Uint8 g, Uint8 b) {
  return (r << 16) | (g << 8) | b;
}

static inline Uint8
RedOfColor(ColorUint color) {
  return (color >> 16) & 0xffu;
}

static inline Uint8
GreenOfColor(ColorUint color) {
  return (color >> 8) & 0xffu;
}

static inline Uint8
BlueOfColor(ColorUint color) {
  return color & 0xffu;
}

void
WritePixel(struct Screen *s, int x, int y, ColorUint color);

void
ClearScreen(struct Screen *screen, ColorUint color);

/**
 * Draws a circle.
 */
void
DrawCircle(struct Screen *s,
           int cx, int cy, int rad,
           ColorUint color);

/**
 * Fills a circle, including its border.
 */
void
FillCircle(struct Screen *s,
           int cx, int cy, int rad,
           ColorUint color);

/**
 * Fills the inner of a circle.
 *
 * FillInnerCircle = FillCircle - DrawCircle.
 */
void
FillInnerCircle(struct Screen *s,
                int cx, int cy, int rad,
                ColorUint color);

void
DrawLine(struct Screen *s,
         int x1, int y1, int x2, int y2,
         ColorUint color);

void
DrawVerticalLine(struct Screen *s,
                 int at_x, int y1, int y2,
                 ColorUint color);

void
DrawHorizontalLine(struct Screen *s,
                   int at_y, int x1, int x2,
                   ColorUint color);

void
DrawVerticalLine_PointDistance(struct Screen *s,
                               int y_at, int x_at, int dist,
                               ColorUint color);
void
DrawHorizontalLine_PointDistance(struct Screen *s,
                                 int y_at, int x_at, int dist,
                                 ColorUint color);

/**
 * Draws the border of a rectangle of a (w x h) rectangular area whose
 * top/left point is (x,y).
 */
void
DrawRectangle(struct Screen *s,
              int x, int y,
              int w, int h,
              ColorUint color);

/**
 * Fills a (w x h) rectangular area whose top/left point is (x,y).
 */
void
FillRectangle(struct Screen *s,
              int x, int y,
              int w, int h,
              ColorUint color);

/**
 * FillInnerRectangle + DrawRectangle = FillRectangle.
 *
 * So this function puts in what is inside the border that DrawRectangle
 * draws.
 */
void
FillInnerRectangle(struct Screen *s,
                   int x, int y,
                   int w, int h,
                   ColorUint color);

#endif
