package defpackage;

/* renamed from: vu  reason: default package */
/* compiled from: StateRef */
public final class vu {
    int a;
    int b;
    int c;

    public final void a(int i) {
        this.a = i & 255;
    }

    public final void a(vt vtVar) {
        b(vtVar.b());
        this.c = vtVar.d();
        a(vtVar.a());
    }

    public final void b(int i) {
        this.b = i & 255;
    }

    public final String toString() {
        return "State[" + "\n  symbol=" + this.a + "\n  freq=" + this.b + "\n  successor=" + this.c + "\n]";
    }
}
