package com.radaee.pdf;

import android.graphics.Path;

public class Ink {
    protected long a;
    private int b;
    private Path c;
    private Path d;

    private static native long create(float f, int i, int i2);

    private static native void destroy(long j);

    private static native int getNode(long j, int i, float[] fArr);

    private static native int getNodeCount(long j);

    private static native void onDown(long j, float f, float f2);

    private static native void onMove(long j, float f, float f2);

    private static native void onUp(long j, float f, float f2);

    /* access modifiers changed from: protected */
    public void finalize() {
        if (this.a != 0) {
            destroy(this.a);
            this.a = 0;
            this.c.reset();
            this.d.reset();
            this.b = 0;
        }
        super.finalize();
    }
}
