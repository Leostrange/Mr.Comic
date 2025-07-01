// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;

public final class agr
{

    public static Bitmap a(Bitmap bitmap)
    {
        if (bitmap.isMutable()) goto _L2; else goto _L1
_L1:
        Object obj = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.RGB_565);
_L7:
        if (obj == null) goto _L4; else goto _L3
_L3:
        long l3 = 0L;
        int ai[];
        int i1;
        int k1;
        i1 = bitmap.getHeight() / 3;
        k1 = bitmap.getWidth();
        ai = new int[k1];
        int i = 0;
_L8:
        if (i >= i1)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        bitmap.getPixels(ai, 0, k1, 0, i, k1, 1);
          goto _L5
        i = (int)(l3 / (long)(i1 * k1 * 3));
        int k2 = (int)((double)i * 1.25D) - i * 2;
        int l2;
        int i3;
        l2 = bitmap.getHeight();
        i3 = bitmap.getWidth();
        ai = new int[i3 * 10];
        k1 = 0;
          goto _L6
_L10:
        int l1;
        bitmap.getPixels(ai, 0, i3, 0, k1, i3, l1);
        int i2;
        i2 = 0;
        break MISSING_BLOCK_LABEL_296;
_L11:
        ((Bitmap) (obj)).setPixels(ai, 0, i3, 0, k1, i3, l1);
        k1 += 10;
          goto _L6
_L4:
        if (obj != null)
        {
            bitmap = ((Bitmap) (obj));
        }
        return bitmap;
        obj;
        ((Exception) (obj)).printStackTrace();
        obj = null;
        continue; /* Loop/switch isn't completed */
        obj;
        ((OutOfMemoryError) (obj)).printStackTrace();
        obj = null;
        if (true) goto _L4; else goto _L2
_L2:
        obj = bitmap;
          goto _L7
_L5:
        for (int k = 0; k < k1; k++)
        {
            l1 = ai[k];
            l3 = l3 + (long)(l1 >> 16 & 0xff) + (long)(l1 >> 8 & 0xff) + (long)(l1 & 0xff);
        }

        i++;
          goto _L8
_L6:
        if (k1 >= l2) goto _L4; else goto _L9
_L9:
        if (l2 > k1 + 10)
        {
            l1 = 10;
        } else
        {
            l1 = l2 - k1 - 1;
        }
          goto _L10
        while (i2 < i3 * l1) 
        {
            int j = ai[i2];
            int l = ((j >> 16 & 0xff) << 1) + k2;
            int j1 = ((j >> 8 & 0xff) << 1) + k2;
            int j2 = ((j & 0xff) << 1) + k2;
            if (l > 255)
            {
                j = 255;
            } else
            {
                j = l;
                if (l < 0)
                {
                    j = 0;
                }
            }
            if (j1 > 255)
            {
                l = 255;
            } else
            {
                l = j1;
                if (j1 < 0)
                {
                    l = 0;
                }
            }
            if (j2 > 255)
            {
                j1 = 255;
            } else
            {
                j1 = j2;
                if (j2 < 0)
                {
                    j1 = 0;
                }
            }
            if (j + l + j1 < 250)
            {
                j2 = (int)((double)j * 1.1000000000000001D);
                j = j2;
                if (j2 > 255)
                {
                    j = 255;
                }
                j2 = (int)((double)l * 1.1000000000000001D);
                l = j2;
                if (j2 > 255)
                {
                    l = 255;
                }
                j2 = (int)((double)j1 * 1.1000000000000001D);
                j1 = j2;
                if (j2 > 255)
                {
                    j1 = 255;
                }
            }
            ai[i2] = l << 8 | (j << 16 | 0xff000000) | j1;
            i2++;
        }
          goto _L11
    }
}
