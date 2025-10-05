package defpackage;

/* renamed from: qa  reason: default package */
/* compiled from: Buffer */
public final class qa {
    final byte[] a;
    byte[] b;
    int c;
    int d;

    public qa() {
        this(20480);
    }

    public qa(int i) {
        this.a = new byte[4];
        this.b = new byte[i];
        this.c = 0;
        this.d = 0;
    }

    public qa(byte[] bArr) {
        this.a = new byte[4];
        this.b = bArr;
        this.c = 0;
        this.d = 0;
    }

    static qa a(byte[][] bArr) {
        int length = bArr.length * 4;
        for (byte[] length2 : bArr) {
            length += length2.length;
        }
        qa qaVar = new qa(length);
        for (byte[] b2 : bArr) {
            qaVar.b(b2);
        }
        return qaVar;
    }

    public final int a() {
        return this.c - this.d;
    }

    public final void a(byte b2) {
        byte[] bArr = this.b;
        int i = this.c;
        this.c = i + 1;
        bArr[i] = b2;
    }

    public final void a(int i) {
        this.a[0] = (byte) (i >>> 24);
        this.a[1] = (byte) (i >>> 16);
        this.a[2] = (byte) (i >>> 8);
        this.a[3] = (byte) i;
        System.arraycopy(this.a, 0, this.b, this.c, 4);
        this.c += 4;
    }

    public final void a(byte[] bArr) {
        a(bArr, 0, bArr.length);
    }

    /* access modifiers changed from: package-private */
    public final void a(byte[] bArr, int i) {
        System.arraycopy(this.b, this.d, bArr, 0, i);
        this.d += i;
    }

    public final void a(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.b, this.c, i2);
        this.c += i2;
    }

    /* access modifiers changed from: package-private */
    public final byte[] a(int[] iArr, int[] iArr2) {
        int b2 = b();
        int i = this.d;
        this.d += b2;
        iArr[0] = i;
        iArr2[0] = b2;
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public final byte[][] a(int i, String str) {
        byte[][] bArr = new byte[i][];
        for (int i2 = 0; i2 < i; i2++) {
            int b2 = b();
            if (a() < b2) {
                throw new qy(str);
            }
            bArr[i2] = new byte[b2];
            byte[] bArr2 = bArr[i2];
            a(bArr2, bArr2.length);
        }
        return bArr;
    }

    public final int b() {
        return ((d() << 16) & -65536) | (d() & 65535);
    }

    /* access modifiers changed from: package-private */
    public final void b(int i) {
        this.c += i;
    }

    public final void b(byte[] bArr) {
        int length = bArr.length;
        a(length);
        a(bArr, 0, length);
    }

    public final long c() {
        return (((((((long) e()) << 8) & 65280) | ((long) (e() & 255))) << 16) & -65536) | ((((((long) e()) << 8) & 65280) | ((long) (e() & 255))) & 65535);
    }

    /* access modifiers changed from: package-private */
    public final void c(int i) {
        int i2 = this.c + i + 84;
        if (this.b.length < i2) {
            int length = this.b.length * 2;
            if (length >= i2) {
                i2 = length;
            }
            byte[] bArr = new byte[i2];
            System.arraycopy(this.b, 0, bArr, 0, this.c);
            this.b = bArr;
        }
    }

    public final void c(byte[] bArr) {
        int length = bArr.length;
        if ((bArr[0] & 128) != 0) {
            a(length + 1);
            a((byte) 0);
        } else {
            a(length);
        }
        a(bArr);
    }

    /* access modifiers changed from: package-private */
    public final int d() {
        return ((e() << 8) & 65280) | (e() & 255);
    }

    public final int e() {
        byte[] bArr = this.b;
        int i = this.d;
        this.d = i + 1;
        return bArr[i] & 255;
    }

    public final byte[] f() {
        int b2 = (b() + 7) / 8;
        byte[] bArr = new byte[b2];
        a(bArr, b2);
        if ((bArr[0] & 128) == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[(bArr.length + 1)];
        bArr2[0] = 0;
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        return bArr2;
    }

    public final byte[] g() {
        int b2 = b();
        if (b2 < 0 || b2 > 262144) {
            b2 = 262144;
        }
        byte[] bArr = new byte[b2];
        a(bArr, b2);
        return bArr;
    }

    public final void h() {
        this.c = 0;
        this.d = 0;
    }
}
