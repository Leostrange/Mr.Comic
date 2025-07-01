// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;


public class Matrix
{

    protected long a;

    public Matrix(float f, float f1, float f2, float f3)
    {
        a = 0L;
        a = createScale(f, f1, f2, f3);
    }

    private static native long create(float f, float f1, float f2, float f3, float f4, float f5);

    private static native long createScale(float f, float f1, float f2, float f3);

    private static native void destroy(long l);

    private static native void invert(long l);

    private static native void transformInk(long l, long l1);

    private static native void transformPath(long l, long l1);

    private static native void transformPoint(long l, float af[]);

    private static native void transformRect(long l, float af[]);

    public final void a()
    {
        destroy(a);
        a = 0L;
    }

    protected void finalize()
    {
        a();
        super.finalize();
    }
}
