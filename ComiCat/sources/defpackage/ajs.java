package defpackage;

import java.io.OutputStream;
import java.util.LinkedList;

/* renamed from: ajs  reason: default package */
/* compiled from: ByteArrayBuilder */
public final class ajs extends OutputStream {
    private static final byte[] a = new byte[0];
    private final LinkedList<byte[]> b;
    private int c;
    private byte[] d;
    private int e;

    private void a() {
        int i = 262144;
        this.c += this.d.length;
        int max = Math.max(this.c >> 1, 1000);
        if (max <= 262144) {
            i = max;
        }
        this.b.add(this.d);
        this.d = new byte[i];
        this.e = 0;
    }

    public final void close() {
    }

    public final void flush() {
    }

    public final void write(int i) {
        if (this.e >= this.d.length) {
            a();
        }
        byte[] bArr = this.d;
        int i2 = this.e;
        this.e = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public final void write(byte[] bArr, int i, int i2) {
        while (true) {
            int min = Math.min(this.d.length - this.e, i2);
            if (min > 0) {
                System.arraycopy(bArr, i, this.d, this.e, min);
                i += min;
                this.e += min;
                i2 -= min;
            }
            if (i2 > 0) {
                a();
            } else {
                return;
            }
        }
    }
}
