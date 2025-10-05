package com.radaee.pdf;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class DIB {
    private static FloatBuffer d;
    protected long a = 0;
    private int b;
    private int c;
    private float[] e = new float[8];

    static {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(32);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f});
        asFloatBuffer.position(0);
        d = asFloatBuffer;
    }

    private static native void drawRect(long j, int i, int i2, int i3, int i4, int i5, int i6);

    private static native void drawToBmp(long j, long j2, int i, int i2);

    private static native void drawToBmp2(long j, long j2, int i, int i2, int i3, int i4);

    private static native void drawToDIB(long j, long j2, int i, int i2);

    private static native int free(long j);

    private static native long get(long j, int i, int i2);

    private static native int glGenTexture(long j, boolean z);

    private static native long restoreRaw(long j, String str, int[] iArr);

    private static native boolean saveRaw(long j, String str);

    public final void a() {
        free(this.a);
        this.a = 0;
    }

    public final void a(int i, int i2) {
        this.a = get(this.a, i, i2);
        this.b = i;
        this.c = i2;
    }

    public final void a(BMP bmp, int i, int i2) {
        if (bmp != null) {
            drawToBmp(this.a, bmp.a, i, i2);
        }
    }

    public final void a(BMP bmp, int i, int i2, int i3, int i4) {
        drawToBmp2(this.a, bmp.a, i, i2, i3, i4);
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        a();
        super.finalize();
    }
}
