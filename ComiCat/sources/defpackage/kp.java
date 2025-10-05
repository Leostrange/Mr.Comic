package defpackage;

import java.util.Collection;

/* renamed from: kp  reason: default package */
/* compiled from: TokenRequest */
public class kp extends nw {
    mb a;
    lv b;
    private final mf c;
    private final mv d;
    private lr g;
    @nz(a = "grant_type")
    private String grantType;
    @nz(a = "scope")
    private String scopes;

    public kp(mf mfVar, mv mvVar, lr lrVar, String str) {
        this.c = (mf) ni.a(mfVar);
        this.d = (mv) ni.a(mvVar);
        b(lrVar);
        d(str);
    }

    public final mc a() {
        lz a2 = this.c.a((mb) new mb() {
            public final void a(lz lzVar) {
                if (kp.this.a != null) {
                    kp.this.a.a(lzVar);
                }
                final lv lvVar = lzVar.a;
                lzVar.a = new lv() {
                    public final void b(lz lzVar) {
                        if (lvVar != null) {
                            lvVar.b(lzVar);
                        }
                        if (kp.this.b != null) {
                            kp.this.b.b(lzVar);
                        }
                    }
                };
            }
        }).a("POST", this.g, new mm(this));
        a2.m = new mx(this.d);
        a2.o = false;
        mc a3 = a2.a();
        if (a3.a()) {
            return a3;
        }
        throw kr.a(this.d, a3);
    }

    /* renamed from: b */
    public kp d(String str, Object obj) {
        return (kp) super.d(str, obj);
    }

    public kp b(Collection<String> collection) {
        this.scopes = collection == null ? null : ny.a().a(collection);
        return this;
    }

    public kp b(lr lrVar) {
        this.g = lrVar;
        ni.a(lrVar.b == null);
        return this;
    }

    public kp b(lv lvVar) {
        this.b = lvVar;
        return this;
    }

    public kp b(mb mbVar) {
        this.a = mbVar;
        return this;
    }

    public kq b() {
        return (kq) a().a(kq.class);
    }

    public kp d(String str) {
        this.grantType = (String) ni.a(str);
        return this;
    }
}
