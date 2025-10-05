package defpackage;

import defpackage.kf;
import defpackage.kl;
import java.util.Collection;

/* renamed from: ku  reason: default package */
/* compiled from: GoogleAuthorizationCodeFlow */
public final class ku extends kf {
    public final String i;
    public final String j;

    /* renamed from: ku$a */
    /* compiled from: GoogleAuthorizationCodeFlow */
    public static class a extends kf.a {
        String o;
        public String p;

        public a(mf mfVar, mv mvVar, String str, String str2, Collection<String> collection) {
            super(kj.a(), mfVar, mvVar, new lr("https://accounts.google.com/o/oauth2/token"), new kk(str, str2), str, "https://accounts.google.com/o/oauth2/auth");
            a(collection);
        }

        /* access modifiers changed from: private */
        /* renamed from: b */
        public a a(Collection<String> collection) {
            ni.b(!collection.isEmpty());
            return (a) super.a(collection);
        }

        public final /* bridge */ /* synthetic */ kf.a a(String str) {
            return (a) super.a(str);
        }

        public final /* bridge */ /* synthetic */ kf.a a(kl.a aVar) {
            return (a) super.a(aVar);
        }

        public final /* bridge */ /* synthetic */ kf.a a(lr lrVar) {
            return (a) super.a(lrVar);
        }

        public final /* bridge */ /* synthetic */ kf.a a(lv lvVar) {
            return (a) super.a(lvVar);
        }

        public final /* bridge */ /* synthetic */ kf.a a(mf mfVar) {
            return (a) super.a(mfVar);
        }

        public final /* bridge */ /* synthetic */ kf.a a(mv mvVar) {
            return (a) super.a(mvVar);
        }

        public final ku a() {
            return new ku(this);
        }

        public final /* bridge */ /* synthetic */ kf.a b(String str) {
            return (a) super.b(str);
        }
    }

    protected ku(a aVar) {
        super(aVar);
        this.j = aVar.p;
        this.i = aVar.o;
    }

    public final kw a(String str) {
        return new kw(this.a, this.b, this.c, "", "", str, "").b(this.d).b(this.g).b(this.h);
    }
}
