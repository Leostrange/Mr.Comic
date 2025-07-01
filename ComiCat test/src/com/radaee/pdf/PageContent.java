// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;


public class PageContent
{

    protected long a;

    public PageContent()
    {
        a = 0L;
    }

    private static native void clipPath(long l, long l1, boolean flag);

    private static native long create();

    private static native void destroy(long l);

    private static native void drawForm(long l, long l1);

    private static native void drawImage(long l, long l1);

    private static native void drawText(long l, String s);

    private static native void fillPath(long l, long l1, boolean flag);

    private static native void gsRestore(long l);

    private static native void gsSave(long l);

    private static native void gsSet(long l, long l1);

    private static native void gsSetMatrix(long l, long l1);

    private static native void setFillColor(long l, int i);

    private static native void setStrokeCap(long l, int i);

    private static native void setStrokeColor(long l, int i);

    private static native void setStrokeJoin(long l, int i);

    private static native void setStrokeMiter(long l, float f);

    private static native void setStrokeWidth(long l, float f);

    private static native void strokePath(long l, long l1);

    private static native void textBegin(long l);

    private static native void textEnd(long l);

    private static native float[] textGetSize(long l, long l1, String s, float f, float f1, float f2, 
            float f3);

    private static native void textMove(long l, float f, float f1);

    private static native void textNextLine(long l);

    private static native void textSetCharSpace(long l, float f);

    private static native void textSetFont(long l, long l1, float f);

    private static native void textSetHScale(long l, int i);

    private static native void textSetLeading(long l, float f);

    private static native void textSetRenderMode(long l, int i);

    private static native void textSetRise(long l, float f);

    private static native void textSetWordSpace(long l, float f);

    protected void finalize()
    {
        destroy(a);
        a = 0L;
        super.finalize();
    }
}
