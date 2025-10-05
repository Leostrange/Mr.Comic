package defpackage;

import defpackage.li;

/* renamed from: ov  reason: default package */
/* compiled from: Drive */
public final class ov extends li {

    /* renamed from: ov$a */
    /* compiled from: Drive */
    public class a {

        /* renamed from: ov$a$a  reason: collision with other inner class name */
        /* compiled from: Drive */
        public class C0005a extends ow<oy> {
            @nz
            private Boolean includeSubscribed;
            @nz
            private Long maxChangeIdCount;
            @nz
            private Long startChangeId;

            protected C0005a() {
                super(ov.this, "GET", "about", oy.class);
            }

            /* access modifiers changed from: private */
            /* renamed from: f */
            public C0005a d(String str, Object obj) {
                return (C0005a) super.d(str, obj);
            }

            public final /* bridge */ /* synthetic */ ow a(Boolean bool) {
                return (C0005a) super.a(bool);
            }

            public final /* bridge */ /* synthetic */ ow a(String str) {
                return (C0005a) super.a(str);
            }

            public final /* bridge */ /* synthetic */ ow b(String str) {
                return (C0005a) super.b(str);
            }

            public final /* bridge */ /* synthetic */ ow c(String str) {
                return (C0005a) super.c(str);
            }
        }

        public a() {
        }

        public final C0005a a() {
            C0005a aVar = new C0005a();
            ov.this.a(aVar);
            return aVar;
        }
    }

    /* renamed from: ov$b */
    /* compiled from: Drive */
    public static final class b extends li.a {
        public b(mf mfVar, mv mvVar) {
            super(mfVar, mvVar, "https://www.googleapis.com/", "drive/v2/");
        }

        /* access modifiers changed from: private */
        /* renamed from: c */
        public b b(lh lhVar) {
            return (b) super.a(lhVar);
        }

        /* access modifiers changed from: private */
        /* renamed from: h */
        public b d(String str) {
            return (b) super.a(str);
        }

        /* access modifiers changed from: private */
        /* renamed from: i */
        public b e(String str) {
            return (b) super.b(str);
        }

        public final b a(ox oxVar) {
            return (b) super.a((lh) oxVar);
        }

        /* renamed from: g */
        public final b f(String str) {
            return (b) super.c(str);
        }
    }

    /* renamed from: ov$c */
    /* compiled from: Drive */
    public class c {

        /* renamed from: ov$c$a */
        /* compiled from: Drive */
        public class a extends ow<oz> {
            @nz
            private Boolean acknowledgeAbuse;
            @nz
            private String fileId;
            @nz
            private String projection;
            @nz
            private String revisionId;
            @nz
            private Boolean updateViewedDate;

            protected a(String str) {
                super(ov.this, "GET", "files/{fileId}", oz.class);
                this.fileId = (String) oh.a(str, (Object) "Required parameter fileId must be specified.");
                ma maVar = this.a.b;
                this.d = new lb(maVar.a, maVar.b);
            }

            /* access modifiers changed from: private */
            /* renamed from: f */
            public a d(String str, Object obj) {
                return (a) super.d(str, obj);
            }

            public final /* bridge */ /* synthetic */ ow a(Boolean bool) {
                return (a) super.a(bool);
            }

            public final /* bridge */ /* synthetic */ ow a(String str) {
                return (a) super.a(str);
            }

            public final lr b() {
                return new lr(ml.a((!"media".equals(get("alt")) || this.c != null) ? ov.this.a() : ov.this.c + "download/" + ov.this.d, this.b, this));
            }

            public final /* bridge */ /* synthetic */ ow b(String str) {
                return (a) super.b(str);
            }

            public final /* bridge */ /* synthetic */ ow c(String str) {
                return (a) super.c(str);
            }
        }

        /* renamed from: ov$c$b */
        /* compiled from: Drive */
        public class b extends ow<pa> {
            @nz
            private String corpus;
            @nz
            public Integer maxResults;
            @nz
            private String orderBy;
            @nz
            public String pageToken;
            @nz
            private String projection;
            @nz
            public String q;
            @nz
            public String spaces;

            protected b() {
                super(ov.this, "GET", "files", pa.class);
            }

            /* access modifiers changed from: private */
            /* renamed from: f */
            public b d(String str, Object obj) {
                return (b) super.d(str, obj);
            }

            public final /* bridge */ /* synthetic */ ow a(Boolean bool) {
                return (b) super.a(bool);
            }

            public final /* bridge */ /* synthetic */ ow a(String str) {
                return (b) super.a(str);
            }

            public final /* bridge */ /* synthetic */ ow b(String str) {
                return (b) super.b(str);
            }

            /* renamed from: d */
            public final b c(String str) {
                return (b) super.c(str);
            }
        }

        public c() {
        }

        public final a a(String str) {
            a aVar = new a(str);
            ov.this.a(aVar);
            return aVar;
        }

        public final b a() {
            b bVar = new b();
            ov.this.a(bVar);
            return bVar;
        }
    }

    static {
        boolean z = ks.a.intValue() == 1 && ks.b.intValue() >= 15;
        Object[] objArr = {ks.d};
        if (!z) {
            throw new IllegalStateException(ni.a("You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.22.0 of the Drive API library.", objArr));
        }
    }

    public ov(b bVar) {
        super(bVar);
    }

    /* access modifiers changed from: protected */
    public final void a(lf<?> lfVar) {
        super.a(lfVar);
    }

    public final c d() {
        return new c();
    }
}
