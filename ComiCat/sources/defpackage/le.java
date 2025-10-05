package defpackage;

import java.util.logging.Logger;

/* renamed from: le  reason: default package */
/* compiled from: AbstractGoogleClient */
public abstract class le {
    static final Logger a = Logger.getLogger(le.class.getName());
    public final ma b;
    public final String c;
    public final String d;
    final String e;
    private final lh f;
    private final of g;
    private boolean h;
    private boolean i;

    /* renamed from: le$a */
    /* compiled from: AbstractGoogleClient */
    public static abstract class a {
        final mf a;
        lh b;
        mb c = null;
        final of d;
        String e;
        String f;
        String g;
        boolean h;
        boolean i;

        protected a(mf mfVar, String str, String str2, of ofVar) {
            this.a = (mf) ni.a(mfVar);
            this.d = ofVar;
            a(str);
            b(str2);
        }

        public a a(String str) {
            this.e = le.a(str);
            return this;
        }

        public a a(lh lhVar) {
            this.b = lhVar;
            return this;
        }

        public a b(String str) {
            this.f = le.b(str);
            return this;
        }

        public a c(String str) {
            this.g = str;
            return this;
        }
    }

    protected le(a aVar) {
        this.f = aVar.b;
        this.c = a(aVar.e);
        this.d = b(aVar.f);
        if (ol.a(aVar.g)) {
            a.warning("Application name is not set. Call Builder#setApplicationName.");
        }
        this.e = aVar.g;
        this.b = aVar.c == null ? aVar.a.a((mb) null) : aVar.a.a(aVar.c);
        this.g = aVar.d;
        this.h = aVar.h;
        this.i = aVar.i;
    }

    static String a(String str) {
        oh.a(str, (Object) "root URL cannot be null.");
        return !str.endsWith("/") ? str + "/" : str;
    }

    static String b(String str) {
        oh.a(str, (Object) "service path cannot be null");
        if (str.length() == 1) {
            oh.a("/".equals(str), (Object) "service path must equal \"/\" if it is of length 1.");
            return "";
        } else if (str.length() <= 0) {
            return str;
        } else {
            if (!str.endsWith("/")) {
                str = str + "/";
            }
            return str.startsWith("/") ? str.substring(1) : str;
        }
    }

    public final String a() {
        return this.c + this.d;
    }

    public void a(lf<?> lfVar) {
        if (this.f != null) {
            this.f.a(lfVar);
        }
    }

    public of b() {
        return this.g;
    }
}
