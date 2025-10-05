package defpackage;

/* renamed from: vw  reason: default package */
/* compiled from: BitInput */
public class vw {
    protected int al;
    protected int am;
    protected byte[] an = new byte[32768];

    public final void a(int i) {
        int i2 = this.am + i;
        this.al += i2 >> 3;
        this.am = i2 & 7;
    }

    public final void b(int i) {
        a(i);
    }

    public final void e() {
        this.al = 0;
        this.am = 0;
    }

    public final int f() {
        return (((((this.an[this.al] & 255) << 16) + ((this.an[this.al + 1] & 255) << 8)) + (this.an[this.al + 2] & 255)) >>> (8 - this.am)) & 65535;
    }

    public final int g() {
        return f();
    }

    public final boolean h() {
        return this.al + 3 >= 32768;
    }

    public final byte[] i() {
        return this.an;
    }
}
