package defpackage;

/* renamed from: g  reason: default package */
/* compiled from: Loader */
public final class g<D> {
    public int a;
    public a<D> b;
    public boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;

    /* renamed from: g$a */
    /* compiled from: Loader */
    public interface a<D> {
    }

    public final void a(a<D> aVar) {
        if (this.b == null) {
            throw new IllegalStateException("No listener register");
        } else if (this.b != aVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else {
            this.b = null;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        ad.a(this, sb);
        sb.append(" id=");
        sb.append(this.a);
        sb.append("}");
        return sb.toString();
    }
}
