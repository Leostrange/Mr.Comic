package defpackage;

/* renamed from: rt  reason: default package */
/* compiled from: RequestPtyReq */
final class rt extends rp {
    String b = "vt100";
    int c = 80;
    int d = 24;
    int e = 640;
    int f = 480;
    byte[] g = si.a;

    rt() {
    }

    public final void a(ry ryVar, qb qbVar) {
        super.a(ryVar, qbVar);
        qa qaVar = new qa();
        rl rlVar = new rl(qaVar);
        rlVar.a();
        qaVar.a((byte) 98);
        qaVar.a(qbVar.c);
        qaVar.b(si.a("pty-req"));
        qaVar.a((byte) (this.a ? 1 : 0));
        qaVar.b(si.a(this.b));
        qaVar.a(this.c);
        qaVar.a(this.d);
        qaVar.a(this.e);
        qaVar.a(this.f);
        qaVar.b(this.g);
        a(rlVar);
    }
}
