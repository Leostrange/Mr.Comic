package defpackage;

/* renamed from: vl  reason: default package */
/* compiled from: FreqData */
public final class vl extends vo {
    public vl(byte[] bArr) {
        super(bArr);
    }

    public final int a() {
        return ug.a(this.k, this.l) & 65535;
    }

    public final vl a(byte[] bArr) {
        this.k = bArr;
        this.l = 0;
        return this;
    }

    public final void a(int i) {
        ug.a(this.k, this.l, (short) i);
    }

    public final void a(vt vtVar) {
        a_(vtVar.c());
    }

    public final void a_(int i) {
        ug.a(this.k, this.l + 2, i);
    }

    public final int b() {
        return ug.b(this.k, this.l + 2);
    }

    public final void b(int i) {
        byte[] bArr = this.k;
        int i2 = this.l;
        int i3 = ((bArr[i2] & 255) + (i & 255)) >>> 8;
        bArr[i2] = (byte) (bArr[i2] + (i & 255));
        if (i3 > 0 || (65280 & i) != 0) {
            int i4 = i2 + 1;
            bArr[i4] = (byte) (i3 + ((i >>> 8) & 255) + bArr[i4]);
        }
    }

    public final String toString() {
        return "FreqData[" + "\n  pos=" + this.l + "\n  size=" + 6 + "\n  summFreq=" + a() + "\n  stats=" + b() + "\n]";
    }
}
