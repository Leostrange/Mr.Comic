package defpackage;

/* renamed from: zz  reason: default package */
/* compiled from: SmbComOpenAndXResponse */
final class zz extends yv {
    int D;
    int E;
    int F;
    int G;
    int H;
    long I;
    int b;
    int c;
    int d;

    zz() {
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
        this.b = d(bArr, i);
        int i2 = i + 2;
        this.c = d(bArr, i2);
        int i3 = i2 + 2;
        this.I = h(bArr, i3);
        int i4 = i3 + 4;
        this.d = e(bArr, i4);
        int i5 = i4 + 4;
        this.D = d(bArr, i5);
        int i6 = i5 + 2;
        this.E = d(bArr, i6);
        int i7 = i6 + 2;
        this.F = d(bArr, i7);
        int i8 = i7 + 2;
        this.G = d(bArr, i8);
        int i9 = i8 + 2;
        this.H = e(bArr, i9);
        return (i9 + 6) - i;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        return new String("SmbComOpenAndXResponse[" + super.toString() + ",fid=" + this.b + ",fileAttributes=" + this.c + ",lastWriteTime=" + this.I + ",dataSize=" + this.d + ",grantedAccess=" + this.D + ",fileType=" + this.E + ",deviceState=" + this.F + ",action=" + this.G + ",serverFid=" + this.H + "]");
    }
}
