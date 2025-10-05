package defpackage;

import java.util.Date;

/* renamed from: zu  reason: default package */
/* compiled from: SmbComNTCreateAndXResponse */
final class zu extends yv {
    int D;
    int E;
    int F;
    long G;
    long H;
    long I;
    long J;
    long K;
    long L;
    boolean M;
    boolean N;
    byte b;
    int c;
    int d;

    zu() {
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int k(byte[] bArr, int i) {
        int i2 = i + 1;
        this.b = bArr[i];
        this.c = d(bArr, i2);
        int i3 = i2 + 2;
        this.d = e(bArr, i3);
        int i4 = i3 + 4;
        this.G = g(bArr, i4);
        int i5 = i4 + 8;
        this.H = g(bArr, i5);
        int i6 = i5 + 8;
        this.I = g(bArr, i6);
        int i7 = i6 + 8;
        this.J = g(bArr, i7);
        int i8 = i7 + 8;
        this.D = e(bArr, i8);
        int i9 = i8 + 4;
        this.K = f(bArr, i9);
        int i10 = i9 + 8;
        this.L = f(bArr, i10);
        int i11 = i10 + 8;
        this.E = d(bArr, i11);
        int i12 = i11 + 2;
        this.F = d(bArr, i12);
        int i13 = i12 + 2;
        int i14 = i13 + 1;
        this.M = (bArr[i13] & 255) > 0;
        return i14 - i;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("SmbComNTCreateAndXResponse[" + super.toString() + ",oplockLevel=" + this.b + ",fid=" + this.c + ",createAction=0x" + abw.a(this.d, 4) + ",creationTime=" + new Date(this.G) + ",lastAccessTime=" + new Date(this.H) + ",lastWriteTime=" + new Date(this.I) + ",changeTime=" + new Date(this.J) + ",extFileAttributes=0x" + abw.a(this.D, 4) + ",allocationSize=" + this.K + ",endOfFile=" + this.L + ",fileType=" + this.E + ",deviceState=" + this.F + ",directory=" + this.M + "]");
    }
}
