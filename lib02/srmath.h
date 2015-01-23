#ifndef SR_MATH_H
#define SR_MATH_H

#include <string.h>
#include <assert.h>
#include <stdlib.h>
#include <math.h>

/*
 * SRM stands for Software Renderer Math.
 *
 * ==//==
 *
 * F3 stands for float 3. It's used for points and vectors made out of 3
 * floats (SRM_Float3). It also can refer to square matrices 3x3 of floats
 * (SRM_FloatM3).
 *
 * ==//==
 *
 * HF2 stands for homogeneous coordinates float 3. It refers to the same types
 * as F3.
 */

#define SRM_EPS_F 0.00001f

typedef float SRM_Float3[3];

#define SRM_x(v) (v)[0]
#define SRM_y(v) (v)[1]
#define SRM_z(v) (v)[2]

#define SRM_Set3(v, x, y, z) \
  do { \
    (v)[0] = (x); \
    (v)[1] = (y); \
    (v)[2] = (z); \
  } while (0)

#define SRM_SetHomo2(v, x, y) SRM_Set3(v, x, y, 1);

#define SRM_Copy3(v_dest, v_src) \
  SRM_SetXYZ(v_dest, (v_src)[0], (v_src)[1], (v_src)[2])

#define SRM_Dot2(v1, v2) ((v1)[0]*(v2)[0] + (v1)[1]*(v2)[1])

#define SRM_Init3(x, y, z) {(x), (y), (z)}
#define SRM_InitHomo2(x, y) SRM_Init3(x, y, 1)

typedef float SRM_FloatM3[3][3];

/**
 * Multiplies all the input vectors to the input matrix:
 *
 * -> out_vecs[i] = mat * in_vecs[i], for i in [0, n_vecs).
 *
 * @note Output vectors and input vectors can be the same only if they also
 * share the same indices. That is, the call:
 *
 * SRM_MatrixVectorMultiply_f3(vecs, mat, vecs, n_vecs)
 *
 * is valid, but something like:
 *
 * SRM_MatrixVectorMultiply_f3(vecs, mat, vecs + 1, n_vecs - 1)
 *
 * might not be. If n_vecs - 1 is 1, then there won't be overlapping SRM_Float3
 * objects, so all will be fine, but if n_vecs - 1 > 1, then there will be at
 * least 1 overlapping object, moreover they'll have different indices: an
 * object will have an index in out_vecs that is 1 less its index in in_vecs.
 */
inline void
SRM_MatrixVectorMultiply_f3(SRM_Float3 *out_vecs,
                            SRM_FloatM3 *mat,
                            SRM_Float3 *in_vecs,
                            int n_vecs)
{
  for (int vec_i = 0; vec_i < n_vecs; vec_i++) {
    SRM_Float3 local_out = {0};
    SRM_Float3 *out = out_vecs + vec_i;
    SRM_Float3 *in = in_vecs + vec_i;

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        local_out[i] += (*mat)[i][j]*(*in)[j];
      }
    }
    memcpy(out, &local_out, sizeof local_out);
  }
}

/**
 * out = A*B.
 *
 * @note out can be one of A or B, even both. That is, the call:
 * SRM_MatrixMultiply_f3(foo, foo, foo) is valid and behaves as expected (i.e.
 * foo becomes the square of its old self).
 */
inline void
SRM_MatrixMultiply_f3(SRM_FloatM3 *out,
                      SRM_FloatM3 *mat1,
                      SRM_FloatM3 *mat2)
{
  SRM_FloatM3 local_out = {{0}};

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      for (int k = 0; k < 3; k++) {
        local_out[i][j] += (*mat1)[i][k]*(*mat2)[k][j];
      }
    }
  }
  memcpy(out, &local_out, sizeof local_out);
}

inline void
SRM_PutIdentityMatrix_f3(SRM_FloatM3 *out) {
  (*out)[0][0] = 1.0f;
  (*out)[0][1] = 0.0f;
  (*out)[0][2] = 0.0f;
  (*out)[1][0] = 0.0f;
  (*out)[1][1] = 1.0f;
  (*out)[1][2] = 0.0f;
  (*out)[2][0] = 0.0f;
  (*out)[2][1] = 0.0f;
  (*out)[2][2] = 1.0f;
}

/**
 * out = out * R(cos_angle, sin_angle).
 */
inline void
SRM_ApplyRotationMatrix_hf2(SRM_FloatM3 *out,
                            float cos_angle,
                            float sin_angle)
{
  /*
  [a, b, c] [C -S 0] [a*C + b*S, -a*S + b*C, c]
  [d, e, f]x[S  C 0]=[d*C + e*S, -d*S + e*C, f]
  [g, h, i] [0  0 1] [g*C + h*S, -g*S + h*C, i]
  */

  float a = (*out)[0][0];
  float b = (*out)[0][1];
  (*out)[0][0] = a*cos_angle + b*sin_angle;
  (*out)[0][1] = -a*sin_angle + b*cos_angle;

  float d = (*out)[1][0];
  float e = (*out)[1][1];
  (*out)[1][0] = d*cos_angle + e*sin_angle;
  (*out)[1][1] = -d*sin_angle + e*cos_angle;

  float g = (*out)[2][0];
  float h = (*out)[2][1];
  (*out)[2][0] = g*cos_angle + h*sin_angle;
  (*out)[2][1] = -g*sin_angle + h*cos_angle;
}

/**
 * out = out * T(dx, dy).
 */
inline void
SRM_ApplyTranslationMatrix_hf2(SRM_FloatM3 *out, float dx, float dy) {
  /*
  [a, b, c] [1 0 dx] [a, b, a*dx + b*dy + c]
  [d, e, f]x[0 1 dy]=[d, e, d*dx + e*dy + f]
  [g, h, i] [0 0 1 ] [g, h, g*dx + h*dy + i]
  */

  (*out)[0][2] = (*out)[0][0]*dx + (*out)[0][1]*dy + (*out)[0][2];
  (*out)[1][2] = (*out)[1][0]*dx + (*out)[1][1]*dy + (*out)[1][2];
  (*out)[2][2] = (*out)[2][0]*dx + (*out)[2][1]*dy + (*out)[2][2];
}

/**
 * out = out * S(xf, yf).
 */
inline void
SRM_ApplyScaleMatrix_hf2(SRM_FloatM3 *out, float xf, float yf) {
  /*
  [a, b, c] [xf 0  0] [a*xf, b*yf, c]
  [d, e, f]x[0  yf 0]=[d*xf, e*yf, f]
  [g, h, i] [0  0  1] [g*xf, h*yf, i]
  */

  (*out)[0][0] *= xf;
  (*out)[1][0] *= xf;
  (*out)[2][0] *= xf;

  (*out)[0][1] *= yf;
  (*out)[1][1] *= yf;
  (*out)[2][1] *= yf;
}

/**
 * Line is expected to be given in the form: A*y + B*x = C.
 */
inline void
SRM_ApplyLineReflectionMatrix_hf2(SRM_FloatM3 *out,
                                  float A,
                                  float B,
                                  float C)
{
  if (fabs(A) > SRM_EPS_F) {
    // Not a vertical line.

    const float slope = -B/A;
    const float y_intercept = C/A;

    /*
     * We need to find the sine and cosine of the angle of this line whose
     * equation is given in the format: y = slope*x + y_intercept.
     *
     * - We apply a increment of dx=1, which means dy=slope.
     *
     * - Then we calculate the hypotenuse H of the triangle (0,0), (1,0),
     * (slope, 1): H = sqrt(slope^2+1). Now, we can get the sine S and
     * cosine C of the angle pretty easily: S = slope/H and C = 1/H.
     *
     * Needless to say this angle is that of the line (slope is the tangent of
     * this angle).
     */
    const float hypo = sqrtf(slope*slope + 1);
    const float hypo_inv = 1/hypo;
    const float sin_angle = slope*hypo_inv;
    const float cos_angle = hypo_inv;

    SRM_ApplyTranslationMatrix_hf2(out, 0, y_intercept);
    SRM_ApplyRotationMatrix_hf2(out, cos_angle, sin_angle);
    SRM_ApplyScaleMatrix_hf2(out, 1, -1);
    SRM_ApplyRotationMatrix_hf2(out, cos_angle, -sin_angle);
    SRM_ApplyTranslationMatrix_hf2(out, 0, -y_intercept);
  }
  else {
    // Vertical line.

    const float x_intercept = C/B;

    SRM_ApplyTranslationMatrix_hf2(out, x_intercept, 0);
    SRM_ApplyScaleMatrix_hf2(out, -1, 1);
    SRM_ApplyTranslationMatrix_hf2(out, -x_intercept, 0);
  }
}

#endif
