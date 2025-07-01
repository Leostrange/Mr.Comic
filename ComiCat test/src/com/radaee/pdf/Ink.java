// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;

import android.graphics.Path;

public class Ink
{

    protected long a;
    private int b;
    private Path c;
    private Path d;

    private static native long create(float f, int i, int j);

    private static native void destroy(long l);

    private static native int getNode(long l, int i, float af[]);

    private static native int getNodeCount(long l);

    private static native void onDown(long l, float f, float f1);

    private static native void onMove(long l, float f, float f1);

    private static native void onUp(long l, float f, float f1);

    protected void finalize()
    {
        if (a != 0L)
        {
            destroy(a);
            a = 0L;
            c.reset();
            d.reset();
            b = 0;
        }
        super.finalize();
    }
}
