package defpackage;

import android.os.Build;

/* renamed from: w  reason: default package */
/* compiled from: ICUCompat */
public final class w {
    private static final a a;

    /* renamed from: w$a */
    /* compiled from: ICUCompat */
    interface a {
        String a(String str);

        String b(String str);
    }

    /* renamed from: w$b */
    /* compiled from: ICUCompat */
    static class b implements a {
        b() {
        }

        public final String a(String str) {
            return null;
        }

        public final String b(String str) {
            return str;
        }
    }

    /* renamed from: w$c */
    /* compiled from: ICUCompat */
    static class c implements a {
        c() {
        }

        public final String a(String str) {
            return x.a(str);
        }

        public final String b(String str) {
            return x.b(str);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static String a(String str) {
        return a.a(str);
    }

    public static String b(String str) {
        return a.b(str);
    }
}
