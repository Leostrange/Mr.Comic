package defpackage;

import defpackage.lc;
import java.io.IOException;

/* renamed from: lf  reason: default package */
/* compiled from: AbstractGoogleClientRequest */
public abstract class lf<T> extends nw {
    protected final le a;
    protected final String b;
    protected lc c;
    protected lb d;
    private final String g;
    private final ls h;
    private lw i = new lw();
    private lw j;
    private int k = -1;
    private String l;
    private boolean m;
    private Class<T> n;

    protected lf(le leVar, String str, String str2, Class<T> cls) {
        this.n = (Class) ni.a(cls);
        this.a = (le) ni.a(leVar);
        this.g = (String) ni.a(str);
        this.b = (String) ni.a(str2);
        this.h = null;
        String str3 = leVar.e;
        if (str3 != null) {
            this.i.e(str3 + " Google-API-Java-Client");
        } else {
            this.i.e("Google-API-Java-Client");
        }
    }

    private lz e() {
        ni.a(this.c == null);
        ni.a(true);
        final lz a2 = a().b.a(this.g, b(), this.h);
        new kt().b(a2);
        a2.m = a().b();
        if (this.h == null && (this.g.equals("POST") || this.g.equals("PUT") || this.g.equals("PATCH"))) {
            a2.f = new lp();
        }
        a2.b.putAll(this.i);
        if (!this.m) {
            a2.n = new lq();
        }
        final me meVar = a2.l;
        a2.l = new me() {
            public final void a(mc mcVar) {
                if (meVar != null) {
                    meVar.a(mcVar);
                }
                if (!mcVar.a() && a2.o) {
                    throw lf.this.a(mcVar);
                }
            }
        };
        return a2;
    }

    public IOException a(mc mcVar) {
        return new md(mcVar);
    }

    public le a() {
        return this.a;
    }

    /* renamed from: a */
    public lf<T> d(String str, Object obj) {
        return (lf) super.d(str, obj);
    }

    public lr b() {
        return new lr(ml.a(this.a.a(), this.b, this));
    }

    public final T c() {
        mc a2;
        if (this.c == null) {
            a2 = e().a();
        } else {
            lr b2 = b();
            boolean z = a().b.a(this.g, b2, this.h).o;
            lc lcVar = this.c;
            lcVar.b = this.i;
            lcVar.e = this.m;
            ni.a(lcVar.a == lc.a.a);
            a2 = lcVar.c ? lcVar.a(b2) : lcVar.b(b2);
            a2.e.m = a().b();
            if (z && !a2.a()) {
                throw a(a2);
            }
        }
        this.j = a2.e.c;
        this.k = a2.c;
        this.l = a2.d;
        return a2.a(this.n);
    }
}
