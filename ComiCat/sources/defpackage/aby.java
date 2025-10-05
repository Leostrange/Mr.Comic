package defpackage;

import java.security.MessageDigest;

/* renamed from: aby  reason: default package */
/* compiled from: MD4 */
public final class aby extends MessageDigest implements Cloneable {
    private int[] a;
    private long b;
    private byte[] c;
    private int[] d;

    public aby() {
        super("MD4");
        this.a = new int[4];
        this.c = new byte[64];
        this.d = new int[16];
        engineReset();
    }

    private aby(aby aby) {
        this();
        this.a = (int[]) aby.a.clone();
        this.c = (byte[]) aby.c.clone();
        this.b = aby.b;
    }

    private static int a(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = ((i2 & i3) | ((i2 ^ -1) & i4)) + i + i5;
        return (i7 >>> (32 - i6)) | (i7 << i6);
    }

    private void a(byte[] bArr, int i) {
        for (int i2 = 0; i2 < 16; i2++) {
            int[] iArr = this.d;
            int i3 = i + 1;
            int i4 = i3 + 1;
            byte b2 = ((bArr[i3] & 255) << 8) | (bArr[i] & 255);
            int i5 = i4 + 1;
            i = i5 + 1;
            iArr[i2] = b2 | ((bArr[i4] & 255) << 16) | ((bArr[i5] & 255) << 24);
        }
        int i6 = this.a[0];
        int i7 = this.a[1];
        int i8 = this.a[2];
        int i9 = this.a[3];
        int a2 = a(i6, i7, i8, i9, this.d[0], 3);
        int a3 = a(i9, a2, i7, i8, this.d[1], 7);
        int a4 = a(i8, a3, a2, i7, this.d[2], 11);
        int a5 = a(i7, a4, a3, a2, this.d[3], 19);
        int a6 = a(a2, a5, a4, a3, this.d[4], 3);
        int a7 = a(a3, a6, a5, a4, this.d[5], 7);
        int a8 = a(a4, a7, a6, a5, this.d[6], 11);
        int a9 = a(a5, a8, a7, a6, this.d[7], 19);
        int a10 = a(a6, a9, a8, a7, this.d[8], 3);
        int a11 = a(a7, a10, a9, a8, this.d[9], 7);
        int a12 = a(a8, a11, a10, a9, this.d[10], 11);
        int a13 = a(a9, a12, a11, a10, this.d[11], 19);
        int a14 = a(a10, a13, a12, a11, this.d[12], 3);
        int a15 = a(a11, a14, a13, a12, this.d[13], 7);
        int a16 = a(a12, a15, a14, a13, this.d[14], 11);
        int a17 = a(a13, a16, a15, a14, this.d[15], 19);
        int b3 = b(a14, a17, a16, a15, this.d[0], 3);
        int b4 = b(a15, b3, a17, a16, this.d[4], 5);
        int b5 = b(a16, b4, b3, a17, this.d[8], 9);
        int b6 = b(a17, b5, b4, b3, this.d[12], 13);
        int b7 = b(b3, b6, b5, b4, this.d[1], 3);
        int b8 = b(b4, b7, b6, b5, this.d[5], 5);
        int b9 = b(b5, b8, b7, b6, this.d[9], 9);
        int b10 = b(b6, b9, b8, b7, this.d[13], 13);
        int b11 = b(b7, b10, b9, b8, this.d[2], 3);
        int b12 = b(b8, b11, b10, b9, this.d[6], 5);
        int b13 = b(b9, b12, b11, b10, this.d[10], 9);
        int b14 = b(b10, b13, b12, b11, this.d[14], 13);
        int b15 = b(b11, b14, b13, b12, this.d[3], 3);
        int b16 = b(b12, b15, b14, b13, this.d[7], 5);
        int b17 = b(b13, b16, b15, b14, this.d[11], 9);
        int b18 = b(b14, b17, b16, b15, this.d[15], 13);
        int c2 = c(b15, b18, b17, b16, this.d[0], 3);
        int c3 = c(b16, c2, b18, b17, this.d[8], 9);
        int c4 = c(b17, c3, c2, b18, this.d[4], 11);
        int c5 = c(b18, c4, c3, c2, this.d[12], 15);
        int c6 = c(c2, c5, c4, c3, this.d[2], 3);
        int c7 = c(c3, c6, c5, c4, this.d[10], 9);
        int c8 = c(c4, c7, c6, c5, this.d[6], 11);
        int c9 = c(c5, c8, c7, c6, this.d[14], 15);
        int c10 = c(c6, c9, c8, c7, this.d[1], 3);
        int c11 = c(c7, c10, c9, c8, this.d[9], 9);
        int c12 = c(c8, c11, c10, c9, this.d[5], 11);
        int c13 = c(c9, c12, c11, c10, this.d[13], 15);
        int c14 = c(c10, c13, c12, c11, this.d[3], 3);
        int c15 = c(c11, c14, c13, c12, this.d[11], 9);
        int c16 = c(c12, c15, c14, c13, this.d[7], 11);
        int c17 = c(c13, c16, c15, c14, this.d[15], 15);
        int[] iArr2 = this.a;
        iArr2[0] = iArr2[0] + c14;
        int[] iArr3 = this.a;
        iArr3[1] = c17 + iArr3[1];
        int[] iArr4 = this.a;
        iArr4[2] = iArr4[2] + c16;
        int[] iArr5 = this.a;
        iArr5[3] = iArr5[3] + c15;
    }

    private static int b(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = (((i3 | i4) & i2) | (i3 & i4)) + i + i5 + 1518500249;
        return (i7 >>> (32 - i6)) | (i7 << i6);
    }

    private static int c(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = ((i2 ^ i3) ^ i4) + i + i5 + 1859775393;
        return (i7 >>> (32 - i6)) | (i7 << i6);
    }

    public final Object clone() {
        return new aby(this);
    }

    public final byte[] engineDigest() {
        int i = (int) (this.b % 64);
        int i2 = i < 56 ? 56 - i : 120 - i;
        byte[] bArr = new byte[(i2 + 8)];
        bArr[0] = Byte.MIN_VALUE;
        for (int i3 = 0; i3 < 8; i3++) {
            bArr[i2 + i3] = (byte) ((int) ((this.b * 8) >>> (i3 * 8)));
        }
        engineUpdate(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[16];
        for (int i4 = 0; i4 < 4; i4++) {
            for (int i5 = 0; i5 < 4; i5++) {
                bArr2[(i4 * 4) + i5] = (byte) (this.a[i4] >>> (i5 * 8));
            }
        }
        engineReset();
        return bArr2;
    }

    public final void engineReset() {
        this.a[0] = 1732584193;
        this.a[1] = -271733879;
        this.a[2] = -1732584194;
        this.a[3] = 271733878;
        this.b = 0;
        for (int i = 0; i < 64; i++) {
            this.c[i] = 0;
        }
    }

    public final void engineUpdate(byte b2) {
        int i = (int) (this.b % 64);
        this.b++;
        this.c[i] = b2;
        if (i == 63) {
            a(this.c, 0);
        }
    }

    public final void engineUpdate(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = 0;
        if (i < 0 || i2 < 0 || ((long) i) + ((long) i2) > ((long) bArr.length)) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i5 = (int) (this.b % 64);
        this.b += (long) i2;
        int i6 = 64 - i5;
        if (i2 >= i6) {
            System.arraycopy(bArr, i, this.c, i5, i6);
            a(this.c, 0);
            i3 = i6;
            while ((i3 + 64) - 1 < i2) {
                a(bArr, i + i3);
                i3 += 64;
            }
        } else {
            i4 = i5;
            i3 = 0;
        }
        if (i3 < i2) {
            System.arraycopy(bArr, i + i3, this.c, i4, i2 - i3);
        }
    }
}
