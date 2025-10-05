package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentTransaction;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import java.util.ArrayList;

public class NestedScrollView extends FrameLayout implements ay, ba {
    private static final a v = new a();
    private static final int[] w = {16843130};
    private long a;
    private final Rect b;
    private cs c;
    private cm d;
    private cm e;
    private int f;
    private boolean g;
    private boolean h;
    private View i;
    private boolean j;
    private VelocityTracker k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private int q;
    private final int[] r;
    private final int[] s;
    private int t;
    private SavedState u;
    private final bb x;
    private final az y;
    private float z;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.a + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
        }
    }

    static class a extends al {
        a() {
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            cd a = by.a(accessibilityEvent);
            a.a(nestedScrollView.getScrollRange() > 0);
            cd.a.c(a.b, nestedScrollView.getScrollX());
            cd.a.d(a.b, nestedScrollView.getScrollY());
            cd.a.f(a.b, nestedScrollView.getScrollX());
            cd.a.g(a.b, nestedScrollView.getScrollRange());
        }

        public final void onInitializeAccessibilityNodeInfo(View view, bz bzVar) {
            int a;
            super.onInitializeAccessibilityNodeInfo(view, bzVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            bzVar.b((CharSequence) ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (a = nestedScrollView.getScrollRange()) > 0) {
                bzVar.i(true);
                if (nestedScrollView.getScrollY() > 0) {
                    bzVar.a((int) FragmentTransaction.TRANSIT_EXIT_MASK);
                }
                if (nestedScrollView.getScrollY() < a) {
                    bzVar.a((int) FragmentTransaction.TRANSIT_ENTER_MASK);
                }
            }
        }

        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            switch (i) {
                case FragmentTransaction.TRANSIT_ENTER_MASK:
                    int min = Math.min(((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()) + nestedScrollView.getScrollY(), nestedScrollView.getScrollRange());
                    if (min == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.a(min);
                    return true;
                case FragmentTransaction.TRANSIT_EXIT_MASK:
                    int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.a(max);
                    return true;
                default:
                    return false;
            }
        }
    }

    public NestedScrollView(Context context) {
        this(context, (AttributeSet) null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = new Rect();
        this.g = true;
        this.h = false;
        this.i = null;
        this.j = false;
        this.m = true;
        this.q = -1;
        this.r = new int[2];
        this.s = new int[2];
        this.c = new cs(getContext(), (Interpolator) null);
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.n = viewConfiguration.getScaledTouchSlop();
        this.o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.p = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w, i2, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.x = new bb(this);
        this.y = new az(this);
        setNestedScrollingEnabled(true);
        bh.a((View) this, (al) v);
    }

    private int a(Rect rect) {
        int i2;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i3 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i3 -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i3 && rect.top > scrollY) {
            i2 = Math.min(rect.height() > height ? (rect.top - scrollY) + 0 : (rect.bottom - i3) + 0, getChildAt(0).getBottom() - i3);
        } else if (rect.top >= scrollY || rect.bottom >= i3) {
            i2 = 0;
        } else {
            i2 = Math.max(rect.height() > height ? 0 - (i3 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
        }
        return i2;
    }

    private void a() {
        if (this.k == null) {
            this.k = VelocityTracker.obtain();
        }
    }

    private void a(int i2, int i3) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.a > 250) {
                int max = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
                int scrollY = getScrollY();
                cs csVar = this.c;
                int scrollX = getScrollX();
                csVar.b.a(csVar.a, scrollX, scrollY, Math.max(0, Math.min(scrollY + i3, max)) - scrollY);
                bh.d(this);
            } else {
                if (!this.c.a()) {
                    this.c.h();
                }
                scrollBy(i2, i3);
            }
            this.a = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    private void a(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (ax.b(motionEvent, action) == this.q) {
            int i2 = action == 0 ? 1 : 0;
            this.f = (int) ax.d(motionEvent, i2);
            this.q = ax.b(motionEvent, i2);
            if (this.k != null) {
                this.k.clear();
            }
        }
    }

    private boolean a(int i2, int i3, int i4) {
        boolean z2;
        boolean z3;
        View view;
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = scrollY + height;
        boolean z4 = i2 == 33;
        ArrayList focusables = getFocusables(2);
        View view2 = null;
        boolean z5 = false;
        int size = focusables.size();
        int i6 = 0;
        while (i6 < size) {
            View view3 = (View) focusables.get(i6);
            int top = view3.getTop();
            int bottom = view3.getBottom();
            if (i3 < bottom && top < i4) {
                boolean z6 = i3 < top && bottom < i4;
                if (view2 == null) {
                    boolean z7 = z6;
                    view = view3;
                    z3 = z7;
                } else {
                    boolean z8 = (z4 && top < view2.getTop()) || (!z4 && bottom > view2.getBottom());
                    if (z5) {
                        if (z6 && z8) {
                            view = view3;
                            z3 = z5;
                        }
                    } else if (z6) {
                        view = view3;
                        z3 = true;
                    } else if (z8) {
                        view = view3;
                        z3 = z5;
                    }
                }
                i6++;
                view2 = view;
                z5 = z3;
            }
            z3 = z5;
            view = view2;
            i6++;
            view2 = view;
            z5 = z3;
        }
        if (view2 == null) {
            view2 = this;
        }
        if (i3 < scrollY || i4 > i5) {
            d(z4 ? i3 - scrollY : i4 - i5);
            z2 = true;
        } else {
            z2 = false;
        }
        if (view2 != findFocus()) {
            view2.requestFocus(i2);
        }
        return z2;
    }

    private boolean a(int i2, int i3, int i4, int i5, int i6) {
        int i7;
        boolean z2;
        boolean z3;
        bh.a((View) this);
        computeHorizontalScrollRange();
        computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        computeVerticalScrollExtent();
        int i8 = i4 + i2;
        int i9 = i5 + i3;
        int i10 = i6 + 0;
        if (i8 > 0) {
            z2 = true;
            i7 = 0;
        } else if (i8 < 0) {
            z2 = true;
            i7 = 0;
        } else {
            i7 = i8;
            z2 = false;
        }
        if (i9 > i10) {
            i9 = i10;
            z3 = true;
        } else if (i9 < 0) {
            z3 = true;
            i9 = 0;
        } else {
            z3 = false;
        }
        onOverScrolled(i7, i9, z2, z3);
        return z2 || z3;
    }

    private boolean a(View view) {
        return !a(view, 0, getHeight());
    }

    private boolean a(View view, int i2, int i3) {
        view.getDrawingRect(this.b);
        offsetDescendantRectToMyCoords(view, this.b);
        return this.b.bottom + i2 >= getScrollY() && this.b.top - i2 <= getScrollY() + i3;
    }

    private static boolean a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && a((View) parent, view2);
    }

    private static int b(int i2, int i3, int i4) {
        if (i3 >= i4 || i2 < 0) {
            return 0;
        }
        return i3 + i2 > i4 ? i4 - i3 : i2;
    }

    private void b() {
        if (this.k != null) {
            this.k.recycle();
            this.k = null;
        }
    }

    private void b(View view) {
        view.getDrawingRect(this.b);
        offsetDescendantRectToMyCoords(view, this.b);
        int a2 = a(this.b);
        if (a2 != 0) {
            scrollBy(0, a2);
        }
    }

    private boolean b(int i2) {
        int childCount;
        boolean z2 = i2 == 130;
        int height = getHeight();
        this.b.top = 0;
        this.b.bottom = height;
        if (z2 && (childCount = getChildCount()) > 0) {
            this.b.bottom = getChildAt(childCount - 1).getBottom() + getPaddingBottom();
            this.b.top = this.b.bottom - height;
        }
        return a(i2, this.b.top, this.b.bottom);
    }

    private void c() {
        this.j = false;
        b();
        if (this.d != null) {
            this.d.c();
            this.e.c();
        }
    }

    private boolean c(int i2) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i2);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !a(findNextFocus, maxScrollAmount, getHeight())) {
            if (i2 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i2 == 130 && getChildCount() > 0) {
                int bottom = getChildAt(0).getBottom();
                int scrollY = (getScrollY() + getHeight()) - getPaddingBottom();
                if (bottom - scrollY < maxScrollAmount) {
                    maxScrollAmount = bottom - scrollY;
                }
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i2 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            d(maxScrollAmount);
        } else {
            findNextFocus.getDrawingRect(this.b);
            offsetDescendantRectToMyCoords(findNextFocus, this.b);
            d(a(this.b));
            findNextFocus.requestFocus(i2);
        }
        if (findFocus != null && findFocus.isFocused() && a(findFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    private void d() {
        if (bh.a((View) this) == 2) {
            this.d = null;
            this.e = null;
        } else if (this.d == null) {
            Context context = getContext();
            this.d = new cm(context);
            this.e = new cm(context);
        }
    }

    private void d(int i2) {
        if (i2 == 0) {
            return;
        }
        if (this.m) {
            a(0, i2);
        } else {
            scrollBy(0, i2);
        }
    }

    private void e(int i2) {
        int scrollY = getScrollY();
        boolean z2 = (scrollY > 0 || i2 > 0) && (scrollY < getScrollRange() || i2 < 0);
        if (!dispatchNestedPreFling(0.0f, (float) i2)) {
            dispatchNestedFling(0.0f, (float) i2, z2);
            if (z2 && getChildCount() > 0) {
                int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
                int height2 = getChildAt(0).getHeight();
                cs csVar = this.c;
                csVar.b.b(csVar.a, getScrollX(), getScrollY(), i2, Math.max(0, height2 - height), height / 2);
                bh.d(this);
            }
        }
    }

    /* access modifiers changed from: private */
    public int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
        }
        return 0;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.z == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.z = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.z;
    }

    public final void a(int i2) {
        a(0 - getScrollX(), i2 - getScrollY());
    }

    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public void addView(View view, int i2) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i2);
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i2, layoutParams);
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    public void computeScroll() {
        if (this.c.g()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int b2 = this.c.b();
            int c2 = this.c.c();
            if (scrollX != b2 || scrollY != c2) {
                int scrollRange = getScrollRange();
                int a2 = bh.a((View) this);
                boolean z2 = a2 == 0 || (a2 == 1 && scrollRange > 0);
                a(b2 - scrollX, c2 - scrollY, scrollX, scrollY, scrollRange);
                if (z2) {
                    d();
                    if (c2 <= 0 && scrollY > 0) {
                        this.d.a((int) this.c.f());
                    } else if (c2 >= scrollRange && scrollY < scrollRange) {
                        this.e.a((int) this.c.f());
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    /* access modifiers changed from: protected */
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        int bottom = getChildAt(0).getBottom();
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z2;
        boolean z3;
        if (!super.dispatchKeyEvent(keyEvent)) {
            this.b.setEmpty();
            View childAt = getChildAt(0);
            if (childAt != null) {
                z2 = getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom();
            } else {
                z2 = false;
            }
            if (z2) {
                if (keyEvent.getAction() == 0) {
                    switch (keyEvent.getKeyCode()) {
                        case 19:
                            if (keyEvent.isAltPressed()) {
                                z3 = b(33);
                                break;
                            } else {
                                z3 = c(33);
                                break;
                            }
                        case 20:
                            if (keyEvent.isAltPressed()) {
                                z3 = b(130);
                                break;
                            } else {
                                z3 = c(130);
                                break;
                            }
                        case 62:
                            int i2 = keyEvent.isShiftPressed() ? 33 : 130;
                            boolean z4 = i2 == 130;
                            int height = getHeight();
                            if (z4) {
                                this.b.top = getScrollY() + height;
                                int childCount = getChildCount();
                                if (childCount > 0) {
                                    View childAt2 = getChildAt(childCount - 1);
                                    if (this.b.top + height > childAt2.getBottom()) {
                                        this.b.top = childAt2.getBottom() - height;
                                    }
                                }
                            } else {
                                this.b.top = getScrollY() - height;
                                if (this.b.top < 0) {
                                    this.b.top = 0;
                                }
                            }
                            this.b.bottom = height + this.b.top;
                            a(i2, this.b.top, this.b.bottom);
                            break;
                    }
                }
                z3 = false;
            } else if (!isFocused() || keyEvent.getKeyCode() == 4) {
                z3 = false;
            } else {
                View findFocus = findFocus();
                if (findFocus == this) {
                    findFocus = null;
                }
                View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
                z3 = (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
            }
            if (!z3) {
                return false;
            }
        }
        return true;
    }

    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return this.y.a(f2, f3, z2);
    }

    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.y.a(f2, f3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return this.y.a(i2, i3, iArr, iArr2);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.y.a(i2, i3, i4, i5, iArr);
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.d != null) {
            int scrollY = getScrollY();
            if (!this.d.a()) {
                int save = canvas.save();
                int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.translate((float) getPaddingLeft(), (float) Math.min(0, scrollY));
                this.d.a(width, getHeight());
                if (this.d.a(canvas)) {
                    bh.d(this);
                }
                canvas.restoreToCount(save);
            }
            if (!this.e.a()) {
                int save2 = canvas.save();
                int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                int height = getHeight();
                canvas.translate((float) ((-width2) + getPaddingLeft()), (float) (Math.max(getScrollRange(), scrollY) + height));
                canvas.rotate(180.0f, (float) width2, 0.0f);
                this.e.a(width2, height);
                if (this.e.a(canvas)) {
                    bh.d(this);
                }
                canvas.restoreToCount(save2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return ((float) bottom) / ((float) verticalFadingEdgeLength);
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (0.5f * ((float) getHeight()));
    }

    public int getNestedScrollAxes() {
        return this.x.a;
    }

    /* access modifiers changed from: protected */
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return ((float) scrollY) / ((float) verticalFadingEdgeLength);
        }
        return 1.0f;
    }

    public boolean hasNestedScrollingParent() {
        return this.y.a();
    }

    public boolean isNestedScrollingEnabled() {
        return this.y.a;
    }

    /* access modifiers changed from: protected */
    public void measureChild(View view, int i2, int i3) {
        view.measure(getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    /* access modifiers changed from: protected */
    public void measureChildWithMargins(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.bottomMargin + marginLayoutParams.topMargin, 0));
    }

    public void onAttachedToWindow() {
        this.h = false;
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((ax.d(motionEvent) & 2) == 0) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 8:
                if (this.j) {
                    return false;
                }
                float e2 = ax.e(motionEvent, 9);
                if (e2 == 0.0f) {
                    return false;
                }
                int verticalScrollFactorCompat = (int) (e2 * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i2 = scrollY - verticalScrollFactorCompat;
                if (i2 < 0) {
                    scrollRange = 0;
                } else if (i2 <= scrollRange) {
                    scrollRange = i2;
                }
                if (scrollRange == scrollY) {
                    return false;
                }
                super.scrollTo(getScrollX(), scrollRange);
                return true;
            default:
                return false;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3 = true;
        int action = motionEvent.getAction();
        if (action == 2 && this.j) {
            return true;
        }
        if (getScrollY() == 0 && !bh.b((View) this, 1)) {
            return false;
        }
        switch (action & 255) {
            case 0:
                int y2 = (int) motionEvent.getY();
                int x2 = (int) motionEvent.getX();
                if (getChildCount() > 0) {
                    int scrollY = getScrollY();
                    View childAt = getChildAt(0);
                    z2 = y2 >= childAt.getTop() - scrollY && y2 < childAt.getBottom() - scrollY && x2 >= childAt.getLeft() && x2 < childAt.getRight();
                } else {
                    z2 = false;
                }
                if (z2) {
                    this.f = y2;
                    this.q = ax.b(motionEvent, 0);
                    if (this.k == null) {
                        this.k = VelocityTracker.obtain();
                    } else {
                        this.k.clear();
                    }
                    this.k.addMovement(motionEvent);
                    if (this.c.a()) {
                        z3 = false;
                    }
                    this.j = z3;
                    startNestedScroll(2);
                    break;
                } else {
                    this.j = false;
                    b();
                    break;
                }
                break;
            case 1:
            case 3:
                this.j = false;
                this.q = -1;
                b();
                stopNestedScroll();
                break;
            case 2:
                int i2 = this.q;
                if (i2 != -1) {
                    int a2 = ax.a(motionEvent, i2);
                    if (a2 != -1) {
                        int d2 = (int) ax.d(motionEvent, a2);
                        if (Math.abs(d2 - this.f) > this.n && (getNestedScrollAxes() & 2) == 0) {
                            this.j = true;
                            this.f = d2;
                            a();
                            this.k.addMovement(motionEvent);
                            this.t = 0;
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                                break;
                            }
                        }
                    } else {
                        Log.e("NestedScrollView", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                        break;
                    }
                }
                break;
            case 6:
                a(motionEvent);
                break;
        }
        return this.j;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        this.g = false;
        if (this.i != null && a(this.i, (View) this)) {
            b(this.i);
        }
        this.i = null;
        if (!this.h) {
            if (this.u != null) {
                scrollTo(getScrollX(), this.u.a);
                this.u = null;
            }
            int max = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((i5 - i3) - getPaddingBottom()) - getPaddingTop()));
            if (getScrollY() > max) {
                scrollTo(getScrollX(), max);
            } else if (getScrollY() < 0) {
                scrollTo(getScrollX(), 0);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.h = true;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.l && View.MeasureSpec.getMode(i3) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            int measuredHeight = getMeasuredHeight();
            if (childAt.getMeasuredHeight() < measuredHeight) {
                childAt.measure(getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight(), ((FrameLayout.LayoutParams) childAt.getLayoutParams()).width), View.MeasureSpec.makeMeasureSpec((measuredHeight - getPaddingTop()) - getPaddingBottom(), 1073741824));
            }
        }
    }

    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        if (z2) {
            return false;
        }
        e((int) f3);
        return true;
    }

    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        int scrollY = getScrollY();
        scrollBy(0, i5);
        int scrollY2 = getScrollY() - scrollY;
        dispatchNestedScroll(0, scrollY2, 0, i5 - scrollY2, (int[]) null);
    }

    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.x.a = i2;
        startNestedScroll(2);
    }

    /* access modifiers changed from: protected */
    public void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
        super.scrollTo(i2, i3);
    }

    /* access modifiers changed from: protected */
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (i2 == 2) {
            i2 = 130;
        } else if (i2 == 1) {
            i2 = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, (View) null, i2) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        if (findNextFocus != null && !a(findNextFocus)) {
            return findNextFocus.requestFocus(i2, rect);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.u = savedState;
        requestLayout();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = getScrollY();
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && a(findFocus, 0, i5)) {
            findFocus.getDrawingRect(this.b);
            offsetDescendantRectToMyCoords(findFocus, this.b);
            d(a(this.b));
        }
    }

    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return (i2 & 2) != 0;
    }

    public void onStopNestedScroll(View view) {
        stopNestedScroll();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i2;
        ViewParent parent;
        a();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int a2 = ax.a(motionEvent);
        if (a2 == 0) {
            this.t = 0;
        }
        obtain.offsetLocation(0.0f, (float) this.t);
        switch (a2) {
            case 0:
                if (getChildCount() != 0) {
                    boolean z2 = !this.c.a();
                    this.j = z2;
                    if (z2 && (parent = getParent()) != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                    if (!this.c.a()) {
                        this.c.h();
                    }
                    this.f = (int) motionEvent.getY();
                    this.q = ax.b(motionEvent, 0);
                    startNestedScroll(2);
                    break;
                } else {
                    return false;
                }
            case 1:
                if (this.j) {
                    VelocityTracker velocityTracker = this.k;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.p);
                    int b2 = (int) bg.b(velocityTracker, this.q);
                    if (Math.abs(b2) > this.o) {
                        e(-b2);
                    }
                    this.q = -1;
                    c();
                    break;
                }
                break;
            case 2:
                int a3 = ax.a(motionEvent, this.q);
                if (a3 != -1) {
                    int d2 = (int) ax.d(motionEvent, a3);
                    int i3 = this.f - d2;
                    if (dispatchNestedPreScroll(0, i3, this.s, this.r)) {
                        i3 -= this.s[1];
                        obtain.offsetLocation(0.0f, (float) this.r[1]);
                        this.t += this.r[1];
                    }
                    if (this.j || Math.abs(i3) <= this.n) {
                        i2 = i3;
                    } else {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.j = true;
                        i2 = i3 > 0 ? i3 - this.n : i3 + this.n;
                    }
                    if (this.j) {
                        this.f = d2 - this.r[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int a4 = bh.a((View) this);
                        boolean z3 = a4 == 0 || (a4 == 1 && scrollRange > 0);
                        if (a(0, i2, 0, getScrollY(), scrollRange) && !hasNestedScrollingParent()) {
                            this.k.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        if (!dispatchNestedScroll(0, scrollY2, 0, i2 - scrollY2, this.r)) {
                            if (z3) {
                                d();
                                int i4 = scrollY + i2;
                                if (i4 < 0) {
                                    this.d.a(((float) i2) / ((float) getHeight()), ax.c(motionEvent, a3) / ((float) getWidth()));
                                    if (!this.e.a()) {
                                        this.e.c();
                                    }
                                } else if (i4 > scrollRange) {
                                    this.e.a(((float) i2) / ((float) getHeight()), 1.0f - (ax.c(motionEvent, a3) / ((float) getWidth())));
                                    if (!this.d.a()) {
                                        this.d.c();
                                    }
                                }
                                if (this.d != null && (!this.d.a() || !this.e.a())) {
                                    bh.d(this);
                                    break;
                                }
                            }
                        } else {
                            this.f -= this.r[1];
                            obtain.offsetLocation(0.0f, (float) this.r[1]);
                            this.t += this.r[1];
                            break;
                        }
                    }
                } else {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.q + " in onTouchEvent");
                    break;
                }
                break;
            case 3:
                if (this.j && getChildCount() > 0) {
                    this.q = -1;
                    c();
                    break;
                }
            case 5:
                int b3 = ax.b(motionEvent);
                this.f = (int) ax.d(motionEvent, b3);
                this.q = ax.b(motionEvent, b3);
                break;
            case 6:
                a(motionEvent);
                this.f = (int) ax.d(motionEvent, ax.a(motionEvent, this.q));
                break;
        }
        if (this.k != null) {
            this.k.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    public void requestChildFocus(View view, View view2) {
        if (!this.g) {
            b(view2);
        } else {
            this.i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int a2 = a(rect);
        boolean z3 = a2 != 0;
        if (z3) {
            if (z2) {
                scrollBy(0, a2);
            } else {
                a(0, a2);
            }
        }
        return z3;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        if (z2) {
            b();
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    public void requestLayout() {
        this.g = true;
        super.requestLayout();
    }

    public void scrollTo(int i2, int i3) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int b2 = b(i2, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int b3 = b(i3, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (b2 != getScrollX() || b3 != getScrollY()) {
                super.scrollTo(b2, b3);
            }
        }
    }

    public void setFillViewport(boolean z2) {
        if (z2 != this.l) {
            this.l = z2;
            requestLayout();
        }
    }

    public void setNestedScrollingEnabled(boolean z2) {
        this.y.a(z2);
    }

    public void setSmoothScrollingEnabled(boolean z2) {
        this.m = z2;
    }

    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public boolean startNestedScroll(int i2) {
        return this.y.a(i2);
    }

    public void stopNestedScroll() {
        this.y.b();
    }
}
