package defpackage;

import defpackage.aif;

/* renamed from: air  reason: default package */
/* compiled from: JsonGeneratorBase */
public abstract class air extends aif {
    protected aim b;
    protected int c;
    protected boolean d;
    protected aiv e = new aiv(0, (aiv) null);
    protected boolean f;

    protected air(int i, aim aim) {
        this.c = i;
        this.b = aim;
        this.d = a(aif.a.WRITE_NUMBERS_AS_STRINGS);
    }

    protected static void e(String str) {
        throw new aie(str);
    }

    protected static void j() {
        throw new RuntimeException("Internal error: should never end up through this code path");
    }

    public final aif a() {
        return a((ain) new aju());
    }

    public final boolean a(aif.a aVar) {
        return (this.c & aVar.i) != 0;
    }

    public void b() {
        d("start an array");
        this.e = this.e.g();
        if (this.a != null) {
            this.a.e(this);
        }
    }

    public void c() {
        if (!this.e.a()) {
            e("Current context not an ARRAY but " + this.e.d());
        }
        if (this.a != null) {
            this.a.b(this, this.e.e());
        }
        this.e = this.e.i();
    }

    public void close() {
        this.f = true;
    }

    public void d() {
        d("start an object");
        this.e = this.e.h();
        if (this.a != null) {
            this.a.b(this);
        }
    }

    /* access modifiers changed from: protected */
    public abstract void d(String str);

    public void e() {
        if (!this.e.c()) {
            e("Current context not an object but " + this.e.d());
        }
        this.e = this.e.i();
        if (this.a != null) {
            this.a.a(this, this.e.e());
        }
    }

    public final aiv h() {
        return this.e;
    }

    /* access modifiers changed from: protected */
    public abstract void i();
}
