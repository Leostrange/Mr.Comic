package defpackage;

/* renamed from: rr  reason: default package */
/* compiled from: RequestEnv */
final class rr extends rp {
    byte[] b = new byte[0];
    byte[] c = new byte[0];

    rr() {
    }

    public final void a(ry ryVar, qb qbVar) {
        super.a(ryVar, qbVar);
        qa qaVar = new qa();
        rl rlVar = new rl(qaVar);
        rlVar.a();
        qaVar.a((byte) 98);
        qaVar.a(qbVar.c);
        qaVar.b(si.a("env"));
        qaVar.a((byte) (this.a ? 1 : 0));
        qaVar.b(this.b);
        qaVar.b(this.c);
        a(rlVar);
    }
}
