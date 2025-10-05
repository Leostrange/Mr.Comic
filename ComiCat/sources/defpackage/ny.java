package defpackage;

/* renamed from: ny  reason: default package */
/* compiled from: Joiner */
public final class ny {
    private final nh a;

    private ny(nh nhVar) {
        this.a = nhVar;
    }

    public static ny a() {
        return new ny(new nh(" "));
    }

    public final String a(Iterable<?> iterable) {
        return this.a.a(new StringBuilder(), iterable.iterator()).toString();
    }
}
