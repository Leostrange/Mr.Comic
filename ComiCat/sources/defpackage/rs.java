package defpackage;

/* renamed from: rs  reason: default package */
/* compiled from: RequestExec */
final class rs extends rp {
    private byte[] b = new byte[0];

    rs(byte[] bArr) {
        this.b = bArr;
    }

    public final void a(ry ryVar, qb qbVar) {
        super.a(ryVar, qbVar);
        qa qaVar = new qa();
        rl rlVar = new rl(qaVar);
        rlVar.a();
        qaVar.a((byte) 98);
        qaVar.a(qbVar.c);
        qaVar.b(si.a("exec"));
        qaVar.a((byte) (this.a ? 1 : 0));
        qaVar.c(this.b.length + 4);
        qaVar.b(this.b);
        a(rlVar);
    }
}
