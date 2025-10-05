package defpackage;

/* renamed from: os  reason: default package */
/* compiled from: Platform */
final class os {
    private static final ThreadLocal<char[]> a = new ThreadLocal<char[]>() {
        /* access modifiers changed from: protected */
        public final /* bridge */ /* synthetic */ Object initialValue() {
            return new char[1024];
        }
    };

    static char[] a() {
        return a.get();
    }
}
