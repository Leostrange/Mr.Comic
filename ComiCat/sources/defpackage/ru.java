package defpackage;

/* renamed from: ru  reason: default package */
/* compiled from: RequestSftp */
public final class ru extends rp {
    ru() {
        this.a = true;
    }

    public final void a(ry ryVar, qb qbVar) {
        super.a(ryVar, qbVar);
        qa qaVar = new qa();
        rl rlVar = new rl(qaVar);
        rlVar.a();
        qaVar.a((byte) 98);
        qaVar.a(qbVar.c);
        qaVar.b(si.a("subsystem"));
        qaVar.a((byte) (this.a ? 1 : 0));
        qaVar.b(si.a("sftp"));
        a(rlVar);
    }
}
