package defpackage;

/* renamed from: yd  reason: default package */
/* compiled from: rpc */
public final class yd {

    /* renamed from: yd$a */
    /* compiled from: rpc */
    public static class a extends yc {
        public int b;
        public short c;
        public short d;
        public byte e;
        public byte f;
        public byte[] g;

        public final void e(xz xzVar) {
            xzVar.d(4);
            xzVar.g(this.b);
            xzVar.f(this.c);
            xzVar.f(this.d);
            xzVar.e(this.e);
            xzVar.e(this.f);
            int i = xzVar.c;
            xzVar.c(6);
            xz a = xzVar.a(i);
            for (int i2 = 0; i2 < 6; i2++) {
                a.e(this.g[i2]);
            }
        }

        public final void f(xz xzVar) {
            xzVar.d(4);
            this.b = xzVar.d();
            this.c = (short) xzVar.c();
            this.d = (short) xzVar.c();
            this.e = (byte) xzVar.b();
            this.f = (byte) xzVar.b();
            int i = xzVar.c;
            xzVar.c(6);
            if (this.g == null) {
                this.g = new byte[6];
            }
            xz a = xzVar.a(i);
            for (int i2 = 0; i2 < 6; i2++) {
                this.g[i2] = (byte) a.b();
            }
        }
    }
}
