package defpackage;

import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import org.apache.http.HttpStatus;

/* renamed from: cg  reason: default package */
/* compiled from: AutoScrollHelper */
public abstract class cg implements View.OnTouchListener {
    private static final int r = ViewConfiguration.getTapTimeout();
    /* access modifiers changed from: private */
    public final a a = new a();
    private final Interpolator b = new AccelerateInterpolator();
    /* access modifiers changed from: private */
    public final View c;
    private Runnable d;
    private float[] e = {0.0f, 0.0f};
    private float[] f = {Float.MAX_VALUE, Float.MAX_VALUE};
    private int g;
    private int h;
    private float[] i = {0.0f, 0.0f};
    private float[] j = {0.0f, 0.0f};
    private float[] k = {Float.MAX_VALUE, Float.MAX_VALUE};
    private boolean l;
    /* access modifiers changed from: private */
    public boolean m;
    /* access modifiers changed from: private */
    public boolean n;
    /* access modifiers changed from: private */
    public boolean o;
    private boolean p;
    private boolean q;

    /* renamed from: cg$a */
    /* compiled from: AutoScrollHelper */
    static class a {
        int a;
        int b;
        float c;
        float d;
        long e = Long.MIN_VALUE;
        long f = 0;
        int g = 0;
        int h = 0;
        long i = -1;
        float j;
        int k;

        /* access modifiers changed from: package-private */
        public final float a(long j2) {
            if (j2 < this.e) {
                return 0.0f;
            }
            if (this.i < 0 || j2 < this.i) {
                return cg.a(((float) (j2 - this.e)) / ((float) this.a), 0.0f, 1.0f) * 0.5f;
            }
            return (cg.a(((float) (j2 - this.i)) / ((float) this.k), 0.0f, 1.0f) * this.j) + (1.0f - this.j);
        }
    }

    /* renamed from: cg$b */
    /* compiled from: AutoScrollHelper */
    class b implements Runnable {
        private b() {
        }

        /* synthetic */ b(cg cgVar, byte b) {
            this();
        }

        public final void run() {
            boolean z = false;
            if (cg.this.o) {
                if (cg.this.m) {
                    boolean unused = cg.this.m = false;
                    a d = cg.this.a;
                    d.e = AnimationUtils.currentAnimationTimeMillis();
                    d.i = -1;
                    d.f = d.e;
                    d.j = 0.5f;
                    d.g = 0;
                    d.h = 0;
                }
                a d2 = cg.this.a;
                if (d2.i > 0 && AnimationUtils.currentAnimationTimeMillis() > d2.i + ((long) d2.k)) {
                    z = true;
                }
                if (z || !cg.this.a()) {
                    boolean unused2 = cg.this.o = false;
                    return;
                }
                if (cg.this.n) {
                    boolean unused3 = cg.this.n = false;
                    cg.i(cg.this);
                }
                if (d2.f == 0) {
                    throw new RuntimeException("Cannot compute scroll delta before calling start()");
                }
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float a2 = d2.a(currentAnimationTimeMillis);
                float f = (a2 * 4.0f) + (-4.0f * a2 * a2);
                long j = currentAnimationTimeMillis - d2.f;
                d2.f = currentAnimationTimeMillis;
                d2.g = (int) (((float) j) * f * d2.c);
                d2.h = (int) (f * ((float) j) * d2.d);
                cg.this.a(d2.h);
                bh.a(cg.this.c, (Runnable) this);
            }
        }
    }

    public cg(View view) {
        this.c = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        float f2 = (float) ((int) ((1575.0f * displayMetrics.density) + 0.5f));
        this.k[0] = f2 / 1000.0f;
        this.k[1] = f2 / 1000.0f;
        float f3 = (float) ((int) ((displayMetrics.density * 315.0f) + 0.5f));
        this.j[0] = f3 / 1000.0f;
        this.j[1] = f3 / 1000.0f;
        this.g = 1;
        this.f[0] = Float.MAX_VALUE;
        this.f[1] = Float.MAX_VALUE;
        this.e[0] = 0.2f;
        this.e[1] = 0.2f;
        this.i[0] = 0.001f;
        this.i[1] = 0.001f;
        this.h = r;
        this.a.a = HttpStatus.SC_INTERNAL_SERVER_ERROR;
        this.a.b = HttpStatus.SC_INTERNAL_SERVER_ERROR;
    }

    private float a(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        switch (this.g) {
            case 0:
            case 1:
                if (f2 < f3) {
                    return f2 >= 0.0f ? 1.0f - (f2 / f3) : (!this.o || this.g != 1) ? 0.0f : 1.0f;
                }
                return 0.0f;
            case 2:
                if (f2 < 0.0f) {
                    return f2 / (-f3);
                }
                return 0.0f;
            default:
                return 0.0f;
        }
    }

    /* access modifiers changed from: private */
    public static float a(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0040  */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x0031  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private float a(int r6, float r7, float r8, float r9) {
        /*
            r5 = this;
            r1 = 0
            float[] r0 = r5.e
            r0 = r0[r6]
            float[] r2 = r5.f
            r2 = r2[r6]
            float r0 = r0 * r8
            float r0 = a(r0, r1, r2)
            float r2 = r5.a(r7, r0)
            float r3 = r8 - r7
            float r0 = r5.a(r3, r0)
            float r0 = r0 - r2
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r2 >= 0) goto L_0x0033
            android.view.animation.Interpolator r2 = r5.b
            float r0 = -r0
            float r0 = r2.getInterpolation(r0)
            float r0 = -r0
        L_0x0025:
            r2 = -1082130432(0xffffffffbf800000, float:-1.0)
            r3 = 1065353216(0x3f800000, float:1.0)
            float r0 = a(r0, r2, r3)
        L_0x002d:
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r2 != 0) goto L_0x0040
            r0 = r1
        L_0x0032:
            return r0
        L_0x0033:
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r2 <= 0) goto L_0x003e
            android.view.animation.Interpolator r2 = r5.b
            float r0 = r2.getInterpolation(r0)
            goto L_0x0025
        L_0x003e:
            r0 = r1
            goto L_0x002d
        L_0x0040:
            float[] r2 = r5.i
            r2 = r2[r6]
            float[] r3 = r5.j
            r3 = r3[r6]
            float[] r4 = r5.k
            r4 = r4[r6]
            float r2 = r2 * r9
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 <= 0) goto L_0x0057
            float r0 = r0 * r2
            float r0 = a(r0, r3, r4)
            goto L_0x0032
        L_0x0057:
            float r0 = -r0
            float r0 = r0 * r2
            float r0 = a(r0, r3, r4)
            float r0 = -r0
            goto L_0x0032
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cg.a(int, float, float, float):float");
    }

    /* access modifiers changed from: private */
    public boolean a() {
        a aVar = this.a;
        int abs = (int) (aVar.d / Math.abs(aVar.d));
        int abs2 = (int) (aVar.c / Math.abs(aVar.c));
        if (abs != 0 && b(abs)) {
            return true;
        }
        if (abs2 != 0) {
        }
        return false;
    }

    private void b() {
        if (this.m) {
            this.o = false;
            return;
        }
        a aVar = this.a;
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = (int) (currentAnimationTimeMillis - aVar.e);
        int i3 = aVar.b;
        if (i2 <= i3) {
            i3 = i2 < 0 ? 0 : i2;
        }
        aVar.k = i3;
        aVar.j = aVar.a(currentAnimationTimeMillis);
        aVar.i = currentAnimationTimeMillis;
    }

    static /* synthetic */ void i(cg cgVar) {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        cgVar.c.onTouchEvent(obtain);
        obtain.recycle();
    }

    public final cg a(boolean z) {
        if (this.p && !z) {
            b();
        }
        this.p = z;
        return this;
    }

    public abstract void a(int i2);

    public abstract boolean b(int i2);

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.p) {
            return false;
        }
        switch (ax.a(motionEvent)) {
            case 0:
                this.n = true;
                this.l = false;
                break;
            case 1:
            case 3:
                b();
                break;
            case 2:
                break;
        }
        float a2 = a(0, motionEvent.getX(), (float) view.getWidth(), (float) this.c.getWidth());
        float a3 = a(1, motionEvent.getY(), (float) view.getHeight(), (float) this.c.getHeight());
        a aVar = this.a;
        aVar.c = a2;
        aVar.d = a3;
        if (!this.o && a()) {
            if (this.d == null) {
                this.d = new b(this, (byte) 0);
            }
            this.o = true;
            this.m = true;
            if (this.l || this.h <= 0) {
                this.d.run();
            } else {
                bh.a(this.c, this.d, (long) this.h);
            }
            this.l = true;
        }
        return this.q && this.o;
    }
}
