package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import defpackage.cu;
import java.util.List;

public class DrawerLayout extends ViewGroup implements cl {
    static final c h;
    /* access modifiers changed from: private */
    public static final int[] i = {16842931};
    /* access modifiers changed from: private */
    public static final boolean j;
    private Drawable A;
    private Object B;
    private boolean C;
    final cu a;
    final cu b;
    int c;
    boolean d;
    f e;
    CharSequence f;
    CharSequence g;
    private final b k;
    private int l;
    private int m;
    private float n;
    private Paint o;
    private final h p;
    private final h q;
    private boolean r;
    private boolean s;
    private int t;
    private int u;
    private boolean v;
    private float w;
    private float x;
    private Drawable y;
    private Drawable z;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int a = 0;
        float b;
        boolean c;
        boolean d;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.i);
            this.a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.a = layoutParams.a;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int a = 0;
        int b = 0;
        int c = 0;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
        }
    }

    class a extends al {
        private final Rect b = new Rect();

        a() {
        }

        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List text = accessibilityEvent.getText();
            View a2 = DrawerLayout.this.g();
            if (a2 != null) {
                int c = DrawerLayout.this.c(a2);
                DrawerLayout drawerLayout = DrawerLayout.this;
                int a3 = ap.a(c, bh.h(drawerLayout));
                CharSequence charSequence = a3 == 3 ? drawerLayout.f : a3 == 5 ? drawerLayout.g : null;
                if (charSequence != null) {
                    text.add(charSequence);
                }
            }
            return true;
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        public final void onInitializeAccessibilityNodeInfo(View view, bz bzVar) {
            if (DrawerLayout.j) {
                super.onInitializeAccessibilityNodeInfo(view, bzVar);
            } else {
                bz a2 = bz.a(bzVar);
                super.onInitializeAccessibilityNodeInfo(view, a2);
                bzVar.a(view);
                ViewParent i = bh.i(view);
                if (i instanceof View) {
                    bzVar.c((View) i);
                }
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
                a2.m();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (DrawerLayout.f(childAt)) {
                        bzVar.b(childAt);
                    }
                }
            }
            bzVar.b((CharSequence) DrawerLayout.class.getName());
            bzVar.a(false);
            bzVar.b(false);
        }

        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.j || DrawerLayout.f(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    final class b extends al {
        b() {
        }

        public final void onInitializeAccessibilityNodeInfo(View view, bz bzVar) {
            super.onInitializeAccessibilityNodeInfo(view, bzVar);
            if (!DrawerLayout.f(view)) {
                bzVar.c((View) null);
            }
        }
    }

    interface c {
        int a(Object obj);

        Drawable a(Context context);

        void a(View view);

        void a(View view, Object obj, int i);

        void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i);
    }

    static class d implements c {
        d() {
        }

        public final int a(Object obj) {
            return ck.a(obj);
        }

        public final Drawable a(Context context) {
            return ck.a(context);
        }

        public final void a(View view) {
            ck.a(view);
        }

        public final void a(View view, Object obj, int i) {
            ck.a(view, obj, i);
        }

        public final void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i) {
            ck.a(marginLayoutParams, obj, i);
        }
    }

    static class e implements c {
        e() {
        }

        public final int a(Object obj) {
            return 0;
        }

        public final Drawable a(Context context) {
            return null;
        }

        public final void a(View view) {
        }

        public final void a(View view, Object obj, int i) {
        }

        public final void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i) {
        }
    }

    public interface f {
        void onDrawerClosed(View view);

        void onDrawerOpened(View view);

        void onDrawerSlide(View view, float f);

        void onDrawerStateChanged(int i);
    }

    public static abstract class g implements f {
        public void onDrawerClosed(View view) {
        }

        public void onDrawerOpened(View view) {
        }

        public void onDrawerSlide(View view, float f) {
        }

        public void onDrawerStateChanged(int i) {
        }
    }

    class h extends cu.a {
        final int a;
        cu b;
        private final Runnable d = new Runnable() {
            public final void run() {
                View view;
                int i;
                h hVar = h.this;
                int i2 = hVar.b.i;
                boolean z = hVar.a == 3;
                if (z) {
                    View a2 = DrawerLayout.this.a(3);
                    int i3 = (a2 != null ? -a2.getWidth() : 0) + i2;
                    view = a2;
                    i = i3;
                } else {
                    View a3 = DrawerLayout.this.a(5);
                    int width = DrawerLayout.this.getWidth() - i2;
                    view = a3;
                    i = width;
                }
                if (view == null) {
                    return;
                }
                if (((z && view.getLeft() < i) || (!z && view.getLeft() > i)) && DrawerLayout.this.a(view) == 0) {
                    hVar.b.a(view, i, view.getTop());
                    ((LayoutParams) view.getLayoutParams()).c = true;
                    DrawerLayout.this.invalidate();
                    hVar.b();
                    DrawerLayout drawerLayout = DrawerLayout.this;
                    if (!drawerLayout.d) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                        int childCount = drawerLayout.getChildCount();
                        for (int i4 = 0; i4 < childCount; i4++) {
                            drawerLayout.getChildAt(i4).dispatchTouchEvent(obtain);
                        }
                        obtain.recycle();
                        drawerLayout.d = true;
                    }
                }
            }
        };

        public h(int i) {
            this.a = i;
        }

        public final void a() {
            DrawerLayout.this.removeCallbacks(this.d);
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            int i = 3;
            if (this.a == 3) {
                i = 5;
            }
            View a2 = DrawerLayout.this.a(i);
            if (a2 != null) {
                DrawerLayout.this.e(a2);
            }
        }

        public final int clampViewPositionHorizontal(View view, int i, int i2) {
            if (DrawerLayout.this.a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        public final int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        public final int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.d(view)) {
                return view.getWidth();
            }
            return 0;
        }

        public final void onEdgeDragStarted(int i, int i2) {
            View a2 = (i & 1) == 1 ? DrawerLayout.this.a(3) : DrawerLayout.this.a(5);
            if (a2 != null && DrawerLayout.this.a(a2) == 0) {
                this.b.a(a2, i2);
            }
        }

        public final boolean onEdgeLock(int i) {
            return false;
        }

        public final void onEdgeTouched(int i, int i2) {
            DrawerLayout.this.postDelayed(this.d, 160);
        }

        public final void onViewCaptured(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).c = false;
            b();
        }

        public final void onViewDragStateChanged(int i) {
            View rootView;
            DrawerLayout drawerLayout = DrawerLayout.this;
            View view = this.b.k;
            int i2 = drawerLayout.a.a;
            int i3 = drawerLayout.b.a;
            int i4 = (i2 == 1 || i3 == 1) ? 1 : (i2 == 2 || i3 == 2) ? 2 : 0;
            if (view != null && i == 0) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                if (layoutParams.b == 0.0f) {
                    LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                    if (layoutParams2.d) {
                        layoutParams2.d = false;
                        if (drawerLayout.e != null) {
                            drawerLayout.e.onDrawerClosed(view);
                        }
                        drawerLayout.a(view, false);
                        if (drawerLayout.hasWindowFocus() && (rootView = drawerLayout.getRootView()) != null) {
                            rootView.sendAccessibilityEvent(32);
                        }
                    }
                } else if (layoutParams.b == 1.0f) {
                    LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
                    if (!layoutParams3.d) {
                        layoutParams3.d = true;
                        if (drawerLayout.e != null) {
                            drawerLayout.e.onDrawerOpened(view);
                        }
                        drawerLayout.a(view, true);
                        if (drawerLayout.hasWindowFocus()) {
                            drawerLayout.sendAccessibilityEvent(32);
                        }
                        view.requestFocus();
                    }
                }
            }
            if (i4 != drawerLayout.c) {
                drawerLayout.c = i4;
                if (drawerLayout.e != null) {
                    drawerLayout.e.onDrawerStateChanged(i4);
                }
            }
        }

        public final void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            float width2 = DrawerLayout.this.a(view, 3) ? ((float) (width + i)) / ((float) width) : ((float) (DrawerLayout.this.getWidth() - i)) / ((float) width);
            DrawerLayout.this.a(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        public final void onViewReleased(View view, float f, float f2) {
            int width;
            float b2 = DrawerLayout.b(view);
            int width2 = view.getWidth();
            if (DrawerLayout.this.a(view, 3)) {
                width = (f > 0.0f || (f == 0.0f && b2 > 0.5f)) ? 0 : -width2;
            } else {
                width = DrawerLayout.this.getWidth();
                if (f < 0.0f || (f == 0.0f && b2 > 0.5f)) {
                    width -= width2;
                }
            }
            this.b.a(width, view.getTop());
            DrawerLayout.this.invalidate();
        }

        public final boolean tryCaptureView(View view, int i) {
            return DrawerLayout.d(view) && DrawerLayout.this.a(view, this.a) && DrawerLayout.this.a(view) == 0;
        }
    }

    static {
        boolean z2 = true;
        if (Build.VERSION.SDK_INT < 19) {
            z2 = false;
        }
        j = z2;
        if (Build.VERSION.SDK_INT >= 21) {
            h = new d();
        } else {
            h = new e();
        }
    }

    public DrawerLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.k = new b();
        this.m = -1728053248;
        this.o = new Paint();
        this.s = true;
        setDescendantFocusability(262144);
        float f2 = getResources().getDisplayMetrics().density;
        this.l = (int) ((64.0f * f2) + 0.5f);
        float f3 = f2 * 400.0f;
        this.p = new h(3);
        this.q = new h(5);
        this.a = cu.a((ViewGroup) this, 1.0f, (cu.a) this.p);
        this.a.j = 1;
        this.a.h = f3;
        this.p.b = this.a;
        this.b = cu.a((ViewGroup) this, 1.0f, (cu.a) this.q);
        this.b.j = 2;
        this.b.h = f3;
        this.q.b = this.b;
        setFocusableInTouchMode(true);
        bh.c((View) this, 1);
        bh.a((View) this, (al) new a());
        bm.a(this);
        if (bh.x(this)) {
            h.a((View) this);
            this.A = h.a(context);
        }
    }

    static float b(View view) {
        return ((LayoutParams) view.getLayoutParams()).b;
    }

    private static String d(int i2) {
        return (i2 & 3) == 3 ? "LEFT" : (i2 & 5) == 5 ? "RIGHT" : Integer.toHexString(i2);
    }

    static boolean d(View view) {
        return (ap.a(((LayoutParams) view.getLayoutParams()).a, bh.h(view)) & 7) != 0;
    }

    private View f() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (((LayoutParams) childAt.getLayoutParams()).d) {
                return childAt;
            }
        }
        return null;
    }

    static /* synthetic */ boolean f(View view) {
        return (bh.e(view) == 4 || bh.e(view) == 2) ? false : true;
    }

    /* access modifiers changed from: private */
    public View g() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (d(childAt) && i(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    private static boolean g(View view) {
        return ((LayoutParams) view.getLayoutParams()).a == 0;
    }

    private void h(View view) {
        if (!d(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        if (this.s) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.b = 1.0f;
            layoutParams.d = true;
            a(view, true);
        } else if (a(view, 3)) {
            this.a.a(view, 0, view.getTop());
        } else {
            this.b.a(view, getWidth() - view.getWidth(), view.getTop());
        }
        invalidate();
    }

    private static boolean i(View view) {
        if (d(view)) {
            return ((LayoutParams) view.getLayoutParams()).b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public final int a(View view) {
        int c2 = c(view);
        if (c2 == 3) {
            return this.t;
        }
        if (c2 == 5) {
            return this.u;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final View a(int i2) {
        int a2 = ap.a(i2, bh.h(this)) & 7;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if ((c(childAt) & 7) == a2) {
                return childAt;
            }
        }
        return null;
    }

    public final void a() {
        a(false);
    }

    /* access modifiers changed from: package-private */
    public final void a(View view, float f2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 != layoutParams.b) {
            layoutParams.b = f2;
            if (this.e != null) {
                this.e.onDrawerSlide(view, f2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(View view, boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((z2 || d(childAt)) && (!z2 || childAt != view)) {
                bh.c(childAt, 4);
            } else {
                bh.c(childAt, 1);
            }
        }
    }

    public final void a(boolean z2) {
        int childCount = getChildCount();
        boolean z3 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (d(childAt) && (!z2 || layoutParams.c)) {
                z3 = a(childAt, 3) ? z3 | this.a.a(childAt, -childAt.getWidth(), childAt.getTop()) : z3 | this.b.a(childAt, getWidth(), childAt.getTop());
                layoutParams.c = false;
            }
        }
        this.p.a();
        this.q.a();
        if (z3) {
            invalidate();
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean a(View view, int i2) {
        return (c(view) & i2) == i2;
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (f() != null || d(view)) {
            bh.c(view, 4);
        } else {
            bh.c(view, 1);
        }
        if (!j) {
            bh.a(view, (al) this.k);
        }
    }

    public final void b(int i2) {
        View a2 = a(i2);
        if (a2 == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + d(i2));
        }
        h(a2);
    }

    public final boolean b() {
        View a2 = a(8388611);
        if (a2 == null) {
            return false;
        }
        if (d(a2)) {
            return ((LayoutParams) a2.getLayoutParams()).d;
        }
        throw new IllegalArgumentException("View " + a2 + " is not a drawer");
    }

    /* access modifiers changed from: package-private */
    public final int c(View view) {
        return ap.a(((LayoutParams) view.getLayoutParams()).a, bh.h(this));
    }

    public final void c(int i2) {
        View a2 = a(i2);
        if (a2 == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + d(i2));
        }
        e(a2);
    }

    public final boolean c() {
        View a2 = a(8388611);
        if (a2 != null) {
            return i(a2);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        int childCount = getChildCount();
        float f2 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            f2 = Math.max(f2, ((LayoutParams) getChildAt(i2).getLayoutParams()).b);
        }
        this.n = f2;
        if (this.a.c() || this.b.c()) {
            bh.d(this);
        }
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j2) {
        int i2;
        int height = getHeight();
        boolean g2 = g(view);
        int i3 = 0;
        int width = getWidth();
        int save = canvas.save();
        if (g2) {
            int childCount = getChildCount();
            int i4 = 0;
            while (i4 < childCount) {
                View childAt = getChildAt(i4);
                if (childAt != view && childAt.getVisibility() == 0) {
                    Drawable background = childAt.getBackground();
                    if ((background != null ? background.getOpacity() == -1 : false) && d(childAt) && childAt.getHeight() >= height) {
                        if (a(childAt, 3)) {
                            int right = childAt.getRight();
                            if (right <= i3) {
                                right = i3;
                            }
                            i3 = right;
                            i2 = width;
                        } else {
                            i2 = childAt.getLeft();
                            if (i2 < width) {
                            }
                        }
                        i4++;
                        width = i2;
                    }
                }
                i2 = width;
                i4++;
                width = i2;
            }
            canvas.clipRect(i3, 0, width, getHeight());
        }
        int i5 = width;
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(save);
        if (this.n > 0.0f && g2) {
            this.o.setColor((((int) (((float) ((this.m & -16777216) >>> 24)) * this.n)) << 24) | (this.m & 16777215));
            canvas.drawRect((float) i3, 0.0f, (float) i5, (float) getHeight(), this.o);
        } else if (this.y != null && a(view, 3)) {
            int intrinsicWidth = this.y.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(((float) right2) / ((float) this.a.i), 1.0f));
            this.y.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.y.setAlpha((int) (255.0f * max));
            this.y.draw(canvas);
        } else if (this.z != null && a(view, 5)) {
            int intrinsicWidth2 = this.z.getIntrinsicWidth();
            int left = view.getLeft();
            float max2 = Math.max(0.0f, Math.min(((float) (getWidth() - left)) / ((float) this.b.i), 1.0f));
            this.z.setBounds(left - intrinsicWidth2, view.getTop(), left, view.getBottom());
            this.z.setAlpha((int) (255.0f * max2));
            this.z.draw(canvas);
        }
        return drawChild;
    }

    public final void e(View view) {
        if (!d(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        if (this.s) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.b = 0.0f;
            layoutParams.d = false;
        } else if (a(view, 3)) {
            this.a.a(view, -view.getWidth(), view.getTop());
        } else {
            this.b.a(view, getWidth(), view.getTop());
        }
        invalidate();
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
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.A;
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
    }

    public void onDraw(Canvas canvas) {
        int a2;
        super.onDraw(canvas);
        if (this.C && this.A != null && (a2 = h.a(this.B)) > 0) {
            this.A.setBounds(0, 0, getWidth(), a2);
            this.A.draw(canvas);
        }
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004c, code lost:
        r0 = r9.a.b((int) r0, (int) r3);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            r1 = 1
            r2 = 0
            int r0 = defpackage.ax.a(r10)
            cu r3 = r9.a
            boolean r3 = r3.a((android.view.MotionEvent) r10)
            cu r4 = r9.b
            boolean r4 = r4.a((android.view.MotionEvent) r10)
            r4 = r4 | r3
            switch(r0) {
                case 0: goto L_0x0039;
                case 1: goto L_0x00b1;
                case 2: goto L_0x0062;
                case 3: goto L_0x00b1;
                default: goto L_0x0016;
            }
        L_0x0016:
            r0 = r2
        L_0x0017:
            if (r4 != 0) goto L_0x0037
            if (r0 != 0) goto L_0x0037
            int r4 = r9.getChildCount()
            r3 = r2
        L_0x0020:
            if (r3 >= r4) goto L_0x00bf
            android.view.View r0 = r9.getChildAt(r3)
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            android.support.v4.widget.DrawerLayout$LayoutParams r0 = (android.support.v4.widget.DrawerLayout.LayoutParams) r0
            boolean r0 = r0.c
            if (r0 == 0) goto L_0x00ba
            r0 = r1
        L_0x0031:
            if (r0 != 0) goto L_0x0037
            boolean r0 = r9.d
            if (r0 == 0) goto L_0x0038
        L_0x0037:
            r2 = r1
        L_0x0038:
            return r2
        L_0x0039:
            float r0 = r10.getX()
            float r3 = r10.getY()
            r9.w = r0
            r9.x = r3
            float r5 = r9.n
            r6 = 0
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 <= 0) goto L_0x00c2
            cu r5 = r9.a
            int r0 = (int) r0
            int r3 = (int) r3
            android.view.View r0 = r5.b((int) r0, (int) r3)
            if (r0 == 0) goto L_0x00c2
            boolean r0 = g(r0)
            if (r0 == 0) goto L_0x00c2
            r0 = r1
        L_0x005d:
            r9.v = r2
            r9.d = r2
            goto L_0x0017
        L_0x0062:
            cu r5 = r9.a
            float[] r0 = r5.c
            int r6 = r0.length
            r0 = r2
        L_0x0068:
            if (r0 >= r6) goto L_0x00af
            int r3 = r5.g
            int r7 = r1 << r0
            r3 = r3 & r7
            if (r3 == 0) goto L_0x00a6
            r3 = r1
        L_0x0072:
            if (r3 == 0) goto L_0x00aa
            float[] r3 = r5.e
            r3 = r3[r0]
            float[] r7 = r5.c
            r7 = r7[r0]
            float r3 = r3 - r7
            float[] r7 = r5.f
            r7 = r7[r0]
            float[] r8 = r5.d
            r8 = r8[r0]
            float r7 = r7 - r8
            float r3 = r3 * r3
            float r7 = r7 * r7
            float r3 = r3 + r7
            int r7 = r5.b
            int r8 = r5.b
            int r7 = r7 * r8
            float r7 = (float) r7
            int r3 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r3 <= 0) goto L_0x00a8
            r3 = r1
        L_0x0094:
            if (r3 == 0) goto L_0x00ac
            r0 = r1
        L_0x0097:
            if (r0 == 0) goto L_0x0016
            android.support.v4.widget.DrawerLayout$h r0 = r9.p
            r0.a()
            android.support.v4.widget.DrawerLayout$h r0 = r9.q
            r0.a()
            r0 = r2
            goto L_0x0017
        L_0x00a6:
            r3 = r2
            goto L_0x0072
        L_0x00a8:
            r3 = r2
            goto L_0x0094
        L_0x00aa:
            r3 = r2
            goto L_0x0094
        L_0x00ac:
            int r0 = r0 + 1
            goto L_0x0068
        L_0x00af:
            r0 = r2
            goto L_0x0097
        L_0x00b1:
            r9.a((boolean) r1)
            r9.v = r2
            r9.d = r2
            goto L_0x0016
        L_0x00ba:
            int r0 = r3 + 1
            r3 = r0
            goto L_0x0020
        L_0x00bf:
            r0 = r2
            goto L_0x0031
        L_0x00c2:
            r0 = r2
            goto L_0x005d
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            if (g() != null) {
                aq.c(keyEvent);
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        View g2 = g();
        if (g2 != null && a(g2) == 0) {
            a(false);
        }
        return g2 != null;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        float f2;
        this.r = true;
        int i7 = i4 - i2;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (g(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        i6 = ((int) (((float) measuredWidth) * layoutParams.b)) + (-measuredWidth);
                        f2 = ((float) (measuredWidth + i6)) / ((float) measuredWidth);
                    } else {
                        i6 = i7 - ((int) (((float) measuredWidth) * layoutParams.b));
                        f2 = ((float) (i7 - i6)) / ((float) measuredWidth);
                    }
                    boolean z3 = f2 != layoutParams.b;
                    switch (layoutParams.a & 112) {
                        case 16:
                            int i9 = i5 - i3;
                            int i10 = (i9 - measuredHeight) / 2;
                            if (i10 < layoutParams.topMargin) {
                                i10 = layoutParams.topMargin;
                            } else if (i10 + measuredHeight > i9 - layoutParams.bottomMargin) {
                                i10 = (i9 - layoutParams.bottomMargin) - measuredHeight;
                            }
                            childAt.layout(i6, i10, measuredWidth + i6, measuredHeight + i10);
                            break;
                        case 80:
                            int i11 = i5 - i3;
                            childAt.layout(i6, (i11 - layoutParams.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i6, i11 - layoutParams.bottomMargin);
                            break;
                        default:
                            childAt.layout(i6, layoutParams.topMargin, measuredWidth + i6, measuredHeight + layoutParams.topMargin);
                            break;
                    }
                    if (z3) {
                        a(childAt, f2);
                    }
                    int i12 = layoutParams.b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i12) {
                        childAt.setVisibility(i12);
                    }
                }
            }
        }
        this.r = false;
        this.s = false;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r5 == 0) goto L_0x002a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r13, int r14) {
        /*
            r12 = this;
            r1 = 300(0x12c, float:4.2E-43)
            r4 = 0
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            r11 = 1073741824(0x40000000, float:2.0)
            int r3 = android.view.View.MeasureSpec.getMode(r13)
            int r5 = android.view.View.MeasureSpec.getMode(r14)
            int r2 = android.view.View.MeasureSpec.getSize(r13)
            int r0 = android.view.View.MeasureSpec.getSize(r14)
            if (r3 != r11) goto L_0x001b
            if (r5 == r11) goto L_0x0111
        L_0x001b:
            boolean r6 = r12.isInEditMode()
            if (r6 == 0) goto L_0x008d
            if (r3 == r7) goto L_0x0026
            if (r3 != 0) goto L_0x0026
            r2 = r1
        L_0x0026:
            if (r5 == r7) goto L_0x0111
            if (r5 != 0) goto L_0x0111
        L_0x002a:
            r12.setMeasuredDimension(r2, r1)
            java.lang.Object r0 = r12.B
            if (r0 == 0) goto L_0x0095
            boolean r0 = defpackage.bh.x(r12)
            if (r0 == 0) goto L_0x0095
            r0 = 1
            r3 = r0
        L_0x0039:
            int r5 = defpackage.bh.h(r12)
            int r6 = r12.getChildCount()
        L_0x0041:
            if (r4 >= r6) goto L_0x0110
            android.view.View r7 = r12.getChildAt(r4)
            int r0 = r7.getVisibility()
            r8 = 8
            if (r0 == r8) goto L_0x008a
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            android.support.v4.widget.DrawerLayout$LayoutParams r0 = (android.support.v4.widget.DrawerLayout.LayoutParams) r0
            if (r3 == 0) goto L_0x006a
            int r8 = r0.a
            int r8 = defpackage.ap.a(r8, r5)
            boolean r9 = defpackage.bh.x(r7)
            if (r9 == 0) goto L_0x0097
            android.support.v4.widget.DrawerLayout$c r9 = h
            java.lang.Object r10 = r12.B
            r9.a((android.view.View) r7, (java.lang.Object) r10, (int) r8)
        L_0x006a:
            boolean r8 = g(r7)
            if (r8 == 0) goto L_0x009f
            int r8 = r0.leftMargin
            int r8 = r2 - r8
            int r9 = r0.rightMargin
            int r8 = r8 - r9
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r11)
            int r9 = r0.topMargin
            int r9 = r1 - r9
            int r0 = r0.bottomMargin
            int r0 = r9 - r0
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r11)
            r7.measure(r8, r0)
        L_0x008a:
            int r4 = r4 + 1
            goto L_0x0041
        L_0x008d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "DrawerLayout must be measured with MeasureSpec.EXACTLY."
            r0.<init>(r1)
            throw r0
        L_0x0095:
            r3 = r4
            goto L_0x0039
        L_0x0097:
            android.support.v4.widget.DrawerLayout$c r9 = h
            java.lang.Object r10 = r12.B
            r9.a((android.view.ViewGroup.MarginLayoutParams) r0, (java.lang.Object) r10, (int) r8)
            goto L_0x006a
        L_0x009f:
            boolean r8 = d((android.view.View) r7)
            if (r8 == 0) goto L_0x00eb
            int r8 = r12.c((android.view.View) r7)
            r8 = r8 & 7
            r9 = r8 & 0
            if (r9 == 0) goto L_0x00ce
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Child drawer has absolute gravity "
            r1.<init>(r2)
            java.lang.String r2 = d((int) r8)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " but this DrawerLayout already has a drawer view along that edge"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00ce:
            int r8 = r12.l
            int r9 = r0.leftMargin
            int r8 = r8 + r9
            int r9 = r0.rightMargin
            int r8 = r8 + r9
            int r9 = r0.width
            int r8 = getChildMeasureSpec(r13, r8, r9)
            int r9 = r0.topMargin
            int r10 = r0.bottomMargin
            int r9 = r9 + r10
            int r0 = r0.height
            int r0 = getChildMeasureSpec(r14, r9, r0)
            r7.measure(r8, r0)
            goto L_0x008a
        L_0x00eb:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Child "
            r1.<init>(r2)
            java.lang.StringBuilder r1 = r1.append(r7)
            java.lang.String r2 = " at index "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.String r2 = " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0110:
            return
        L_0x0111:
            r1 = r0
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onMeasure(int, int):void");
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        View a2;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!(savedState.a == 0 || (a2 = a(savedState.a)) == null)) {
            h(a2);
        }
        setDrawerLockMode(savedState.b, 3);
        setDrawerLockMode(savedState.c, 5);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        View f2 = f();
        if (f2 != null) {
            savedState.a = ((LayoutParams) f2.getLayoutParams()).a;
        }
        savedState.b = this.t;
        savedState.c = this.u;
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        View f2;
        this.a.b(motionEvent);
        this.b.b(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                this.w = x2;
                this.x = y2;
                this.v = false;
                this.d = false;
                break;
            case 1:
                float x3 = motionEvent.getX();
                float y3 = motionEvent.getY();
                View b2 = this.a.b((int) x3, (int) y3);
                if (b2 != null && g(b2)) {
                    float f3 = x3 - this.w;
                    float f4 = y3 - this.x;
                    int i2 = this.a.b;
                    if ((f3 * f3) + (f4 * f4) < ((float) (i2 * i2)) && (f2 = f()) != null) {
                        z2 = a(f2) == 2;
                        a(z2);
                        this.v = false;
                        break;
                    }
                }
                z2 = true;
                a(z2);
                this.v = false;
            case 3:
                a(true);
                this.v = false;
                this.d = false;
                break;
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        this.v = z2;
        if (z2) {
            a(true);
        }
    }

    public void requestLayout() {
        if (!this.r) {
            super.requestLayout();
        }
    }

    public void setChildInsets(Object obj, boolean z2) {
        this.B = obj;
        this.C = z2;
        setWillNotDraw(!z2 && getBackground() == null);
        requestLayout();
    }

    public void setDrawerListener(f fVar) {
        this.e = fVar;
    }

    public void setDrawerLockMode(int i2) {
        setDrawerLockMode(i2, 3);
        setDrawerLockMode(i2, 5);
    }

    public void setDrawerLockMode(int i2, int i3) {
        int a2 = ap.a(i3, bh.h(this));
        if (a2 == 3) {
            this.t = i2;
        } else if (a2 == 5) {
            this.u = i2;
        }
        if (i2 != 0) {
            (a2 == 3 ? this.a : this.b).a();
        }
        switch (i2) {
            case 1:
                View a3 = a(a2);
                if (a3 != null) {
                    e(a3);
                    return;
                }
                return;
            case 2:
                View a4 = a(a2);
                if (a4 != null) {
                    h(a4);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void setDrawerLockMode(int i2, View view) {
        if (!d(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
        }
        setDrawerLockMode(i2, ((LayoutParams) view.getLayoutParams()).a);
    }

    public void setDrawerShadow(int i2, int i3) {
        setDrawerShadow(getResources().getDrawable(i2), i3);
    }

    public void setDrawerShadow(Drawable drawable, int i2) {
        int a2 = ap.a(i2, bh.h(this));
        if ((a2 & 3) == 3) {
            this.y = drawable;
            invalidate();
        }
        if ((a2 & 5) == 5) {
            this.z = drawable;
            invalidate();
        }
    }

    public void setDrawerTitle(int i2, CharSequence charSequence) {
        int a2 = ap.a(i2, bh.h(this));
        if (a2 == 3) {
            this.f = charSequence;
        } else if (a2 == 5) {
            this.g = charSequence;
        }
    }

    public void setScrimColor(int i2) {
        this.m = i2;
        invalidate();
    }

    public void setStatusBarBackground(int i2) {
        this.A = i2 != 0 ? defpackage.e.getDrawable(getContext(), i2) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.A = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i2) {
        this.A = new ColorDrawable(i2);
        invalidate();
    }
}
