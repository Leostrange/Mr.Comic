package defpackage;

/* renamed from: vt  reason: default package */
/* compiled from: State */
public final class vt extends vo {
    public vt(byte[] bArr) {
        super(bArr);
    }

    public static void a(vt vtVar, vt vtVar2) {
        byte[] bArr = vtVar.k;
        byte[] bArr2 = vtVar2.k;
        int i = 0;
        int i2 = vtVar.l;
        int i3 = vtVar2.l;
        while (i < 6) {
            byte b = bArr[i2];
            bArr[i2] = bArr2[i3];
            bArr2[i3] = b;
            i++;
            i2++;
            i3++;
        }
    }

    public final int a() {
        return this.k[this.l] & 255;
    }

    public final vt a(byte[] bArr) {
        this.k = bArr;
        this.l = 0;
        return this;
    }

    public final void a(int i) {
        this.k[this.l] = (byte) i;
    }

    public final void a(vn vnVar) {
        e(vnVar.c());
    }

    public final void a(vt vtVar) {
        System.arraycopy(vtVar.k, vtVar.l, this.k, this.l, 6);
    }

    public final void a(vu vuVar) {
        a(vuVar.a);
        b(vuVar.b);
        e(vuVar.c);
    }

    public final int b() {
        return this.k[this.l + 1] & 255;
    }

    public final void b(int i) {
        this.k[this.l + 1] = (byte) i;
    }

    public final int d() {
        return ug.b(this.k, this.l + 2);
    }

    public final void d(int i) {
        byte[] bArr = this.k;
        int i2 = this.l + 1;
        bArr[i2] = (byte) (bArr[i2] + i);
    }

    public final vt e() {
        c(this.l - 6);
        return this;
    }

    public final void e(int i) {
        ug.a(this.k, this.l + 2, i);
    }

    public final vt f() {
        c(this.l + 6);
        return this;
    }

    public final String toString() {
        return "State[" + "\n  pos=" + this.l + "\n  size=" + 6 + "\n  symbol=" + a() + "\n  freq=" + b() + "\n  successor=" + d() + "\n]";
    }
}
