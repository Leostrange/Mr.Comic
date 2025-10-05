package defpackage;

/* renamed from: xr  reason: default package */
/* compiled from: DcerpcMessage */
public abstract class xr extends yc implements xn {
    protected int f = -1;
    protected int g = 0;
    protected int h = 0;
    protected int i = 0;
    protected int j = 0;
    protected int k = 0;

    public xp a() {
        if (this.k != 0) {
            return new xp(this.k);
        }
        return null;
    }

    public abstract void a(xz xzVar);

    public abstract int b();

    public abstract void b(xz xzVar);

    /* access modifiers changed from: package-private */
    public final void c(xz xzVar) {
        xzVar.e(5);
        xzVar.e(0);
        xzVar.e(this.f);
        xzVar.e(this.g);
        xzVar.g(16);
        xzVar.f(this.h);
        xzVar.f(0);
        xzVar.g(this.i);
    }

    public final boolean c() {
        return (this.g & 2) == 2;
    }

    /* access modifiers changed from: package-private */
    public final void d(xz xzVar) {
        if (xzVar.b() == 5 && xzVar.b() == 0) {
            this.f = xzVar.b();
            this.g = xzVar.b();
            if (xzVar.d() != 16) {
                throw new ya("Data representation not supported");
            }
            this.h = xzVar.c();
            if (xzVar.c() != 0) {
                throw new ya("DCERPC authentication not supported");
            }
            this.i = xzVar.d();
            return;
        }
        throw new ya("DCERPC version not supported");
    }

    public final void e(xz xzVar) {
        int i2;
        int i3 = xzVar.c;
        xzVar.c(16);
        if (this.f == 0) {
            i2 = xzVar.c;
            xzVar.g(0);
            xzVar.f(0);
            xzVar.f(b());
        } else {
            i2 = 0;
        }
        a(xzVar);
        this.h = xzVar.c - i3;
        if (this.f == 0) {
            xzVar.c = i2;
            this.j = this.h - i2;
            xzVar.g(this.j);
        }
        xzVar.c = i3;
        c(xzVar);
        xzVar.c = this.h + i3;
    }

    public final void f(xz xzVar) {
        d(xzVar);
        if (this.f == 12 || this.f == 2 || this.f == 3 || this.f == 13) {
            if (this.f == 2 || this.f == 3) {
                this.j = xzVar.d();
                xzVar.c();
                xzVar.c();
            }
            if (this.f == 3 || this.f == 13) {
                this.k = xzVar.d();
            } else {
                b(xzVar);
            }
        } else {
            throw new ya("Unexpected ptype: " + this.f);
        }
    }
}
