package defpackage;

/* renamed from: vp  reason: default package */
/* compiled from: RangeCoder */
public final class vp {
    public long a;
    public long b;
    public long c;
    final a d = new a();
    public uy e;

    /* renamed from: vp$a */
    /* compiled from: RangeCoder */
    public static class a {
        long a;
        long b;
        private long c;

        public final long a() {
            return this.c & 4294967295L;
        }

        public final void a(long j) {
            this.a = 4294967295L & j;
        }

        public final void b(long j) {
            this.c = 4294967295L & j;
        }

        public final void c(long j) {
            this.b = 4294967295L & j;
        }

        public final String toString() {
            return "SubRange[" + "\n  lowCount=" + this.c + "\n  highCount=" + this.a + "\n  scale=" + this.b + "]";
        }
    }

    public final int a() {
        this.c = (this.c / this.d.b) & 4294967295L;
        return (int) ((this.b - this.a) / this.c);
    }

    public final void b() {
        this.a = (this.a + (this.c * this.d.a())) & 4294967295L;
        this.c = (this.c * (this.d.a - this.d.a())) & 4294967295L;
    }

    public final void c() {
        boolean z = false;
        while (true) {
            if ((this.a ^ (this.a + this.c)) >= 16777216) {
                z = this.c < 32768;
                if (!z) {
                    return;
                }
            }
            if (z) {
                this.c = (-this.a) & 32767 & 4294967295L;
                z = false;
            }
            this.b = ((this.b << 8) | ((long) this.e.a())) & 4294967295L;
            this.c = (this.c << 8) & 4294967295L;
            this.a = (this.a << 8) & 4294967295L;
        }
    }

    public final String toString() {
        return "RangeCoder[" + "\n  low=" + this.a + "\n  code=" + this.b + "\n  range=" + this.c + "\n  subrange=" + this.d + "]";
    }
}
