// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;

import android.graphics.Bitmap;

public class BMP
{

    protected long a;
    private int b;
    private int c;

    public BMP()
    {
        a = 0L;
        b = 0;
        c = 0;
    }

    private static native void drawRect(long l, int i, int j, int k, int i1, int j1, int k1);

    private static native void drawToDIB(long l, long l1, int i, int j);

    private static native void free(Bitmap bitmap, long l);

    private static native long get(Bitmap bitmap);

    private static native void invert(long l);

    private static native void mulAlpha(long l);

    private static native boolean restoreRaw(long l, String s);

    private static native boolean saveRaw(long l, String s);

    public final void a()
    {
        invert(a);
    }

    public final void a(int i, int j, int k, int l)
    {
        drawRect(a, -1, i, j, k, l, 1);
    }

    public final void a(Bitmap bitmap)
    {
        b = bitmap.getWidth();
        c = bitmap.getHeight();
        a = get(bitmap);
    }

    public final int b()
    {
        return b;
    }

    public final void b(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            return;
        } else
        {
            free(bitmap, a);
            a = 0L;
            return;
        }
    }

    public final int c()
    {
        return c;
    }
}
