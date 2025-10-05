package defpackage;

/* renamed from: uk  reason: default package */
/* compiled from: BaseBlock */
public class uk {
    protected long a;
    protected short b = 0;
    protected byte c = 0;
    protected short d = 0;
    protected short e = 0;
    protected int f = 0;

    public uk() {
    }

    public uk(uk ukVar) {
        this.d = ukVar.d;
        this.b = ukVar.b;
        this.c = uw.a(ukVar.c).k;
        this.e = ukVar.f();
        this.a = ukVar.a;
    }

    public uk(byte[] bArr) {
        this.b = ug.a(bArr, 0);
        this.c = (byte) (this.c | (bArr[2] & 255));
        this.d = ug.a(bArr, 3);
        this.e = ug.a(bArr, 5);
    }

    public final void a(long j) {
        this.a = j;
    }

    public final void a(byte[] bArr) {
        this.f = ug.b(bArr, 0);
    }

    public final boolean a() {
        return (this.d & 2) != 0;
    }

    public final boolean b() {
        return (this.d & 8) != 0;
    }

    public final boolean c() {
        return (this.d & 512) != 0;
    }

    public final boolean d() {
        return (uw.a(this.c) == uw.FileHeader || (this.d & 32768) == 0) ? false : true;
    }

    public final long e() {
        return this.a;
    }

    public final short f() {
        return (short) (this.e + this.f);
    }

    public final uw g() {
        return uw.a(this.c);
    }
}
