package defpackage;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;

/* renamed from: f  reason: default package */
/* compiled from: IntentCompat */
public final class f {
    private static final a a;

    /* renamed from: f$a */
    /* compiled from: IntentCompat */
    interface a {
        Intent a(ComponentName componentName);
    }

    /* renamed from: f$b */
    /* compiled from: IntentCompat */
    static class b implements a {
        b() {
        }

        public Intent a(ComponentName componentName) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(componentName);
            intent.addCategory("android.intent.category.LAUNCHER");
            return intent;
        }
    }

    /* renamed from: f$c */
    /* compiled from: IntentCompat */
    static class c extends b {
        c() {
        }

        public final Intent a(ComponentName componentName) {
            return Intent.makeMainActivity(componentName);
        }
    }

    /* renamed from: f$d */
    /* compiled from: IntentCompat */
    static class d extends c {
        d() {
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 15) {
            a = new d();
        } else if (i >= 11) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static Intent a(ComponentName componentName) {
        return a.a(componentName);
    }
}
