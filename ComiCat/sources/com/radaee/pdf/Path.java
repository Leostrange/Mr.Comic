package com.radaee.pdf;

public class Path {
    protected long a = create();

    private static native void closePath(long j);

    private static native long create();

    private static native void curveTo(long j, float f, float f2, float f3, float f4, float f5, float f6);

    private static native void destroy(long j);

    private static native int getNode(long j, int i, float[] fArr);

    private static native int getNodeCount(long j);

    private static native void lineTo(long j, float f, float f2);

    private static native void moveTo(long j, float f, float f2);

    /* access modifiers changed from: protected */
    public void finalize() {
        destroy(this.a);
        this.a = 0;
        super.finalize();
    }
}
