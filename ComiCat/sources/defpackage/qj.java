package defpackage;

/* renamed from: qj  reason: default package */
/* compiled from: ChannelSubsystem */
public final class qj extends qg {
    boolean G = false;
    boolean H = true;
    String I = "";
    boolean v = false;

    /* access modifiers changed from: package-private */
    public final void a() {
        this.j.a = h().e;
        this.j.b = h().f;
    }

    public final void b() {
        ry h = h();
        try {
            if (this.v) {
                new rx().a(h, this);
            }
            if (this.G) {
                new rt().a(h, this);
            }
            rw rwVar = new rw();
            String str = this.I;
            rwVar.a = this.H;
            rwVar.b = str;
            rwVar.a(h, this);
            if (this.j.a != null) {
                this.k = new Thread(this);
                this.k.setName("Subsystem for " + h.p);
                if (h.m) {
                    this.k.setDaemon(h.m);
                }
                this.k.start();
            }
        } catch (Exception e) {
            if (e instanceof qy) {
                throw ((qy) e);
            }
            throw new qy("ChannelSubsystem", e);
        }
    }

    public final /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
