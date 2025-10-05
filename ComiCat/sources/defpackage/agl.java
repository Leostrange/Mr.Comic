package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;

/* renamed from: agl  reason: default package */
/* compiled from: BitmapUtils */
public final class agl {
    static int a = -1;

    public static Bitmap a(Bitmap bitmap) {
        Bitmap bitmap2;
        if (bitmap == null) {
            return bitmap;
        }
        if (a == -1) {
            a = 2048;
            if (Build.VERSION.SDK_INT >= 17) {
                int a2 = agq.a();
                a = a2;
                if (a2 <= 0) {
                    a = 2048;
                }
            }
        }
        new StringBuilder("Max GL Texture Size is: ").append(a);
        int i = a;
        if (bitmap.getWidth() <= i && bitmap.getHeight() <= i) {
            return bitmap;
        }
        int i2 = i - 10;
        try {
            bitmap2 = a(bitmap, i2, i2);
        } catch (Exception e) {
            e.printStackTrace();
            bitmap2 = bitmap;
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            bitmap2 = bitmap;
        }
        if (bitmap2 == null) {
            bitmap2 = bitmap;
        }
        if (bitmap2 != bitmap) {
            bitmap.recycle();
        }
        return bitmap2;
    }

    public static Bitmap a(Bitmap bitmap, int i, int i2) {
        float width = (float) bitmap.getWidth();
        float height = (float) bitmap.getHeight();
        float f = ((float) i) / width;
        float f2 = ((float) i2) / height;
        if (f <= f2) {
            f2 = f;
        }
        try {
            return Bitmap.createScaledBitmap(bitmap, (int) (width * f2), (int) (f2 * height), true);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap a(Bitmap bitmap, Bitmap bitmap2) {
        Bitmap bitmap3 = null;
        if (bitmap == null) {
            bitmap3 = bitmap2;
        } else if (bitmap2 == null) {
            bitmap3 = bitmap;
        }
        if (bitmap3 == null) {
            try {
                int width = bitmap.getWidth() + bitmap2.getWidth();
                int max = Math.max(bitmap.getHeight(), bitmap2.getHeight());
                double d = (double) (width * max * 2);
                double d2 = (double) (width * max * 4);
                double c = (double) agw.c();
                double d3 = 1.0d;
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                if (d2 > c) {
                    config = Bitmap.Config.RGB_565;
                    if (d > c) {
                        d3 = c / d;
                    }
                }
                int ceil = (int) Math.ceil(((double) width) * d3);
                int ceil2 = (int) Math.ceil(((double) max) * d3);
                bitmap3 = Bitmap.createBitmap(ceil, ceil2, config);
                if (bitmap3 != null) {
                    int height = (int) (((double) bitmap.getHeight()) * d3);
                    int i = (ceil2 - height) / 2;
                    RectF rectF = new RectF(0.0f, (float) i, (float) ((int) (((double) bitmap.getWidth()) * d3)), (float) (height + i));
                    int height2 = (int) (((double) bitmap2.getHeight()) * d3);
                    int i2 = (ceil2 - height2) / 2;
                    RectF rectF2 = new RectF(rectF.width(), (float) i2, ((float) ((int) (d3 * ((double) bitmap2.getWidth())))) + rectF.width(), (float) (height2 + i2));
                    Canvas canvas = new Canvas(bitmap3);
                    canvas.drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
                    canvas.drawBitmap(bitmap2, (Rect) null, rectF2, (Paint) null);
                }
                bitmap.recycle();
                bitmap2.recycle();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return bitmap3;
    }

    public static Bitmap a(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inTempStorage = new byte[FragmentTransaction.TRANSIT_EXIT_MASK];
        return BitmapFactory.decodeFile(str, options);
    }

    public static boolean a(Bitmap bitmap, int i, int i2, String str, Bitmap.CompressFormat compressFormat) {
        try {
            Bitmap a2 = a(bitmap, i, i2);
            if (a2 == null) {
                return false;
            }
            a(a2, str, compressFormat);
            if (a2 == bitmap) {
                return false;
            }
            a2.recycle();
            return false;
        } catch (Exception e) {
            Log.e("Save Scaled Image", "Image save failed", e);
            return false;
        }
    }

    public static boolean a(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) {
        try {
            FileOutputStream b = agz.b(str);
            bitmap.compress(compressFormat, 80, b);
            b.close();
            return true;
        } catch (Exception e) {
            Log.e("Save Image", "Image save failed", e);
            return false;
        }
    }

    public static Bitmap b(Bitmap bitmap) {
        try {
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth() / 2, bitmap.getHeight());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Bitmap b(Bitmap bitmap, int i, int i2) {
        Exception e;
        Bitmap bitmap2;
        RectF rectF = new RectF(2.0f, 2.0f, (float) (i + 2), (float) (i2 + 2));
        try {
            bitmap2 = Bitmap.createBitmap(i + 4, i2 + 4, bitmap.getConfig());
            try {
                Canvas canvas = new Canvas(bitmap2);
                canvas.drawColor(17170444);
                canvas.drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return bitmap2;
            }
        } catch (Exception e3) {
            Exception exc = e3;
            bitmap2 = null;
            e = exc;
        }
        return bitmap2;
    }

    public static byte[] c(Bitmap bitmap) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 80, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
