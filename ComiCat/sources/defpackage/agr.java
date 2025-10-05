package defpackage;

import android.graphics.Bitmap;

/* renamed from: agr  reason: default package */
/* compiled from: ImageProcessor */
public final class agr {
    public static Bitmap a(Bitmap bitmap) {
        Bitmap bitmap2;
        int i;
        try {
            Bitmap createBitmap = !bitmap.isMutable() ? Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.RGB_565) : bitmap;
            if (createBitmap != null) {
                long j = 0;
                int height = bitmap.getHeight() / 3;
                int width = bitmap.getWidth();
                int[] iArr = new int[width];
                int i2 = 0;
                while (i2 < height) {
                    bitmap.getPixels(iArr, 0, width, 0, i2, width, 1);
                    long j2 = j;
                    for (int i3 = 0; i3 < width; i3++) {
                        int i4 = iArr[i3];
                        j2 = j2 + ((long) ((i4 >> 16) & 255)) + ((long) ((i4 >> 8) & 255)) + ((long) (i4 & 255));
                    }
                    i2++;
                    j = j2;
                }
                int i5 = (int) (j / ((long) ((height * width) * 3)));
                int i6 = ((int) (((double) i5) * 1.25d)) - (i5 * 2);
                int height2 = bitmap.getHeight();
                int width2 = bitmap.getWidth();
                int[] iArr2 = new int[(width2 * 10)];
                for (int i7 = 0; i7 < height2; i7 += 10) {
                    int i8 = height2 > i7 + 10 ? 10 : (height2 - i7) - 1;
                    bitmap.getPixels(iArr2, 0, width2, 0, i7, width2, i8);
                    int i9 = width2 * i8;
                    for (int i10 = 0; i10 < i9; i10++) {
                        int i11 = iArr2[i10];
                        int i12 = (((i11 >> 16) & 255) << 1) + i6;
                        int i13 = (((i11 >> 8) & 255) << 1) + i6;
                        int i14 = ((i11 & 255) << 1) + i6;
                        if (i12 > 255) {
                            i12 = 255;
                        } else if (i12 < 0) {
                            i12 = 0;
                        }
                        if (i13 > 255) {
                            i13 = 255;
                        } else if (i13 < 0) {
                            i13 = 0;
                        }
                        if (i14 > 255) {
                            i14 = 255;
                        } else if (i14 < 0) {
                            i14 = 0;
                        }
                        if (i12 + i13 + i14 < 250) {
                            int i15 = (int) (((double) i12) * 1.1d);
                            if (i15 > 255) {
                                i15 = 255;
                            }
                            int i16 = (int) (((double) i13) * 1.1d);
                            if (i16 > 255) {
                                i16 = 255;
                            }
                            int i17 = (int) (((double) i14) * 1.1d);
                            if (i17 > 255) {
                                i17 = 255;
                            }
                            int i18 = i16;
                            i12 = i15;
                            i = i17;
                            i13 = i18;
                        } else {
                            i = i14;
                        }
                        iArr2[i10] = (i13 << 8) | (i12 << 16) | -16777216 | i;
                    }
                    createBitmap.setPixels(iArr2, 0, width2, 0, i7, width2, i8);
                }
            }
            bitmap2 = createBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            bitmap2 = null;
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            bitmap2 = null;
        }
        return bitmap2 != null ? bitmap2 : bitmap;
    }
}
