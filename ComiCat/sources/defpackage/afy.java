package defpackage;

import android.view.MotionEvent;

/* renamed from: afy  reason: default package */
/* compiled from: ScaleDetector */
public class afy {

    /* renamed from: afy$a */
    /* compiled from: ScaleDetector */
    public interface a {
        boolean a();

        boolean a(afy afy);

        void b();
    }

    /* renamed from: afy$b */
    /* compiled from: ScaleDetector */
    public static class b implements a {
        public boolean a() {
            return true;
        }

        public boolean a(afy afy) {
            return false;
        }

        public void b() {
        }
    }

    public boolean a() {
        return false;
    }

    public boolean a(MotionEvent motionEvent) {
        return false;
    }

    public float b() {
        return 1.0f;
    }
}
