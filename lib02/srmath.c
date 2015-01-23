#include "srmath.h"

extern inline void
SRM_MatrixVectorMultiply_f3(SRM_Float3 *out_vecs,
                            SRM_FloatM3 *mat,
                            SRM_Float3 *in_vecs,
                            int n_vecs);

extern inline void
SRM_MatrixMultiply_f3(SRM_FloatM3 *out,
                      SRM_FloatM3 *A,
                      SRM_FloatM3 *B);

extern inline void
SRM_PutIdentityMatrix_f3(SRM_FloatM3 *out);

extern inline void
SRM_ApplyRotationMatrix_hf2(SRM_FloatM3 *out,
                            float cos_angle,
                            float sin_angle);

extern inline void
SRM_ApplyTranslationMatrix_hf2(SRM_FloatM3 *out, float dx, float dy);

extern inline void
SRM_ApplyScaleMatrix_hf2(SRM_FloatM3 *out, float fx, float fy);

extern inline void
SRM_ApplyLineReflectionMatrix_hf2(SRM_FloatM3 *out,
                                  float A,
                                  float B,
                                  float C);
