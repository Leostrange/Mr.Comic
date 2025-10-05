package defpackage;

/* renamed from: rx  reason: default package */
/* compiled from: RequestX11 */
final class rx extends rp {
    rx() {
    }

    public final void a(ry ryVar, qb qbVar) {
        super.a(ryVar, qbVar);
        qa qaVar = new qa();
        rl rlVar = new rl(qaVar);
        rlVar.a();
        qaVar.a((byte) 98);
        qaVar.a(qbVar.c);
        qaVar.b(si.a("x11-req"));
        qaVar.a((byte) (this.a ? 1 : 0));
        qaVar.a((byte) 0);
        qaVar.b(si.a("MIT-MAGIC-COOKIE-1"));
        qaVar.b(qk.b(ryVar));
        qaVar.a(0);
        a(rlVar);
        ryVar.c = true;
    }
}
