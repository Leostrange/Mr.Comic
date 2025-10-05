package com.radaee.pdf;

public class Matrix {
    protected long a = 0;

    public Matrix(float f, float f2, float f3, float f4) {
        this.a = createScale(f, f2, f3, f4);
    }

    private static native long create(float f, float f2, float f3, float f4, float f5, float f6);

    private static native long createScale(float f, float f2, float f3, float f4);

    private static native void destroy(long j);

    private static native void invert(long j);

    private static native void transformInk(long j, long j2);

    private static native void transformPath(long j, long j2);

    private static native void transformPoint(long j, float[] fArr);

    private static native void transformRect(long j, float[] fArr);

    public final void a() {
        destroy(this.a);
        this.a = 0;
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        a();
        super.finalize();
    }
}
