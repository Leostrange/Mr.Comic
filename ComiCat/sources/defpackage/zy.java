package defpackage;

import java.util.Date;

/* renamed from: zy  reason: default package */
/* compiled from: SmbComOpenAndX */
final class zy extends yv {
    private static final int H = xj.a("jcifs.smb.client.OpenAndX.ReadAndX", 1);
    int D;
    int E;
    int F;
    int G;
    int b;
    int c;
    int d;

    zy(String str, int i, int i2) {
        super((zm) null);
        this.A = str;
        this.g = 45;
        this.c = i & 3;
        if (this.c == 3) {
            this.c = 2;
        }
        this.c |= 64;
        this.c &= -2;
        this.d = 22;
        this.D = 0;
        if ((i2 & 64) == 64) {
            if ((i2 & 16) == 16) {
                this.F = 18;
            } else {
                this.F = 2;
            }
        } else if ((i2 & 16) != 16) {
            this.F = 1;
        } else if ((i2 & 32) == 32) {
            this.F = 16;
        } else {
            this.F = 17;
        }
    }

    /* access modifiers changed from: package-private */
    public final int a(byte b2) {
        if (b2 == 46) {
            return H;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        a((long) this.b, bArr, i);
        int i2 = i + 2;
        a((long) this.c, bArr, i2);
        int i3 = i2 + 2;
        a((long) this.d, bArr, i3);
        int i4 = i3 + 2;
        a((long) this.D, bArr, i4);
        int i5 = i4 + 2;
        this.E = 0;
        b((long) this.E, bArr, i5);
        int i6 = i5 + 4;
        a((long) this.F, bArr, i6);
        int i7 = i6 + 2;
        b((long) this.G, bArr, i7);
        int i8 = i7 + 4;
        int i9 = 0;
        while (i9 < 8) {
            bArr[i8] = 0;
            i9++;
            i8++;
        }
        return i8 - i;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        int i2;
        if (this.t) {
            i2 = i + 1;
            bArr[i] = 0;
        } else {
            i2 = i;
        }
        return (i2 + a(this.A, bArr, i2)) - i;
    }

    /* access modifiers changed from: package-private */
    public final int k(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("SmbComOpenAndX[" + super.toString() + ",flags=0x" + abw.a(this.b, 2) + ",desiredAccess=0x" + abw.a(this.c, 4) + ",searchAttributes=0x" + abw.a(this.d, 4) + ",fileAttributes=0x" + abw.a(this.D, 4) + ",creationTime=" + new Date((long) this.E) + ",openFunction=0x" + abw.a(this.F, 2) + ",allocationSize=" + this.G + ",fileName=" + this.A + "]");
    }
}
