package defpackage;

/* renamed from: om  reason: default package */
/* compiled from: Throwables */
public final class om {
    public static RuntimeException a(Throwable th) {
        Throwable th2 = (Throwable) ni.a(th);
        nk.a(th2, Error.class);
        nk.a(th2, RuntimeException.class);
        throw new RuntimeException(th);
    }
}
