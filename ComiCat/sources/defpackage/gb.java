package defpackage;

import defpackage.ga;

/* renamed from: gb  reason: default package */
/* compiled from: AuthorizationTokenFactory */
public final class gb {

    /* renamed from: gb$1  reason: invalid class name */
    /* compiled from: AuthorizationTokenFactory */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a = new int[ga.a.values().length];

        static {
            try {
                a[ga.a.ACCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[ga.a.REFRESH.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }
}
