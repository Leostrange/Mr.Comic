package defpackage;

/* renamed from: yv  reason: default package */
/* compiled from: AndXServerMessageBlock */
abstract class yv extends zm {
    zm a = null;
    private byte b = -1;
    private int c = 0;

    yv() {
    }

    yv(zm zmVar) {
        if (zmVar != null) {
            this.a = zmVar;
            this.b = zmVar.g;
        }
    }

    private int a(byte[] bArr, int i) {
        int i2;
        this.r = i(bArr, i + 3 + 2);
        this.r += 4;
        int i3 = this.r + 1 + i;
        this.r /= 2;
        bArr[i] = (byte) (this.r & 255);
        this.s = j(bArr, i3 + 2);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (this.s & 255);
        bArr[i4] = (byte) ((this.s >> 8) & 255);
        int i5 = this.s + i4 + 1;
        if (this.a == null || !al || this.k >= a(this.a.g)) {
            this.b = -1;
            this.a = null;
            bArr[i + 1] = -1;
            bArr[i + 2] = 0;
            bArr[i + 3] = -34;
            bArr[i + 3 + 1] = -34;
            return i5 - i;
        }
        this.a.k = this.k + 1;
        bArr[i + 1] = this.b;
        bArr[i + 2] = 0;
        this.c = i5 - this.i;
        a((long) this.c, bArr, i + 3);
        this.a.t = this.t;
        if (this.a instanceof yv) {
            this.a.p = this.p;
            i2 = ((yv) this.a).a(bArr, i5) + i5;
        } else {
            this.a.r = this.a.i(bArr, i5);
            int i6 = this.a.r + 1 + i5;
            this.a.r /= 2;
            bArr[i5] = (byte) (this.a.r & 255);
            this.a.s = this.a.j(bArr, i6 + 2);
            int i7 = i6 + 1;
            bArr[i6] = (byte) (this.a.s & 255);
            bArr[i7] = (byte) ((this.a.s >> 8) & 255);
            i2 = i7 + 1 + this.a.s;
        }
        return i2 - i;
    }

    private int b(byte[] bArr, int i) {
        int i2;
        int i3 = i + 1;
        this.r = bArr[i];
        if (this.r != 0) {
            this.b = bArr[i3];
            this.c = d(bArr, i3 + 2);
            if (this.c == 0) {
                this.b = -1;
            }
            if (this.r > 2) {
                k(bArr, i3 + 4);
                if (this.g == -94 && ((zu) this).N) {
                    this.r += 8;
                }
            }
            i3 = i + 1 + (this.r * 2);
        }
        this.s = d(bArr, i3);
        int i4 = i3 + 2;
        if (this.s != 0) {
            l(bArr, i4);
            i4 += this.s;
        }
        if (this.l != 0 || this.b == -1) {
            this.b = -1;
            this.a = null;
        } else if (this.a == null) {
            this.b = -1;
            throw new RuntimeException("no andx command supplied with response");
        } else {
            int i5 = this.c + this.i;
            this.a.i = this.i;
            this.a.g = this.b;
            this.a.l = this.l;
            this.a.h = this.h;
            this.a.m = this.m;
            this.a.n = this.n;
            this.a.o = this.o;
            this.a.p = this.p;
            this.a.q = this.q;
            this.a.t = this.t;
            if (this.a instanceof yv) {
                i2 = ((yv) this.a).b(bArr, i5) + i5;
            } else {
                int i6 = i5 + 1;
                bArr[i5] = (byte) (this.a.r & 255);
                if (this.a.r != 0 && this.a.r > 2) {
                    i6 += this.a.k(bArr, i6);
                }
                this.a.s = d(bArr, i6);
                i2 = i6 + 2;
                if (this.a.s != 0) {
                    this.a.l(bArr, i2);
                    i2 += this.a.s;
                }
            }
            this.a.u = true;
        }
        return i2 - i;
    }

    /* access modifiers changed from: package-private */
    public int a(byte b2) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr) {
        this.i = 4;
        c(bArr);
        this.j = (a(bArr, 36) + 36) - 4;
        if (this.B != null) {
            this.B.a(bArr, this.i, this.j, this, this.C);
        }
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr) {
        this.i = 4;
        d(bArr);
        this.j = (b(bArr, 36) + 36) - 4;
        return this.j;
    }

    public String toString() {
        return new String(super.toString() + ",andxCommand=0x" + abw.a((int) this.b, 2) + ",andxOffset=" + this.c);
    }
}
