package defpackage;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

/* renamed from: cu  reason: default package */
/* compiled from: ViewDragHelper */
public final class cu {
    private static final Interpolator v = new Interpolator() {
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };
    public int a;
    public int b;
    public float[] c;
    public float[] d;
    public float[] e;
    public float[] f;
    public int g;
    public float h;
    public int i;
    public int j;
    public View k;
    private int l = -1;
    private int[] m;
    private int[] n;
    private int[] o;
    private VelocityTracker p;
    private float q;
    private cs r;
    private final a s;
    private boolean t;
    private final ViewGroup u;
    private final Runnable w = new Runnable() {
        public final void run() {
            cu.this.a(0);
        }
    };

    /* renamed from: cu$a */
    /* compiled from: ViewDragHelper */
    public static abstract class a {
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return 0;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public void onViewCaptured(View view, int i) {
        }

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        }

        public void onViewReleased(View view, float f, float f2) {
        }

        public abstract boolean tryCaptureView(View view, int i);
    }

    private cu(Context context, ViewGroup viewGroup, a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (aVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        } else {
            this.u = viewGroup;
            this.s = aVar;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.i = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.b = viewConfiguration.getScaledTouchSlop();
            this.q = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.h = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.r = cs.a(context, v);
        }
    }

    private static float a(float f2, float f3, float f4) {
        float abs = Math.abs(f2);
        if (abs < f3) {
            return 0.0f;
        }
        return abs > f4 ? f2 <= 0.0f ? -f4 : f4 : f2;
    }

    private int a(int i2, int i3, int i4) {
        if (i2 == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        int i5 = width / 2;
        float sin = (((float) Math.sin((double) ((float) (((double) (Math.min(1.0f, ((float) Math.abs(i2)) / ((float) width)) - 0.5f)) * 0.4712389167638204d)))) * ((float) i5)) + ((float) i5);
        int abs = Math.abs(i3);
        return Math.min(abs > 0 ? Math.round(Math.abs(sin / ((float) abs)) * 1000.0f) * 4 : (int) (((((float) Math.abs(i2)) / ((float) i4)) + 1.0f) * 256.0f), 600);
    }

    public static cu a(ViewGroup viewGroup, float f2, a aVar) {
        cu a2 = a(viewGroup, aVar);
        a2.b = (int) (((float) a2.b) * (1.0f / f2));
        return a2;
    }

    public static cu a(ViewGroup viewGroup, a aVar) {
        return new cu(viewGroup.getContext(), viewGroup, aVar);
    }

    private void a(float f2, float f3) {
        this.t = true;
        this.s.onViewReleased(this.k, f2, f3);
        this.t = false;
        if (this.a == 1) {
            a(0);
        }
    }

    private void a(float f2, float f3, int i2) {
        int i3 = 0;
        if (this.c == null || this.c.length <= i2) {
            float[] fArr = new float[(i2 + 1)];
            float[] fArr2 = new float[(i2 + 1)];
            float[] fArr3 = new float[(i2 + 1)];
            float[] fArr4 = new float[(i2 + 1)];
            int[] iArr = new int[(i2 + 1)];
            int[] iArr2 = new int[(i2 + 1)];
            int[] iArr3 = new int[(i2 + 1)];
            if (this.c != null) {
                System.arraycopy(this.c, 0, fArr, 0, this.c.length);
                System.arraycopy(this.d, 0, fArr2, 0, this.d.length);
                System.arraycopy(this.e, 0, fArr3, 0, this.e.length);
                System.arraycopy(this.f, 0, fArr4, 0, this.f.length);
                System.arraycopy(this.m, 0, iArr, 0, this.m.length);
                System.arraycopy(this.n, 0, iArr2, 0, this.n.length);
                System.arraycopy(this.o, 0, iArr3, 0, this.o.length);
            }
            this.c = fArr;
            this.d = fArr2;
            this.e = fArr3;
            this.f = fArr4;
            this.m = iArr;
            this.n = iArr2;
            this.o = iArr3;
        }
        float[] fArr5 = this.c;
        this.e[i2] = f2;
        fArr5[i2] = f2;
        float[] fArr6 = this.d;
        this.f[i2] = f3;
        fArr6[i2] = f3;
        int[] iArr4 = this.m;
        int i4 = (int) f2;
        int i5 = (int) f3;
        if (i4 < this.u.getLeft() + this.i) {
            i3 = 1;
        }
        if (i5 < this.u.getTop() + this.i) {
            i3 |= 4;
        }
        if (i4 > this.u.getRight() - this.i) {
            i3 |= 2;
        }
        if (i5 > this.u.getBottom() - this.i) {
            i3 |= 8;
        }
        iArr4[i2] = i3;
        this.g |= 1 << i2;
    }

    private boolean a(float f2, float f3, int i2, int i3) {
        float abs = Math.abs(f2);
        float abs2 = Math.abs(f3);
        if ((this.m[i2] & i3) != i3 || (this.j & i3) == 0 || (this.o[i2] & i3) == i3 || (this.n[i2] & i3) == i3) {
            return false;
        }
        if (abs <= ((float) this.b) && abs2 <= ((float) this.b)) {
            return false;
        }
        if (abs >= abs2 * 0.5f || !this.s.onEdgeLock(i3)) {
            return (this.n[i2] & i3) == 0 && abs > ((float) this.b);
        }
        int[] iArr = this.o;
        iArr[i2] = iArr[i2] | i3;
        return false;
    }

    private boolean a(int i2, int i3, int i4, int i5) {
        int left = this.k.getLeft();
        int top = this.k.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        if (i6 == 0 && i7 == 0) {
            this.r.h();
            a(0);
            return false;
        }
        View view = this.k;
        int b2 = b(i4, (int) this.h, (int) this.q);
        int b3 = b(i5, (int) this.h, (int) this.q);
        int abs = Math.abs(i6);
        int abs2 = Math.abs(i7);
        int abs3 = Math.abs(b2);
        int abs4 = Math.abs(b3);
        int i8 = abs3 + abs4;
        int i9 = abs + abs2;
        float f2 = b2 != 0 ? ((float) abs3) / ((float) i8) : ((float) abs) / ((float) i9);
        this.r.a(left, top, i6, i7, (int) (((b3 != 0 ? ((float) abs4) / ((float) i8) : ((float) abs2) / ((float) i9)) * ((float) a(i7, b3, this.s.getViewVerticalDragRange(view)))) + (f2 * ((float) a(i6, b2, this.s.getViewHorizontalDragRange(view))))));
        a(2);
        return true;
    }

    private boolean a(View view, float f2, float f3) {
        if (view == null) {
            return false;
        }
        boolean z = this.s.getViewHorizontalDragRange(view) > 0;
        boolean z2 = this.s.getViewVerticalDragRange(view) > 0;
        return (!z || !z2) ? z ? Math.abs(f2) > ((float) this.b) : z2 && Math.abs(f3) > ((float) this.b) : (f2 * f2) + (f3 * f3) > ((float) (this.b * this.b));
    }

    private static int b(int i2, int i3, int i4) {
        int abs = Math.abs(i2);
        if (abs < i3) {
            return 0;
        }
        return abs > i4 ? i2 <= 0 ? -i4 : i4 : i2;
    }

    private void b(float f2, float f3, int i2) {
        int i3 = 1;
        if (!a(f2, f3, i2, 1)) {
            i3 = 0;
        }
        if (a(f3, f2, i2, 4)) {
            i3 |= 4;
        }
        if (a(f2, f3, i2, 2)) {
            i3 |= 2;
        }
        if (a(f3, f2, i2, 8)) {
            i3 |= 8;
        }
        if (i3 != 0) {
            int[] iArr = this.n;
            iArr[i2] = iArr[i2] | i3;
            this.s.onEdgeDragStarted(i3, i2);
        }
    }

    private void b(int i2) {
        if (this.c != null) {
            this.c[i2] = 0.0f;
            this.d[i2] = 0.0f;
            this.e[i2] = 0.0f;
            this.f[i2] = 0.0f;
            this.m[i2] = 0;
            this.n[i2] = 0;
            this.o[i2] = 0;
            this.g &= (1 << i2) ^ -1;
        }
    }

    private boolean b(View view, int i2) {
        if (view == this.k && this.l == i2) {
            return true;
        }
        if (view == null || !this.s.tryCaptureView(view, i2)) {
            return false;
        }
        this.l = i2;
        a(view, i2);
        return true;
    }

    public static boolean b(View view, int i2, int i3) {
        return view != null && i2 >= view.getLeft() && i2 < view.getRight() && i3 >= view.getTop() && i3 < view.getBottom();
    }

    private void c(MotionEvent motionEvent) {
        int c2 = ax.c(motionEvent);
        for (int i2 = 0; i2 < c2; i2++) {
            int b2 = ax.b(motionEvent, i2);
            float c3 = ax.c(motionEvent, i2);
            float d2 = ax.d(motionEvent, i2);
            this.e[b2] = c3;
            this.f[b2] = d2;
        }
    }

    private void d() {
        this.p.computeCurrentVelocity(1000, this.q);
        a(a(bg.a(this.p, this.l), this.h, this.q), a(bg.b(this.p, this.l), this.h, this.q));
    }

    public final void a() {
        this.l = -1;
        if (this.c != null) {
            Arrays.fill(this.c, 0.0f);
            Arrays.fill(this.d, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.m, 0);
            Arrays.fill(this.n, 0);
            Arrays.fill(this.o, 0);
            this.g = 0;
        }
        if (this.p != null) {
            this.p.recycle();
            this.p = null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2) {
        this.u.removeCallbacks(this.w);
        if (this.a != i2) {
            this.a = i2;
            this.s.onViewDragStateChanged(i2);
            if (this.a == 0) {
                this.k = null;
            }
        }
    }

    public final void a(View view, int i2) {
        if (view.getParent() != this.u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
        }
        this.k = view;
        this.l = i2;
        this.s.onViewCaptured(view, i2);
        a(1);
    }

    public final boolean a(int i2, int i3) {
        if (this.t) {
            return a(i2, i3, (int) bg.a(this.p, this.l), (int) bg.b(this.p, this.l));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00f5, code lost:
        if (r8 != r7) goto L_0x00fd;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(android.view.MotionEvent r14) {
        /*
            r13 = this;
            int r0 = defpackage.ax.a(r14)
            int r1 = defpackage.ax.b(r14)
            if (r0 != 0) goto L_0x000d
            r13.a()
        L_0x000d:
            android.view.VelocityTracker r2 = r13.p
            if (r2 != 0) goto L_0x0017
            android.view.VelocityTracker r2 = android.view.VelocityTracker.obtain()
            r13.p = r2
        L_0x0017:
            android.view.VelocityTracker r2 = r13.p
            r2.addMovement(r14)
            switch(r0) {
                case 0: goto L_0x0026;
                case 1: goto L_0x0121;
                case 2: goto L_0x0092;
                case 3: goto L_0x0121;
                case 4: goto L_0x001f;
                case 5: goto L_0x005a;
                case 6: goto L_0x0118;
                default: goto L_0x001f;
            }
        L_0x001f:
            int r0 = r13.a
            r1 = 1
            if (r0 != r1) goto L_0x0126
            r0 = 1
        L_0x0025:
            return r0
        L_0x0026:
            float r0 = r14.getX()
            float r1 = r14.getY()
            r2 = 0
            int r2 = defpackage.ax.b(r14, r2)
            r13.a((float) r0, (float) r1, (int) r2)
            int r0 = (int) r0
            int r1 = (int) r1
            android.view.View r0 = r13.b((int) r0, (int) r1)
            android.view.View r1 = r13.k
            if (r0 != r1) goto L_0x0048
            int r1 = r13.a
            r3 = 2
            if (r1 != r3) goto L_0x0048
            r13.b((android.view.View) r0, (int) r2)
        L_0x0048:
            int[] r0 = r13.m
            r0 = r0[r2]
            int r1 = r13.j
            r1 = r1 & r0
            if (r1 == 0) goto L_0x001f
            cu$a r1 = r13.s
            int r3 = r13.j
            r0 = r0 & r3
            r1.onEdgeTouched(r0, r2)
            goto L_0x001f
        L_0x005a:
            int r0 = defpackage.ax.b(r14, r1)
            float r2 = defpackage.ax.c(r14, r1)
            float r1 = defpackage.ax.d(r14, r1)
            r13.a((float) r2, (float) r1, (int) r0)
            int r3 = r13.a
            if (r3 != 0) goto L_0x007f
            int[] r1 = r13.m
            r1 = r1[r0]
            int r2 = r13.j
            r2 = r2 & r1
            if (r2 == 0) goto L_0x001f
            cu$a r2 = r13.s
            int r3 = r13.j
            r1 = r1 & r3
            r2.onEdgeTouched(r1, r0)
            goto L_0x001f
        L_0x007f:
            int r3 = r13.a
            r4 = 2
            if (r3 != r4) goto L_0x001f
            int r2 = (int) r2
            int r1 = (int) r1
            android.view.View r1 = r13.b((int) r2, (int) r1)
            android.view.View r2 = r13.k
            if (r1 != r2) goto L_0x001f
            r13.b((android.view.View) r1, (int) r0)
            goto L_0x001f
        L_0x0092:
            float[] r0 = r13.c
            if (r0 == 0) goto L_0x001f
            float[] r0 = r13.d
            if (r0 == 0) goto L_0x001f
            int r2 = defpackage.ax.c(r14)
            r0 = 0
            r1 = r0
        L_0x00a0:
            if (r1 >= r2) goto L_0x0113
            int r3 = defpackage.ax.b(r14, r1)
            float r0 = defpackage.ax.c(r14, r1)
            float r4 = defpackage.ax.d(r14, r1)
            float[] r5 = r13.c
            r5 = r5[r3]
            float r5 = r0 - r5
            float[] r6 = r13.d
            r6 = r6[r3]
            float r6 = r4 - r6
            int r0 = (int) r0
            int r4 = (int) r4
            android.view.View r4 = r13.b((int) r0, (int) r4)
            if (r4 == 0) goto L_0x0111
            boolean r0 = r13.a((android.view.View) r4, (float) r5, (float) r6)
            if (r0 == 0) goto L_0x0111
            r0 = 1
        L_0x00c9:
            if (r0 == 0) goto L_0x00fd
            int r7 = r4.getLeft()
            int r8 = (int) r5
            int r8 = r8 + r7
            cu$a r9 = r13.s
            int r10 = (int) r5
            int r8 = r9.clampViewPositionHorizontal(r4, r8, r10)
            int r9 = r4.getTop()
            int r10 = (int) r6
            int r10 = r10 + r9
            cu$a r11 = r13.s
            int r12 = (int) r6
            int r10 = r11.clampViewPositionVertical(r4, r10, r12)
            cu$a r11 = r13.s
            int r11 = r11.getViewHorizontalDragRange(r4)
            cu$a r12 = r13.s
            int r12 = r12.getViewVerticalDragRange(r4)
            if (r11 == 0) goto L_0x00f7
            if (r11 <= 0) goto L_0x00fd
            if (r8 != r7) goto L_0x00fd
        L_0x00f7:
            if (r12 == 0) goto L_0x0113
            if (r12 <= 0) goto L_0x00fd
            if (r10 == r9) goto L_0x0113
        L_0x00fd:
            r13.b((float) r5, (float) r6, (int) r3)
            int r5 = r13.a
            r6 = 1
            if (r5 == r6) goto L_0x0113
            if (r0 == 0) goto L_0x010d
            boolean r0 = r13.b((android.view.View) r4, (int) r3)
            if (r0 != 0) goto L_0x0113
        L_0x010d:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x00a0
        L_0x0111:
            r0 = 0
            goto L_0x00c9
        L_0x0113:
            r13.c(r14)
            goto L_0x001f
        L_0x0118:
            int r0 = defpackage.ax.b(r14, r1)
            r13.b((int) r0)
            goto L_0x001f
        L_0x0121:
            r13.a()
            goto L_0x001f
        L_0x0126:
            r0 = 0
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cu.a(android.view.MotionEvent):boolean");
    }

    public final boolean a(View view, int i2, int i3) {
        this.k = view;
        this.l = -1;
        boolean a2 = a(i2, i3, 0, 0);
        if (!a2 && this.a == 0 && this.k != null) {
            this.k = null;
        }
        return a2;
    }

    public final View b(int i2, int i3) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.u.getChildAt(this.s.getOrderedChildIndex(childCount));
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final void b() {
        a();
        if (this.a == 2) {
            int b2 = this.r.b();
            int c2 = this.r.c();
            this.r.h();
            int b3 = this.r.b();
            int c3 = this.r.c();
            this.s.onViewPositionChanged(this.k, b3, c3, b3 - b2, c3 - c2);
        }
        a(0);
    }

    public final void b(MotionEvent motionEvent) {
        int i2;
        int i3 = 0;
        int a2 = ax.a(motionEvent);
        int b2 = ax.b(motionEvent);
        if (a2 == 0) {
            a();
        }
        if (this.p == null) {
            this.p = VelocityTracker.obtain();
        }
        this.p.addMovement(motionEvent);
        switch (a2) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int b3 = ax.b(motionEvent, 0);
                View b4 = b((int) x, (int) y);
                a(x, y, b3);
                b(b4, b3);
                int i4 = this.m[b3];
                if ((this.j & i4) != 0) {
                    this.s.onEdgeTouched(i4 & this.j, b3);
                    return;
                }
                return;
            case 1:
                if (this.a == 1) {
                    d();
                }
                a();
                return;
            case 2:
                if (this.a == 1) {
                    int a3 = ax.a(motionEvent, this.l);
                    float c2 = ax.c(motionEvent, a3);
                    float d2 = ax.d(motionEvent, a3);
                    int i5 = (int) (c2 - this.e[this.l]);
                    int i6 = (int) (d2 - this.f[this.l]);
                    int left = this.k.getLeft() + i5;
                    int top = this.k.getTop() + i6;
                    int left2 = this.k.getLeft();
                    int top2 = this.k.getTop();
                    if (i5 != 0) {
                        left = this.s.clampViewPositionHorizontal(this.k, left, i5);
                        this.k.offsetLeftAndRight(left - left2);
                    }
                    if (i6 != 0) {
                        top = this.s.clampViewPositionVertical(this.k, top, i6);
                        this.k.offsetTopAndBottom(top - top2);
                    }
                    if (!(i5 == 0 && i6 == 0)) {
                        this.s.onViewPositionChanged(this.k, left, top, left - left2, top - top2);
                    }
                    c(motionEvent);
                    return;
                }
                int c3 = ax.c(motionEvent);
                while (i3 < c3) {
                    int b5 = ax.b(motionEvent, i3);
                    float c4 = ax.c(motionEvent, i3);
                    float d3 = ax.d(motionEvent, i3);
                    float f2 = c4 - this.c[b5];
                    float f3 = d3 - this.d[b5];
                    b(f2, f3, b5);
                    if (this.a != 1) {
                        View b6 = b((int) c4, (int) d3);
                        if (!a(b6, f2, f3) || !b(b6, b5)) {
                            i3++;
                        }
                    }
                    c(motionEvent);
                    return;
                }
                c(motionEvent);
                return;
            case 3:
                if (this.a == 1) {
                    a(0.0f, 0.0f);
                }
                a();
                return;
            case 5:
                int b7 = ax.b(motionEvent, b2);
                float c5 = ax.c(motionEvent, b2);
                float d4 = ax.d(motionEvent, b2);
                a(c5, d4, b7);
                if (this.a == 0) {
                    b(b((int) c5, (int) d4), b7);
                    int i7 = this.m[b7];
                    if ((this.j & i7) != 0) {
                        this.s.onEdgeTouched(i7 & this.j, b7);
                        return;
                    }
                    return;
                }
                if (b(this.k, (int) c5, (int) d4)) {
                    b(this.k, b7);
                    return;
                }
                return;
            case 6:
                int b8 = ax.b(motionEvent, b2);
                if (this.a == 1 && b8 == this.l) {
                    int c6 = ax.c(motionEvent);
                    while (true) {
                        if (i3 >= c6) {
                            i2 = -1;
                        } else {
                            int b9 = ax.b(motionEvent, i3);
                            if (b9 != this.l) {
                                if (b((int) ax.c(motionEvent, i3), (int) ax.d(motionEvent, i3)) == this.k && b(this.k, b9)) {
                                    i2 = this.l;
                                }
                            }
                            i3++;
                        }
                    }
                    if (i2 == -1) {
                        d();
                    }
                }
                b(b8);
                return;
            default:
                return;
        }
    }

    public final boolean c() {
        boolean z;
        if (this.a == 2) {
            boolean g2 = this.r.g();
            int b2 = this.r.b();
            int c2 = this.r.c();
            int left = b2 - this.k.getLeft();
            int top = c2 - this.k.getTop();
            if (left != 0) {
                this.k.offsetLeftAndRight(left);
            }
            if (top != 0) {
                this.k.offsetTopAndBottom(top);
            }
            if (!(left == 0 && top == 0)) {
                this.s.onViewPositionChanged(this.k, b2, c2, left, top);
            }
            if (g2 && b2 == this.r.d() && c2 == this.r.e()) {
                this.r.h();
                z = false;
            } else {
                z = g2;
            }
            if (!z) {
                this.u.post(this.w);
            }
        }
        return this.a == 2;
    }
}
