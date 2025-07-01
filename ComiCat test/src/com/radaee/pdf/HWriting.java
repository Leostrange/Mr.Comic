// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;

import android.graphics.Bitmap;

public class HWriting
{

    protected long a;
    private Bitmap b;

    private static native int create(int i, int j, float f, float f1, int k, int l, int i1);

    private static native void destroy(long l);

    private static native void onDown(long l, float f, float f1);

    private static native void onDraw(long l, long l1);

    private static native void onMove(long l, float f, float f1);

    private static native void onUp(long l, float f, float f1);

    protected void finalize()
    {
        destroy(a);
        a = 0L;
        if (b != null)
        {
            b.recycle();
            b = null;
        }
        super.finalize();
    }
}
