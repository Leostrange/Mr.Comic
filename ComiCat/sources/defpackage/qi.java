package defpackage;

/* renamed from: qi  reason: default package */
/* compiled from: ChannelShell */
public final class qi extends qg {
    qi() {
        this.z = true;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.j.a = h().e;
        this.j.b = h().f;
    }

    public final void b() {
        ry h = h();
        try {
            m();
            new rv().a(h, this);
            if (this.j.a != null) {
                this.k = new Thread(this);
                this.k.setName("Shell for " + h.p);
                if (h.m) {
                    this.k.setDaemon(h.m);
                }
                this.k.start();
            }
        } catch (Exception e) {
            if (e instanceof qy) {
                throw ((qy) e);
            }
            throw new qy("ChannelShell", e);
        }
    }

    public final /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
