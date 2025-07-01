// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

// Referenced classes of package com.radaee.pdf:
//            BMP

public class DIB
{

    private static FloatBuffer d;
    protected long a;
    private int b;
    private int c;
    private float e[];

    public DIB()
    {
        a = 0L;
        e = new float[8];
    }

    private static native void drawRect(long l, int i, int j, int k, int i1, int j1, int k1);

    private static native void drawToBmp(long l, long l1, int i, int j);

    private static native void drawToBmp2(long l, long l1, int i, int j, int k, int i1);

    private static native void drawToDIB(long l, long l1, int i, int j);

    private static native int free(long l);

    private static native long get(long l, int i, int j);

    private static native int glGenTexture(long l, boolean flag);

    private static native long restoreRaw(long l, String s, int ai[]);

    private static native boolean saveRaw(long l, String s);

    public final void a()
    {
        free(a);
        a = 0L;
    }

    public final void a(int i, int j)
    {
        a = get(a, i, j);
        b = i;
        c = j;
    }

    public final void a(BMP bmp, int i, int j)
    {
        if (bmp == null)
        {
            return;
        } else
        {
            drawToBmp(a, bmp.a, i, j);
            return;
        }
    }

    public final void a(BMP bmp, int i, int j, int k, int l)
    {
        drawToBmp2(a, bmp.a, i, j, k, l);
    }

    protected void finalize()
    {
        a();
        super.finalize();
    }

    static 
    {
        Object obj = ByteBuffer.allocateDirect(32);
        ((ByteBuffer) (obj)).order(ByteOrder.nativeOrder());
        obj = ((ByteBuffer) (obj)).asFloatBuffer();
        ((FloatBuffer) (obj)).put(new float[] {
            0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F
        });
        ((FloatBuffer) (obj)).position(0);
        d = ((FloatBuffer) (obj));
    }
}
