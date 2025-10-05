package defpackage;

import android.os.Build;
import android.view.VelocityTracker;

/* renamed from: bg  reason: default package */
/* compiled from: VelocityTrackerCompat */
public final class bg {
    static final c a;

    /* renamed from: bg$a */
    /* compiled from: VelocityTrackerCompat */
    static class a implements c {
        a() {
        }

        public final float a(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getXVelocity();
        }

        public final float b(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getYVelocity();
        }
    }

    /* renamed from: bg$b */
    /* compiled from: VelocityTrackerCompat */
    static class b implements c {
        b() {
        }

        public final float a(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getXVelocity(i);
        }

        public final float b(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getYVelocity(i);
        }
    }

    /* renamed from: bg$c */
    /* compiled from: VelocityTrackerCompat */
    interface c {
        float a(VelocityTracker velocityTracker, int i);

        float b(VelocityTracker velocityTracker, int i);
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static float a(VelocityTracker velocityTracker, int i) {
        return a.a(velocityTracker, i);
    }

    public static float b(VelocityTracker velocityTracker, int i) {
        return a.b(velocityTracker, i);
    }
}
