package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import defpackage.afy;

/* renamed from: afp  reason: default package */
/* compiled from: EclairScaleDetector */
public final class afp extends afy {
    private final Context a;
    private final afy.a b;
    private boolean c;
    private MotionEvent d;
    private MotionEvent e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private float p;
    private long q;
    private final float r;
    private float s;
    private float t;
    private boolean u;

    public afp(Context context, afy.a aVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.a = context;
        this.b = aVar;
        this.r = (float) viewConfiguration.getScaledEdgeSlop();
    }

    private static float b(MotionEvent motionEvent) {
        return (motionEvent.getX() - motionEvent.getRawX()) + motionEvent.getX(1);
    }

    private static float c(MotionEvent motionEvent) {
        return (motionEvent.getY() - motionEvent.getRawY()) + motionEvent.getY(1);
    }

    private void c() {
        if (this.d != null) {
            this.d.recycle();
            this.d = null;
        }
        if (this.e != null) {
            this.e.recycle();
            this.e = null;
        }
        this.u = false;
        this.c = false;
    }

    private void d(MotionEvent motionEvent) {
        if (this.e != null) {
            this.e.recycle();
        }
        this.e = MotionEvent.obtain(motionEvent);
        this.l = -1.0f;
        this.m = -1.0f;
        this.n = -1.0f;
        MotionEvent motionEvent2 = this.d;
        float x = motionEvent2.getX(0);
        float y = motionEvent2.getY(0);
        float x2 = motionEvent2.getX(1);
        float y2 = motionEvent2.getY(1);
        float x3 = motionEvent.getX(0);
        float y3 = motionEvent.getY(0);
        float f2 = x2 - x;
        float f3 = y2 - y;
        float x4 = motionEvent.getX(1) - x3;
        float y4 = motionEvent.getY(1) - y3;
        this.h = f2;
        this.i = f3;
        this.j = x4;
        this.k = y4;
        this.f = (x4 * 0.5f) + x3;
        this.g = (y4 * 0.5f) + y3;
        this.q = motionEvent.getEventTime() - motionEvent2.getEventTime();
        this.o = motionEvent.getPressure(0) + motionEvent.getPressure(1);
        this.p = motionEvent2.getPressure(1) + motionEvent2.getPressure(0);
    }

    public final boolean a() {
        return this.c;
    }

    public final boolean a(MotionEvent motionEvent) {
        int i2 = 0;
        int action = motionEvent.getAction();
        if (this.c) {
            switch (action & 255) {
                case 2:
                    d(motionEvent);
                    if (this.o / this.p > 0.67f && this.b.a(this)) {
                        this.d.recycle();
                        this.d = MotionEvent.obtain(motionEvent);
                        break;
                    }
                case 3:
                    if (!this.u) {
                        this.b.b();
                    }
                    c();
                    break;
                case 6:
                    d(motionEvent);
                    if (((action & 65280) >> 8) == 0) {
                        i2 = 1;
                    }
                    this.f = motionEvent.getX(i2);
                    this.g = motionEvent.getY(i2);
                    if (!this.u) {
                        this.b.b();
                    }
                    c();
                    break;
            }
        } else {
            switch (action & 255) {
                case 2:
                    if (this.u) {
                        float f2 = this.r;
                        float f3 = this.s;
                        float f4 = this.t;
                        float rawX = motionEvent.getRawX();
                        float rawY = motionEvent.getRawY();
                        float b2 = b(motionEvent);
                        float c2 = c(motionEvent);
                        boolean z = rawX < f2 || rawY < f2 || rawX > f3 || rawY > f4;
                        boolean z2 = b2 < f2 || c2 < f2 || b2 > f3 || c2 > f4;
                        if (!z || !z2) {
                            if (!z) {
                                if (!z2) {
                                    this.u = false;
                                    this.c = this.b.a();
                                    break;
                                } else {
                                    this.f = motionEvent.getX(0);
                                    this.g = motionEvent.getY(0);
                                    break;
                                }
                            } else {
                                this.f = motionEvent.getX(1);
                                this.g = motionEvent.getY(1);
                                break;
                            }
                        } else {
                            this.f = -1.0f;
                            this.g = -1.0f;
                            break;
                        }
                    }
                    break;
                case 5:
                    DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
                    this.s = ((float) displayMetrics.widthPixels) - this.r;
                    this.t = ((float) displayMetrics.heightPixels) - this.r;
                    c();
                    this.d = MotionEvent.obtain(motionEvent);
                    this.q = 0;
                    d(motionEvent);
                    float f5 = this.r;
                    float f6 = this.s;
                    float f7 = this.t;
                    float rawX2 = motionEvent.getRawX();
                    float rawY2 = motionEvent.getRawY();
                    float b3 = b(motionEvent);
                    float c3 = c(motionEvent);
                    boolean z3 = rawX2 < f5 || rawY2 < f5 || rawX2 > f6 || rawY2 > f7;
                    boolean z4 = b3 < f5 || c3 < f5 || b3 > f6 || c3 > f7;
                    if (!z3 || !z4) {
                        if (!z3) {
                            if (!z4) {
                                this.c = this.b.a();
                                break;
                            } else {
                                this.f = motionEvent.getX(0);
                                this.g = motionEvent.getY(0);
                                this.u = true;
                                break;
                            }
                        } else {
                            this.f = motionEvent.getX(1);
                            this.g = motionEvent.getY(1);
                            this.u = true;
                            break;
                        }
                    } else {
                        this.f = -1.0f;
                        this.g = -1.0f;
                        this.u = true;
                        break;
                    }
                    break;
                case 6:
                    if (this.u) {
                        if (((action & 65280) >> 8) == 0) {
                            i2 = 1;
                        }
                        this.f = motionEvent.getX(i2);
                        this.g = motionEvent.getY(i2);
                        break;
                    }
                    break;
            }
        }
        return true;
    }

    public final float b() {
        if (this.n == -1.0f) {
            if (this.l == -1.0f) {
                float f2 = this.j;
                float f3 = this.k;
                this.l = (float) Math.sqrt((double) ((f2 * f2) + (f3 * f3)));
            }
            float f4 = this.l;
            if (this.m == -1.0f) {
                float f5 = this.h;
                float f6 = this.i;
                this.m = (float) Math.sqrt((double) ((f5 * f5) + (f6 * f6)));
            }
            this.n = f4 / this.m;
        }
        return this.n;
    }
}
