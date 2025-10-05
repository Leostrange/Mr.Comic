package com.radaee.pdf;

public class PageContent {
    protected long a = 0;

    private static native void clipPath(long j, long j2, boolean z);

    private static native long create();

    private static native void destroy(long j);

    private static native void drawForm(long j, long j2);

    private static native void drawImage(long j, long j2);

    private static native void drawText(long j, String str);

    private static native void fillPath(long j, long j2, boolean z);

    private static native void gsRestore(long j);

    private static native void gsSave(long j);

    private static native void gsSet(long j, long j2);

    private static native void gsSetMatrix(long j, long j2);

    private static native void setFillColor(long j, int i);

    private static native void setStrokeCap(long j, int i);

    private static native void setStrokeColor(long j, int i);

    private static native void setStrokeJoin(long j, int i);

    private static native void setStrokeMiter(long j, float f);

    private static native void setStrokeWidth(long j, float f);

    private static native void strokePath(long j, long j2);

    private static native void textBegin(long j);

    private static native void textEnd(long j);

    private static native float[] textGetSize(long j, long j2, String str, float f, float f2, float f3, float f4);

    private static native void textMove(long j, float f, float f2);

    private static native void textNextLine(long j);

    private static native void textSetCharSpace(long j, float f);

    private static native void textSetFont(long j, long j2, float f);

    private static native void textSetHScale(long j, int i);

    private static native void textSetLeading(long j, float f);

    private static native void textSetRenderMode(long j, int i);

    private static native void textSetRise(long j, float f);

    private static native void textSetWordSpace(long j, float f);

    /* access modifiers changed from: protected */
    public void finalize() {
        destroy(this.a);
        this.a = 0;
        super.finalize();
    }
}
