#include <math.h>
#include <stdio.h>
#include <assert.h>

#include <SDL2/SDL.h>

#include "../XError.h"
#include "../XFlow.h"
#include "srend.h"
#include "srmath.h"

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
Draw(struct Screen *s, Uint32 ms_since_start) {
  UNUSED_PARAM(s);

  float angle = (ms_since_start/10 % 360)/180.0f * M_PI;
  angle = M_PI/2.0f * (0.5f + sinf(angle)/2.0f);
  float cos_angle = cosf(angle);
  float sin_angle = sinf(angle);

  SRM_FloatM3 mat;
  SRM_PutIdentityMatrix_f3(&mat);
  SRM_ApplyTranslationMatrix_hf2(&mat, (0.5f + sinf(angle)/2.0f)*100 ,
                                 (0.5f + sinf(angle)/2.0f)*100);
  SRM_ApplyRotationMatrix_hf2(&mat, cos_angle, sin_angle);

  SRM_Float3 points[2] = {SRM_InitHomo2(90, 0), SRM_InitHomo2(100, 0)};

  SRM_MatrixVectorMultiply_f3(points, &mat, points, 2);

  ColorUint black = MapColorRGB(0, 0, 0);

  DrawLine(s, SRM_x(points[0]), SRM_y(points[0]),
              SRM_x(points[1]), SRM_y(points[1]), black);
}

static int
DrawLoop(struct VideoScreen *vid) {
  SDL_Event e;
  struct Screen *s = &vid->screen;

  ColorUint bg_color = MapColorRGB(BG_COLOR.r, BG_COLOR.g, BG_COLOR.b);

  for (;;) {
    while (SDL_PollEvent(&e)) {
      if (e.type == SDL_QUIT) {
        return 0;
      }
    }
    ErrLt0(SDL_LockTexture(vid->screen_texture, 0, &s->pixels, &s->pitch),
           SDL_GetError());
    ClearScreen(s, bg_color);
    Draw(s, SDL_GetTicks());
    SDL_UnlockTexture(vid->screen_texture);
    ErrLt0(SDL_RenderCopy(vid->rend, vid->screen_texture, 0, 0),
           SDL_GetError());
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
