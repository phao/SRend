#include <assert.h>

#include <SDL2/SDL.h>

#include "XError.h"

#define UNUSED_PARAM(p) (void) p

enum {
  DEFAULT_WIDTH = 640,
  DEFAULT_HEIGHT = 480
};

#define DEFAULT_TITLE "Draw Point"

static const SDL_Color BG_COLOR = {255, 255, 255, 255};
static const SDL_Color POINT_COLOR = {0, 0, 255, 255};

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

static inline Uint32*
GetPixelAt(struct Screen *screen, int x, int y) {
  Uint32 *pixel = (Uint32*) (
    ((char*)screen->pixels + y*screen->pitch) + x*sizeof (Uint32)
  );
  return pixel;
}

static void
Draw(struct Screen *s) {
  int n_pixels = 20;
  int side_size = (n_pixels-1)/2;

  Uint32 *pixel = GetPixelAt(s, s->width/2 - side_size,
    s->height/2);

  for (int i = 0; i < n_pixels; i++, pixel++) {
    *pixel = SDL_MapRGB(s->pixel_fmt, POINT_COLOR.r, POINT_COLOR.g,
      POINT_COLOR.b);
  }
}

static int
DrawLoop(struct VideoScreen *vid) {
  SDL_Event e;
  struct Screen *s = &vid->screen;

  for (;;) {
    while (SDL_PollEvent(&e)) {
      if (e.type == SDL_QUIT) {
        return 0;
      }
    }
    ErrLt0(SDL_LockTexture(s->texture, 0, &s->pixels, &s->pitch),
      SDL_GetError());
    ClearScreen(s, BG_COLOR);
    Draw(s);
    SDL_UnlockTexture(s->texture);
    ErrLt0(SDL_RenderCopy(vid->rend, s->texture, 0, 0), SDL_GetError());
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
