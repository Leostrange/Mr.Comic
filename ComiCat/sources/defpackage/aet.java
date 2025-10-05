package defpackage;

/* renamed from: aet  reason: default package */
/* compiled from: FlagType */
public final class aet {
    public int a = 0;

    public aet(int i) {
        this.a = i;
    }

    public final void a(int i) {
        this.a |= i;
    }

    public final void a(int i, boolean z) {
        if (z) {
            a(i);
        } else {
            b(i);
        }
    }

    public final void b(int i) {
        this.a &= i ^ -1;
    }

    public final boolean c(int i) {
        return (this.a & i) == i;
    }
}
