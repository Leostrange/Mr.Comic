package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;

public class SwipeRefreshLayout extends ViewGroup {
    private static final String c = SwipeRefreshLayout.class.getSimpleName();
    private static final int[] s = {16842766};
    private Animation A;
    private Animation B;
    /* access modifiers changed from: private */
    public float C;
    /* access modifiers changed from: private */
    public boolean D;
    private int E;
    private int F;
    /* access modifiers changed from: private */
    public boolean G;
    private Animation.AnimationListener H;
    private final Animation I;
    private final Animation J;
    protected int a;
    protected int b;
    private View d;
    /* access modifiers changed from: private */
    public a e;
    /* access modifiers changed from: private */
    public boolean f;
    private int g;
    private float h;
    private int i;
    /* access modifiers changed from: private */
    public int j;
    private boolean k;
    private float l;
    private float m;
    private boolean n;
    private int o;
    /* access modifiers changed from: private */
    public boolean p;
    private boolean q;
    private final DecelerateInterpolator r;
    /* access modifiers changed from: private */
    public ch t;
    private int u;
    /* access modifiers changed from: private */
    public float v;
    /* access modifiers changed from: private */
    public cp w;
    private Animation x;
    private Animation y;
    private Animation z;

    public interface a {
    }

    public SwipeRefreshLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = false;
        this.h = -1.0f;
        this.k = false;
        this.o = -1;
        this.u = -1;
        this.H = new Animation.AnimationListener() {
            public final void onAnimationEnd(Animation animation) {
                if (SwipeRefreshLayout.this.f) {
                    SwipeRefreshLayout.this.w.setAlpha(255);
                    SwipeRefreshLayout.this.w.start();
                    if (SwipeRefreshLayout.this.D && SwipeRefreshLayout.this.e != null) {
                        a unused = SwipeRefreshLayout.this.e;
                    }
                } else {
                    SwipeRefreshLayout.this.w.stop();
                    SwipeRefreshLayout.this.t.setVisibility(8);
                    SwipeRefreshLayout.this.setColorViewAlpha(255);
                    if (SwipeRefreshLayout.this.p) {
                        SwipeRefreshLayout.this.setAnimationProgress(0.0f);
                    } else {
                        SwipeRefreshLayout.this.a(SwipeRefreshLayout.this.b - SwipeRefreshLayout.this.j, true);
                    }
                }
                int unused2 = SwipeRefreshLayout.this.j = SwipeRefreshLayout.this.t.getTop();
            }

            public final void onAnimationRepeat(Animation animation) {
            }

            public final void onAnimationStart(Animation animation) {
            }
        };
        this.I = new Animation() {
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a((((int) (((float) ((!SwipeRefreshLayout.this.G ? (int) (SwipeRefreshLayout.this.C - ((float) Math.abs(SwipeRefreshLayout.this.b))) : (int) SwipeRefreshLayout.this.C) - SwipeRefreshLayout.this.a)) * f)) + SwipeRefreshLayout.this.a) - SwipeRefreshLayout.this.t.getTop(), false);
                SwipeRefreshLayout.this.w.a(1.0f - f);
            }
        };
        this.J = new Animation() {
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.a((SwipeRefreshLayout.this.a + ((int) (((float) (SwipeRefreshLayout.this.b - SwipeRefreshLayout.this.a)) * f))) - SwipeRefreshLayout.this.t.getTop(), false);
            }
        };
        this.g = ViewConfiguration.get(context).getScaledTouchSlop();
        this.i = getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.r = new DecelerateInterpolator(2.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.E = (int) (displayMetrics.density * 40.0f);
        this.F = (int) (displayMetrics.density * 40.0f);
        this.t = new ch(getContext());
        this.w = new cp(getContext(), this);
        this.w.b(-328966);
        this.t.setImageDrawable(this.w);
        this.t.setVisibility(8);
        addView(this.t);
        bh.a((ViewGroup) this);
        this.C = displayMetrics.density * 64.0f;
        this.h = this.C;
    }

    private static float a(MotionEvent motionEvent, int i2) {
        int a2 = ax.a(motionEvent, i2);
        if (a2 < 0) {
            return -1.0f;
        }
        return ax.d(motionEvent, a2);
    }

    private Animation a(final int i2, final int i3) {
        if (this.p && a()) {
            return null;
        }
        AnonymousClass4 r1 = new Animation() {
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.w.setAlpha((int) (((float) i2) + (((float) (i3 - i2)) * f)));
            }
        };
        r1.setDuration(300);
        this.t.a = null;
        this.t.clearAnimation();
        this.t.startAnimation(r1);
        return r1;
    }

    /* access modifiers changed from: private */
    public void a(int i2, boolean z2) {
        this.t.bringToFront();
        this.t.offsetTopAndBottom(i2);
        this.j = this.t.getTop();
        if (z2 && Build.VERSION.SDK_INT < 11) {
            invalidate();
        }
    }

    private void a(MotionEvent motionEvent) {
        int b2 = ax.b(motionEvent);
        if (ax.b(motionEvent, b2) == this.o) {
            this.o = ax.b(motionEvent, b2 == 0 ? 1 : 0);
        }
    }

    /* access modifiers changed from: private */
    public void a(Animation.AnimationListener animationListener) {
        this.y = new Animation() {
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
            }
        };
        this.y.setDuration(150);
        this.t.a = animationListener;
        this.t.clearAnimation();
        this.t.startAnimation(this.y);
    }

    private void a(boolean z2, boolean z3) {
        if (this.f != z2) {
            this.D = z3;
            b();
            this.f = z2;
            if (this.f) {
                int i2 = this.j;
                Animation.AnimationListener animationListener = this.H;
                this.a = i2;
                this.I.reset();
                this.I.setDuration(200);
                this.I.setInterpolator(this.r);
                if (animationListener != null) {
                    this.t.a = animationListener;
                }
                this.t.clearAnimation();
                this.t.startAnimation(this.I);
                return;
            }
            a(this.H);
        }
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT < 11;
    }

    private static boolean a(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    private void b() {
        if (this.d == null) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (!childAt.equals(this.t)) {
                    this.d = childAt;
                    return;
                }
            }
        }
    }

    private boolean c() {
        if (Build.VERSION.SDK_INT >= 14) {
            return bh.b(this.d, -1);
        }
        if (!(this.d instanceof AbsListView)) {
            return bh.b(this.d, -1) || this.d.getScrollY() > 0;
        }
        AbsListView absListView = (AbsListView) this.d;
        return absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop());
    }

    /* access modifiers changed from: private */
    public void setAnimationProgress(float f2) {
        if (a()) {
            setColorViewAlpha((int) (255.0f * f2));
            return;
        }
        bh.d((View) this.t, f2);
        bh.e((View) this.t, f2);
    }

    /* access modifiers changed from: private */
    public void setColorViewAlpha(int i2) {
        this.t.getBackground().setAlpha(i2);
        this.w.setAlpha(i2);
    }

    /* access modifiers changed from: protected */
    public int getChildDrawingOrder(int i2, int i3) {
        return this.u < 0 ? i3 : i3 == i2 + -1 ? this.u : i3 >= this.u ? i3 + 1 : i3;
    }

    public int getProgressCircleDiameter() {
        if (this.t != null) {
            return this.t.getMeasuredHeight();
        }
        return 0;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        b();
        int a2 = ax.a(motionEvent);
        if (this.q && a2 == 0) {
            this.q = false;
        }
        if (!isEnabled() || this.q || c() || this.f) {
            return false;
        }
        switch (a2) {
            case 0:
                a(this.b - this.t.getTop(), true);
                this.o = ax.b(motionEvent, 0);
                this.n = false;
                float a3 = a(motionEvent, this.o);
                if (a3 != -1.0f) {
                    this.m = a3;
                    break;
                } else {
                    return false;
                }
            case 1:
            case 3:
                this.n = false;
                this.o = -1;
                break;
            case 2:
                if (this.o == -1) {
                    Log.e(c, "Got ACTION_MOVE event but don't have an active pointer id.");
                    return false;
                }
                float a4 = a(motionEvent, this.o);
                if (a4 != -1.0f) {
                    if (a4 - this.m > ((float) this.g) && !this.n) {
                        this.l = this.m + ((float) this.g);
                        this.n = true;
                        this.w.setAlpha(76);
                        break;
                    }
                } else {
                    return false;
                }
            case 6:
                a(motionEvent);
                break;
        }
        return this.n;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.d == null) {
                b();
            }
            if (this.d != null) {
                View view = this.d;
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
                int measuredWidth2 = this.t.getMeasuredWidth();
                this.t.layout((measuredWidth / 2) - (measuredWidth2 / 2), this.j, (measuredWidth / 2) + (measuredWidth2 / 2), this.j + this.t.getMeasuredHeight());
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.d == null) {
            b();
        }
        if (this.d != null) {
            this.d.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.t.measure(View.MeasureSpec.makeMeasureSpec(this.E, 1073741824), View.MeasureSpec.makeMeasureSpec(this.F, 1073741824));
            if (!this.G && !this.k) {
                this.k = true;
                int i4 = -this.t.getMeasuredHeight();
                this.b = i4;
                this.j = i4;
            }
            this.u = -1;
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                if (getChildAt(i5) == this.t) {
                    this.u = i5;
                    return;
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int a2 = ax.a(motionEvent);
        if (this.q && a2 == 0) {
            this.q = false;
        }
        if (!isEnabled() || this.q || c()) {
            return false;
        }
        switch (a2) {
            case 0:
                this.o = ax.b(motionEvent, 0);
                this.n = false;
                break;
            case 1:
            case 3:
                if (this.o == -1) {
                    if (a2 == 1) {
                        Log.e(c, "Got ACTION_UP event but don't have an active pointer id.");
                    }
                    return false;
                }
                this.n = false;
                if ((ax.d(motionEvent, ax.a(motionEvent, this.o)) - this.l) * 0.5f > this.h) {
                    a(true, true);
                } else {
                    this.f = false;
                    this.w.b(0.0f);
                    AnonymousClass5 r0 = null;
                    if (!this.p) {
                        r0 = new Animation.AnimationListener() {
                            public final void onAnimationEnd(Animation animation) {
                                if (!SwipeRefreshLayout.this.p) {
                                    SwipeRefreshLayout.this.a((Animation.AnimationListener) null);
                                }
                            }

                            public final void onAnimationRepeat(Animation animation) {
                            }

                            public final void onAnimationStart(Animation animation) {
                            }
                        };
                    }
                    int i2 = this.j;
                    if (this.p) {
                        this.a = i2;
                        if (a()) {
                            this.v = (float) this.w.getAlpha();
                        } else {
                            this.v = bh.t(this.t);
                        }
                        this.B = new Animation() {
                            public final void applyTransformation(float f, Transformation transformation) {
                                SwipeRefreshLayout.this.setAnimationProgress(SwipeRefreshLayout.this.v + ((-SwipeRefreshLayout.this.v) * f));
                                SwipeRefreshLayout.this.a((SwipeRefreshLayout.this.a + ((int) (((float) (SwipeRefreshLayout.this.b - SwipeRefreshLayout.this.a)) * f))) - SwipeRefreshLayout.this.t.getTop(), false);
                            }
                        };
                        this.B.setDuration(150);
                        if (r0 != null) {
                            this.t.a = r0;
                        }
                        this.t.clearAnimation();
                        this.t.startAnimation(this.B);
                    } else {
                        this.a = i2;
                        this.J.reset();
                        this.J.setDuration(200);
                        this.J.setInterpolator(this.r);
                        if (r0 != null) {
                            this.t.a = r0;
                        }
                        this.t.clearAnimation();
                        this.t.startAnimation(this.J);
                    }
                    this.w.a(false);
                }
                this.o = -1;
                return false;
            case 2:
                int a3 = ax.a(motionEvent, this.o);
                if (a3 >= 0) {
                    float d2 = 0.5f * (ax.d(motionEvent, a3) - this.l);
                    if (this.n) {
                        this.w.a(true);
                        float f2 = d2 / this.h;
                        if (f2 >= 0.0f) {
                            float min = Math.min(1.0f, Math.abs(f2));
                            float max = (((float) Math.max(((double) min) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
                            float abs = Math.abs(d2) - this.h;
                            float f3 = this.G ? this.C - ((float) this.b) : this.C;
                            float max2 = Math.max(0.0f, Math.min(abs, f3 * 2.0f) / f3);
                            float pow = ((float) (((double) (max2 / 4.0f)) - Math.pow((double) (max2 / 4.0f), 2.0d))) * 2.0f;
                            int i3 = ((int) ((f3 * min) + (f3 * pow * 2.0f))) + this.b;
                            if (this.t.getVisibility() != 0) {
                                this.t.setVisibility(0);
                            }
                            if (!this.p) {
                                bh.d((View) this.t, 1.0f);
                                bh.e((View) this.t, 1.0f);
                            }
                            if (d2 < this.h) {
                                if (this.p) {
                                    setAnimationProgress(d2 / this.h);
                                }
                                if (this.w.getAlpha() > 76 && !a(this.z)) {
                                    this.z = a(this.w.getAlpha(), 76);
                                }
                                this.w.b(Math.min(0.8f, 0.8f * max));
                                this.w.a(Math.min(1.0f, max));
                            } else if (this.w.getAlpha() < 255 && !a(this.A)) {
                                this.A = a(this.w.getAlpha(), 255);
                            }
                            this.w.a.c((-0.25f + (0.4f * max) + (pow * 2.0f)) * 0.5f);
                            a(i3 - this.j, true);
                            break;
                        } else {
                            return false;
                        }
                    }
                } else {
                    Log.e(c, "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                break;
            case 5:
                this.o = ax.b(motionEvent, ax.b(motionEvent));
                break;
            case 6:
                a(motionEvent);
                break;
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        b();
        cp cpVar = this.w;
        cpVar.a.a(iArr);
        cpVar.a.a(0);
    }

    public void setColorSchemeResources(int... iArr) {
        Resources resources = getResources();
        int[] iArr2 = new int[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[i2] = resources.getColor(iArr[i2]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i2) {
        this.h = (float) i2;
    }

    public void setOnRefreshListener(a aVar) {
        this.e = aVar;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i2) {
        setProgressBackgroundColorSchemeResource(i2);
    }

    public void setProgressBackgroundColorSchemeColor(int i2) {
        this.t.setBackgroundColor(i2);
        this.w.b(i2);
    }

    public void setProgressBackgroundColorSchemeResource(int i2) {
        setProgressBackgroundColorSchemeColor(getResources().getColor(i2));
    }

    public void setProgressViewEndTarget(boolean z2, int i2) {
        this.C = (float) i2;
        this.p = z2;
        this.t.invalidate();
    }

    public void setProgressViewOffset(boolean z2, int i2, int i3) {
        this.p = z2;
        this.t.setVisibility(8);
        this.j = i2;
        this.b = i2;
        this.C = (float) i3;
        this.G = true;
        this.t.invalidate();
    }

    public void setRefreshing(boolean z2) {
        if (!z2 || this.f == z2) {
            a(z2, false);
            return;
        }
        this.f = z2;
        a((!this.G ? (int) (this.C + ((float) this.b)) : (int) this.C) - this.j, true);
        this.D = false;
        Animation.AnimationListener animationListener = this.H;
        this.t.setVisibility(0);
        if (Build.VERSION.SDK_INT >= 11) {
            this.w.setAlpha(255);
        }
        this.x = new Animation() {
            public final void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(f);
            }
        };
        this.x.setDuration((long) this.i);
        if (animationListener != null) {
            this.t.a = animationListener;
        }
        this.t.clearAnimation();
        this.t.startAnimation(this.x);
    }

    public void setSize(int i2) {
        if (i2 == 0 || i2 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i2 == 0) {
                int i3 = (int) (displayMetrics.density * 56.0f);
                this.E = i3;
                this.F = i3;
            } else {
                int i4 = (int) (displayMetrics.density * 40.0f);
                this.E = i4;
                this.F = i4;
            }
            this.t.setImageDrawable((Drawable) null);
            this.w.a(i2);
            this.t.setImageDrawable(this.w);
        }
    }
}
