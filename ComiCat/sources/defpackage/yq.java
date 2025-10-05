package defpackage;

/* renamed from: yq  reason: default package */
/* compiled from: NtlmMessage */
public abstract class yq {
    protected static final byte[] a = {78, 84, 76, 77, 83, 83, 80, 0};
    static final String b = xj.b;
    public int c;

    static int a(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    static void a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
        bArr[i + 2] = (byte) ((i2 >> 16) & 255);
        bArr[i + 3] = (byte) ((i2 >> 24) & 255);
    }

    static void a(byte[] bArr, int i, int i2, byte[] bArr2) {
        int length = bArr2 != null ? bArr2.length : 0;
        if (length != 0) {
            b(bArr, i, length);
            b(bArr, i + 2, length);
            a(bArr, i + 4, i2);
            System.arraycopy(bArr2, 0, bArr, i2, length);
        }
    }

    static void b(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
    }

    static byte[] b(byte[] bArr, int i) {
        int i2 = (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, a(bArr, i + 4), bArr2, 0, i2);
        return bArr2;
    }
}
