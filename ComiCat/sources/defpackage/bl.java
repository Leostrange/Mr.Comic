package defpackage;

import android.os.Build;
import android.view.ViewConfiguration;

/* renamed from: bl  reason: default package */
/* compiled from: ViewConfigurationCompat */
public final class bl {
    static final e a;

    /* renamed from: bl$a */
    /* compiled from: ViewConfigurationCompat */
    static class a implements e {
        a() {
        }

        public int a(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledTouchSlop();
        }

        public boolean b(ViewConfiguration viewConfiguration) {
            return true;
        }
    }

    /* renamed from: bl$b */
    /* compiled from: ViewConfigurationCompat */
    static class b extends a {
        b() {
        }

        public final int a(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledPagingTouchSlop();
        }
    }

    /* renamed from: bl$c */
    /* compiled from: ViewConfigurationCompat */
    static class c extends b {
        c() {
        }

        public boolean b(ViewConfiguration viewConfiguration) {
            return false;
        }
    }

    /* renamed from: bl$d */
    /* compiled from: ViewConfigurationCompat */
    static class d extends c {
        d() {
        }

        public final boolean b(ViewConfiguration viewConfiguration) {
            return viewConfiguration.hasPermanentMenuKey();
        }
    }

    /* renamed from: bl$e */
    /* compiled from: ViewConfigurationCompat */
    interface e {
        int a(ViewConfiguration viewConfiguration);

        boolean b(ViewConfiguration viewConfiguration);
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            a = new d();
        } else if (Build.VERSION.SDK_INT >= 11) {
            a = new c();
        } else if (Build.VERSION.SDK_INT >= 8) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static int a(ViewConfiguration viewConfiguration) {
        return a.a(viewConfiguration);
    }

    public static boolean b(ViewConfiguration viewConfiguration) {
        return a.b(viewConfiguration);
    }
}
