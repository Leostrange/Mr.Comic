package defpackage;

import defpackage.fh;

/* renamed from: gy  reason: default package */
/* compiled from: DefaultLibraryInfo */
public abstract class gy {
    private static final String a = gy.class.getName();
    private static fh.a b = fh.a.NO_FORCE;

    public static synchronized void a(fh.a aVar) {
        synchronized (gy.class) {
            b = aVar;
            gz.c(a, "App State overwritten : " + b);
        }
    }

    public static synchronized boolean a() {
        boolean z;
        synchronized (gy.class) {
            z = b == fh.a.FORCE_PROD || b == fh.a.NO_FORCE;
        }
        return z;
    }

    public static synchronized fh.a b() {
        fh.a aVar;
        synchronized (gy.class) {
            aVar = b;
        }
        return aVar;
    }
}
