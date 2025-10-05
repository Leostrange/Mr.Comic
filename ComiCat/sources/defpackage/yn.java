package defpackage;

import java.io.UnsupportedEncodingException;

/* renamed from: yn  reason: default package */
/* compiled from: NodeStatusResponse */
final class yn extends yj {
    private yk A;
    private int B;
    private byte[] C = new byte[6];
    private byte[] D;
    yk[] z;

    yn(yk ykVar) {
        this.A = ykVar;
        this.r = new yf();
    }

    private int e(byte[] bArr, int i) {
        boolean z2;
        this.z = new yk[this.B];
        String str = this.A.f.c;
        boolean z3 = false;
        int i2 = 0;
        int i3 = i;
        while (i2 < this.B) {
            try {
                int i4 = i3 + 14;
                while (bArr[i4] == 32) {
                    i4--;
                }
                String str2 = new String(bArr, i3, (i4 - i3) + 1, yf.a);
                byte b = bArr[i3 + 15] & 255;
                boolean z4 = (bArr[i3 + 16] & 128) == 128;
                int i5 = (bArr[i3 + 16] & 96) >> 5;
                boolean z5 = (bArr[i3 + 16] & 16) == 16;
                boolean z6 = (bArr[i3 + 16] & 8) == 8;
                boolean z7 = (bArr[i3 + 16] & 4) == 4;
                boolean z8 = (bArr[i3 + 16] & 2) == 2;
                if (z3 || this.A.f.d != b || (this.A.f != yk.b && !this.A.f.b.equals(str2))) {
                    this.z[i2] = new yk(new yf(str2, b, str), this.A.g, z4, i5, z5, z6, z7, z8, this.C);
                    z2 = z3;
                } else {
                    if (this.A.f == yk.b) {
                        this.A.f = new yf(str2, b, str);
                    }
                    this.A.i = z4;
                    this.A.h = i5;
                    this.A.j = z5;
                    this.A.k = z6;
                    this.A.l = z7;
                    this.A.m = z8;
                    this.A.o = this.C;
                    this.A.n = true;
                    z2 = true;
                    this.z[i2] = this.A;
                }
                i2++;
                z3 = z2;
                i3 += 18;
            } catch (UnsupportedEncodingException e) {
            }
        }
        return i3 - i;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        this.B = bArr[i] & 255;
        int i2 = this.B * 18;
        int i3 = (this.x - i2) - 1;
        int i4 = i + 1;
        this.B = bArr[i] & 255;
        System.arraycopy(bArr, i2 + i4, this.C, 0, 6);
        int e = e(bArr, i4) + i4;
        this.D = new byte[i3];
        System.arraycopy(bArr, e, this.D, 0, i3);
        return (e + i3) - i;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr) {
        return d(bArr, 12);
    }

    public final String toString() {
        return new String("NodeStatusResponse[" + super.toString() + "]");
    }
}
