package defpackage;

/* renamed from: qd  reason: default package */
/* compiled from: ChannelDirectTCPIP */
public final class qd extends qb {
    private static final byte[] z = si.a("direct-tcpip");
    String v;
    int w;
    String x = "127.0.0.1";
    int y = 0;

    qd() {
        this.d = z;
        this.e = 131072;
        this.f = 131072;
        this.g = 16384;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.j = new qs();
    }

    public final void b(int i) {
        this.s = i;
        try {
            ry h = h();
            if (!h.b) {
                throw new qy("session is down");
            } else if (this.j.a != null) {
                this.k = new Thread(this);
                this.k.setName("DirectTCPIP thread " + h.p);
                if (h.m) {
                    this.k.setDaemon(h.m);
                }
                this.k.start();
            } else {
                l();
            }
        } catch (Exception e) {
            this.j.b();
            this.j = null;
            qb.a((qb) this);
            if (e instanceof qy) {
                throw ((qy) e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public final rl k() {
        qa qaVar = new qa(this.v.length() + 50 + this.x.length() + 84);
        rl rlVar = new rl(qaVar);
        rlVar.a();
        qaVar.a((byte) 90);
        qaVar.b(this.d);
        qaVar.a(this.b);
        qaVar.a(this.f);
        qaVar.a(this.g);
        qaVar.b(si.a(this.v));
        qaVar.a(this.w);
        qaVar.b(si.a(this.x));
        qaVar.a(this.y);
        return rlVar;
    }

    public final void run() {
        try {
            l();
            qa qaVar = new qa(this.i);
            rl rlVar = new rl(qaVar);
            ry h = h();
            while (true) {
                if (!g() || this.k == null || this.j == null || this.j.a == null) {
                    break;
                }
                int read = this.j.a.read(qaVar.b, 14, (qaVar.b.length - 14) - 84);
                if (read <= 0) {
                    e();
                    break;
                }
                rlVar.a();
                qaVar.a((byte) 94);
                qaVar.a(this.c);
                qaVar.a(read);
                qaVar.b(read);
                synchronized (this) {
                    if (!this.n) {
                        h.a(rlVar, (qb) this, read);
                    }
                }
            }
            e();
            f();
        } catch (Exception e) {
            if (!this.o) {
                this.o = true;
            }
            f();
        }
    }
}
