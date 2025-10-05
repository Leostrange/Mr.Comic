package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import defpackage.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout extends ViewGroup implements ba {
    static final Class<?>[] CONSTRUCTOR_PARAMS = {Context.class, AttributeSet.class};
    static final CoordinatorLayoutInsetsHelper INSETS_HELPER;
    static final String TAG = "CoordinatorLayout";
    static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    static final String WIDGET_PACKAGE_NAME = CoordinatorLayout.class.getPackage().getName();
    static final ThreadLocal<Map<String, Constructor<Behavior>>> sConstructors = new ThreadLocal<>();
    private View mBehaviorTouchView;
    private final List<View> mDependencySortedChildren;
    private boolean mDrawStatusBarBackground;
    private boolean mIsAttachedToWindow;
    private int[] mKeylines;
    private bw mLastInsets;
    final Comparator<View> mLayoutDependencyComparator;
    private boolean mNeedsPreDrawListener;
    private View mNestedScrollingDirectChild;
    private final bb mNestedScrollingParentHelper;
    private View mNestedScrollingTarget;
    /* access modifiers changed from: private */
    public ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;
    private OnPreDrawListener mOnPreDrawListener;
    private Paint mScrimPaint;
    private Drawable mStatusBarBackground;
    private final List<View> mTempDependenciesList;
    private final int[] mTempIntPair;
    private final List<View> mTempList1;
    private final Rect mTempRect1;
    private final Rect mTempRect2;
    private final Rect mTempRect3;

    final class ApplyInsetsListener implements bc {
        ApplyInsetsListener() {
        }

        public final bw onApplyWindowInsets(View view, bw bwVar) {
            CoordinatorLayout.this.setWindowInsets(bwVar);
            return bwVar.f();
        }
    }

    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public static Object getTag(View view) {
            return ((LayoutParams) view.getLayoutParams()).mBehaviorTag;
        }

        public static void setTag(View view, Object obj) {
            ((LayoutParams) view.getLayoutParams()).mBehaviorTag = obj;
        }

        public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, V v) {
            return getScrimOpacity(coordinatorLayout, v) > 0.0f;
        }

        public final int getScrimColor(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        public final float getScrimOpacity(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        public boolean isDirty(CoordinatorLayout coordinatorLayout, V v) {
            return false;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public bw onApplyWindowInsets(CoordinatorLayout coordinatorLayout, V v, bw bwVar) {
            return bwVar;
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface DefaultBehavior {
        Class<? extends Behavior> value();
    }

    final class HierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        HierarchyChangeListener() {
        }

        public final void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.mOnHierarchyChangeListener != null) {
                CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.dispatchDependentViewRemoved(view2);
            if (CoordinatorLayout.this.mOnHierarchyChangeListener != null) {
                CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int anchorGravity = 0;
        public int gravity = 0;
        public int keyline = -1;
        View mAnchorDirectChild;
        int mAnchorId = -1;
        View mAnchorView;
        Behavior mBehavior;
        boolean mBehaviorResolved = false;
        Object mBehaviorTag;
        private boolean mDidAcceptNestedScroll;
        private boolean mDidBlockInteraction;
        private boolean mDidChangeAfterNestedScroll;
        final Rect mLastChildRect = new Rect();

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.CoordinatorLayout_LayoutParams);
            this.gravity = obtainStyledAttributes.getInteger(a.h.CoordinatorLayout_LayoutParams_android_layout_gravity, 0);
            this.mAnchorId = obtainStyledAttributes.getResourceId(a.h.CoordinatorLayout_LayoutParams_layout_anchor, -1);
            this.anchorGravity = obtainStyledAttributes.getInteger(a.h.CoordinatorLayout_LayoutParams_layout_anchorGravity, 0);
            this.keyline = obtainStyledAttributes.getInteger(a.h.CoordinatorLayout_LayoutParams_layout_keyline, -1);
            this.mBehaviorResolved = obtainStyledAttributes.hasValue(a.h.CoordinatorLayout_LayoutParams_layout_behavior);
            if (this.mBehaviorResolved) {
                this.mBehavior = CoordinatorLayout.parseBehavior(context, attributeSet, obtainStyledAttributes.getString(a.h.CoordinatorLayout_LayoutParams_layout_behavior));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        private void resolveAnchorView(View view, CoordinatorLayout coordinatorLayout) {
            this.mAnchorView = coordinatorLayout.findViewById(this.mAnchorId);
            if (this.mAnchorView != null) {
                View view2 = this.mAnchorView;
                ViewParent parent = this.mAnchorView.getParent();
                while (parent != coordinatorLayout && parent != null) {
                    if (parent != view) {
                        if (parent instanceof View) {
                            view2 = (View) parent;
                        }
                        parent = parent.getParent();
                    } else if (coordinatorLayout.isInEditMode()) {
                        this.mAnchorDirectChild = null;
                        this.mAnchorView = null;
                        return;
                    } else {
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                }
                this.mAnchorDirectChild = view2;
            } else if (coordinatorLayout.isInEditMode()) {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
            } else {
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.mAnchorId) + " to anchor view " + view);
            }
        }

        private boolean verifyAnchorView(View view, CoordinatorLayout coordinatorLayout) {
            if (this.mAnchorView.getId() != this.mAnchorId) {
                return false;
            }
            View view2 = this.mAnchorView;
            for (ViewParent parent = this.mAnchorView.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.mAnchorDirectChild = null;
                    this.mAnchorView = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
            this.mAnchorDirectChild = view2;
            return true;
        }

        /* access modifiers changed from: package-private */
        public void acceptNestedScroll(boolean z) {
            this.mDidAcceptNestedScroll = z;
        }

        /* access modifiers changed from: package-private */
        public boolean checkAnchorChanged() {
            return this.mAnchorView == null && this.mAnchorId != -1;
        }

        /* access modifiers changed from: package-private */
        public boolean dependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 == this.mAnchorDirectChild || (this.mBehavior != null && this.mBehavior.layoutDependsOn(coordinatorLayout, view, view2));
        }

        /* access modifiers changed from: package-private */
        public boolean didBlockInteraction() {
            if (this.mBehavior == null) {
                this.mDidBlockInteraction = false;
            }
            return this.mDidBlockInteraction;
        }

        /* access modifiers changed from: package-private */
        public View findAnchorView(CoordinatorLayout coordinatorLayout, View view) {
            if (this.mAnchorId == -1) {
                this.mAnchorDirectChild = null;
                this.mAnchorView = null;
                return null;
            }
            if (this.mAnchorView == null || !verifyAnchorView(view, coordinatorLayout)) {
                resolveAnchorView(view, coordinatorLayout);
            }
            return this.mAnchorView;
        }

        public int getAnchorId() {
            return this.mAnchorId;
        }

        public Behavior getBehavior() {
            return this.mBehavior;
        }

        /* access modifiers changed from: package-private */
        public boolean getChangedAfterNestedScroll() {
            return this.mDidChangeAfterNestedScroll;
        }

        /* access modifiers changed from: package-private */
        public Rect getLastChildRect() {
            return this.mLastChildRect;
        }

        /* access modifiers changed from: package-private */
        public void invalidateAnchor() {
            this.mAnchorDirectChild = null;
            this.mAnchorView = null;
        }

        /* access modifiers changed from: package-private */
        public boolean isBlockingInteractionBelow(CoordinatorLayout coordinatorLayout, View view) {
            if (this.mDidBlockInteraction) {
                return true;
            }
            boolean blocksInteractionBelow = (this.mBehavior != null ? this.mBehavior.blocksInteractionBelow(coordinatorLayout, view) : false) | this.mDidBlockInteraction;
            this.mDidBlockInteraction = blocksInteractionBelow;
            return blocksInteractionBelow;
        }

        /* access modifiers changed from: package-private */
        public boolean isDirty(CoordinatorLayout coordinatorLayout, View view) {
            return this.mBehavior != null && this.mBehavior.isDirty(coordinatorLayout, view);
        }

        /* access modifiers changed from: package-private */
        public boolean isNestedScrollAccepted() {
            return this.mDidAcceptNestedScroll;
        }

        /* access modifiers changed from: package-private */
        public void resetChangedAfterNestedScroll() {
            this.mDidChangeAfterNestedScroll = false;
        }

        /* access modifiers changed from: package-private */
        public void resetNestedScroll() {
            this.mDidAcceptNestedScroll = false;
        }

        /* access modifiers changed from: package-private */
        public void resetTouchBehaviorTracking() {
            this.mDidBlockInteraction = false;
        }

        public void setAnchorId(int i) {
            invalidateAnchor();
            this.mAnchorId = i;
        }

        public void setBehavior(Behavior behavior) {
            if (this.mBehavior != behavior) {
                this.mBehavior = behavior;
                this.mBehaviorTag = null;
                this.mBehaviorResolved = true;
            }
        }

        /* access modifiers changed from: package-private */
        public void setChangedAfterNestedScroll(boolean z) {
            this.mDidChangeAfterNestedScroll = z;
        }

        /* access modifiers changed from: package-private */
        public void setLastChildRect(Rect rect) {
            this.mLastChildRect.set(rect);
        }
    }

    class OnPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        OnPreDrawListener() {
        }

        public boolean onPreDraw() {
            CoordinatorLayout.this.dispatchOnDependentViewChanged(false);
            return true;
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        SparseArray<Parcelable> behaviorStates;

        public SavedState(Parcel parcel) {
            super(parcel);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(CoordinatorLayout.class.getClassLoader());
            this.behaviorStates = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.behaviorStates.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            int size = this.behaviorStates != null ? this.behaviorStates.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.behaviorStates.keyAt(i2);
                parcelableArr[i2] = this.behaviorStates.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    static class ViewElevationComparator implements Comparator<View> {
        ViewElevationComparator() {
        }

        public int compare(View view, View view2) {
            float D = bh.D(view);
            float D2 = bh.D(view2);
            if (D > D2) {
                return -1;
            }
            return D < D2 ? 1 : 0;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            r2 = 0
            java.lang.Class<android.support.design.widget.CoordinatorLayout> r0 = android.support.design.widget.CoordinatorLayout.class
            java.lang.Package r0 = r0.getPackage()
            java.lang.String r0 = r0.getName()
            WIDGET_PACKAGE_NAME = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x0038
            android.support.design.widget.CoordinatorLayout$ViewElevationComparator r0 = new android.support.design.widget.CoordinatorLayout$ViewElevationComparator
            r0.<init>()
            TOP_SORTED_CHILDREN_COMPARATOR = r0
            android.support.design.widget.CoordinatorLayoutInsetsHelperLollipop r0 = new android.support.design.widget.CoordinatorLayoutInsetsHelperLollipop
            r0.<init>()
            INSETS_HELPER = r0
        L_0x0021:
            r0 = 2
            java.lang.Class[] r0 = new java.lang.Class[r0]
            r1 = 0
            java.lang.Class<android.content.Context> r2 = android.content.Context.class
            r0[r1] = r2
            r1 = 1
            java.lang.Class<android.util.AttributeSet> r2 = android.util.AttributeSet.class
            r0[r1] = r2
            CONSTRUCTOR_PARAMS = r0
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            sConstructors = r0
            return
        L_0x0038:
            TOP_SORTED_CHILDREN_COMPARATOR = r2
            INSETS_HELPER = r2
            goto L_0x0021
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.<clinit>():void");
    }

    public CoordinatorLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLayoutDependencyComparator = new Comparator<View>() {
            public int compare(View view, View view2) {
                if (view == view2) {
                    return 0;
                }
                if (((LayoutParams) view.getLayoutParams()).dependsOn(CoordinatorLayout.this, view, view2)) {
                    return 1;
                }
                return ((LayoutParams) view2.getLayoutParams()).dependsOn(CoordinatorLayout.this, view2, view) ? -1 : 0;
            }
        };
        this.mDependencySortedChildren = new ArrayList();
        this.mTempList1 = new ArrayList();
        this.mTempDependenciesList = new ArrayList();
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRect3 = new Rect();
        this.mTempIntPair = new int[2];
        this.mNestedScrollingParentHelper = new bb(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.CoordinatorLayout, i, a.g.Widget_Design_CoordinatorLayout);
        int resourceId = obtainStyledAttributes.getResourceId(a.h.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.mKeylines = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.mKeylines.length;
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr = this.mKeylines;
                iArr[i2] = (int) (((float) iArr[i2]) * f);
            }
        }
        this.mStatusBarBackground = obtainStyledAttributes.getDrawable(a.h.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        if (INSETS_HELPER != null) {
            INSETS_HELPER.setupForWindowInsets(this, new ApplyInsetsListener());
        }
        super.setOnHierarchyChangeListener(new HierarchyChangeListener());
    }

    private void dispatchChildApplyWindowInsets(bw bwVar) {
        bw bwVar2;
        if (!bwVar.e()) {
            int childCount = getChildCount();
            bw bwVar3 = bwVar;
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (bh.x(childAt)) {
                    Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior();
                    if (behavior != null) {
                        bwVar2 = behavior.onApplyWindowInsets(this, childAt, bwVar3);
                        if (bwVar2.e()) {
                            return;
                        }
                    } else {
                        bwVar2 = bwVar3;
                    }
                    bwVar3 = bh.b(childAt, bwVar2);
                    if (bwVar3.e()) {
                        return;
                    }
                }
            }
        }
    }

    private int getKeyline(int i) {
        if (this.mKeylines == null) {
            Log.e(TAG, "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        } else if (i >= 0 && i < this.mKeylines.length) {
            return this.mKeylines[i];
        } else {
            Log.e(TAG, "Keyline index " + i + " out of range for " + this);
            return 0;
        }
    }

    private void getTopSortedChildren(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        if (TOP_SORTED_CHILDREN_COMPARATOR != null) {
            Collections.sort(list, TOP_SORTED_CHILDREN_COMPARATOR);
        }
    }

    private void layoutChild(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = this.mTempRect1;
        rect.set(getPaddingLeft() + layoutParams.leftMargin, getPaddingTop() + layoutParams.topMargin, (getWidth() - getPaddingRight()) - layoutParams.rightMargin, (getHeight() - getPaddingBottom()) - layoutParams.bottomMargin);
        if (this.mLastInsets != null && bh.x(this) && !bh.x(view)) {
            rect.left += this.mLastInsets.a();
            rect.top += this.mLastInsets.b();
            rect.right -= this.mLastInsets.c();
            rect.bottom -= this.mLastInsets.d();
        }
        Rect rect2 = this.mTempRect2;
        ap.a(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        view.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    private void layoutChildWithAnchor(View view, View view2, int i) {
        view.getLayoutParams();
        Rect rect = this.mTempRect1;
        Rect rect2 = this.mTempRect2;
        getDescendantRect(view2, rect);
        getDesiredAnchoredChildRect(view, i, rect, rect2);
        view.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    private void layoutChildWithKeyline(View view, int i, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int a = ap.a(resolveKeylineGravity(layoutParams.gravity), i2);
        int i3 = a & 7;
        int i4 = a & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i2 == 1) {
            i = width - i;
        }
        int keyline = getKeyline(i) - measuredWidth;
        int i5 = 0;
        switch (i3) {
            case 1:
                keyline += measuredWidth / 2;
                break;
            case 5:
                keyline += measuredWidth;
                break;
        }
        switch (i4) {
            case 16:
                i5 = (measuredHeight / 2) + 0;
                break;
            case 80:
                i5 = measuredHeight + 0;
                break;
        }
        int max = Math.max(getPaddingLeft() + layoutParams.leftMargin, Math.min(keyline, ((width - getPaddingRight()) - measuredWidth) - layoutParams.rightMargin));
        int max2 = Math.max(getPaddingTop() + layoutParams.topMargin, Math.min(i5, ((height - getPaddingBottom()) - measuredHeight) - layoutParams.bottomMargin));
        view.layout(max, max2, max + measuredWidth, max2 + measuredHeight);
    }

    static Behavior parseBehavior(Context context, AttributeSet attributeSet, String str) {
        HashMap hashMap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            str = WIDGET_PACKAGE_NAME + '.' + str;
        }
        try {
            Map map = sConstructors.get();
            if (map == null) {
                HashMap hashMap2 = new HashMap();
                sConstructors.set(hashMap2);
                hashMap = hashMap2;
            } else {
                hashMap = map;
            }
            Constructor<?> constructor = (Constructor) hashMap.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, true, context.getClassLoader()).getConstructor(CONSTRUCTOR_PARAMS);
                hashMap.put(str, constructor);
            }
            return (Behavior) constructor.newInstance(new Object[]{context, attributeSet});
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e);
        }
    }

    private boolean performIntercept(MotionEvent motionEvent) {
        boolean z;
        int a = ax.a(motionEvent);
        List<View> list = this.mTempList1;
        getTopSortedChildren(list);
        int size = list.size();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i < size) {
            View view = list.get(i);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior behavior = layoutParams.getBehavior();
            if ((!z3 && !z2) || a == 0) {
                if (!z3 && behavior != null && (z3 = behavior.onInterceptTouchEvent(this, view, motionEvent))) {
                    this.mBehaviorTouchView = view;
                }
                boolean didBlockInteraction = layoutParams.didBlockInteraction();
                boolean isBlockingInteractionBelow = layoutParams.isBlockingInteractionBelow(this, view);
                z = isBlockingInteractionBelow && !didBlockInteraction;
                if (isBlockingInteractionBelow && !z) {
                    break;
                }
            } else if (behavior != null) {
                behavior.onInterceptTouchEvent(this, view, (MotionEvent) null);
                z = z2;
            } else {
                z = z2;
            }
            i++;
            z2 = z;
        }
        list.clear();
        return z3;
    }

    private void prepareChildren() {
        int childCount = getChildCount();
        boolean z = this.mDependencySortedChildren.size() != childCount;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams resolvedLayoutParams = getResolvedLayoutParams(childAt);
            if (!z && resolvedLayoutParams.isDirty(this, childAt)) {
                z = true;
            }
            resolvedLayoutParams.findAnchorView(this, childAt);
        }
        if (z) {
            this.mDependencySortedChildren.clear();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.mDependencySortedChildren.add(getChildAt(i2));
            }
            Collections.sort(this.mDependencySortedChildren, this.mLayoutDependencyComparator);
        }
    }

    private void resetTouchBehaviors() {
        if (this.mBehaviorTouchView != null) {
            Behavior behavior = ((LayoutParams) this.mBehaviorTouchView.getLayoutParams()).getBehavior();
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                behavior.onTouchEvent(this, this.mBehaviorTouchView, obtain);
                obtain.recycle();
            }
            this.mBehaviorTouchView = null;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((LayoutParams) getChildAt(i).getLayoutParams()).resetTouchBehaviorTracking();
        }
    }

    private static int resolveAnchoredChildGravity(int i) {
        if (i == 0) {
            return 17;
        }
        return i;
    }

    private static int resolveGravity(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    private static int resolveKeylineGravity(int i) {
        if (i == 0) {
            return 8388661;
        }
        return i;
    }

    /* access modifiers changed from: private */
    public void setWindowInsets(bw bwVar) {
        boolean z = true;
        if (this.mLastInsets != bwVar) {
            this.mLastInsets = bwVar;
            this.mDrawStatusBarBackground = bwVar != null && bwVar.b() > 0;
            if (this.mDrawStatusBarBackground || getBackground() != null) {
                z = false;
            }
            setWillNotDraw(z);
            dispatchChildApplyWindowInsets(bwVar);
            requestLayout();
        }
    }

    /* access modifiers changed from: package-private */
    public void addPreDrawListener() {
        if (this.mIsAttachedToWindow) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = true;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    /* access modifiers changed from: package-private */
    public void dispatchDependentViewRemoved(View view) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (behavior != null && behavior.layoutDependsOn(this, childAt, view)) {
                behavior.onDependentViewRemoved(this, childAt, view);
            }
        }
    }

    public void dispatchDependentViewsChanged(View view) {
        boolean z;
        LayoutParams layoutParams;
        Behavior behavior;
        int size = this.mDependencySortedChildren.size();
        int i = 0;
        boolean z2 = false;
        while (i < size) {
            View view2 = this.mDependencySortedChildren.get(i);
            if (view2 == view) {
                z = true;
            } else {
                if (z2 && (behavior = layoutParams.getBehavior()) != null && (layoutParams = (LayoutParams) view2.getLayoutParams()).dependsOn(this, view2, view)) {
                    behavior.onDependentViewChanged(this, view2, view);
                }
                z = z2;
            }
            i++;
            z2 = z;
        }
    }

    /* access modifiers changed from: package-private */
    public void dispatchOnDependentViewChanged(boolean z) {
        int h = bh.h(this);
        int size = this.mDependencySortedChildren.size();
        for (int i = 0; i < size; i++) {
            View view = this.mDependencySortedChildren.get(i);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            for (int i2 = 0; i2 < i; i2++) {
                if (layoutParams.mAnchorDirectChild == this.mDependencySortedChildren.get(i2)) {
                    offsetChildToAnchor(view, h);
                }
            }
            Rect rect = this.mTempRect1;
            Rect rect2 = this.mTempRect2;
            getLastChildRect(view, rect);
            getChildRect(view, true, rect2);
            if (!rect.equals(rect2)) {
                recordLastChildRect(view, rect2);
                for (int i3 = i + 1; i3 < size; i3++) {
                    View view2 = this.mDependencySortedChildren.get(i3);
                    LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                    Behavior behavior = layoutParams2.getBehavior();
                    if (behavior != null && behavior.layoutDependsOn(this, view2, view)) {
                        if (z || !layoutParams2.getChangedAfterNestedScroll()) {
                            boolean onDependentViewChanged = behavior.onDependentViewChanged(this, view2, view);
                            if (z) {
                                layoutParams2.setChangedAfterNestedScroll(onDependentViewChanged);
                            }
                        } else {
                            layoutParams2.resetChangedAfterNestedScroll();
                        }
                    }
                }
            }
        }
    }

    public boolean doViewsOverlap(View view, View view2) {
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect rect = this.mTempRect1;
        getChildRect(view, view.getParent() != this, rect);
        Rect rect2 = this.mTempRect2;
        getChildRect(view2, view2.getParent() != this, rect2);
        return rect.left <= rect2.right && rect.top <= rect2.bottom && rect.right >= rect2.left && rect.bottom >= rect2.top;
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.mBehavior != null && layoutParams.mBehavior.getScrimOpacity(this, view) > 0.0f) {
            if (this.mScrimPaint == null) {
                this.mScrimPaint = new Paint();
            }
            this.mScrimPaint.setColor(layoutParams.mBehavior.getScrimColor(this, view));
            canvas.drawRect((float) getPaddingLeft(), (float) getPaddingTop(), (float) (getWidth() - getPaddingRight()), (float) (getHeight() - getPaddingBottom()), this.mScrimPaint);
        }
        return super.drawChild(canvas, view, j);
    }

    /* access modifiers changed from: package-private */
    public void ensurePreDrawListener() {
        boolean z = false;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            } else if (hasDependencies(getChildAt(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z == this.mNeedsPreDrawListener) {
            return;
        }
        if (z) {
            addPreDrawListener();
        } else {
            removePreDrawListener();
        }
    }

    /* access modifiers changed from: protected */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: package-private */
    public void getChildRect(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.set(0, 0, 0, 0);
        } else if (z) {
            getDescendantRect(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public List<View> getDependencies(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        List<View> list = this.mTempDependenciesList;
        list.clear();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != view && layoutParams.dependsOn(this, view, childAt)) {
                list.add(childAt);
            }
        }
        return list;
    }

    /* access modifiers changed from: package-private */
    public void getDescendantRect(View view, Rect rect) {
        ViewGroupUtils.getDescendantRect(this, view, rect);
    }

    /* access modifiers changed from: package-private */
    public void getDesiredAnchoredChildRect(View view, int i, Rect rect, Rect rect2) {
        int width;
        int height;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int a = ap.a(resolveAnchoredChildGravity(layoutParams.gravity), i);
        int a2 = ap.a(resolveGravity(layoutParams.anchorGravity), i);
        int i2 = a & 7;
        int i3 = a & 112;
        int i4 = a2 & 7;
        int i5 = a2 & 112;
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        switch (i4) {
            case 1:
                width = (rect.width() / 2) + rect.left;
                break;
            case 5:
                width = rect.right;
                break;
            default:
                width = rect.left;
                break;
        }
        switch (i5) {
            case 16:
                height = rect.top + (rect.height() / 2);
                break;
            case 80:
                height = rect.bottom;
                break;
            default:
                height = rect.top;
                break;
        }
        switch (i2) {
            case 1:
                width -= measuredWidth / 2;
                break;
            case 5:
                break;
            default:
                width -= measuredWidth;
                break;
        }
        switch (i3) {
            case 16:
                height -= measuredHeight / 2;
                break;
            case 80:
                break;
            default:
                height -= measuredHeight;
                break;
        }
        int width2 = getWidth();
        int height2 = getHeight();
        int max = Math.max(getPaddingLeft() + layoutParams.leftMargin, Math.min(width, ((width2 - getPaddingRight()) - measuredWidth) - layoutParams.rightMargin));
        int max2 = Math.max(getPaddingTop() + layoutParams.topMargin, Math.min(height, ((height2 - getPaddingBottom()) - measuredHeight) - layoutParams.bottomMargin));
        rect2.set(max, max2, max + measuredWidth, max2 + measuredHeight);
    }

    /* access modifiers changed from: package-private */
    public void getLastChildRect(View view, Rect rect) {
        rect.set(((LayoutParams) view.getLayoutParams()).getLastChildRect());
    }

    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.a;
    }

    /* access modifiers changed from: package-private */
    public LayoutParams getResolvedLayoutParams(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.mBehaviorResolved) {
            DefaultBehavior defaultBehavior = null;
            for (Class cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                defaultBehavior = (DefaultBehavior) cls.getAnnotation(DefaultBehavior.class);
                if (defaultBehavior != null) {
                    break;
                }
            }
            DefaultBehavior defaultBehavior2 = defaultBehavior;
            if (defaultBehavior2 != null) {
                try {
                    layoutParams.setBehavior((Behavior) defaultBehavior2.value().newInstance());
                } catch (Exception e) {
                    Log.e(TAG, "Default behavior class " + defaultBehavior2.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                }
            }
            layoutParams.mBehaviorResolved = true;
        }
        return layoutParams;
    }

    public Drawable getStatusBarBackground() {
        return this.mStatusBarBackground;
    }

    /* access modifiers changed from: protected */
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    /* access modifiers changed from: protected */
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    /* access modifiers changed from: package-private */
    public boolean hasDependencies(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.mAnchorView != null) {
            return true;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != view && layoutParams.dependsOn(this, view, childAt)) {
                return true;
            }
        }
        return false;
    }

    public boolean isPointInChildBounds(View view, int i, int i2) {
        Rect rect = this.mTempRect1;
        getDescendantRect(view, rect);
        return rect.contains(i, i2);
    }

    /* access modifiers changed from: package-private */
    public void offsetChildToAnchor(View view, int i) {
        Behavior behavior;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.mAnchorView != null) {
            Rect rect = this.mTempRect1;
            Rect rect2 = this.mTempRect2;
            Rect rect3 = this.mTempRect3;
            getDescendantRect(layoutParams.mAnchorView, rect);
            getChildRect(view, false, rect2);
            getDesiredAnchoredChildRect(view, i, rect, rect3);
            int i2 = rect3.left - rect2.left;
            int i3 = rect3.top - rect2.top;
            if (i2 != 0) {
                view.offsetLeftAndRight(i2);
            }
            if (i3 != 0) {
                view.offsetTopAndBottom(i3);
            }
            if ((i2 != 0 || i3 != 0) && (behavior = layoutParams.getBehavior()) != null) {
                behavior.onDependentViewChanged(this, view, layoutParams.mAnchorView);
            }
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        resetTouchBehaviors();
        if (this.mNeedsPreDrawListener) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mIsAttachedToWindow = true;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resetTouchBehaviors();
        if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mNestedScrollingTarget != null) {
            onStopNestedScroll(this.mNestedScrollingTarget);
        }
        this.mIsAttachedToWindow = false;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null) {
            int b = this.mLastInsets != null ? this.mLastInsets.b() : 0;
            if (b > 0) {
                this.mStatusBarBackground.setBounds(0, 0, getWidth(), b);
                this.mStatusBarBackground.draw(canvas);
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int a = ax.a(motionEvent);
        if (a == 0) {
            resetTouchBehaviors();
        }
        boolean performIntercept = performIntercept(motionEvent);
        if (a == 1 || a == 3) {
            resetTouchBehaviors();
        }
        return performIntercept;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int h = bh.h(this);
        int size = this.mDependencySortedChildren.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.mDependencySortedChildren.get(i5);
            Behavior behavior = ((LayoutParams) view.getLayoutParams()).getBehavior();
            if (behavior == null || !behavior.onLayoutChild(this, view, h)) {
                onLayoutChild(view, h);
            }
        }
    }

    public void onLayoutChild(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.checkAnchorChanged()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        } else if (layoutParams.mAnchorView != null) {
            layoutChildWithAnchor(view, layoutParams.mAnchorView, i);
        } else if (layoutParams.keyline >= 0) {
            layoutChildWithKeyline(view, layoutParams.keyline, i);
        } else {
            layoutChild(view, i);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        prepareChildren();
        ensurePreDrawListener();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int h = bh.h(this);
        boolean z = h == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i5 = paddingLeft + paddingRight;
        int i6 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z2 = this.mLastInsets != null && bh.x(this);
        int size3 = this.mDependencySortedChildren.size();
        int i7 = 0;
        int i8 = 0;
        int i9 = suggestedMinimumHeight;
        int i10 = suggestedMinimumWidth;
        while (i7 < size3) {
            View view = this.mDependencySortedChildren.get(i7);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i11 = 0;
            if (layoutParams.keyline >= 0 && mode != 0) {
                int keyline = getKeyline(layoutParams.keyline);
                int a = ap.a(resolveKeylineGravity(layoutParams.gravity), h) & 7;
                if ((a == 3 && !z) || (a == 5 && z)) {
                    i11 = Math.max(0, (size - paddingRight) - keyline);
                } else if ((a == 5 && !z) || (a == 3 && z)) {
                    i11 = Math.max(0, keyline - paddingLeft);
                }
            }
            if (!z2 || bh.x(view)) {
                i3 = i2;
                i4 = i;
            } else {
                int a2 = this.mLastInsets.a() + this.mLastInsets.c();
                int b = this.mLastInsets.b() + this.mLastInsets.d();
                i4 = View.MeasureSpec.makeMeasureSpec(size - a2, mode);
                i3 = View.MeasureSpec.makeMeasureSpec(size2 - b, mode2);
            }
            Behavior behavior = layoutParams.getBehavior();
            if (behavior == null || !behavior.onMeasureChild(this, view, i4, i11, i3, 0)) {
                onMeasureChild(view, i4, i11, i3, 0);
            }
            int max = Math.max(i10, view.getMeasuredWidth() + i5 + layoutParams.leftMargin + layoutParams.rightMargin);
            int max2 = Math.max(i9, view.getMeasuredHeight() + i6 + layoutParams.topMargin + layoutParams.bottomMargin);
            i7++;
            i8 = bh.a(i8, bh.l(view));
            i9 = max2;
            i10 = max;
        }
        setMeasuredDimension(bh.a(i10, i, -16777216 & i8), bh.a(i9, i2, i8 << 16));
    }

    public void onMeasureChild(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0019, code lost:
        r0 = r0.getBehavior();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onNestedFling(android.view.View r11, float r12, float r13, boolean r14) {
        /*
            r10 = this;
            r0 = 0
            int r9 = r10.getChildCount()
            r8 = r0
            r7 = r0
        L_0x0007:
            if (r8 >= r9) goto L_0x002e
            android.view.View r2 = r10.getChildAt(r8)
            android.view.ViewGroup$LayoutParams r0 = r2.getLayoutParams()
            android.support.design.widget.CoordinatorLayout$LayoutParams r0 = (android.support.design.widget.CoordinatorLayout.LayoutParams) r0
            boolean r1 = r0.isNestedScrollAccepted()
            if (r1 == 0) goto L_0x0035
            android.support.design.widget.CoordinatorLayout$Behavior r0 = r0.getBehavior()
            if (r0 == 0) goto L_0x0035
            r1 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            r6 = r14
            boolean r0 = r0.onNestedFling(r1, r2, r3, r4, r5, r6)
            r0 = r0 | r7
        L_0x0029:
            int r1 = r8 + 1
            r8 = r1
            r7 = r0
            goto L_0x0007
        L_0x002e:
            if (r7 == 0) goto L_0x0034
            r0 = 1
            r10.dispatchOnDependentViewChanged(r0)
        L_0x0034:
            return r7
        L_0x0035:
            r0 = r7
            goto L_0x0029
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.onNestedFling(android.view.View, float, float, boolean):boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0019, code lost:
        r0 = r0.getBehavior();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onNestedPreFling(android.view.View r10, float r11, float r12) {
        /*
            r9 = this;
            r0 = 0
            int r8 = r9.getChildCount()
            r7 = r0
            r6 = r0
        L_0x0007:
            if (r7 >= r8) goto L_0x002d
            android.view.View r2 = r9.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r0 = r2.getLayoutParams()
            android.support.design.widget.CoordinatorLayout$LayoutParams r0 = (android.support.design.widget.CoordinatorLayout.LayoutParams) r0
            boolean r1 = r0.isNestedScrollAccepted()
            if (r1 == 0) goto L_0x002e
            android.support.design.widget.CoordinatorLayout$Behavior r0 = r0.getBehavior()
            if (r0 == 0) goto L_0x002e
            r1 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            boolean r0 = r0.onNestedPreFling(r1, r2, r3, r4, r5)
            r0 = r0 | r6
        L_0x0028:
            int r1 = r7 + 1
            r7 = r1
            r6 = r0
            goto L_0x0007
        L_0x002d:
            return r6
        L_0x002e:
            r0 = r6
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.onNestedPreFling(android.view.View, float, float):boolean");
    }

    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        boolean z;
        int i3;
        int i4;
        Behavior behavior;
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        int childCount = getChildCount();
        int i7 = 0;
        while (i7 < childCount) {
            View childAt = getChildAt(i7);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (!layoutParams.isNestedScrollAccepted() || (behavior = layoutParams.getBehavior()) == null) {
                z = z2;
                i3 = i5;
                i4 = i6;
            } else {
                int[] iArr2 = this.mTempIntPair;
                this.mTempIntPair[1] = 0;
                iArr2[0] = 0;
                behavior.onNestedPreScroll(this, childAt, view, i, i2, this.mTempIntPair);
                i3 = i > 0 ? Math.max(i5, this.mTempIntPair[0]) : Math.min(i5, this.mTempIntPair[0]);
                i4 = i2 > 0 ? Math.max(i6, this.mTempIntPair[1]) : Math.min(i6, this.mTempIntPair[1]);
                z = true;
            }
            i7++;
            i6 = i4;
            i5 = i3;
            z2 = z;
        }
        iArr[0] = i5;
        iArr[1] = i6;
        if (z2) {
            dispatchOnDependentViewChanged(true);
        }
    }

    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        boolean z;
        Behavior behavior;
        int childCount = getChildCount();
        boolean z2 = false;
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (!layoutParams.isNestedScrollAccepted() || (behavior = layoutParams.getBehavior()) == null) {
                z = z2;
            } else {
                behavior.onNestedScroll(this, childAt, view, i, i2, i3, i4);
                z = true;
            }
            i5++;
            z2 = z;
        }
        if (z2) {
            dispatchOnDependentViewChanged(true);
        }
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        Behavior behavior;
        this.mNestedScrollingParentHelper.a = i;
        this.mNestedScrollingDirectChild = view;
        this.mNestedScrollingTarget = view2;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.isNestedScrollAccepted() && (behavior = layoutParams.getBehavior()) != null) {
                behavior.onNestedScrollAccepted(this, childAt, view, view2, i);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.behaviorStates;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = getResolvedLayoutParams(childAt).getBehavior();
            if (!(id == -1 || behavior == null || (parcelable2 = sparseArray.get(id)) == null)) {
                behavior.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (!(id == -1 || behavior == null || (onSaveInstanceState = behavior.onSaveInstanceState(this, childAt)) == null)) {
                sparseArray.append(id, onSaveInstanceState);
            }
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        boolean z;
        int childCount = getChildCount();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < childCount) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            Behavior behavior = layoutParams.getBehavior();
            if (behavior != null) {
                boolean onStartNestedScroll = behavior.onStartNestedScroll(this, childAt, view, view2, i);
                z = z2 | onStartNestedScroll;
                layoutParams.acceptNestedScroll(onStartNestedScroll);
            } else {
                layoutParams.acceptNestedScroll(false);
                z = z2;
            }
            i2++;
            z2 = z;
        }
        return z2;
    }

    public void onStopNestedScroll(View view) {
        this.mNestedScrollingParentHelper.a = 0;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.isNestedScrollAccepted()) {
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onStopNestedScroll(this, childAt, view);
                }
                layoutParams.resetNestedScroll();
                layoutParams.resetChangedAfterNestedScroll();
            }
        }
        this.mNestedScrollingDirectChild = null;
        this.mNestedScrollingTarget = null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0037  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            r2 = 0
            int r3 = defpackage.ax.a(r6)
            android.view.View r0 = r5.mBehaviorTouchView
            if (r0 != 0) goto L_0x0040
            boolean r0 = r5.performIntercept(r6)
            if (r0 == 0) goto L_0x003e
            r1 = r0
        L_0x0010:
            android.view.View r0 = r5.mBehaviorTouchView
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            android.support.design.widget.CoordinatorLayout$LayoutParams r0 = (android.support.design.widget.CoordinatorLayout.LayoutParams) r0
            android.support.design.widget.CoordinatorLayout$Behavior r0 = r0.getBehavior()
            if (r0 == 0) goto L_0x0023
            android.view.View r4 = r5.mBehaviorTouchView
            r0.onTouchEvent(r5, r4, r6)
        L_0x0023:
            android.view.View r0 = r5.mBehaviorTouchView
            if (r0 != 0) goto L_0x0037
            boolean r0 = super.onTouchEvent(r6)
            r2 = r0 | 0
        L_0x002d:
            r0 = 1
            if (r3 == r0) goto L_0x0033
            r0 = 3
            if (r3 != r0) goto L_0x0036
        L_0x0033:
            r5.resetTouchBehaviors()
        L_0x0036:
            return r2
        L_0x0037:
            if (r1 == 0) goto L_0x002d
            r0 = 0
            super.onTouchEvent(r0)
            goto L_0x002d
        L_0x003e:
            r1 = r0
            goto L_0x0023
        L_0x0040:
            r1 = r2
            goto L_0x0010
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* access modifiers changed from: package-private */
    public void recordLastChildRect(View view, Rect rect) {
        ((LayoutParams) view.getLayoutParams()).setLastChildRect(rect);
    }

    /* access modifiers changed from: package-private */
    public void removePreDrawListener() {
        if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = false;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            resetTouchBehaviors();
        }
    }

    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.mStatusBarBackground = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? e.getDrawable(getContext(), i) : null);
    }
}
