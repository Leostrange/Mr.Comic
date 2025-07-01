// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;


public class Path
{

    protected long a;

    public Path()
    {
        a = create();
    }

    private static native void closePath(long l);

    private static native long create();

    private static native void curveTo(long l, float f, float f1, float f2, float f3, float f4, float f5);

    private static native void destroy(long l);

    private static native int getNode(long l, int i, float af[]);

    private static native int getNodeCount(long l);

    private static native void lineTo(long l, float f, float f1);

    private static native void moveTo(long l, float f, float f1);

    protected void finalize()
    {
        destroy(a);
        a = 0L;
        super.finalize();
    }
}
