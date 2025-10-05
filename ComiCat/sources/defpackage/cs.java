package defpackage;

import android.content.Context;
import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import android.widget.Scroller;

/* renamed from: cs  reason: default package */
/* compiled from: ScrollerCompat */
public final class cs {
    public Object a;
    public a b;

    /* renamed from: cs$a */
    /* compiled from: ScrollerCompat */
    public interface a {
        Object a(Context context, Interpolator interpolator);

        void a(Object obj, int i, int i2, int i3);

        void a(Object obj, int i, int i2, int i3, int i4, int i5);

        void a(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7);

        boolean a(Object obj);

        int b(Object obj);

        void b(Object obj, int i, int i2, int i3, int i4, int i5);

        int c(Object obj);

        float d(Object obj);

        boolean e(Object obj);

        void f(Object obj);

        int g(Object obj);

        int h(Object obj);
    }

    /* renamed from: cs$b */
    /* compiled from: ScrollerCompat */
    static class b implements a {
        b() {
        }

        public final Object a(Context context, Interpolator interpolator) {
            return interpolator != null ? new Scroller(context, interpolator) : new Scroller(context);
        }

        public final void a(Object obj, int i, int i2, int i3) {
            ((Scroller) obj).startScroll(i, i2, 0, i3);
        }

        public final void a(Object obj, int i, int i2, int i3, int i4, int i5) {
            ((Scroller) obj).startScroll(i, i2, i3, i4, i5);
        }

        public final void a(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            ((Scroller) obj).fling(0, i, i2, i3, i4, i5, i6, i7);
        }

        public final boolean a(Object obj) {
            return ((Scroller) obj).isFinished();
        }

        public final int b(Object obj) {
            return ((Scroller) obj).getCurrX();
        }

        public final void b(Object obj, int i, int i2, int i3, int i4, int i5) {
            ((Scroller) obj).fling(i, i2, 0, i3, 0, 0, 0, i4);
        }

        public final int c(Object obj) {
            return ((Scroller) obj).getCurrY();
        }

        public final float d(Object obj) {
            return 0.0f;
        }

        public final boolean e(Object obj) {
            return ((Scroller) obj).computeScrollOffset();
        }

        public final void f(Object obj) {
            ((Scroller) obj).abortAnimation();
        }

        public final int g(Object obj) {
            return ((Scroller) obj).getFinalX();
        }

        public final int h(Object obj) {
            return ((Scroller) obj).getFinalY();
        }
    }

    /* renamed from: cs$c */
    /* compiled from: ScrollerCompat */
    static class c implements a {
        c() {
        }

        public final Object a(Context context, Interpolator interpolator) {
            return interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
        }

        public final void a(Object obj, int i, int i2, int i3) {
            ((OverScroller) obj).startScroll(i, i2, 0, i3);
        }

        public final void a(Object obj, int i, int i2, int i3, int i4, int i5) {
            ((OverScroller) obj).startScroll(i, i2, i3, i4, i5);
        }

        public final void a(Object obj, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            ((OverScroller) obj).fling(0, i, i2, i3, i4, i5, i6, i7);
        }

        public final boolean a(Object obj) {
            return ((OverScroller) obj).isFinished();
        }

        public final int b(Object obj) {
            return ((OverScroller) obj).getCurrX();
        }

        public final void b(Object obj, int i, int i2, int i3, int i4, int i5) {
            ((OverScroller) obj).fling(i, i2, 0, i3, 0, 0, 0, i4, 0, i5);
        }

        public final int c(Object obj) {
            return ((OverScroller) obj).getCurrY();
        }

        public float d(Object obj) {
            return 0.0f;
        }

        public final boolean e(Object obj) {
            return ((OverScroller) obj).computeScrollOffset();
        }

        public final void f(Object obj) {
            ((OverScroller) obj).abortAnimation();
        }

        public final int g(Object obj) {
            return ((OverScroller) obj).getFinalX();
        }

        public final int h(Object obj) {
            return ((OverScroller) obj).getFinalY();
        }
    }

    /* renamed from: cs$d */
    /* compiled from: ScrollerCompat */
    static class d extends c {
        d() {
        }

        public final float d(Object obj) {
            return ((OverScroller) obj).getCurrVelocity();
        }
    }

    private cs(int i, Context context, Interpolator interpolator) {
        if (i >= 14) {
            this.b = new d();
        } else if (i >= 9) {
            this.b = new c();
        } else {
            this.b = new b();
        }
        this.a = this.b.a(context, interpolator);
    }

    public cs(Context context, Interpolator interpolator) {
        this(Build.VERSION.SDK_INT, context, interpolator);
    }

    public static cs a(Context context, Interpolator interpolator) {
        return new cs(context, interpolator);
    }

    public final void a(int i, int i2, int i3, int i4, int i5) {
        this.b.a(this.a, i, i2, i3, i4, i5);
    }

    public final void a(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.b.a(this.a, i, i2, i3, i4, i5, i6, i7);
    }

    public final boolean a() {
        return this.b.a(this.a);
    }

    public final int b() {
        return this.b.b(this.a);
    }

    public final int c() {
        return this.b.c(this.a);
    }

    public final int d() {
        return this.b.g(this.a);
    }

    public final int e() {
        return this.b.h(this.a);
    }

    public final float f() {
        return this.b.d(this.a);
    }

    public final boolean g() {
        return this.b.e(this.a);
    }

    public final void h() {
        this.b.f(this.a);
    }
}
