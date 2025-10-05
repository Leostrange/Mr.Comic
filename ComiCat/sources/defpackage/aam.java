package defpackage;

/* renamed from: aam  reason: default package */
/* compiled from: SmbComWriteAndX */
final class aam extends yv {
    private static final int c = xj.a("jcifs.smb.client.WriteAndX.ReadAndX", 1);
    private static final int d = xj.a("jcifs.smb.client.WriteAndX.Close", 1);
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private byte[] I;
    private long J;
    private int K;
    int b;

    aam() {
        super((zm) null);
        this.g = 47;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte b2) {
        if (b2 == 46) {
            return c;
        }
        if (b2 == 4) {
            return d;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i, long j, int i2, byte[] bArr, int i3, int i4) {
        this.D = i;
        this.J = j;
        this.E = i2;
        this.I = bArr;
        this.H = i3;
        this.F = i4;
        this.B = null;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        this.G = (i - this.i) + 26;
        this.K = (this.G - this.i) % 4;
        this.K = this.K == 0 ? 0 : 4 - this.K;
        this.G += this.K;
        a((long) this.D, bArr, i);
        int i2 = i + 2;
        b(this.J, bArr, i2);
        int i3 = i2 + 4;
        int i4 = 0;
        while (i4 < 4) {
            bArr[i3] = -1;
            i4++;
            i3++;
        }
        a((long) this.b, bArr, i3);
        int i5 = i3 + 2;
        a((long) this.E, bArr, i5);
        int i6 = i5 + 2;
        int i7 = i6 + 1;
        bArr[i6] = 0;
        int i8 = i7 + 1;
        bArr[i7] = 0;
        a((long) this.F, bArr, i8);
        int i9 = i8 + 2;
        a((long) this.G, bArr, i9);
        int i10 = i9 + 2;
        b(this.J >> 32, bArr, i10);
        return (i10 + 4) - i;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        int i2 = i;
        while (true) {
            int i3 = this.K;
            this.K = i3 - 1;
            if (i3 > 0) {
                bArr[i2] = -18;
                i2++;
            } else {
                System.arraycopy(this.I, this.H, bArr, i2, this.F);
                return (i2 + this.F) - i;
            }
        }
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
        return new String("SmbComWriteAndX[" + super.toString() + ",fid=" + this.D + ",offset=" + this.J + ",writeMode=" + this.b + ",remaining=" + this.E + ",dataLength=" + this.F + ",dataOffset=" + this.G + "]");
    }
}
