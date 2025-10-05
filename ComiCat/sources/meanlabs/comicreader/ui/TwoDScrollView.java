package meanlabs.comicreader.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.Scroller;
import java.util.ArrayList;

public class TwoDScrollView extends FrameLayout {
    public boolean a = false;
    private long b;
    private final Rect c = new Rect();
    private Scroller d;
    private boolean e;
    private float f;
    private float g;
    private boolean h = true;
    private View i = null;
    private VelocityTracker j;
    private a k;
    private int l;
    private int m;
    private int n;

    public interface a {
        void d();
    }

    public TwoDScrollView(Context context) {
        super(context);
        a();
    }

    public TwoDScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public TwoDScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }

    private static int a(int i2, int i3, int i4) {
        if (i3 >= i4 || i2 < 0) {
            return 0;
        }
        return i3 + i2 > i4 ? i4 - i3 : i2;
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

    private View a(boolean z, int i2, int i3, boolean z2, int i4, int i5) {
        boolean z3;
        View view;
        ArrayList focusables = getFocusables(2);
        View view2 = null;
        boolean z4 = false;
        int size = focusables.size();
        int i6 = 0;
        while (i6 < size) {
            View view3 = (View) focusables.get(i6);
            int top = view3.getTop();
            int bottom = view3.getBottom();
            int left = view3.getLeft();
            int right = view3.getRight();
            if (i2 < bottom && top < i3 && i4 < right && left < i5) {
                boolean z5 = i2 < top && bottom < i3 && i4 < left && right < i5;
                if (view2 == null) {
                    boolean z6 = z5;
                    view = view3;
                    z3 = z6;
                } else {
                    boolean z7 = (z && top < view2.getTop()) || (!z && bottom > view2.getBottom());
                    boolean z8 = (z2 && left < view2.getLeft()) || (!z2 && right > view2.getRight());
                    if (z4) {
                        if (z5 && z7 && z8) {
                            view = view3;
                            z3 = z4;
                        }
                    } else if (z5) {
                        view = view3;
                        z3 = true;
                    } else if (z7 && z8) {
                        view = view3;
                        z3 = z4;
                    }
                }
                i6++;
                view2 = view;
                z4 = z3;
            }
            z3 = z4;
            view = view2;
            i6++;
            view2 = view;
            z4 = z3;
        }
        return view2;
    }

    private void a() {
        this.d = new Scroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.l = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMinimumFlingVelocity();
        this.n = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private void a(int i2, int i3) {
        if (i2 != 0 || i3 != 0) {
            b(i2, i3);
        }
    }

    private void a(View view) {
        view.getDrawingRect(this.c);
        offsetDescendantRectToMyCoords(view, this.c);
        int a2 = a(this.c);
        if (a2 != 0) {
            scrollBy(0, a2);
        }
    }

    private boolean a(int i2, int i3, int i4, int i5, int i6, int i7) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i8 = scrollY + height;
        boolean z2 = i2 == 33;
        int width = getWidth();
        int scrollX = getScrollX();
        int i9 = scrollX + width;
        boolean z3 = i5 == 33;
        View a2 = a(z2, i3, i4, z3, i6, i7);
        View view = a2 == null ? this : a2;
        if ((i3 < scrollY || i4 > i8) && (i6 < scrollX || i7 > i9)) {
            a(z3 ? i6 - scrollX : i7 - i9, z2 ? i3 - scrollY : i4 - i8);
            z = true;
        } else {
            z = false;
        }
        if (view != findFocus() && view.requestFocus(i2)) {
            this.e = true;
            this.e = false;
        }
        return z;
    }

    private boolean a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && a((View) parent, view2);
    }

    private void b(int i2, int i3) {
        if (AnimationUtils.currentAnimationTimeMillis() - this.b > 250) {
            this.d.startScroll(getScrollX(), getScrollY(), i2, i3);
            awakenScrollBars(this.d.getDuration());
            invalidate();
        } else {
            if (!this.d.isFinished()) {
                this.d.abortAnimation();
            }
            scrollBy(i2, i3);
        }
        this.b = AnimationUtils.currentAnimationTimeMillis();
    }

    private boolean b() {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return false;
        }
        return getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom() || getWidth() < (childAt.getWidth() + getPaddingLeft()) + getPaddingRight();
    }

    private boolean b(int i2, boolean z) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i2);
        int maxScrollAmountHorizontal = z ? getMaxScrollAmountHorizontal() : getMaxScrollAmountVertical();
        if (!z) {
            if (findNextFocus != null) {
                findNextFocus.getDrawingRect(this.c);
                offsetDescendantRectToMyCoords(findNextFocus, this.c);
                a(0, a(this.c));
                findNextFocus.requestFocus(i2);
            } else {
                if (i2 == 33 && getScrollY() < maxScrollAmountHorizontal) {
                    maxScrollAmountHorizontal = getScrollY();
                } else if (i2 == 130 && getChildCount() > 0) {
                    int bottom = getChildAt(0).getBottom();
                    int scrollY = getScrollY() + getHeight();
                    if (bottom - scrollY < maxScrollAmountHorizontal) {
                        maxScrollAmountHorizontal = bottom - scrollY;
                    }
                }
                if (maxScrollAmountHorizontal == 0) {
                    return false;
                }
                if (i2 != 130) {
                    maxScrollAmountHorizontal = -maxScrollAmountHorizontal;
                }
                a(0, maxScrollAmountHorizontal);
            }
        } else if (findNextFocus != null) {
            findNextFocus.getDrawingRect(this.c);
            offsetDescendantRectToMyCoords(findNextFocus, this.c);
            a(a(this.c), 0);
            findNextFocus.requestFocus(i2);
        } else {
            if (i2 == 33 && getScrollY() < maxScrollAmountHorizontal) {
                maxScrollAmountHorizontal = getScrollY();
            } else if (i2 == 130 && getChildCount() > 0) {
                int bottom2 = getChildAt(0).getBottom();
                int scrollY2 = getScrollY() + getHeight();
                if (bottom2 - scrollY2 < maxScrollAmountHorizontal) {
                    maxScrollAmountHorizontal = bottom2 - scrollY2;
                }
            }
            if (maxScrollAmountHorizontal == 0) {
                return false;
            }
            if (i2 != 130) {
                maxScrollAmountHorizontal = -maxScrollAmountHorizontal;
            }
            a(maxScrollAmountHorizontal, 0);
        }
        return true;
    }

    public final boolean a(int i2, boolean z) {
        int childCount;
        int childCount2;
        boolean z2 = true;
        if (!z) {
            if (i2 != 130) {
                z2 = false;
            }
            int height = getHeight();
            this.c.top = 0;
            this.c.bottom = height;
            if (z2 && (childCount2 = getChildCount()) > 0) {
                this.c.bottom = getChildAt(childCount2 - 1).getBottom();
                this.c.top = this.c.bottom - height;
            }
            return a(i2, this.c.top, this.c.bottom, 0, 0, 0);
        }
        if (i2 != 130) {
            z2 = false;
        }
        int width = getWidth();
        this.c.left = 0;
        this.c.right = width;
        if (z2 && (childCount = getChildCount()) > 0) {
            this.c.right = getChildAt(childCount - 1).getBottom();
            this.c.left = this.c.right - width;
        }
        return a(0, 0, 0, i2, this.c.top, this.c.bottom);
    }

    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public void addView(View view, int i2) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        }
        super.addView(view, i2);
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        }
        super.addView(view, i2, layoutParams);
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    /* access modifiers changed from: protected */
    public int computeHorizontalScrollRange() {
        return getChildCount() == 0 ? getWidth() : getChildAt(0).getRight();
    }

    public void computeScroll() {
        if (this.d.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.d.getCurrX();
            int currY = this.d.getCurrY();
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                scrollTo(a(currX, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth()), a(currY, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight()));
            } else {
                scrollTo(currX, currY);
            }
            if (!(scrollX == getScrollX() && scrollY == getScrollY())) {
                onScrollChanged(getScrollX(), getScrollY(), scrollX, scrollY);
            }
            postInvalidate();
        }
    }

    /* access modifiers changed from: protected */
    public int computeVerticalScrollRange() {
        return getChildCount() == 0 ? getHeight() : getChildAt(0).getBottom();
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        this.c.setEmpty();
        if (b()) {
            if (keyEvent.getAction() == 0) {
                switch (keyEvent.getKeyCode()) {
                    case 19:
                        if (keyEvent.isAltPressed()) {
                            z = a(33, false);
                            break;
                        } else {
                            z = b(33, false);
                            break;
                        }
                    case 20:
                        if (keyEvent.isAltPressed()) {
                            z = a(130, false);
                            break;
                        } else {
                            z = b(130, false);
                            break;
                        }
                    case 21:
                        if (keyEvent.isAltPressed()) {
                            z = a(33, true);
                            break;
                        } else {
                            z = b(33, true);
                            break;
                        }
                    case 22:
                        if (keyEvent.isAltPressed()) {
                            z = a(130, true);
                            break;
                        } else {
                            z = b(130, true);
                            break;
                        }
                }
            }
            z = false;
            return z;
        } else if (!isFocused()) {
            return false;
        } else {
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, 130);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
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

    /* access modifiers changed from: protected */
    public float getLeftFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        if (getScrollX() < horizontalFadingEdgeLength) {
            return ((float) getScrollX()) / ((float) horizontalFadingEdgeLength);
        }
        return 1.0f;
    }

    public int getMaxScrollAmountHorizontal() {
        return (int) (0.5f * ((float) getWidth()));
    }

    public int getMaxScrollAmountVertical() {
        return (int) (0.5f * ((float) getHeight()));
    }

    /* access modifiers changed from: protected */
    public float getRightFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int right = (getChildAt(0).getRight() - getScrollX()) - (getWidth() - getPaddingRight());
        if (right < horizontalFadingEdgeLength) {
            return ((float) right) / ((float) horizontalFadingEdgeLength);
        }
        return 1.0f;
    }

    /* access modifiers changed from: protected */
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (getScrollY() < verticalFadingEdgeLength) {
            return ((float) getScrollY()) / ((float) verticalFadingEdgeLength);
        }
        return 1.0f;
    }

    /* access modifiers changed from: protected */
    public void measureChild(View view, int i2, int i3) {
        view.measure(getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    /* access modifiers changed from: protected */
    public void measureChildWithMargins(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, 0), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.bottomMargin + marginLayoutParams.topMargin, 0));
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        int action = motionEvent.getAction();
        if (action == 2 && this.a) {
            return true;
        }
        if (!b()) {
            this.a = false;
            return false;
        }
        float y = motionEvent.getY();
        float x = motionEvent.getX();
        switch (action) {
            case 0:
                this.f = y;
                this.g = x;
                if (this.d.isFinished()) {
                    z = false;
                }
                this.a = z;
                break;
            case 1:
            case 3:
                this.a = false;
                break;
            case 2:
                int abs = (int) Math.abs(y - this.f);
                int abs2 = (int) Math.abs(x - this.g);
                if (abs > this.l || abs2 > this.l) {
                    this.a = true;
                    break;
                }
        }
        return this.a;
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"WrongCall"})
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        this.h = false;
        if (this.i != null && a(this.i, (View) this)) {
            a(this.i);
        }
        this.i = null;
        scrollTo(getScrollX(), getScrollY());
        if (this.k != null) {
            this.k.d();
        }
    }

    /* access modifiers changed from: protected */
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (i2 == 2) {
            i2 = 130;
        } else if (i2 == 1) {
            i2 = 33;
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, (View) null, i2) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        if (findNextFocus == null) {
            return false;
        }
        return findNextFocus.requestFocus(i2, rect);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus) {
            findFocus.getDrawingRect(this.c);
            offsetDescendantRectToMyCoords(findFocus, this.c);
            a(a(this.c), a(this.c));
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0059, code lost:
        if (getScrollX() < 0) goto L_0x005b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0062, code lost:
        if (getScrollY() < 0) goto L_0x0064;
     */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x008d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            r14 = this;
            r13 = 1
            r5 = 0
            int r0 = r15.getAction()
            if (r0 != 0) goto L_0x000f
            int r0 = r15.getEdgeFlags()
            if (r0 == 0) goto L_0x000f
        L_0x000e:
            return r5
        L_0x000f:
            boolean r0 = r14.b()
            if (r0 == 0) goto L_0x000e
            android.view.VelocityTracker r0 = r14.j
            if (r0 != 0) goto L_0x001f
            android.view.VelocityTracker r0 = android.view.VelocityTracker.obtain()
            r14.j = r0
        L_0x001f:
            android.view.VelocityTracker r0 = r14.j
            r0.addMovement(r15)
            int r0 = r15.getAction()
            float r2 = r15.getY()
            float r3 = r15.getX()
            switch(r0) {
                case 0: goto L_0x0035;
                case 1: goto L_0x00ae;
                case 2: goto L_0x0047;
                default: goto L_0x0033;
            }
        L_0x0033:
            r5 = r13
            goto L_0x000e
        L_0x0035:
            android.widget.Scroller r0 = r14.d
            boolean r0 = r0.isFinished()
            if (r0 != 0) goto L_0x0042
            android.widget.Scroller r0 = r14.d
            r0.abortAnimation()
        L_0x0042:
            r14.f = r2
            r14.g = r3
            goto L_0x0033
        L_0x0047:
            float r0 = r14.g
            float r0 = r0 - r3
            int r1 = (int) r0
            float r0 = r14.f
            float r0 = r0 - r2
            int r0 = (int) r0
            r14.g = r3
            r14.f = r2
            if (r1 >= 0) goto L_0x006c
            int r2 = r14.getScrollX()
            if (r2 >= 0) goto L_0x005c
        L_0x005b:
            r1 = r5
        L_0x005c:
            if (r0 >= 0) goto L_0x008d
            int r2 = r14.getScrollY()
            if (r2 >= 0) goto L_0x01a8
        L_0x0064:
            if (r5 != 0) goto L_0x0068
            if (r1 == 0) goto L_0x0033
        L_0x0068:
            r14.scrollBy(r1, r5)
            goto L_0x0033
        L_0x006c:
            if (r1 <= 0) goto L_0x005c
            int r2 = r14.getWidth()
            int r3 = r14.getPaddingRight()
            int r2 = r2 - r3
            android.view.View r3 = r14.getChildAt(r5)
            int r3 = r3.getRight()
            int r4 = r14.getScrollX()
            int r3 = r3 - r4
            int r2 = r3 - r2
            if (r2 <= 0) goto L_0x005b
            int r1 = java.lang.Math.min(r2, r1)
            goto L_0x005c
        L_0x008d:
            if (r0 <= 0) goto L_0x01a8
            int r2 = r14.getHeight()
            int r3 = r14.getPaddingBottom()
            int r2 = r2 - r3
            android.view.View r3 = r14.getChildAt(r5)
            int r3 = r3.getBottom()
            int r4 = r14.getScrollY()
            int r3 = r3 - r4
            int r2 = r3 - r2
            if (r2 <= 0) goto L_0x0064
            int r5 = java.lang.Math.min(r2, r0)
            goto L_0x0064
        L_0x00ae:
            android.view.VelocityTracker r0 = r14.j
            r1 = 1000(0x3e8, float:1.401E-42)
            int r2 = r14.n
            float r2 = (float) r2
            r0.computeCurrentVelocity(r1, r2)
            float r1 = r0.getXVelocity()
            int r1 = (int) r1
            float r0 = r0.getYVelocity()
            int r0 = (int) r0
            int r2 = java.lang.Math.abs(r1)
            int r3 = java.lang.Math.abs(r0)
            int r2 = r2 + r3
            int r3 = r14.m
            if (r2 <= r3) goto L_0x018d
            int r2 = r14.getChildCount()
            if (r2 <= 0) goto L_0x018d
            int r3 = -r1
            int r4 = -r0
            int r0 = r14.getChildCount()
            if (r0 <= 0) goto L_0x018d
            int r0 = r14.getHeight()
            int r1 = r14.getPaddingBottom()
            int r0 = r0 - r1
            int r1 = r14.getPaddingTop()
            int r7 = r0 - r1
            android.view.View r0 = r14.getChildAt(r5)
            int r8 = r0.getHeight()
            int r0 = r14.getWidth()
            int r1 = r14.getPaddingRight()
            int r0 = r0 - r1
            int r1 = r14.getPaddingLeft()
            int r6 = r0 - r1
            android.view.View r0 = r14.getChildAt(r5)
            int r9 = r0.getWidth()
            android.widget.Scroller r0 = r14.d
            int r1 = r14.getScrollX()
            int r2 = r14.getScrollY()
            int r6 = r9 - r6
            int r8 = r8 - r7
            r7 = r5
            r0.fling(r1, r2, r3, r4, r5, r6, r7, r8)
            if (r4 <= 0) goto L_0x019b
            r10 = r13
        L_0x011f:
            if (r3 <= 0) goto L_0x019d
            r7 = r13
        L_0x0122:
            android.widget.Scroller r0 = r14.d
            int r1 = r0.getFinalX()
            android.widget.Scroller r0 = r14.d
            int r2 = r0.getFinalY()
            android.view.View r0 = r14.findFocus()
            int r3 = r14.getVerticalFadingEdgeLength()
            int r3 = r3 / 2
            int r8 = r1 + r3
            int r4 = r14.getHeight()
            int r1 = r1 + r4
            int r9 = r1 - r3
            int r1 = r14.getHorizontalFadingEdgeLength()
            int r1 = r1 / 2
            int r11 = r2 + r1
            int r3 = r14.getWidth()
            int r2 = r2 + r3
            int r12 = r2 - r1
            if (r0 == 0) goto L_0x019f
            int r1 = r0.getTop()
            if (r1 >= r9) goto L_0x019f
            int r1 = r0.getBottom()
            if (r1 <= r8) goto L_0x019f
            int r1 = r0.getLeft()
            if (r1 >= r12) goto L_0x019f
            int r1 = r0.getRight()
            if (r1 <= r11) goto L_0x019f
        L_0x016a:
            if (r0 != 0) goto L_0x016d
            r0 = r14
        L_0x016d:
            android.view.View r1 = r14.findFocus()
            if (r0 == r1) goto L_0x0181
            if (r10 == 0) goto L_0x01a5
            r1 = 130(0x82, float:1.82E-43)
        L_0x0177:
            boolean r0 = r0.requestFocus(r1)
            if (r0 == 0) goto L_0x0181
            r14.e = r13
            r14.e = r5
        L_0x0181:
            android.widget.Scroller r0 = r14.d
            int r0 = r0.getDuration()
            r14.awakenScrollBars(r0)
            r14.invalidate()
        L_0x018d:
            android.view.VelocityTracker r0 = r14.j
            if (r0 == 0) goto L_0x0033
            android.view.VelocityTracker r0 = r14.j
            r0.recycle()
            r0 = 0
            r14.j = r0
            goto L_0x0033
        L_0x019b:
            r10 = r5
            goto L_0x011f
        L_0x019d:
            r7 = r5
            goto L_0x0122
        L_0x019f:
            r6 = r14
            android.view.View r0 = r6.a((boolean) r7, (int) r8, (int) r9, (boolean) r10, (int) r11, (int) r12)
            goto L_0x016a
        L_0x01a5:
            r1 = 33
            goto L_0x0177
        L_0x01a8:
            r5 = r0
            goto L_0x0064
        */
        throw new UnsupportedOperationException("Method not decompiled: meanlabs.comicreader.ui.TwoDScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void requestChildFocus(View view, View view2) {
        if (!this.e) {
            if (!this.h) {
                a(view2);
            } else {
                this.i = view2;
            }
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int a2 = a(rect);
        boolean z2 = a2 != 0;
        if (z2) {
            if (z) {
                scrollBy(0, a2);
            } else {
                b(0, a2);
            }
        }
        return z2;
    }

    public void requestLayout() {
        this.h = true;
        super.requestLayout();
    }

    public void scrollTo(int i2, int i3) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int a2 = a(i2, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int a3 = a(i3, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (a2 != getScrollX() || a3 != getScrollY()) {
                super.scrollTo(a2, a3);
            }
        }
    }

    public void setOnLayoutListener(a aVar) {
        this.k = aVar;
    }
}
