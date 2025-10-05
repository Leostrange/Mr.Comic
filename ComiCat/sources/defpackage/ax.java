package defpackage;

import android.os.Build;
import android.view.MotionEvent;

/* renamed from: ax  reason: default package */
/* compiled from: MotionEventCompat */
public final class ax {
    static final e a;

    /* renamed from: ax$a */
    /* compiled from: MotionEventCompat */
    static class a implements e {
        a() {
        }

        public int a(MotionEvent motionEvent) {
            return 1;
        }

        public int a(MotionEvent motionEvent, int i) {
            return i == 0 ? 0 : -1;
        }

        public int b(MotionEvent motionEvent) {
            return 0;
        }

        public int b(MotionEvent motionEvent, int i) {
            if (i == 0) {
                return 0;
            }
            throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
        }

        public float c(MotionEvent motionEvent, int i) {
            if (i == 0) {
                return motionEvent.getX();
            }
            throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
        }

        public float d(MotionEvent motionEvent, int i) {
            if (i == 0) {
                return motionEvent.getY();
            }
            throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
        }

        public float e(MotionEvent motionEvent, int i) {
            return 0.0f;
        }
    }

    /* renamed from: ax$b */
    /* compiled from: MotionEventCompat */
    static class b extends a {
        b() {
        }

        public final int a(MotionEvent motionEvent) {
            return motionEvent.getPointerCount();
        }

        public final int a(MotionEvent motionEvent, int i) {
            return motionEvent.findPointerIndex(i);
        }

        public final int b(MotionEvent motionEvent, int i) {
            return motionEvent.getPointerId(i);
        }

        public final float c(MotionEvent motionEvent, int i) {
            return motionEvent.getX(i);
        }

        public final float d(MotionEvent motionEvent, int i) {
            return motionEvent.getY(i);
        }
    }

    /* renamed from: ax$c */
    /* compiled from: MotionEventCompat */
    static class c extends b {
        c() {
        }

        public final int b(MotionEvent motionEvent) {
            return motionEvent.getSource();
        }
    }

    /* renamed from: ax$d */
    /* compiled from: MotionEventCompat */
    static class d extends c {
        d() {
        }

        public final float e(MotionEvent motionEvent, int i) {
            return motionEvent.getAxisValue(i);
        }
    }

    /* renamed from: ax$e */
    /* compiled from: MotionEventCompat */
    interface e {
        int a(MotionEvent motionEvent);

        int a(MotionEvent motionEvent, int i);

        int b(MotionEvent motionEvent);

        int b(MotionEvent motionEvent, int i);

        float c(MotionEvent motionEvent, int i);

        float d(MotionEvent motionEvent, int i);

        float e(MotionEvent motionEvent, int i);
    }

    static {
        if (Build.VERSION.SDK_INT >= 12) {
            a = new d();
        } else if (Build.VERSION.SDK_INT >= 9) {
            a = new c();
        } else if (Build.VERSION.SDK_INT >= 5) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static int a(MotionEvent motionEvent) {
        return motionEvent.getAction() & 255;
    }

    public static int a(MotionEvent motionEvent, int i) {
        return a.a(motionEvent, i);
    }

    public static int b(MotionEvent motionEvent) {
        return (motionEvent.getAction() & 65280) >> 8;
    }

    public static int b(MotionEvent motionEvent, int i) {
        return a.b(motionEvent, i);
    }

    public static float c(MotionEvent motionEvent, int i) {
        return a.c(motionEvent, i);
    }

    public static int c(MotionEvent motionEvent) {
        return a.a(motionEvent);
    }

    public static float d(MotionEvent motionEvent, int i) {
        return a.d(motionEvent, i);
    }

    public static int d(MotionEvent motionEvent) {
        return a.b(motionEvent);
    }

    public static float e(MotionEvent motionEvent, int i) {
        return a.e(motionEvent, i);
    }
}
