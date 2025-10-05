package defpackage;

/* renamed from: ug  reason: default package */
/* compiled from: Raw */
public final class ug {
    public static final short a(byte[] bArr, int i) {
        return (short) (((short) (((short) ((bArr[i + 1] & 255) + 0)) << 8)) + (bArr[i] & 255));
    }

    public static final void a(byte[] bArr, int i, int i2) {
        bArr[i + 3] = (byte) (i2 >>> 24);
        bArr[i + 2] = (byte) (i2 >>> 16);
        bArr[i + 1] = (byte) (i2 >>> 8);
        bArr[i] = (byte) (i2 & 255);
    }

    public static final void a(byte[] bArr, int i, short s) {
        bArr[i + 1] = (byte) (s >>> 8);
        bArr[i] = (byte) (s & 255);
    }

    public static final int b(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }
}
