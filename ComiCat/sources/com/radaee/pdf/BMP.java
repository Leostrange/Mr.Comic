package com.radaee.pdf;

import android.graphics.Bitmap;

public class BMP {
    protected long a = 0;
    private int b = 0;
    private int c = 0;

    private static native void drawRect(long j, int i, int i2, int i3, int i4, int i5, int i6);

    private static native void drawToDIB(long j, long j2, int i, int i2);

    private static native void free(Bitmap bitmap, long j);

    private static native long get(Bitmap bitmap);

    private static native void invert(long j);

    private static native void mulAlpha(long j);

    private static native boolean restoreRaw(long j, String str);

    private static native boolean saveRaw(long j, String str);

    public final void a() {
        invert(this.a);
    }

    public final void a(int i, int i2, int i3, int i4) {
        drawRect(this.a, -1, i, i2, i3, i4, 1);
    }

    public final void a(Bitmap bitmap) {
        this.b = bitmap.getWidth();
        this.c = bitmap.getHeight();
        this.a = get(bitmap);
    }

    public final int b() {
        return this.b;
    }

    public final void b(Bitmap bitmap) {
        if (bitmap != null) {
            free(bitmap, this.a);
            this.a = 0;
        }
    }

    public final int c() {
        return this.c;
    }
}
