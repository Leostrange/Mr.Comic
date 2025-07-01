// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;

public class agn
{
    public static final class a extends agn
    {

        public a()
        {
        }
    }

    public static final class b extends agn
    {

        public static Bitmap a(byte abyte0[], Rect rect, android.graphics.BitmapFactory.Options options)
        {
            Object obj = null;
            abyte0 = BitmapRegionDecoder.newInstance(abyte0, 0, abyte0.length, true);
            if (abyte0 == null) goto _L2; else goto _L1
_L1:
            options.inSampleSize = 1;
            options.inDither = false;
            options.inPreferQualityOverSpeed = true;
            options = abyte0.decodeRegion(rect, options);
            (new StringBuilder("Extracted image options:")).append(options.getConfig().name());
            rect = options;
_L9:
            options = rect;
            if (abyte0 != null)
            {
                abyte0.recycle();
                options = rect;
            }
_L4:
            return options;
            options;
            abyte0 = null;
            rect = obj;
_L7:
            options.printStackTrace();
            options = abyte0;
            if (rect == null) goto _L4; else goto _L3
_L3:
            rect.recycle();
            return abyte0;
            rect;
            abyte0 = null;
_L6:
            if (abyte0 != null)
            {
                abyte0.recycle();
            }
            throw rect;
            rect;
            continue; /* Loop/switch isn't completed */
            options;
            abyte0 = rect;
            rect = options;
            if (true) goto _L6; else goto _L5
_L5:
            options;
            Object obj1 = null;
            rect = abyte0;
            abyte0 = obj1;
              goto _L7
            Exception exception;
            exception;
            rect = abyte0;
            abyte0 = options;
            options = exception;
              goto _L7
_L2:
            rect = null;
            if (true) goto _L9; else goto _L8
_L8:
        }

        public b()
        {
        }
    }


    public agn()
    {
    }

    public static Rect a(int i, int j, int k, boolean flag, boolean flag1, int l, int i1)
    {
        int l1 = j / k;
        j = i / k;
        int i2 = i1 % l;
        i = j;
        if (flag1)
        {
            i = j / 2;
        }
        int j1;
        int k1;
        if (l == 1)
        {
            j1 = l1;
        } else
        {
            j1 = l1 / l;
        }
        if (l == 1)
        {
            k1 = 0;
        } else
        {
            k1 = (int)((double)j1 * 1.2D);
        }
        if (i1 >= l) goto _L2; else goto _L1
_L1:
        if (flag) goto _L4; else goto _L3
_L3:
        j = i;
_L6:
        k = 0;
        if (l > 1)
        {
            i1 = i2 * j1;
            k = i1;
            if (i1 > 0)
            {
                k = i1 - k1 / 2;
            }
            if (i2 == l - 1)
            {
                k = l1 - (j1 + k1);
            }
        }
        return new Rect(j, k, i + j, k1 + (j1 + k));
_L2:
        if (flag)
        {
            j = i;
            continue; /* Loop/switch isn't completed */
        }
_L4:
        j = 0;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
