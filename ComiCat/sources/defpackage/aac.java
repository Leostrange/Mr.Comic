package defpackage;

/* renamed from: aac  reason: default package */
/* compiled from: SmbComReadAndX */
final class aac extends yv {
    private static final int D = xj.a("jcifs.smb.client.ReadAndX.Close", 1);
    private long E;
    private int F;
    private int G = -1;
    int b;
    int c;
    int d;

    aac() {
        super((zm) null);
        this.g = 46;
    }

    aac(int i, long j, int i2) {
        super((zm) null);
        this.F = i;
        this.E = j;
        this.c = i2;
        this.b = i2;
        this.g = 46;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte b2) {
        if (b2 == 4) {
            return D;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        a((long) this.F, bArr, i);
        int i2 = i + 2;
        b(this.E, bArr, i2);
        int i3 = i2 + 4;
        a((long) this.b, bArr, i3);
        int i4 = i3 + 2;
        a((long) this.c, bArr, i4);
        int i5 = i4 + 2;
        b((long) this.G, bArr, i5);
        int i6 = i5 + 4;
        a((long) this.d, bArr, i6);
        int i7 = i6 + 2;
        b(this.E >> 32, bArr, i7);
        return (i7 + 4) - i;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        return 0;
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
        return new String("SmbComReadAndX[" + super.toString() + ",fid=" + this.F + ",offset=" + this.E + ",maxCount=" + this.b + ",minCount=" + this.c + ",openTimeout=" + this.G + ",remaining=" + this.d + ",offset=" + this.E + "]");
    }
}
