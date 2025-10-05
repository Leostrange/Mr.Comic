package defpackage;

import org.apache.http.HttpStatus;

/* renamed from: xx  reason: default package */
/* compiled from: netdfs */
public final class xx {

    /* renamed from: xx$a */
    /* compiled from: netdfs */
    public static class a extends yc {
        public int a;
        public d[] b;

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
                    this.b = new d[d];
                }
                xz a2 = xzVar2.a(i);
                for (int i2 = 0; i2 < d; i2++) {
                    if (this.b[i2] == null) {
                        this.b[i2] = new d();
                    }
                    this.b[i2].f(a2);
                }
            }
        }
    }

    /* renamed from: xx$b */
    /* compiled from: netdfs */
    public static class b extends yc {
        public int a;
        public e[] b;

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
                    this.b = new e[d];
                }
                xz a2 = xzVar2.a(i);
                for (int i2 = 0; i2 < d; i2++) {
                    if (this.b[i2] == null) {
                        this.b[i2] = new e();
                    }
                    this.b[i2].f(a2);
                }
            }
        }
    }

    /* renamed from: xx$c */
    /* compiled from: netdfs */
    public static class c extends yc {
        public int a;
        public yc b;

        public final void e(xz xzVar) {
            xzVar.d(4);
            xzVar.g(this.a);
            xzVar.g(this.a);
            xzVar.a((Object) this.b);
            if (this.b != null) {
                this.b.e(xzVar.e);
            }
        }

        public final void f(xz xzVar) {
            xzVar.d(4);
            this.a = xzVar.d();
            xzVar.d();
            if (xzVar.d() != 0) {
                if (this.b == null) {
                    this.b = new a();
                }
                this.b.f(xzVar.e);
            }
        }
    }

    /* renamed from: xx$d */
    /* compiled from: netdfs */
    public static class d extends yc {
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

    /* renamed from: xx$e */
    /* compiled from: netdfs */
    public static class e extends yc {
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

    /* renamed from: xx$f */
    /* compiled from: netdfs */
    public static class f extends xr {
        public int a;
        public String b;
        public int c = HttpStatus.SC_OK;
        public int d = 65535;
        public c l;
        public yb m;

        public f(String str, c cVar, yb ybVar) {
            this.b = str;
            this.l = cVar;
            this.m = ybVar;
        }

        public final void a(xz xzVar) {
            xzVar.a(this.b);
            xzVar.g(this.c);
            xzVar.g(this.d);
            xzVar.a((Object) this.l);
            if (this.l != null) {
                this.l.e(xzVar);
            }
            xzVar.a((Object) this.m);
            if (this.m != null) {
                this.m.e(xzVar);
            }
        }

        public final int b() {
            return 21;
        }

        public final void b(xz xzVar) {
            if (xzVar.d() != 0) {
                if (this.l == null) {
                    this.l = new c();
                }
                this.l.f(xzVar);
            }
            if (xzVar.d() != 0) {
                this.m.f(xzVar);
            }
            this.a = xzVar.d();
        }
    }
}
