// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;

public final class agl
{

    static int a = -1;

    public static Bitmap a(Bitmap bitmap)
    {
label0:
        {
            Bitmap bitmap1 = bitmap;
            if (bitmap == null)
            {
                break label0;
            }
            if (a == -1)
            {
                a = 2048;
                Bitmap bitmap2;
                int i;
                if (android.os.Build.VERSION.SDK_INT >= 17)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                if (i != 0)
                {
                    i = agq.a();
                    a = i;
                    if (i <= 0)
                    {
                        a = 2048;
                    }
                }
            }
            (new StringBuilder("Max GL Texture Size is: ")).append(a);
            i = a;
            if (bitmap.getWidth() <= i)
            {
                bitmap1 = bitmap;
                if (bitmap.getHeight() <= i)
                {
                    break label0;
                }
            }
            i -= 10;
            try
            {
                bitmap1 = a(bitmap, i, i);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                exception = bitmap;
            }
            catch (OutOfMemoryError outofmemoryerror)
            {
                outofmemoryerror.printStackTrace();
                outofmemoryerror = bitmap;
            }
            bitmap2 = bitmap1;
            if (bitmap1 == null)
            {
                bitmap2 = bitmap;
            }
            if (bitmap2 != bitmap)
            {
                bitmap.recycle();
            }
            bitmap1 = bitmap2;
        }
        return bitmap1;
    }

    public static Bitmap a(Bitmap bitmap, int i, int j)
    {
        float f2 = bitmap.getWidth();
        float f3 = bitmap.getHeight();
        float f = (float)i / f2;
        float f1 = (float)j / f3;
        if (f > f1)
        {
            f = f1;
        }
        i = (int)(f2 * f);
        j = (int)(f * f3);
        try
        {
            bitmap = Bitmap.createScaledBitmap(bitmap, i, j, true);
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return null;
        }
        return bitmap;
    }

    public static Bitmap a(Bitmap bitmap, Bitmap bitmap1)
    {
        Bitmap bitmap2 = null;
        if (bitmap != null) goto _L2; else goto _L1
_L1:
        bitmap2 = bitmap1;
_L4:
        Bitmap bitmap3 = bitmap2;
        if (bitmap2 != null)
        {
            break MISSING_BLOCK_LABEL_403;
        }
        bitmap3 = bitmap2;
        double d;
        double d1;
        double d2;
        double d3;
        double d4;
        float f;
        float f1;
        float f2;
        Object obj;
        Object obj1;
        Canvas canvas;
        int i;
        int j;
        int k;
        try
        {
            j = bitmap.getWidth() + bitmap1.getWidth();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return bitmap3;
        }
        bitmap3 = bitmap2;
        i = Math.max(bitmap.getHeight(), bitmap1.getHeight());
        d2 = j * i * 2;
        d3 = j * i * 4;
        bitmap3 = bitmap2;
        d4 = agw.c();
        d1 = 1.0D;
        bitmap3 = bitmap2;
        obj = android.graphics.Bitmap.Config.ARGB_8888;
        d = d1;
        if (d3 <= d4)
        {
            break MISSING_BLOCK_LABEL_142;
        }
        bitmap3 = bitmap2;
        obj1 = android.graphics.Bitmap.Config.RGB_565;
        obj = obj1;
        d = d1;
        if (d2 <= d4)
        {
            break MISSING_BLOCK_LABEL_142;
        }
        bitmap3 = bitmap2;
        d = d4 / d2;
        obj = obj1;
        bitmap3 = bitmap2;
        j = (int)Math.ceil((double)j * d);
        bitmap3 = bitmap2;
        i = (int)Math.ceil((double)i * d);
        bitmap3 = bitmap2;
        bitmap2 = Bitmap.createBitmap(j, i, ((android.graphics.Bitmap.Config) (obj)));
        if (bitmap2 == null)
        {
            break MISSING_BLOCK_LABEL_383;
        }
        bitmap3 = bitmap2;
        j = (int)((double)bitmap.getHeight() * d);
        bitmap3 = bitmap2;
        k = (i - j) / 2;
        bitmap3 = bitmap2;
        obj = new RectF(0.0F, k, (int)((double)bitmap.getWidth() * d), j + k);
        bitmap3 = bitmap2;
        j = (int)((double)bitmap1.getHeight() * d);
        bitmap3 = bitmap2;
        i = (i - j) / 2;
        bitmap3 = bitmap2;
        f = ((RectF) (obj)).width();
        f1 = i;
        bitmap3 = bitmap2;
        f2 = ((RectF) (obj)).width();
        bitmap3 = bitmap2;
        obj1 = new RectF(f, f1, (float)(int)(d * (double)bitmap1.getWidth()) + f2, j + i);
        bitmap3 = bitmap2;
        canvas = new Canvas(bitmap2);
        bitmap3 = bitmap2;
        canvas.drawBitmap(bitmap, null, ((RectF) (obj)), null);
        bitmap3 = bitmap2;
        canvas.drawBitmap(bitmap1, null, ((RectF) (obj1)), null);
        bitmap3 = bitmap2;
        bitmap.recycle();
        bitmap3 = bitmap2;
        bitmap1.recycle();
        bitmap3 = bitmap2;
        return bitmap3;
_L2:
        if (bitmap1 == null)
        {
            bitmap2 = bitmap;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static Bitmap a(String s)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
        options.inTempStorage = new byte[8192];
        return BitmapFactory.decodeFile(s, options);
    }

    public static boolean a(Bitmap bitmap, int i, int j, String s, android.graphics.Bitmap.CompressFormat compressformat)
    {
        Bitmap bitmap1 = a(bitmap, i, j);
        if (bitmap1 == null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        a(bitmap1, s, compressformat);
        if (bitmap1 != bitmap)
        {
            try
            {
                bitmap1.recycle();
            }
            // Misplaced declaration of an exception variable
            catch (Bitmap bitmap)
            {
                Log.e("Save Scaled Image", "Image save failed", bitmap);
            }
        }
        return false;
    }

    public static boolean a(Bitmap bitmap, String s, android.graphics.Bitmap.CompressFormat compressformat)
    {
        try
        {
            s = agz.b(s);
            bitmap.compress(compressformat, 80, s);
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            Log.e("Save Image", "Image save failed", bitmap);
            return false;
        }
        return true;
    }

    public static Bitmap b(Bitmap bitmap)
    {
        try
        {
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth() / 2, bitmap.getHeight());
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return null;
        }
        return bitmap;
    }

    public static Bitmap b(Bitmap bitmap, int i, int j)
    {
        RectF rectf = new RectF(2.0F, 2.0F, i + 2, j + 2);
        Bitmap bitmap1 = Bitmap.createBitmap(i + 4, j + 4, bitmap.getConfig());
        Canvas canvas = new Canvas(bitmap1);
        canvas.drawColor(0x106000c);
        canvas.drawBitmap(bitmap, null, rectf, null);
        return bitmap1;
        bitmap;
        bitmap1 = null;
_L2:
        bitmap.printStackTrace();
        return bitmap1;
        bitmap;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static byte[] c(Bitmap bitmap)
    {
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 80, bytearrayoutputstream);
            bitmap = bytearrayoutputstream.toByteArray();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return null;
        }
        return bitmap;
    }

}
