package defpackage;

/* renamed from: zx  reason: default package */
/* compiled from: SmbComNtTransaction */
abstract class zx extends aag {
    int c;

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        int i2;
        int a;
        if (this.g != -95) {
            i2 = i + 1;
            bArr[i] = this.P;
        } else {
            i2 = i + 1;
            bArr[i] = 0;
        }
        int i3 = i2 + 1;
        bArr[i2] = 0;
        int i4 = i3 + 1;
        bArr[i3] = 0;
        b((long) this.L, bArr, i4);
        int i5 = i4 + 4;
        b((long) this.M, bArr, i5);
        int i6 = i5 + 4;
        if (this.g != -95) {
            b((long) this.N, bArr, i6);
            int i7 = i6 + 4;
            b((long) this.O, bArr, i7);
            i6 = i7 + 4;
        }
        b((long) this.F, bArr, i6);
        int i8 = i6 + 4;
        b((long) (this.F == 0 ? 0 : this.G), bArr, i8);
        int i9 = i8 + 4;
        if (this.g == -95) {
            b((long) this.H, bArr, i9);
            i9 += 4;
        }
        b((long) this.I, bArr, i9);
        int i10 = i9 + 4;
        b((long) (this.I == 0 ? 0 : this.J), bArr, i10);
        int i11 = i10 + 4;
        if (this.g == -95) {
            b((long) this.K, bArr, i11);
            int i12 = i11 + 4;
            a = i12 + 1;
            bArr[i12] = 0;
        } else {
            int i13 = i11 + 1;
            bArr[i11] = (byte) this.R;
            a((long) this.c, bArr, i13);
            int i14 = i13 + 2;
            a = i14 + a(bArr, i14);
        }
        return a - i;
    }
}
