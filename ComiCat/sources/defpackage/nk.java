package defpackage;

/* renamed from: nk  reason: default package */
/* compiled from: Throwables */
public final class nk {
    public static <X extends Throwable> void a(Throwable th, Class<X> cls) {
        if (th != null && cls.isInstance(th)) {
            throw ((Throwable) cls.cast(th));
        }
    }
}
