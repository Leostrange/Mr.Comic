package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import defpackage.cu;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout extends ViewGroup {
    static final e a;
    private int b;
    private int c;
    private Drawable d;
    private Drawable e;
    private final int f;
    private boolean g;
    /* access modifiers changed from: private */
    public View h;
    /* access modifiers changed from: private */
    public float i;
    private float j;
    /* access modifiers changed from: private */
    public int k;
    /* access modifiers changed from: private */
    public boolean l;
    private int m;
    private float n;
    private float o;
    private d p;
    /* access modifiers changed from: private */
    public final cu q;
    /* access modifiers changed from: private */
    public boolean r;
    private boolean s;
    private final Rect t;
    /* access modifiers changed from: private */
    public final ArrayList<b> u;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int[] e = {16843137};
        public float a = 0.0f;
        boolean b;
        boolean c;
        Paint d;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
            this.a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean a;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt() != 0;
        }

        /* synthetic */ SavedState(Parcel parcel, byte b) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a ? 1 : 0);
        }
    }

    class a extends al {
        private final Rect b = new Rect();

        a() {
        }

        private boolean a(View view) {
            return SlidingPaneLayout.this.b(view);
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        public final void onInitializeAccessibilityNodeInfo(View view, bz bzVar) {
            bz a2 = bz.a(bzVar);
            super.onInitializeAccessibilityNodeInfo(view, a2);
            Rect rect = this.b;
            a2.a(rect);
            bzVar.b(rect);
            a2.c(rect);
            bzVar.d(rect);
            bzVar.c(a2.d());
            bzVar.a(a2.j());
            bzVar.b(a2.k());
            bzVar.c(a2.l());
            bzVar.h(a2.i());
            bzVar.f(a2.g());
            bzVar.a(a2.b());
            bzVar.b(a2.c());
            bzVar.d(a2.e());
            bzVar.e(a2.f());
            bzVar.g(a2.h());
            bzVar.a(a2.a());
            bz.a.b(bzVar.b, bz.a.r(a2.b));
            a2.m();
            bzVar.b((CharSequence) SlidingPaneLayout.class.getName());
            bzVar.a(view);
            ViewParent i = bh.i(view);
            if (i instanceof View) {
                bzVar.c((View) i);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i2);
                if (!a(childAt) && childAt.getVisibility() == 0) {
                    bh.c(childAt, 1);
                    bzVar.b(childAt);
                }
            }
        }

        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!a(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    class b implements Runnable {
        final View a;

        b(View view) {
            this.a = view;
        }

        public final void run() {
            if (this.a.getParent() == SlidingPaneLayout.this) {
                bh.a(this.a, 0, (Paint) null);
                SlidingPaneLayout.this.c(this.a);
            }
            SlidingPaneLayout.this.u.remove(this);
        }
    }

    class c extends cu.a {
        private c() {
        }

        /* synthetic */ c(SlidingPaneLayout slidingPaneLayout, byte b) {
            this();
        }

        public final int clampViewPositionHorizontal(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.h.getLayoutParams();
            if (SlidingPaneLayout.this.c()) {
                int width = SlidingPaneLayout.this.getWidth() - ((layoutParams.rightMargin + SlidingPaneLayout.this.getPaddingRight()) + SlidingPaneLayout.this.h.getWidth());
                return Math.max(Math.min(i, width), width - SlidingPaneLayout.this.k);
            }
            int paddingLeft = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
            return Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.k + paddingLeft);
        }

        public final int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        public final int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.k;
        }

        public final void onEdgeDragStarted(int i, int i2) {
            SlidingPaneLayout.this.q.a(SlidingPaneLayout.this.h, i2);
        }

        public final void onViewCaptured(View view, int i) {
            SlidingPaneLayout.this.a();
        }

        public final void onViewDragStateChanged(int i) {
            if (SlidingPaneLayout.this.q.a != 0) {
                return;
            }
            if (SlidingPaneLayout.this.i == 0.0f) {
                SlidingPaneLayout.this.a(SlidingPaneLayout.this.h);
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                View unused = SlidingPaneLayout.this.h;
                slidingPaneLayout.sendAccessibilityEvent(32);
                boolean unused2 = SlidingPaneLayout.this.r = false;
                return;
            }
            SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
            View unused3 = SlidingPaneLayout.this.h;
            slidingPaneLayout2.sendAccessibilityEvent(32);
            boolean unused4 = SlidingPaneLayout.this.r = true;
        }

        public final void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.a(SlidingPaneLayout.this, i);
            SlidingPaneLayout.this.invalidate();
        }

        public final void onViewReleased(View view, float f, float f2) {
            int paddingLeft;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (SlidingPaneLayout.this.c()) {
                int paddingRight = layoutParams.rightMargin + SlidingPaneLayout.this.getPaddingRight();
                if (f < 0.0f || (f == 0.0f && SlidingPaneLayout.this.i > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.k;
                }
                paddingLeft = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.h.getWidth();
            } else {
                paddingLeft = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f > 0.0f || (f == 0.0f && SlidingPaneLayout.this.i > 0.5f)) {
                    paddingLeft += SlidingPaneLayout.this.k;
                }
            }
            SlidingPaneLayout.this.q.a(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        public final boolean tryCaptureView(View view, int i) {
            if (SlidingPaneLayout.this.l) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).b;
        }
    }

    public interface d {
    }

    interface e {
        void a(SlidingPaneLayout slidingPaneLayout, View view);
    }

    static class f implements e {
        f() {
        }

        public void a(SlidingPaneLayout slidingPaneLayout, View view) {
            bh.a(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    static class g extends f {
        private Method a;
        private Field b;

        g() {
            try {
                this.a = View.class.getDeclaredMethod("getDisplayList", (Class[]) null);
            } catch (NoSuchMethodException e) {
                Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
            }
            try {
                this.b = View.class.getDeclaredField("mRecreateDisplayList");
                this.b.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
            }
        }

        public final void a(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.a == null || this.b == null) {
                view.invalidate();
                return;
            }
            try {
                this.b.setBoolean(view, true);
                this.a.invoke(view, (Object[]) null);
            } catch (Exception e) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e);
            }
            super.a(slidingPaneLayout, view);
        }
    }

    static class h extends f {
        h() {
        }

        public final void a(SlidingPaneLayout slidingPaneLayout, View view) {
            bh.a(view, ((LayoutParams) view.getLayoutParams()).d);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            a = new h();
        } else if (i2 >= 16) {
            a = new g();
        } else {
            a = new f();
        }
    }

    public SlidingPaneLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = -858993460;
        this.s = true;
        this.t = new Rect();
        this.u = new ArrayList<>();
        float f2 = context.getResources().getDisplayMetrics().density;
        this.f = (int) ((32.0f * f2) + 0.5f);
        ViewConfiguration.get(context);
        setWillNotDraw(false);
        bh.a((View) this, (al) new a());
        bh.c((View) this, 1);
        this.q = cu.a((ViewGroup) this, 0.5f, (cu.a) new c(this, (byte) 0));
        this.q.h = f2 * 400.0f;
    }

    static /* synthetic */ void a(SlidingPaneLayout slidingPaneLayout, int i2) {
        if (slidingPaneLayout.h == null) {
            slidingPaneLayout.i = 0.0f;
            return;
        }
        boolean c2 = slidingPaneLayout.c();
        LayoutParams layoutParams = (LayoutParams) slidingPaneLayout.h.getLayoutParams();
        int width = slidingPaneLayout.h.getWidth();
        if (c2) {
            i2 = (slidingPaneLayout.getWidth() - i2) - width;
        }
        slidingPaneLayout.i = ((float) (i2 - ((c2 ? layoutParams.rightMargin : layoutParams.leftMargin) + (c2 ? slidingPaneLayout.getPaddingRight() : slidingPaneLayout.getPaddingLeft())))) / ((float) slidingPaneLayout.k);
        if (slidingPaneLayout.m != 0) {
            slidingPaneLayout.b(slidingPaneLayout.i);
        }
        if (layoutParams.c) {
            slidingPaneLayout.a(slidingPaneLayout.h, slidingPaneLayout.i, slidingPaneLayout.b);
        }
    }

    private void a(View view, float f2, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 > 0.0f && i2 != 0) {
            int i3 = (((int) (((float) ((-16777216 & i2) >>> 24)) * f2)) << 24) | (16777215 & i2);
            if (layoutParams.d == null) {
                layoutParams.d = new Paint();
            }
            layoutParams.d.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_OVER));
            if (bh.g(view) != 2) {
                bh.a(view, 2, layoutParams.d);
            }
            c(view);
        } else if (bh.g(view) != 0) {
            if (layoutParams.d != null) {
                layoutParams.d.setColorFilter((ColorFilter) null);
            }
            b bVar = new b(view);
            this.u.add(bVar);
            bh.a((View) this, (Runnable) bVar);
        }
    }

    private boolean a(float f2) {
        int paddingLeft;
        if (!this.g) {
            return false;
        }
        boolean c2 = c();
        LayoutParams layoutParams = (LayoutParams) this.h.getLayoutParams();
        if (c2) {
            paddingLeft = (int) (((float) getWidth()) - ((((float) (layoutParams.rightMargin + getPaddingRight())) + (((float) this.k) * f2)) + ((float) this.h.getWidth())));
        } else {
            paddingLeft = (int) (((float) (layoutParams.leftMargin + getPaddingLeft())) + (((float) this.k) * f2));
        }
        if (!this.q.a(this.h, paddingLeft, this.h.getTop())) {
            return false;
        }
        a();
        bh.d(this);
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:8:0x0021  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(float r10) {
        /*
            r9 = this;
            r1 = 0
            r8 = 1065353216(0x3f800000, float:1.0)
            boolean r3 = r9.c()
            android.view.View r0 = r9.h
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            android.support.v4.widget.SlidingPaneLayout$LayoutParams r0 = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) r0
            boolean r2 = r0.c
            if (r2 == 0) goto L_0x0055
            if (r3 == 0) goto L_0x0052
            int r0 = r0.rightMargin
        L_0x0017:
            if (r0 > 0) goto L_0x0055
            r0 = 1
        L_0x001a:
            int r4 = r9.getChildCount()
            r2 = r1
        L_0x001f:
            if (r2 >= r4) goto L_0x005c
            android.view.View r5 = r9.getChildAt(r2)
            android.view.View r1 = r9.h
            if (r5 == r1) goto L_0x004e
            float r1 = r9.j
            float r1 = r8 - r1
            int r6 = r9.m
            float r6 = (float) r6
            float r1 = r1 * r6
            int r1 = (int) r1
            r9.j = r10
            float r6 = r8 - r10
            int r7 = r9.m
            float r7 = (float) r7
            float r6 = r6 * r7
            int r6 = (int) r6
            int r1 = r1 - r6
            if (r3 == 0) goto L_0x003f
            int r1 = -r1
        L_0x003f:
            r5.offsetLeftAndRight(r1)
            if (r0 == 0) goto L_0x004e
            if (r3 == 0) goto L_0x0057
            float r1 = r9.j
            float r1 = r1 - r8
        L_0x0049:
            int r6 = r9.c
            r9.a(r5, r1, r6)
        L_0x004e:
            int r1 = r2 + 1
            r2 = r1
            goto L_0x001f
        L_0x0052:
            int r0 = r0.leftMargin
            goto L_0x0017
        L_0x0055:
            r0 = r1
            goto L_0x001a
        L_0x0057:
            float r1 = r9.j
            float r1 = r8 - r1
            goto L_0x0049
        L_0x005c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.b(float):void");
    }

    private boolean b() {
        if (!this.s && !a(0.0f)) {
            return false;
        }
        this.r = false;
        return true;
    }

    /* access modifiers changed from: private */
    public void c(View view) {
        a.a(this, view);
    }

    /* access modifiers changed from: private */
    public boolean c() {
        return bh.h(this) == 1;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0047  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(android.view.View r18) {
        /*
            r17 = this;
            boolean r9 = r17.c()
            if (r9 == 0) goto L_0x008d
            int r1 = r17.getWidth()
            int r2 = r17.getPaddingRight()
            int r7 = r1 - r2
        L_0x0010:
            if (r9 == 0) goto L_0x0093
            int r1 = r17.getPaddingLeft()
        L_0x0016:
            int r10 = r17.getPaddingTop()
            int r2 = r17.getHeight()
            int r3 = r17.getPaddingBottom()
            int r11 = r2 - r3
            if (r18 == 0) goto L_0x00ba
            boolean r2 = defpackage.bh.j(r18)
            if (r2 == 0) goto L_0x009e
            r2 = 1
        L_0x002d:
            if (r2 == 0) goto L_0x00ba
            int r5 = r18.getLeft()
            int r4 = r18.getRight()
            int r3 = r18.getTop()
            int r2 = r18.getBottom()
        L_0x003f:
            r6 = 0
            int r12 = r17.getChildCount()
            r8 = r6
        L_0x0045:
            if (r8 >= r12) goto L_0x00c5
            r0 = r17
            android.view.View r13 = r0.getChildAt(r8)
            r0 = r18
            if (r13 == r0) goto L_0x00c5
            if (r9 == 0) goto L_0x00bf
            r6 = r1
        L_0x0054:
            int r14 = r13.getLeft()
            int r14 = java.lang.Math.max(r6, r14)
            int r6 = r13.getTop()
            int r15 = java.lang.Math.max(r10, r6)
            if (r9 == 0) goto L_0x00c1
            r6 = r7
        L_0x0067:
            int r16 = r13.getRight()
            r0 = r16
            int r6 = java.lang.Math.min(r6, r0)
            int r16 = r13.getBottom()
            r0 = r16
            int r16 = java.lang.Math.min(r11, r0)
            if (r14 < r5) goto L_0x00c3
            if (r15 < r3) goto L_0x00c3
            if (r6 > r4) goto L_0x00c3
            r0 = r16
            if (r0 > r2) goto L_0x00c3
            r6 = 4
        L_0x0086:
            r13.setVisibility(r6)
            int r6 = r8 + 1
            r8 = r6
            goto L_0x0045
        L_0x008d:
            int r7 = r17.getPaddingLeft()
            goto L_0x0010
        L_0x0093:
            int r1 = r17.getWidth()
            int r2 = r17.getPaddingRight()
            int r1 = r1 - r2
            goto L_0x0016
        L_0x009e:
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 18
            if (r2 >= r3) goto L_0x00b7
            android.graphics.drawable.Drawable r2 = r18.getBackground()
            if (r2 == 0) goto L_0x00b7
            int r2 = r2.getOpacity()
            r3 = -1
            if (r2 != r3) goto L_0x00b4
            r2 = 1
            goto L_0x002d
        L_0x00b4:
            r2 = 0
            goto L_0x002d
        L_0x00b7:
            r2 = 0
            goto L_0x002d
        L_0x00ba:
            r2 = 0
            r3 = r2
            r4 = r2
            r5 = r2
            goto L_0x003f
        L_0x00bf:
            r6 = r7
            goto L_0x0054
        L_0x00c1:
            r6 = r1
            goto L_0x0067
        L_0x00c3:
            r6 = 0
            goto L_0x0086
        L_0x00c5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.a(android.view.View):void");
    }

    /* access modifiers changed from: package-private */
    public final boolean b(View view) {
        if (view == null) {
            return false;
        }
        return this.g && ((LayoutParams) view.getLayoutParams()).c && this.i > 0.0f;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        if (!this.q.c()) {
            return;
        }
        if (!this.g) {
            this.q.b();
        } else {
            bh.d(this);
        }
    }

    public void draw(Canvas canvas) {
        int left;
        int i2;
        super.draw(canvas);
        Drawable drawable = c() ? this.e : this.d;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (c()) {
                i2 = childAt.getRight();
                left = i2 + intrinsicWidth;
            } else {
                left = childAt.getLeft();
                i2 = left - intrinsicWidth;
            }
            drawable.setBounds(i2, top, left, bottom);
            drawable.draw(canvas);
        }
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j2) {
        boolean drawChild;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save(2);
        if (this.g && !layoutParams.b && this.h != null) {
            canvas.getClipBounds(this.t);
            if (c()) {
                this.t.left = Math.max(this.t.left, this.h.getRight());
            } else {
                this.t.right = Math.min(this.t.right, this.h.getLeft());
            }
            canvas.clipRect(this.t);
        }
        if (Build.VERSION.SDK_INT < 11) {
            if (layoutParams.c && this.i > 0.0f) {
                if (!view.isDrawingCacheEnabled()) {
                    view.setDrawingCacheEnabled(true);
                }
                Bitmap drawingCache = view.getDrawingCache();
                if (drawingCache != null) {
                    canvas.drawBitmap(drawingCache, (float) view.getLeft(), (float) view.getTop(), layoutParams.d);
                    drawChild = false;
                    canvas.restoreToCount(save);
                    return drawChild;
                }
                Log.e("SlidingPaneLayout", "drawChild: child view " + view + " returned null drawing cache");
            } else if (view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(false);
            }
        }
        drawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public int getCoveredFadeColor() {
        return this.c;
    }

    public int getParallaxDistance() {
        return this.m;
    }

    public int getSliderFadeColor() {
        return this.b;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.s = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.s = true;
        int size = this.u.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.u.get(i2).run();
        }
        this.u.clear();
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            r2 = 0
            r1 = 1
            int r3 = defpackage.ax.a(r7)
            boolean r0 = r6.g
            if (r0 != 0) goto L_0x002b
            if (r3 != 0) goto L_0x002b
            int r0 = r6.getChildCount()
            if (r0 <= r1) goto L_0x002b
            android.view.View r0 = r6.getChildAt(r1)
            if (r0 == 0) goto L_0x002b
            float r4 = r7.getX()
            int r4 = (int) r4
            float r5 = r7.getY()
            int r5 = (int) r5
            boolean r0 = defpackage.cu.b((android.view.View) r0, (int) r4, (int) r5)
            if (r0 != 0) goto L_0x003f
            r0 = r1
        L_0x0029:
            r6.r = r0
        L_0x002b:
            boolean r0 = r6.g
            if (r0 == 0) goto L_0x0035
            boolean r0 = r6.l
            if (r0 == 0) goto L_0x0041
            if (r3 == 0) goto L_0x0041
        L_0x0035:
            cu r0 = r6.q
            r0.a()
            boolean r2 = super.onInterceptTouchEvent(r7)
        L_0x003e:
            return r2
        L_0x003f:
            r0 = r2
            goto L_0x0029
        L_0x0041:
            r0 = 3
            if (r3 == r0) goto L_0x0046
            if (r3 != r1) goto L_0x004c
        L_0x0046:
            cu r0 = r6.q
            r0.a()
            goto L_0x003e
        L_0x004c:
            switch(r3) {
                case 0: goto L_0x005c;
                case 1: goto L_0x004f;
                case 2: goto L_0x007e;
                default: goto L_0x004f;
            }
        L_0x004f:
            r0 = r2
        L_0x0050:
            cu r3 = r6.q
            boolean r3 = r3.a((android.view.MotionEvent) r7)
            if (r3 != 0) goto L_0x005a
            if (r0 == 0) goto L_0x003e
        L_0x005a:
            r2 = r1
            goto L_0x003e
        L_0x005c:
            r6.l = r2
            float r0 = r7.getX()
            float r3 = r7.getY()
            r6.n = r0
            r6.o = r3
            android.view.View r4 = r6.h
            int r0 = (int) r0
            int r3 = (int) r3
            boolean r0 = defpackage.cu.b((android.view.View) r4, (int) r0, (int) r3)
            if (r0 == 0) goto L_0x004f
            android.view.View r0 = r6.h
            boolean r0 = r6.b((android.view.View) r0)
            if (r0 == 0) goto L_0x004f
            r0 = r1
            goto L_0x0050
        L_0x007e:
            float r0 = r7.getX()
            float r3 = r7.getY()
            float r4 = r6.n
            float r0 = r0 - r4
            float r0 = java.lang.Math.abs(r0)
            float r4 = r6.o
            float r3 = r3 - r4
            float r3 = java.lang.Math.abs(r3)
            cu r4 = r6.q
            int r4 = r4.b
            float r4 = (float) r4
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 <= 0) goto L_0x004f
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 <= 0) goto L_0x004f
            cu r0 = r6.q
            r0.a()
            r6.l = r1
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean c2 = c();
        if (c2) {
            this.q.j = 2;
        } else {
            this.q.j = 1;
        }
        int i11 = i4 - i2;
        int paddingRight = c2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = c2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.s) {
            this.i = (!this.g || !this.r) ? 0.0f : 1.0f;
        }
        int i12 = 0;
        int i13 = paddingRight;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int i14 = 0;
                if (layoutParams.b) {
                    int min = (Math.min(paddingRight, (i11 - paddingLeft) - this.f) - i13) - (layoutParams.leftMargin + layoutParams.rightMargin);
                    this.k = min;
                    int i15 = c2 ? layoutParams.rightMargin : layoutParams.leftMargin;
                    layoutParams.c = ((i13 + i15) + min) + (measuredWidth / 2) > i11 - paddingLeft;
                    int i16 = (int) (((float) min) * this.i);
                    i8 = i13 + i15 + i16;
                    this.i = ((float) i16) / ((float) this.k);
                } else {
                    i14 = (!this.g || this.m == 0) ? 0 : (int) ((1.0f - this.i) * ((float) this.m));
                    i8 = paddingRight;
                }
                if (c2) {
                    i10 = (i11 - i8) + i14;
                    i9 = i10 - measuredWidth;
                } else {
                    i9 = i8 - i14;
                    i10 = i9 + measuredWidth;
                }
                childAt.layout(i9, paddingTop, i10, childAt.getMeasuredHeight() + paddingTop);
                i6 = childAt.getWidth() + paddingRight;
                i7 = i8;
            } else {
                i6 = paddingRight;
                i7 = i13;
            }
            i12++;
            paddingRight = i6;
            i13 = i7;
        }
        if (this.s) {
            if (this.g) {
                if (this.m != 0) {
                    b(this.i);
                }
                if (((LayoutParams) this.h.getLayoutParams()).c) {
                    a(this.h, this.i, this.b);
                }
            } else {
                for (int i17 = 0; i17 < childCount; i17++) {
                    a(getChildAt(i17), 0.0f, this.b);
                }
            }
            a(this.h);
        }
        this.s = false;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int paddingTop;
        int i8;
        float f2;
        boolean z;
        int i9;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode == 1073741824) {
            if (mode2 == 0) {
                if (!isInEditMode()) {
                    throw new IllegalStateException("Height must not be UNSPECIFIED");
                } else if (mode2 == 0) {
                    i4 = Integer.MIN_VALUE;
                    i5 = size;
                    i6 = 300;
                }
            }
            i4 = mode2;
            i5 = size;
            i6 = size2;
        } else if (isInEditMode()) {
            if (mode != Integer.MIN_VALUE && mode == 0) {
                i4 = mode2;
                i5 = 300;
                i6 = size2;
            }
            i4 = mode2;
            i5 = size;
            i6 = size2;
        } else {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        }
        switch (i4) {
            case Integer.MIN_VALUE:
                i7 = 0;
                paddingTop = (i6 - getPaddingTop()) - getPaddingBottom();
                break;
            case 1073741824:
                i7 = (i6 - getPaddingTop()) - getPaddingBottom();
                paddingTop = i7;
                break;
            default:
                i7 = 0;
                paddingTop = -1;
                break;
        }
        boolean z2 = false;
        int paddingLeft = (i5 - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.h = null;
        int i10 = 0;
        int i11 = paddingLeft;
        int i12 = i7;
        float f3 = 0.0f;
        while (i10 < childCount) {
            View childAt = getChildAt(i10);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.c = false;
                i8 = i11;
                i9 = i12;
                f2 = f3;
                z = z2;
            } else {
                if (layoutParams.a > 0.0f) {
                    f3 += layoutParams.a;
                    if (layoutParams.width == 0) {
                        i8 = i11;
                        i9 = i12;
                        f2 = f3;
                        z = z2;
                    }
                }
                int i13 = layoutParams.leftMargin + layoutParams.rightMargin;
                childAt.measure(layoutParams.width == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, Integer.MIN_VALUE) : layoutParams.width == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft - i13, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), layoutParams.height == -2 ? View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE) : layoutParams.height == -1 ? View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (i4 == Integer.MIN_VALUE && measuredHeight > i12) {
                    i12 = Math.min(measuredHeight, paddingTop);
                }
                int i14 = i11 - measuredWidth;
                boolean z3 = i14 < 0;
                layoutParams.b = z3;
                boolean z4 = z3 | z2;
                if (layoutParams.b) {
                    this.h = childAt;
                }
                i8 = i14;
                f2 = f3;
                z = z4;
                i9 = i12;
            }
            i10++;
            z2 = z;
            i12 = i9;
            i11 = i8;
            f3 = f2;
        }
        if (z2 || f3 > 0.0f) {
            int i15 = paddingLeft - this.f;
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt2 = getChildAt(i16);
                if (childAt2.getVisibility() != 8) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        boolean z5 = layoutParams2.width == 0 && layoutParams2.a > 0.0f;
                        int measuredWidth2 = z5 ? 0 : childAt2.getMeasuredWidth();
                        if (!z2 || childAt2 == this.h) {
                            if (layoutParams2.a > 0.0f) {
                                int makeMeasureSpec = layoutParams2.width == 0 ? layoutParams2.height == -2 ? View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE) : layoutParams2.height == -1 ? View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                if (z2) {
                                    int i17 = paddingLeft - (layoutParams2.rightMargin + layoutParams2.leftMargin);
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i17, 1073741824);
                                    if (measuredWidth2 != i17) {
                                        childAt2.measure(makeMeasureSpec2, makeMeasureSpec);
                                    }
                                } else {
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(((int) ((layoutParams2.a * ((float) Math.max(0, i11))) / f3)) + measuredWidth2, 1073741824), makeMeasureSpec);
                                }
                            }
                        } else if (layoutParams2.width < 0 && (measuredWidth2 > i15 || layoutParams2.a > 0.0f)) {
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i15, 1073741824), z5 ? layoutParams2.height == -2 ? View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE) : layoutParams2.height == -1 ? View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824) : View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i5, getPaddingTop() + i12 + getPaddingBottom());
        this.g = z2;
        if (this.q.a != 0 && !z2) {
            this.q.b();
        }
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.a) {
            b();
        } else if (this.s || a(1.0f)) {
            this.r = true;
        }
        this.r = savedState.a;
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = this.g ? !this.g || this.i == 1.0f : this.r;
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            this.s = true;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.g) {
            return super.onTouchEvent(motionEvent);
        }
        this.q.b(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.n = x;
                this.o = y;
                break;
            case 1:
                if (b(this.h)) {
                    float x2 = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    float f2 = x2 - this.n;
                    float f3 = y2 - this.o;
                    int i2 = this.q.b;
                    if ((f2 * f2) + (f3 * f3) < ((float) (i2 * i2)) && cu.b(this.h, (int) x2, (int) y2)) {
                        b();
                        break;
                    }
                }
                break;
        }
        return true;
    }

    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.g) {
            this.r = view == this.h;
        }
    }

    public void setCoveredFadeColor(int i2) {
        this.c = i2;
    }

    public void setPanelSlideListener(d dVar) {
        this.p = dVar;
    }

    public void setParallaxDistance(int i2) {
        this.m = i2;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.d = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.e = drawable;
    }

    @Deprecated
    public void setShadowResource(int i2) {
        setShadowDrawable(getResources().getDrawable(i2));
    }

    public void setShadowResourceLeft(int i2) {
        setShadowDrawableLeft(getResources().getDrawable(i2));
    }

    public void setShadowResourceRight(int i2) {
        setShadowDrawableRight(getResources().getDrawable(i2));
    }

    public void setSliderFadeColor(int i2) {
        this.b = i2;
    }
}
