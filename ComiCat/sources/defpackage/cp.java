package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.util.ArrayList;

/* renamed from: cp  reason: default package */
/* compiled from: MaterialProgressDrawable */
public final class cp extends Drawable implements Animatable {
    private static final Interpolator c = new LinearInterpolator();
    /* access modifiers changed from: private */
    public static final Interpolator d = new ce();
    public final a a;
    boolean b;
    private final int[] e = {-16777216};
    private final ArrayList<Animation> f = new ArrayList<>();
    private float g;
    private Resources h;
    private View i;
    private Animation j;
    /* access modifiers changed from: private */
    public float k;
    private double l;
    private double m;
    private final Drawable.Callback n = new Drawable.Callback() {
        public final void invalidateDrawable(Drawable drawable) {
            cp.this.invalidateSelf();
        }

        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            cp.this.scheduleSelf(runnable, j);
        }

        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            cp.this.unscheduleSelf(runnable);
        }
    };

    /* renamed from: cp$a */
    /* compiled from: MaterialProgressDrawable */
    public static class a {
        final RectF a = new RectF();
        final Paint b = new Paint();
        final Paint c = new Paint();
        float d = 0.0f;
        float e = 0.0f;
        float f = 0.0f;
        float g = 5.0f;
        float h = 2.5f;
        int[] i;
        int j;
        float k;
        float l;
        float m;
        boolean n;
        Path o;
        float p;
        double q;
        int r;
        int s;
        int t;
        final Paint u = new Paint(1);
        int v;
        int w;
        private final Drawable.Callback x;

        public a(Drawable.Callback callback) {
            this.x = callback;
            this.b.setStrokeCap(Paint.Cap.SQUARE);
            this.b.setAntiAlias(true);
            this.b.setStyle(Paint.Style.STROKE);
            this.c.setStyle(Paint.Style.FILL);
            this.c.setAntiAlias(true);
        }

        /* access modifiers changed from: package-private */
        public final int a() {
            return (this.j + 1) % this.i.length;
        }

        public final void a(float f2) {
            this.d = f2;
            d();
        }

        public final void a(int i2) {
            this.j = i2;
            this.w = this.i[this.j];
        }

        public final void a(boolean z) {
            if (this.n != z) {
                this.n = z;
                d();
            }
        }

        public final void a(int[] iArr) {
            this.i = iArr;
            a(0);
        }

        public final void b() {
            this.k = this.d;
            this.l = this.e;
            this.m = this.f;
        }

        public final void b(float f2) {
            this.e = f2;
            d();
        }

        public final void c() {
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = 0.0f;
            a(0.0f);
            b(0.0f);
            c(0.0f);
        }

        public final void c(float f2) {
            this.f = f2;
            d();
        }

        /* access modifiers changed from: package-private */
        public final void d() {
            this.x.invalidateDrawable((Drawable) null);
        }
    }

    public cp(Context context, View view) {
        this.i = view;
        this.h = context.getResources();
        this.a = new a(this.n);
        this.a.a(this.e);
        a(1);
        final a aVar = this.a;
        AnonymousClass1 r1 = new Animation() {
            public final void applyTransformation(float f, Transformation transformation) {
                if (cp.this.b) {
                    cp.a(f, aVar);
                    return;
                }
                float a2 = cp.b(aVar);
                float f2 = aVar.l;
                float f3 = aVar.k;
                float f4 = aVar.m;
                cp.c(f, aVar);
                if (f <= 0.5f) {
                    aVar.a(f3 + (cp.d.getInterpolation(f / 0.5f) * (0.8f - a2)));
                }
                if (f > 0.5f) {
                    aVar.b(((0.8f - a2) * cp.d.getInterpolation((f - 0.5f) / 0.5f)) + f2);
                }
                aVar.c((0.25f * f) + f4);
                cp.this.c((216.0f * f) + (1080.0f * (cp.this.k / 5.0f)));
            }
        };
        r1.setRepeatCount(-1);
        r1.setRepeatMode(1);
        r1.setInterpolator(c);
        r1.setAnimationListener(new Animation.AnimationListener() {
            public final void onAnimationEnd(Animation animation) {
            }

            public final void onAnimationRepeat(Animation animation) {
                aVar.b();
                a aVar = aVar;
                aVar.a(aVar.a());
                aVar.a(aVar.e);
                if (cp.this.b) {
                    cp.this.b = false;
                    animation.setDuration(1332);
                    aVar.a(false);
                    return;
                }
                float unused = cp.this.k = (cp.this.k + 1.0f) % 5.0f;
            }

            public final void onAnimationStart(Animation animation) {
                float unused = cp.this.k = 0.0f;
            }
        });
        this.j = r1;
    }

    private void a(double d2, double d3, double d4, double d5, float f2, float f3) {
        a aVar = this.a;
        float f4 = this.h.getDisplayMetrics().density;
        this.l = ((double) f4) * d2;
        this.m = ((double) f4) * d3;
        float f5 = ((float) d5) * f4;
        aVar.g = f5;
        aVar.b.setStrokeWidth(f5);
        aVar.d();
        aVar.q = ((double) f4) * d4;
        aVar.a(0);
        aVar.r = (int) (f2 * f4);
        aVar.s = (int) (f4 * f3);
        float min = (float) Math.min((int) this.l, (int) this.m);
        aVar.h = (aVar.q <= 0.0d || min < 0.0f) ? (float) Math.ceil((double) (aVar.g / 2.0f)) : (float) (((double) (min / 2.0f)) - aVar.q);
    }

    static /* synthetic */ void a(float f2, a aVar) {
        c(f2, aVar);
        float b2 = b(aVar);
        aVar.a((((aVar.l - b2) - aVar.k) * f2) + aVar.k);
        aVar.b(aVar.l);
        aVar.c(((((float) (Math.floor((double) (aVar.m / 0.8f)) + 1.0d)) - aVar.m) * f2) + aVar.m);
    }

    /* access modifiers changed from: private */
    public static float b(a aVar) {
        return (float) Math.toRadians(((double) aVar.g) / (6.283185307179586d * aVar.q));
    }

    /* access modifiers changed from: private */
    public static void c(float f2, a aVar) {
        if (f2 > 0.75f) {
            float f3 = (f2 - 0.75f) / 0.25f;
            int i2 = aVar.i[aVar.j];
            int i3 = aVar.i[aVar.a()];
            int intValue = Integer.valueOf(i2).intValue();
            int i4 = (intValue >> 24) & 255;
            int i5 = (intValue >> 16) & 255;
            int i6 = (intValue >> 8) & 255;
            int i7 = intValue & 255;
            int intValue2 = Integer.valueOf(i3).intValue();
            aVar.w = (((int) (f3 * ((float) ((intValue2 & 255) - i7)))) + i7) | ((i4 + ((int) (((float) (((intValue2 >> 24) & 255) - i4)) * f3))) << 24) | ((i5 + ((int) (((float) (((intValue2 >> 16) & 255) - i5)) * f3))) << 16) | ((((int) (((float) (((intValue2 >> 8) & 255) - i6)) * f3)) + i6) << 8);
        }
    }

    public final void a(float f2) {
        a aVar = this.a;
        if (f2 != aVar.p) {
            aVar.p = f2;
            aVar.d();
        }
    }

    public final void a(int i2) {
        if (i2 == 0) {
            a(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            a(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    public final void a(boolean z) {
        this.a.a(z);
    }

    public final void b(float f2) {
        this.a.a(0.0f);
        this.a.b(f2);
    }

    public final void b(int i2) {
        this.a.v = i2;
    }

    /* access modifiers changed from: package-private */
    public final void c(float f2) {
        this.g = f2;
        invalidateSelf();
    }

    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.g, bounds.exactCenterX(), bounds.exactCenterY());
        a aVar = this.a;
        RectF rectF = aVar.a;
        rectF.set(bounds);
        rectF.inset(aVar.h, aVar.h);
        float f2 = 360.0f * (aVar.d + aVar.f);
        float f3 = ((aVar.e + aVar.f) * 360.0f) - f2;
        aVar.b.setColor(aVar.w);
        canvas.drawArc(rectF, f2, f3, false, aVar.b);
        if (aVar.n) {
            if (aVar.o == null) {
                aVar.o = new Path();
                aVar.o.setFillType(Path.FillType.EVEN_ODD);
            } else {
                aVar.o.reset();
            }
            float f4 = ((float) (((int) aVar.h) / 2)) * aVar.p;
            float cos = (float) ((aVar.q * Math.cos(0.0d)) + ((double) bounds.exactCenterX()));
            aVar.o.moveTo(0.0f, 0.0f);
            aVar.o.lineTo(((float) aVar.r) * aVar.p, 0.0f);
            aVar.o.lineTo((((float) aVar.r) * aVar.p) / 2.0f, ((float) aVar.s) * aVar.p);
            aVar.o.offset(cos - f4, (float) ((aVar.q * Math.sin(0.0d)) + ((double) bounds.exactCenterY())));
            aVar.o.close();
            aVar.c.setColor(aVar.w);
            canvas.rotate((f2 + f3) - 5.0f, bounds.exactCenterX(), bounds.exactCenterY());
            canvas.drawPath(aVar.o, aVar.c);
        }
        if (aVar.t < 255) {
            aVar.u.setColor(aVar.v);
            aVar.u.setAlpha(255 - aVar.t);
            canvas.drawCircle(bounds.exactCenterX(), bounds.exactCenterY(), (float) (bounds.width() / 2), aVar.u);
        }
        canvas.restoreToCount(save);
    }

    public final int getAlpha() {
        return this.a.t;
    }

    public final int getIntrinsicHeight() {
        return (int) this.m;
    }

    public final int getIntrinsicWidth() {
        return (int) this.l;
    }

    public final int getOpacity() {
        return -3;
    }

    public final boolean isRunning() {
        ArrayList<Animation> arrayList = this.f;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Animation animation = arrayList.get(i2);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public final void setAlpha(int i2) {
        this.a.t = i2;
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        a aVar = this.a;
        aVar.b.setColorFilter(colorFilter);
        aVar.d();
    }

    public final void start() {
        this.j.reset();
        this.a.b();
        if (this.a.e != this.a.d) {
            this.b = true;
            this.j.setDuration(666);
            this.i.startAnimation(this.j);
            return;
        }
        this.a.a(0);
        this.a.c();
        this.j.setDuration(1332);
        this.i.startAnimation(this.j);
    }

    public final void stop() {
        this.i.clearAnimation();
        c(0.0f);
        this.a.a(false);
        this.a.a(0);
        this.a.c();
    }
}
