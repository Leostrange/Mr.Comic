package defpackage;

/* renamed from: rq  reason: default package */
/* compiled from: RequestAgentForwarding */
final class rq extends rp {
    rq() {
    }

    public final void a(ry ryVar, qb qbVar) {
        int i = 0;
        super.a(ryVar, qbVar);
        this.a = false;
        qa qaVar = new qa();
        rl rlVar = new rl(qaVar);
        rlVar.a();
        qaVar.a((byte) 98);
        qaVar.a(qbVar.c);
        qaVar.b(si.a("auth-agent-req@openssh.com"));
        if (this.a) {
            i = 1;
        }
        qaVar.a((byte) i);
        a(rlVar);
        ryVar.d = true;
    }
}
