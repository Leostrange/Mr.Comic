package defpackage;

/* renamed from: ah  reason: default package */
/* compiled from: Pair */
public final class ah<F, S> {
    public final F a;
    public final S b;

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ah)) {
            return false;
        }
        ah ahVar = (ah) obj;
        return a(ahVar.a, this.a) && a(ahVar.b, this.b);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = this.a == null ? 0 : this.a.hashCode();
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode ^ i;
    }
}
