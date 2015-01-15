#include <math.h>
#include <stdio.h>
#include <assert.h>

#include <SDL2/SDL.h>

#include "../XError.h"
#include "../XFlow.h"
#include "srend.h"

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


struct VideoScreen {
  SDL_Window *win;
  SDL_Renderer *rend;
  const char *title;
  SDL_Texture *screen_texture;
  struct Screen screen;
};

#define EMPTY_VIDEO_SCREEN_INIT {0, 0, 0, 0, EMPTY_SCREEN_INIT}

static int
Init(struct VideoScreen *vid_out,
     const char *title,
     int width, int height)
{
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
  vid_out->screen_texture = tex;

  vid_out->screen.width = width;
  vid_out->screen.height = height;

  return 0;
}

static void
Cleanup(struct VideoScreen *vid) {
  DoIf(vid->screen_texture, SDL_DestroyTexture(vid->screen_texture));
  DoIf(vid->rend, SDL_DestroyRenderer(vid->rend));
  DoIf(vid->win, SDL_DestroyWindow(vid->win));
  SDL_Quit();
}

static void
Draw(struct Screen *s) {
  UNUSED_PARAM(s);

  ColorUint black = MapColorRGB(0, 0, 0);
  ColorUint red = MapColorRGB(255, 0, 0);

  DrawLine(s, 0, 0, 10, 10, black);
  DrawCircle(s, 5, 5, 5, black);

  FillCircle(s, 100, 100, 15, black);
  DrawCircle(s, 150, 100, 15, red);
  FillInnerCircle(s, 150, 100, 15, black);

  FillInnerCircle(s, 150, 200, 15, black);
  DrawCircle(s, 150, 200, 15, red);

  DrawRectangle(s, 300, 300, 40, 40, red);
  FillInnerRectangle(s, 300, 300, 40, 40, black);

  FillInnerRectangle(s, 100, 300, 40, 40, black);
  DrawRectangle(s, 100, 300, 40, 40, red);
}

static int
DrawLoop(struct VideoScreen *vid) {
  SDL_Event e;
  struct Screen *s = &vid->screen;
  long frames = 0;

  ColorUint bg_color = MapColorRGB(BG_COLOR.r, BG_COLOR.g, BG_COLOR.b);

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
    ErrLt0(SDL_LockTexture(vid->screen_texture, 0, &s->pixels, &s->pitch),
           SDL_GetError());
    ClearScreen(s, bg_color);
    Draw(s);
    SDL_UnlockTexture(vid->screen_texture);
    ErrLt0(SDL_RenderCopy(vid->rend, vid->screen_texture, 0, 0),
           SDL_GetError());
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
