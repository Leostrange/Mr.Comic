package defpackage;

/* renamed from: rp  reason: default package */
/* compiled from: Request */
abstract class rp {
    boolean a = false;
    private ry b = null;
    private qb c = null;

    rp() {
    }

    /* access modifiers changed from: package-private */
    public final void a(rl rlVar) {
        if (this.a) {
            this.c.r = -1;
        }
        this.b.a(rlVar);
        if (this.a) {
            long currentTimeMillis = System.currentTimeMillis();
            long j = (long) this.c.s;
            while (this.c.g() && this.c.r == -1) {
                try {
                    Thread.sleep(10);
                } catch (Exception e) {
                }
                if (j > 0 && System.currentTimeMillis() - currentTimeMillis > j) {
                    this.c.r = 0;
                    throw new qy("channel request: timeout");
                }
            }
            if (this.c.r == 0) {
                throw new qy("failed to send channel request");
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(ry ryVar, qb qbVar) {
        this.b = ryVar;
        this.c = qbVar;
        if (qbVar.s > 0) {
            this.a = true;
        }
    }
}
