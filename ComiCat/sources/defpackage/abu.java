package defpackage;

/* renamed from: abu  reason: default package */
/* compiled from: Encdec */
public final class abu {
    public static int a(int i, byte[] bArr) {
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        return 4;
    }

    public static int a(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >> 8) & 255);
        bArr[i4] = (byte) ((i >> 16) & 255);
        bArr[i4 + 1] = (byte) ((i >> 24) & 255);
        return 4;
    }

    public static short a(byte[] bArr) {
        return (short) (((bArr[2] & 255) << 8) | (bArr[3] & 255));
    }

    public static short a(byte[] bArr, int i) {
        return (short) ((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8));
    }

    public static int b(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }
}
