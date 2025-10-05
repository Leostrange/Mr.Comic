package defpackage;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;

/* renamed from: by  reason: default package */
/* compiled from: AccessibilityEventCompat */
public final class by {
    private static final d a;

    /* renamed from: by$a */
    /* compiled from: AccessibilityEventCompat */
    static class a extends c {
        a() {
        }
    }

    /* renamed from: by$b */
    /* compiled from: AccessibilityEventCompat */
    static class b extends a {
        b() {
        }

        public final int a(AccessibilityEvent accessibilityEvent) {
            return accessibilityEvent.getContentChangeTypes();
        }

        public final void a(AccessibilityEvent accessibilityEvent, int i) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }

    /* renamed from: by$c */
    /* compiled from: AccessibilityEventCompat */
    static class c implements d {
        c() {
        }

        public int a(AccessibilityEvent accessibilityEvent) {
            return 0;
        }

        public void a(AccessibilityEvent accessibilityEvent, int i) {
        }
    }

    /* renamed from: by$d */
    /* compiled from: AccessibilityEventCompat */
    interface d {
        int a(AccessibilityEvent accessibilityEvent);

        void a(AccessibilityEvent accessibilityEvent, int i);
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            a = new b();
        } else if (Build.VERSION.SDK_INT >= 14) {
            a = new a();
        } else {
            a = new c();
        }
    }

    public static cd a(AccessibilityEvent accessibilityEvent) {
        return new cd(accessibilityEvent);
    }

    public static void a(AccessibilityEvent accessibilityEvent, int i) {
        a.a(accessibilityEvent, i);
    }

    public static int b(AccessibilityEvent accessibilityEvent) {
        return a.a(accessibilityEvent);
    }
}
