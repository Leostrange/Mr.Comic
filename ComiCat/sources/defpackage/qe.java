package defpackage;

/* renamed from: qe  reason: default package */
/* compiled from: ChannelExec */
public final class qe extends qg {
    byte[] v = new byte[0];

    /* access modifiers changed from: package-private */
    public final void a() {
        this.j.a = h().e;
        this.j.b = h().f;
    }

    public final void b() {
        ry h = h();
        try {
            m();
            new rs(this.v).a(h, this);
            if (this.j.a != null) {
                this.k = new Thread(this);
                this.k.setName("Exec thread " + h.p);
                if (h.m) {
                    this.k.setDaemon(h.m);
                }
                this.k.start();
            }
        } catch (Exception e) {
            if (e instanceof qy) {
                throw ((qy) e);
            }
            throw new qy("ChannelExec", e);
        }
    }

    public final /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
