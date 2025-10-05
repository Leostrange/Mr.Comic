package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import defpackage.cv;

public class LinearLayoutCompat extends ViewGroup {
    private boolean a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private float g;
    private boolean h;
    private int[] i;
    private int[] j;
    private Drawable k;
    private int l;
    private int m;
    private int n;
    private int o;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public float g;
        public int h;

        public LayoutParams() {
            super(0, -1);
            this.h = -1;
            this.g = 1.0f;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.h = -1;
            this.g = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cv.k.LinearLayoutCompat_Layout);
            this.g = obtainStyledAttributes.getFloat(cv.k.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.h = obtainStyledAttributes.getInt(cv.k.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.h = -1;
        }
    }

    public LinearLayoutCompat(Context context) {
        this(context, (AttributeSet) null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.a = true;
        this.b = -1;
        this.c = 0;
        this.e = 8388659;
        es a2 = es.a(context, attributeSet, cv.k.LinearLayoutCompat, i2);
        int a3 = a2.a(cv.k.LinearLayoutCompat_android_orientation, -1);
        if (a3 >= 0) {
            setOrientation(a3);
        }
        int a4 = a2.a(cv.k.LinearLayoutCompat_android_gravity, -1);
        if (a4 >= 0) {
            setGravity(a4);
        }
        boolean a5 = a2.a(cv.k.LinearLayoutCompat_android_baselineAligned, true);
        if (!a5) {
            setBaselineAligned(a5);
        }
        this.g = a2.a.getFloat(cv.k.LinearLayoutCompat_android_weightSum, -1.0f);
        this.b = a2.a(cv.k.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.h = a2.a(cv.k.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(a2.a(cv.k.LinearLayoutCompat_divider));
        this.n = a2.a(cv.k.LinearLayoutCompat_showDividers, 0);
        this.o = a2.c(cv.k.LinearLayoutCompat_dividerPadding, 0);
        a2.a.recycle();
    }

    private void a(int i2, int i3) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i4 = 0; i4 < i2; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i5 = layoutParams.height;
                    layoutParams.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i3, 0);
                    layoutParams.height = i5;
                }
            }
        }
    }

    private void a(Canvas canvas, int i2) {
        this.k.setBounds(getPaddingLeft() + this.o, i2, (getWidth() - getPaddingRight()) - this.o, this.m + i2);
        this.k.draw(canvas);
    }

    private void a(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    private boolean a(int i2) {
        if (i2 == 0) {
            return (this.n & 1) != 0;
        }
        if (i2 == getChildCount()) {
            return (this.n & 4) != 0;
        }
        if ((this.n & 2) == 0) {
            return false;
        }
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            if (getChildAt(i3).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    private void b(int i2, int i3) {
        int i4;
        int i5;
        float f2;
        int i6;
        int i7;
        boolean z;
        int i8;
        int i9;
        int i10;
        int i11;
        float f3;
        int baseline;
        View view;
        int i12;
        int i13;
        boolean z2;
        float f4;
        boolean z3;
        int i14;
        int i15;
        boolean z4;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z5;
        int baseline2;
        this.f = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        boolean z6 = true;
        float f5 = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        boolean z7 = false;
        boolean z8 = false;
        if (this.i == null || this.j == null) {
            this.i = new int[4];
            this.j = new int[4];
        }
        int[] iArr = this.i;
        int[] iArr2 = this.j;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z9 = this.a;
        boolean z10 = this.h;
        boolean z11 = mode == 1073741824;
        int i24 = Integer.MIN_VALUE;
        int i25 = 0;
        while (i25 < virtualChildCount) {
            View childAt = getChildAt(i25);
            if (childAt == null) {
                this.f += 0;
                i18 = i25;
            } else {
                if (childAt.getVisibility() != 8) {
                    if (a(i25)) {
                        this.f += this.l;
                    }
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    float f6 = f5 + layoutParams.g;
                    if (mode == 1073741824 && layoutParams.width == 0 && layoutParams.g > 0.0f) {
                        if (z11) {
                            this.f += layoutParams.leftMargin + layoutParams.rightMargin;
                        } else {
                            int i26 = this.f;
                            this.f = Math.max(i26, layoutParams.leftMargin + i26 + layoutParams.rightMargin);
                        }
                        if (z9) {
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt.measure(makeMeasureSpec, makeMeasureSpec);
                            i19 = i24;
                            z5 = z8;
                        } else {
                            i19 = i24;
                            z5 = true;
                        }
                    } else {
                        int i27 = Integer.MIN_VALUE;
                        if (layoutParams.width == 0 && layoutParams.g > 0.0f) {
                            i27 = 0;
                            layoutParams.width = -2;
                        }
                        int i28 = i27;
                        a(childAt, i2, f6 == 0.0f ? this.f : 0, i3, 0);
                        if (i28 != Integer.MIN_VALUE) {
                            layoutParams.width = i28;
                        }
                        int measuredWidth = childAt.getMeasuredWidth();
                        if (z11) {
                            this.f += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + 0;
                        } else {
                            int i29 = this.f;
                            this.f = Math.max(i29, i29 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + 0);
                        }
                        if (z10) {
                            i19 = Math.max(measuredWidth, i24);
                            z5 = z8;
                        } else {
                            i19 = i24;
                            z5 = z8;
                        }
                    }
                    boolean z12 = false;
                    if (mode2 == 1073741824 || layoutParams.height != -1) {
                        z4 = z7;
                    } else {
                        z4 = true;
                        z12 = true;
                    }
                    int i30 = layoutParams.topMargin + layoutParams.bottomMargin;
                    int measuredHeight = childAt.getMeasuredHeight() + i30;
                    i17 = eu.a(i21, bh.l(childAt));
                    if (z9 && (baseline2 = childAt.getBaseline()) != -1) {
                        int i31 = ((((layoutParams.h < 0 ? this.e : layoutParams.h) & 112) >> 4) & -2) >> 1;
                        iArr[i31] = Math.max(iArr[i31], baseline2);
                        iArr2[i31] = Math.max(iArr2[i31], measuredHeight - baseline2);
                    }
                    int max = Math.max(i20, measuredHeight);
                    boolean z13 = z6 && layoutParams.height == -1;
                    if (layoutParams.g > 0.0f) {
                        int i32 = z12 ? i30 : measuredHeight;
                        f4 = f6;
                        z3 = z13;
                        i15 = i22;
                        z2 = z5;
                        i16 = max;
                        int i33 = i19;
                        i14 = Math.max(i23, i32);
                        i13 = i33;
                    } else {
                        if (!z12) {
                            i30 = measuredHeight;
                        }
                        int max2 = Math.max(i22, i30);
                        f4 = f6;
                        z3 = z13;
                        i15 = max2;
                        z2 = z5;
                        i13 = i19;
                        i14 = i23;
                        i16 = max;
                    }
                } else {
                    i13 = i24;
                    z2 = z8;
                    f4 = f5;
                    z3 = z6;
                    i14 = i23;
                    i15 = i22;
                    z4 = z7;
                    i16 = i20;
                    i17 = i21;
                }
                z6 = z3;
                i23 = i14;
                i22 = i15;
                i21 = i17;
                i20 = i16;
                i24 = i13;
                z7 = z4;
                i18 = i25 + 0;
                f5 = f4;
                z8 = z2;
            }
            i25 = i18 + 1;
        }
        if (this.f > 0 && a(virtualChildCount)) {
            this.f += this.l;
        }
        int max3 = (iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1) ? i20 : Math.max(i20, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
        if (z10 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.f = 0;
            int i34 = 0;
            while (i34 < virtualChildCount) {
                View childAt2 = getChildAt(i34);
                if (childAt2 == null) {
                    this.f += 0;
                    i12 = i34;
                } else if (childAt2.getVisibility() == 8) {
                    i12 = i34 + 0;
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (z11) {
                        this.f = layoutParams2.rightMargin + layoutParams2.leftMargin + i24 + 0 + this.f;
                        i12 = i34;
                    } else {
                        int i35 = this.f;
                        this.f = Math.max(i35, layoutParams2.rightMargin + i35 + i24 + layoutParams2.leftMargin + 0);
                        i12 = i34;
                    }
                }
                i34 = i12 + 1;
            }
        }
        this.f += getPaddingLeft() + getPaddingRight();
        int a2 = bh.a(Math.max(this.f, getSuggestedMinimumWidth()), i2, 0);
        int i36 = (16777215 & a2) - this.f;
        if (z8 || (i36 != 0 && f5 > 0.0f)) {
            if (this.g > 0.0f) {
                f5 = this.g;
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f = 0;
            int i37 = 0;
            boolean z14 = z6;
            int i38 = i22;
            int i39 = -1;
            int i40 = i21;
            while (i37 < virtualChildCount) {
                View childAt3 = getChildAt(i37);
                if (childAt3 == null || childAt3.getVisibility() == 8) {
                    f2 = f5;
                    i6 = i36;
                    i7 = i38;
                    z = z14;
                    i8 = i40;
                    i9 = i39;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) childAt3.getLayoutParams();
                    float f7 = layoutParams3.g;
                    if (f7 > 0.0f) {
                        int i41 = (int) ((((float) i36) * f7) / f5);
                        float f8 = f5 - f7;
                        int i42 = i36 - i41;
                        int childMeasureSpec = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + layoutParams3.topMargin + layoutParams3.bottomMargin, layoutParams3.height);
                        if (layoutParams3.width != 0 || mode != 1073741824) {
                            i41 += childAt3.getMeasuredWidth();
                            if (i41 < 0) {
                                i41 = 0;
                            }
                            view = childAt3;
                        } else if (i41 > 0) {
                            view = childAt3;
                        } else {
                            i41 = 0;
                            view = childAt3;
                        }
                        view.measure(View.MeasureSpec.makeMeasureSpec(i41, 1073741824), childMeasureSpec);
                        i11 = eu.a(i40, bh.l(childAt3) & -16777216);
                        f3 = f8;
                        i10 = i42;
                    } else {
                        i10 = i36;
                        i11 = i40;
                        f3 = f5;
                    }
                    if (z11) {
                        this.f += childAt3.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin + 0;
                    } else {
                        int i43 = this.f;
                        this.f = Math.max(i43, childAt3.getMeasuredWidth() + i43 + layoutParams3.leftMargin + layoutParams3.rightMargin + 0);
                    }
                    boolean z15 = mode2 != 1073741824 && layoutParams3.height == -1;
                    int i44 = layoutParams3.topMargin + layoutParams3.bottomMargin;
                    int measuredHeight2 = childAt3.getMeasuredHeight() + i44;
                    int max4 = Math.max(i39, measuredHeight2);
                    int max5 = Math.max(i38, z15 ? i44 : measuredHeight2);
                    boolean z16 = z14 && layoutParams3.height == -1;
                    if (z9 && (baseline = childAt3.getBaseline()) != -1) {
                        int i45 = ((((layoutParams3.h < 0 ? this.e : layoutParams3.h) & 112) >> 4) & -2) >> 1;
                        iArr[i45] = Math.max(iArr[i45], baseline);
                        iArr2[i45] = Math.max(iArr2[i45], measuredHeight2 - baseline);
                    }
                    f2 = f3;
                    i7 = max5;
                    i8 = i11;
                    z = z16;
                    i9 = max4;
                    i6 = i10;
                }
                i37++;
                z14 = z;
                i38 = i7;
                i39 = i9;
                i40 = i8;
                f5 = f2;
                i36 = i6;
            }
            this.f += getPaddingLeft() + getPaddingRight();
            if (!(iArr[1] == -1 && iArr[0] == -1 && iArr[2] == -1 && iArr[3] == -1)) {
                i39 = Math.max(i39, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))));
            }
            i5 = i38;
            i21 = i40;
            i4 = i39;
            z6 = z14;
        } else {
            int max6 = Math.max(i22, i23);
            if (z10 && mode != 1073741824) {
                int i46 = 0;
                while (true) {
                    int i47 = i46;
                    if (i47 >= virtualChildCount) {
                        break;
                    }
                    View childAt4 = getChildAt(i47);
                    if (!(childAt4 == null || childAt4.getVisibility() == 8 || ((LayoutParams) childAt4.getLayoutParams()).g <= 0.0f)) {
                        childAt4.measure(View.MeasureSpec.makeMeasureSpec(i24, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredHeight(), 1073741824));
                    }
                    i46 = i47 + 1;
                }
            }
            i5 = max6;
            i4 = max3;
        }
        if (z6 || mode2 == 1073741824) {
            i5 = i4;
        }
        setMeasuredDimension((-16777216 & i21) | a2, bh.a(Math.max(i5 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i3, i21 << 16));
        if (z7) {
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
            int i48 = 0;
            while (true) {
                int i49 = i48;
                if (i49 < virtualChildCount) {
                    View childAt5 = getChildAt(i49);
                    if (childAt5.getVisibility() != 8) {
                        LayoutParams layoutParams4 = (LayoutParams) childAt5.getLayoutParams();
                        if (layoutParams4.height == -1) {
                            int i50 = layoutParams4.width;
                            layoutParams4.width = childAt5.getMeasuredWidth();
                            measureChildWithMargins(childAt5, i2, 0, makeMeasureSpec2, 0);
                            layoutParams4.width = i50;
                        }
                    }
                    i48 = i49 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private void b(Canvas canvas, int i2) {
        this.k.setBounds(i2, getPaddingTop() + this.o, this.l + i2, (getHeight() - getPaddingBottom()) - this.o);
        this.k.draw(canvas);
    }

    private static void b(View view, int i2, int i3, int i4, int i5) {
        view.layout(i2, i3, i2 + i4, i3 + i5);
    }

    private static int getChildrenSkipCount$5359dca7() {
        return 0;
    }

    private static int getLocationOffset$3c7ec8d0() {
        return 0;
    }

    private static int getNextLocationOffset$3c7ec8d0() {
        return 0;
    }

    /* renamed from: a */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    /* renamed from: b */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: protected */
    /* renamed from: c */
    public LayoutParams generateDefaultLayoutParams() {
        if (this.d == 0) {
            return new LayoutParams(-2, -2);
        }
        if (this.d == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public int getBaseline() {
        int i2;
        int i3;
        if (this.b < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.b) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.b);
        int baseline = childAt.getBaseline();
        if (baseline != -1) {
            int i4 = this.c;
            if (this.d == 1 && (i3 = this.e & 112) != 48) {
                switch (i3) {
                    case 16:
                        i2 = i4 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f) / 2);
                        break;
                    case 80:
                        i2 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f;
                        break;
                }
            }
            i2 = i4;
            return ((LayoutParams) childAt.getLayoutParams()).topMargin + i2 + baseline;
        } else if (this.b == 0) {
            return -1;
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.b;
    }

    public Drawable getDividerDrawable() {
        return this.k;
    }

    public int getDividerPadding() {
        return this.o;
    }

    public int getDividerWidth() {
        return this.l;
    }

    public int getOrientation() {
        return this.d;
    }

    public int getShowDividers() {
        return this.n;
    }

    /* access modifiers changed from: package-private */
    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.g;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int left;
        if (this.k != null) {
            if (this.d == 1) {
                int virtualChildCount = getVirtualChildCount();
                for (int i2 = 0; i2 < virtualChildCount; i2++) {
                    View childAt = getChildAt(i2);
                    if (!(childAt == null || childAt.getVisibility() == 8 || !a(i2))) {
                        a(canvas, (childAt.getTop() - ((LayoutParams) childAt.getLayoutParams()).topMargin) - this.m);
                    }
                }
                if (a(virtualChildCount)) {
                    View childAt2 = getChildAt(virtualChildCount - 1);
                    a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.m : ((LayoutParams) childAt2.getLayoutParams()).bottomMargin + childAt2.getBottom());
                    return;
                }
                return;
            }
            int virtualChildCount2 = getVirtualChildCount();
            boolean a2 = eu.a(this);
            for (int i3 = 0; i3 < virtualChildCount2; i3++) {
                View childAt3 = getChildAt(i3);
                if (!(childAt3 == null || childAt3.getVisibility() == 8 || !a(i3))) {
                    LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    b(canvas, a2 ? layoutParams.rightMargin + childAt3.getRight() : (childAt3.getLeft() - layoutParams.leftMargin) - this.l);
                }
            }
            if (a(virtualChildCount2)) {
                View childAt4 = getChildAt(virtualChildCount2 - 1);
                if (childAt4 == null) {
                    left = a2 ? getPaddingLeft() : (getWidth() - getPaddingRight()) - this.l;
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
                    left = a2 ? (childAt4.getLeft() - layoutParams2.leftMargin) - this.l : layoutParams2.rightMargin + childAt4.getRight();
                }
                b(canvas, left);
            }
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
        }
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x01d9, code lost:
        r6 = r7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r24, int r25, int r26, int r27, int r28) {
        /*
            r23 = this;
            r0 = r23
            int r3 = r0.d
            r4 = 1
            if (r3 != r4) goto L_0x00bd
            int r8 = r23.getPaddingLeft()
            int r3 = r27 - r25
            int r4 = r23.getPaddingRight()
            int r9 = r3 - r4
            int r3 = r3 - r8
            int r4 = r23.getPaddingRight()
            int r10 = r3 - r4
            int r11 = r23.getVirtualChildCount()
            r0 = r23
            int r3 = r0.e
            r3 = r3 & 112(0x70, float:1.57E-43)
            r0 = r23
            int r4 = r0.e
            r5 = 8388615(0x800007, float:1.1754953E-38)
            r5 = r5 & r4
            switch(r3) {
                case 16: goto L_0x0053;
                case 80: goto L_0x0045;
                default: goto L_0x002f;
            }
        L_0x002f:
            int r3 = r23.getPaddingTop()
        L_0x0033:
            r7 = 0
            r6 = r3
        L_0x0035:
            if (r7 >= r11) goto L_0x01d6
            r0 = r23
            android.view.View r12 = r0.getChildAt(r7)
            if (r12 != 0) goto L_0x0062
            int r6 = r6 + 0
            r3 = r7
        L_0x0042:
            int r7 = r3 + 1
            goto L_0x0035
        L_0x0045:
            int r3 = r23.getPaddingTop()
            int r3 = r3 + r28
            int r3 = r3 - r26
            r0 = r23
            int r4 = r0.f
            int r3 = r3 - r4
            goto L_0x0033
        L_0x0053:
            int r3 = r23.getPaddingTop()
            int r4 = r28 - r26
            r0 = r23
            int r6 = r0.f
            int r4 = r4 - r6
            int r4 = r4 / 2
            int r3 = r3 + r4
            goto L_0x0033
        L_0x0062:
            int r3 = r12.getVisibility()
            r4 = 8
            if (r3 == r4) goto L_0x01e2
            int r13 = r12.getMeasuredWidth()
            int r14 = r12.getMeasuredHeight()
            android.view.ViewGroup$LayoutParams r3 = r12.getLayoutParams()
            android.support.v7.widget.LinearLayoutCompat$LayoutParams r3 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r3
            int r4 = r3.h
            if (r4 >= 0) goto L_0x007d
            r4 = r5
        L_0x007d:
            int r15 = defpackage.bh.h(r23)
            int r4 = defpackage.ap.a(r4, r15)
            r4 = r4 & 7
            switch(r4) {
                case 1: goto L_0x00ab;
                case 5: goto L_0x00b7;
                default: goto L_0x008a;
            }
        L_0x008a:
            int r4 = r3.leftMargin
            int r4 = r4 + r8
        L_0x008d:
            r0 = r23
            boolean r15 = r0.a((int) r7)
            if (r15 == 0) goto L_0x009a
            r0 = r23
            int r15 = r0.m
            int r6 = r6 + r15
        L_0x009a:
            int r15 = r3.topMargin
            int r6 = r6 + r15
            int r15 = r6 + 0
            b(r12, r4, r15, r13, r14)
            int r3 = r3.bottomMargin
            int r3 = r3 + r14
            int r3 = r3 + 0
            int r6 = r6 + r3
            int r3 = r7 + 0
            goto L_0x0042
        L_0x00ab:
            int r4 = r10 - r13
            int r4 = r4 / 2
            int r4 = r4 + r8
            int r15 = r3.leftMargin
            int r4 = r4 + r15
            int r15 = r3.rightMargin
            int r4 = r4 - r15
            goto L_0x008d
        L_0x00b7:
            int r4 = r9 - r13
            int r15 = r3.rightMargin
            int r4 = r4 - r15
            goto L_0x008d
        L_0x00bd:
            boolean r5 = defpackage.eu.a(r23)
            int r8 = r23.getPaddingTop()
            int r3 = r28 - r26
            int r4 = r23.getPaddingBottom()
            int r12 = r3 - r4
            int r3 = r3 - r8
            int r4 = r23.getPaddingBottom()
            int r13 = r3 - r4
            int r14 = r23.getVirtualChildCount()
            r0 = r23
            int r3 = r0.e
            r4 = 8388615(0x800007, float:1.1754953E-38)
            r3 = r3 & r4
            r0 = r23
            int r4 = r0.e
            r11 = r4 & 112(0x70, float:1.57E-43)
            r0 = r23
            boolean r15 = r0.a
            r0 = r23
            int[] r0 = r0.i
            r16 = r0
            r0 = r23
            int[] r0 = r0.j
            r17 = r0
            int r4 = defpackage.bh.h(r23)
            int r3 = defpackage.ap.a(r3, r4)
            switch(r3) {
                case 1: goto L_0x0134;
                case 5: goto L_0x0125;
                default: goto L_0x0101;
            }
        L_0x0101:
            int r9 = r23.getPaddingLeft()
        L_0x0105:
            r4 = 0
            r3 = 1
            if (r5 == 0) goto L_0x01de
            int r4 = r14 + -1
            r3 = -1
            r5 = r4
            r4 = r3
        L_0x010e:
            r10 = 0
        L_0x010f:
            if (r10 >= r14) goto L_0x01d6
            int r3 = r4 * r10
            int r18 = r5 + r3
            r0 = r23
            r1 = r18
            android.view.View r19 = r0.getChildAt(r1)
            if (r19 != 0) goto L_0x0144
            int r9 = r9 + 0
            r3 = r10
        L_0x0122:
            int r10 = r3 + 1
            goto L_0x010f
        L_0x0125:
            int r3 = r23.getPaddingLeft()
            int r3 = r3 + r27
            int r3 = r3 - r25
            r0 = r23
            int r4 = r0.f
            int r9 = r3 - r4
            goto L_0x0105
        L_0x0134:
            int r3 = r23.getPaddingLeft()
            int r4 = r27 - r25
            r0 = r23
            int r6 = r0.f
            int r4 = r4 - r6
            int r4 = r4 / 2
            int r9 = r3 + r4
            goto L_0x0105
        L_0x0144:
            int r3 = r19.getVisibility()
            r6 = 8
            if (r3 == r6) goto L_0x01db
            int r20 = r19.getMeasuredWidth()
            int r21 = r19.getMeasuredHeight()
            r6 = -1
            android.view.ViewGroup$LayoutParams r3 = r19.getLayoutParams()
            android.support.v7.widget.LinearLayoutCompat$LayoutParams r3 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r3
            if (r15 == 0) goto L_0x0169
            int r7 = r3.height
            r22 = -1
            r0 = r22
            if (r7 == r0) goto L_0x0169
            int r6 = r19.getBaseline()
        L_0x0169:
            int r7 = r3.h
            if (r7 >= 0) goto L_0x016e
            r7 = r11
        L_0x016e:
            r7 = r7 & 112(0x70, float:1.57E-43)
            switch(r7) {
                case 16: goto L_0x01ad;
                case 48: goto L_0x019c;
                case 80: goto L_0x01b9;
                default: goto L_0x0173;
            }
        L_0x0173:
            r6 = r8
        L_0x0174:
            r0 = r23
            r1 = r18
            boolean r7 = r0.a((int) r1)
            if (r7 == 0) goto L_0x01d7
            r0 = r23
            int r7 = r0.l
            int r7 = r7 + r9
        L_0x0183:
            int r9 = r3.leftMargin
            int r7 = r7 + r9
            int r9 = r7 + 0
            r0 = r19
            r1 = r20
            r2 = r21
            b(r0, r9, r6, r1, r2)
            int r3 = r3.rightMargin
            int r3 = r3 + r20
            int r3 = r3 + 0
            int r9 = r7 + r3
            int r3 = r10 + 0
            goto L_0x0122
        L_0x019c:
            int r7 = r3.topMargin
            int r7 = r7 + r8
            r22 = -1
            r0 = r22
            if (r6 == r0) goto L_0x01d9
            r22 = 1
            r22 = r16[r22]
            int r6 = r22 - r6
            int r6 = r6 + r7
            goto L_0x0174
        L_0x01ad:
            int r6 = r13 - r21
            int r6 = r6 / 2
            int r6 = r6 + r8
            int r7 = r3.topMargin
            int r6 = r6 + r7
            int r7 = r3.bottomMargin
            int r6 = r6 - r7
            goto L_0x0174
        L_0x01b9:
            int r7 = r12 - r21
            int r0 = r3.bottomMargin
            r22 = r0
            int r7 = r7 - r22
            r22 = -1
            r0 = r22
            if (r6 == r0) goto L_0x01d9
            int r22 = r19.getMeasuredHeight()
            int r6 = r22 - r6
            r22 = 2
            r22 = r17[r22]
            int r6 = r22 - r6
            int r6 = r7 - r6
            goto L_0x0174
        L_0x01d6:
            return
        L_0x01d7:
            r7 = r9
            goto L_0x0183
        L_0x01d9:
            r6 = r7
            goto L_0x0174
        L_0x01db:
            r3 = r10
            goto L_0x0122
        L_0x01de:
            r5 = r4
            r4 = r3
            goto L_0x010e
        L_0x01e2:
            r3 = r7
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        float f2;
        boolean z;
        int i6;
        int i7;
        int i8;
        int i9;
        View view;
        int i10;
        int i11;
        boolean z2;
        float f3;
        boolean z3;
        int i12;
        int i13;
        boolean z4;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z5;
        if (this.d == 1) {
            this.f = 0;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            boolean z6 = true;
            float f4 = 0.0f;
            int virtualChildCount = getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            boolean z7 = false;
            boolean z8 = false;
            int i22 = this.b;
            boolean z9 = this.h;
            int i23 = Integer.MIN_VALUE;
            int i24 = 0;
            while (i24 < virtualChildCount) {
                View childAt = getChildAt(i24);
                if (childAt == null) {
                    this.f += 0;
                    i16 = i24;
                } else {
                    if (childAt.getVisibility() != 8) {
                        if (a(i24)) {
                            this.f += this.m;
                        }
                        LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                        float f5 = f4 + layoutParams.g;
                        if (mode2 == 1073741824 && layoutParams.height == 0 && layoutParams.g > 0.0f) {
                            int i25 = this.f;
                            this.f = Math.max(i25, layoutParams.topMargin + i25 + layoutParams.bottomMargin);
                            i17 = i23;
                            z5 = true;
                        } else {
                            int i26 = Integer.MIN_VALUE;
                            if (layoutParams.height == 0 && layoutParams.g > 0.0f) {
                                i26 = 0;
                                layoutParams.height = -2;
                            }
                            int i27 = i26;
                            a(childAt, i2, 0, i3, f5 == 0.0f ? this.f : 0);
                            if (i27 != Integer.MIN_VALUE) {
                                layoutParams.height = i27;
                            }
                            int measuredHeight = childAt.getMeasuredHeight();
                            int i28 = this.f;
                            this.f = Math.max(i28, i28 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin + 0);
                            if (z9) {
                                i17 = Math.max(measuredHeight, i23);
                                z5 = z8;
                            } else {
                                i17 = i23;
                                z5 = z8;
                            }
                        }
                        if (i22 >= 0 && i22 == i24 + 1) {
                            this.c = this.f;
                        }
                        if (i24 >= i22 || layoutParams.g <= 0.0f) {
                            boolean z10 = false;
                            if (mode == 1073741824 || layoutParams.width != -1) {
                                z4 = z7;
                            } else {
                                z4 = true;
                                z10 = true;
                            }
                            int i29 = layoutParams.leftMargin + layoutParams.rightMargin;
                            int measuredWidth = childAt.getMeasuredWidth() + i29;
                            int max = Math.max(i18, measuredWidth);
                            i15 = eu.a(i19, bh.l(childAt));
                            boolean z11 = z6 && layoutParams.width == -1;
                            if (layoutParams.g > 0.0f) {
                                int i30 = z10 ? i29 : measuredWidth;
                                f3 = f5;
                                z3 = z11;
                                i13 = i20;
                                z2 = z5;
                                i14 = max;
                                int i31 = i17;
                                i12 = Math.max(i21, i30);
                                i11 = i31;
                            } else {
                                if (!z10) {
                                    i29 = measuredWidth;
                                }
                                int max2 = Math.max(i20, i29);
                                f3 = f5;
                                z3 = z11;
                                i13 = max2;
                                z2 = z5;
                                i11 = i17;
                                i12 = i21;
                                i14 = max;
                            }
                        } else {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                    } else {
                        i11 = i23;
                        z2 = z8;
                        f3 = f4;
                        z3 = z6;
                        i12 = i21;
                        i13 = i20;
                        z4 = z7;
                        i14 = i18;
                        i15 = i19;
                    }
                    z6 = z3;
                    i21 = i12;
                    i20 = i13;
                    i19 = i15;
                    i18 = i14;
                    i23 = i11;
                    z7 = z4;
                    i16 = i24 + 0;
                    f4 = f3;
                    z8 = z2;
                }
                i24 = i16 + 1;
            }
            if (this.f > 0 && a(virtualChildCount)) {
                this.f += this.m;
            }
            if (z9 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
                this.f = 0;
                int i32 = 0;
                while (i32 < virtualChildCount) {
                    View childAt2 = getChildAt(i32);
                    if (childAt2 == null) {
                        this.f += 0;
                        i10 = i32;
                    } else if (childAt2.getVisibility() == 8) {
                        i10 = i32 + 0;
                    } else {
                        LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                        int i33 = this.f;
                        this.f = Math.max(i33, layoutParams2.bottomMargin + i33 + i23 + layoutParams2.topMargin + 0);
                        i10 = i32;
                    }
                    i32 = i10 + 1;
                }
            }
            this.f += getPaddingTop() + getPaddingBottom();
            int a2 = bh.a(Math.max(this.f, getSuggestedMinimumHeight()), i3, 0);
            int i34 = (16777215 & a2) - this.f;
            if (z8 || (i34 != 0 && f4 > 0.0f)) {
                if (this.g > 0.0f) {
                    f4 = this.g;
                }
                this.f = 0;
                int i35 = 0;
                boolean z12 = z6;
                int i36 = i20;
                int i37 = i19;
                int i38 = i18;
                while (i35 < virtualChildCount) {
                    View childAt3 = getChildAt(i35);
                    if (childAt3.getVisibility() != 8) {
                        LayoutParams layoutParams3 = (LayoutParams) childAt3.getLayoutParams();
                        float f6 = layoutParams3.g;
                        if (f6 > 0.0f) {
                            int i39 = (int) ((((float) i34) * f6) / f4);
                            float f7 = f4 - f6;
                            int i40 = i34 - i39;
                            int childMeasureSpec = getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + layoutParams3.leftMargin + layoutParams3.rightMargin, layoutParams3.width);
                            if (layoutParams3.height != 0 || mode2 != 1073741824) {
                                i39 += childAt3.getMeasuredHeight();
                                if (i39 < 0) {
                                    i39 = 0;
                                }
                                view = childAt3;
                            } else if (i39 > 0) {
                                view = childAt3;
                            } else {
                                i39 = 0;
                                view = childAt3;
                            }
                            view.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i39, 1073741824));
                            i8 = i40;
                            i9 = eu.a(i37, bh.l(childAt3) & -256);
                            f2 = f7;
                        } else {
                            f2 = f4;
                            i8 = i34;
                            i9 = i37;
                        }
                        int i41 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                        int measuredWidth2 = childAt3.getMeasuredWidth() + i41;
                        int max3 = Math.max(i38, measuredWidth2);
                        if (!(mode != 1073741824 && layoutParams3.width == -1)) {
                            i41 = measuredWidth2;
                        }
                        int max4 = Math.max(i36, i41);
                        z = z12 && layoutParams3.width == -1;
                        int i42 = this.f;
                        this.f = Math.max(i42, layoutParams3.bottomMargin + childAt3.getMeasuredHeight() + i42 + layoutParams3.topMargin + 0);
                        i6 = max4;
                        i7 = max3;
                    } else {
                        f2 = f4;
                        z = z12;
                        i6 = i36;
                        i7 = i38;
                        i8 = i34;
                        i9 = i37;
                    }
                    i35++;
                    z12 = z;
                    i36 = i6;
                    i37 = i9;
                    i38 = i7;
                    i34 = i8;
                    f4 = f2;
                }
                this.f += getPaddingTop() + getPaddingBottom();
                i5 = i36;
                i19 = i37;
                i4 = i38;
                z6 = z12;
            } else {
                int max5 = Math.max(i20, i21);
                if (z9 && mode2 != 1073741824) {
                    int i43 = 0;
                    while (true) {
                        int i44 = i43;
                        if (i44 >= virtualChildCount) {
                            break;
                        }
                        View childAt4 = getChildAt(i44);
                        if (!(childAt4 == null || childAt4.getVisibility() == 8 || ((LayoutParams) childAt4.getLayoutParams()).g <= 0.0f)) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i23, 1073741824));
                        }
                        i43 = i44 + 1;
                    }
                }
                i5 = max5;
                i4 = i18;
            }
            if (z6 || mode == 1073741824) {
                i5 = i4;
            }
            setMeasuredDimension(bh.a(Math.max(i5 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i2, i19), a2);
            if (z7) {
                a(virtualChildCount, i3);
                return;
            }
            return;
        }
        b(i2, i3);
    }

    public void setBaselineAligned(boolean z) {
        this.a = z;
    }

    public void setBaselineAlignedChildIndex(int i2) {
        if (i2 < 0 || i2 >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.b = i2;
    }

    public void setDividerDrawable(Drawable drawable) {
        boolean z = false;
        if (drawable != this.k) {
            this.k = drawable;
            if (drawable != null) {
                this.l = drawable.getIntrinsicWidth();
                this.m = drawable.getIntrinsicHeight();
            } else {
                this.l = 0;
                this.m = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i2) {
        this.o = i2;
    }

    public void setGravity(int i2) {
        if (this.e != i2) {
            int i3 = (8388615 & i2) == 0 ? 8388611 | i2 : i2;
            if ((i3 & 112) == 0) {
                i3 |= 48;
            }
            this.e = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i2) {
        int i3 = i2 & 8388615;
        if ((this.e & 8388615) != i3) {
            this.e = i3 | (this.e & -8388616);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.h = z;
    }

    public void setOrientation(int i2) {
        if (this.d != i2) {
            this.d = i2;
            requestLayout();
        }
    }

    public void setShowDividers(int i2) {
        if (i2 != this.n) {
            requestLayout();
        }
        this.n = i2;
    }

    public void setVerticalGravity(int i2) {
        int i3 = i2 & 112;
        if ((this.e & 112) != i3) {
            this.e = i3 | (this.e & -113);
            requestLayout();
        }
    }

    public void setWeightSum(float f2) {
        this.g = Math.max(0.0f, f2);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
