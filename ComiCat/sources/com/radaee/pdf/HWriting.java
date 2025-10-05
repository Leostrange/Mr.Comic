package com.radaee.pdf;

import android.graphics.Bitmap;

public class HWriting {
    protected long a;
    private Bitmap b;

    private static native int create(int i, int i2, float f, float f2, int i3, int i4, int i5);

    private static native void destroy(long j);

    private static native void onDown(long j, float f, float f2);

    private static native void onDraw(long j, long j2);

    private static native void onMove(long j, float f, float f2);

    private static native void onUp(long j, float f, float f2);

    /* access modifiers changed from: protected */
    public void finalize() {
        destroy(this.a);
        this.a = 0;
        if (this.b != null) {
            this.b.recycle();
            this.b = null;
        }
        super.finalize();
    }
}
