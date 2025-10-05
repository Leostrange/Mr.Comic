package defpackage;

/* renamed from: xy  reason: default package */
/* compiled from: srvsvc */
public final class xy {

    /* renamed from: xy$a */
    /* compiled from: srvsvc */
    public static class a extends xr {
        public int a;
        public String b;
        public int c = 1;
        public yc d;
        public int l;
        public int m;
        public int n;

        public a(String str, yc ycVar) {
            this.b = str;
            this.d = ycVar;
            this.l = -1;
            this.m = 0;
            this.n = 0;
        }

        public final void a(xz xzVar) {
            xzVar.a((Object) this.b);
            if (this.b != null) {
                xzVar.a(this.b);
            }
            xzVar.g(this.c);
            xzVar.g(this.c);
            xzVar.a((Object) this.d);
            if (this.d != null) {
                xzVar = xzVar.e;
                this.d.e(xzVar);
            }
            xzVar.g(this.l);
            xzVar.g(this.n);
        }

        public final int b() {
            return 15;
        }

        public final void b(xz xzVar) {
            this.c = xzVar.d();
            xzVar.d();
            if (xzVar.d() != 0) {
                if (this.d == null) {
                    this.d = new d();
                }
                xzVar = xzVar.e;
                this.d.f(xzVar);
            }
            this.m = xzVar.d();
            this.n = xzVar.d();
            this.a = xzVar.d();
        }
    }

    /* renamed from: xy$b */
    /* compiled from: srvsvc */
    public static class b extends yc {
        public String a;

        public final void e(xz xzVar) {
            xzVar.d(4);
            xzVar.a((Object) this.a);
            if (this.a != null) {
                xzVar.e.a(this.a);
            }
        }

        public final void f(xz xzVar) {
            xzVar.d(4);
            if (xzVar.d() != 0) {
                this.a = xzVar.e.e();
            }
        }
    }

    /* renamed from: xy$c */
    /* compiled from: srvsvc */
    public static class c extends yc {
        public String a;
        public int b;
        public String c;

        public final void e(xz xzVar) {
            xzVar.d(4);
            xzVar.a((Object) this.a);
            xzVar.g(this.b);
            xzVar.a((Object) this.c);
            if (this.a != null) {
                xzVar = xzVar.e;
                xzVar.a(this.a);
            }
            if (this.c != null) {
                xzVar.e.a(this.c);
            }
        }

        public final void f(xz xzVar) {
            xzVar.d(4);
            int d = xzVar.d();
            this.b = xzVar.d();
            int d2 = xzVar.d();
            if (d != 0) {
                xzVar = xzVar.e;
                this.a = xzVar.e();
            }
            if (d2 != 0) {
                this.c = xzVar.e.e();
            }
        }
    }

    /* renamed from: xy$d */
    /* compiled from: srvsvc */
    public static class d extends yc {
        public int a;
        public b[] b;

        public final void e(xz xzVar) {
            xzVar.d(4);
            xzVar.g(this.a);
            xzVar.a((Object) this.b);
            if (this.b != null) {
                xz xzVar2 = xzVar.e;
                int i = this.a;
                xzVar2.g(i);
                int i2 = xzVar2.c;
                xzVar2.c(i * 4);
                xz a2 = xzVar2.a(i2);
                for (int i3 = 0; i3 < i; i3++) {
                    this.b[i3].e(a2);
                }
            }
        }

        public final void f(xz xzVar) {
            xzVar.d(4);
            this.a = xzVar.d();
            if (xzVar.d() != 0) {
                xz xzVar2 = xzVar.e;
                int d = xzVar2.d();
                int i = xzVar2.c;
                xzVar2.c(d * 4);
                if (this.b == null) {
                    if (d < 0 || d > 65535) {
                        throw new ya("invalid array conformance");
                    }
                    this.b = new b[d];
                }
                xz a2 = xzVar2.a(i);
                for (int i2 = 0; i2 < d; i2++) {
                    if (this.b[i2] == null) {
                        this.b[i2] = new b();
                    }
                    this.b[i2].f(a2);
                }
            }
        }
    }

    /* renamed from: xy$e */
    /* compiled from: srvsvc */
    public static class e extends yc {
        public int a;
        public c[] b;

        public final void e(xz xzVar) {
            xzVar.d(4);
            xzVar.g(this.a);
            xzVar.a((Object) this.b);
            if (this.b != null) {
                xz xzVar2 = xzVar.e;
                int i = this.a;
                xzVar2.g(i);
                int i2 = xzVar2.c;
                xzVar2.c(i * 12);
                xz a2 = xzVar2.a(i2);
                for (int i3 = 0; i3 < i; i3++) {
                    this.b[i3].e(a2);
                }
            }
        }

        public final void f(xz xzVar) {
            xzVar.d(4);
            this.a = xzVar.d();
            if (xzVar.d() != 0) {
                xz xzVar2 = xzVar.e;
                int d = xzVar2.d();
                int i = xzVar2.c;
                xzVar2.c(d * 12);
                if (this.b == null) {
                    if (d < 0 || d > 65535) {
                        throw new ya("invalid array conformance");
                    }
                    this.b = new c[d];
                }
                xz a2 = xzVar2.a(i);
                for (int i2 = 0; i2 < d; i2++) {
                    if (this.b[i2] == null) {
                        this.b[i2] = new c();
                    }
                    this.b[i2].f(a2);
                }
            }
        }
    }
}
