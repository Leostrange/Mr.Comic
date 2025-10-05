package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.widget.EdgeEffect;

/* renamed from: cm  reason: default package */
/* compiled from: EdgeEffectCompat */
public final class cm {
    private static final c b;
    private Object a;

    /* renamed from: cm$a */
    /* compiled from: EdgeEffectCompat */
    static class a implements c {
        a() {
        }

        public final Object a(Context context) {
            return null;
        }

        public final void a(Object obj, int i, int i2) {
        }

        public final boolean a(Object obj) {
            return true;
        }

        public final boolean a(Object obj, float f) {
            return false;
        }

        public final boolean a(Object obj, float f, float f2) {
            return false;
        }

        public final boolean a(Object obj, int i) {
            return false;
        }

        public final boolean a(Object obj, Canvas canvas) {
            return false;
        }

        public final void b(Object obj) {
        }

        public final boolean c(Object obj) {
            return false;
        }
    }

    /* renamed from: cm$b */
    /* compiled from: EdgeEffectCompat */
    static class b implements c {
        b() {
        }

        public final Object a(Context context) {
            return new EdgeEffect(context);
        }

        public final void a(Object obj, int i, int i2) {
            ((EdgeEffect) obj).setSize(i, i2);
        }

        public final boolean a(Object obj) {
            return ((EdgeEffect) obj).isFinished();
        }

        public final boolean a(Object obj, float f) {
            return cn.a(obj, f);
        }

        public boolean a(Object obj, float f, float f2) {
            return cn.a(obj, f);
        }

        public final boolean a(Object obj, int i) {
            ((EdgeEffect) obj).onAbsorb(i);
            return true;
        }

        public final boolean a(Object obj, Canvas canvas) {
            return ((EdgeEffect) obj).draw(canvas);
        }

        public final void b(Object obj) {
            ((EdgeEffect) obj).finish();
        }

        public final boolean c(Object obj) {
            EdgeEffect edgeEffect = (EdgeEffect) obj;
            edgeEffect.onRelease();
            return edgeEffect.isFinished();
        }
    }

    /* renamed from: cm$c */
    /* compiled from: EdgeEffectCompat */
    interface c {
        Object a(Context context);

        void a(Object obj, int i, int i2);

        boolean a(Object obj);

        boolean a(Object obj, float f);

        boolean a(Object obj, float f, float f2);

        boolean a(Object obj, int i);

        boolean a(Object obj, Canvas canvas);

        void b(Object obj);

        boolean c(Object obj);
    }

    /* renamed from: cm$d */
    /* compiled from: EdgeEffectCompat */
    static class d extends b {
        d() {
        }

        public final boolean a(Object obj, float f, float f2) {
            ((EdgeEffect) obj).onPull(f, f2);
            return true;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            b = new d();
        } else if (Build.VERSION.SDK_INT >= 14) {
            b = new b();
        } else {
            b = new a();
        }
    }

    public cm(Context context) {
        this.a = b.a(context);
    }

    public final void a(int i, int i2) {
        b.a(this.a, i, i2);
    }

    public final boolean a() {
        return b.a(this.a);
    }

    public final boolean a(float f) {
        return b.a(this.a, f);
    }

    public final boolean a(float f, float f2) {
        return b.a(this.a, f, f2);
    }

    public final boolean a(int i) {
        return b.a(this.a, i);
    }

    public final boolean a(Canvas canvas) {
        return b.a(this.a, canvas);
    }

    public final void b() {
        b.b(this.a);
    }

    public final boolean c() {
        return b.c(this.a);
    }
}
