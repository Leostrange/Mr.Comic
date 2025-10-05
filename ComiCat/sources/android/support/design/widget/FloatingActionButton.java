package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.Snackbar;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import defpackage.a;
import java.util.List;

@CoordinatorLayout.DefaultBehavior(Behavior.class)
public class FloatingActionButton extends ImageView {
    private static final int SIZE_MINI = 1;
    private static final int SIZE_NORMAL = 0;
    private ColorStateList mBackgroundTint;
    private PorterDuff.Mode mBackgroundTintMode;
    private int mBorderWidth;
    /* access modifiers changed from: private */
    public int mContentPadding;
    private final FloatingActionButtonImpl mImpl;
    private int mRippleColor;
    /* access modifiers changed from: private */
    public final Rect mShadowPadding;
    private int mSize;

    public static class Behavior extends CoordinatorLayout.Behavior<FloatingActionButton> {
        private static final boolean SNACKBAR_BEHAVIOR_ENABLED = (Build.VERSION.SDK_INT >= 11);
        private Rect mTmpRect;
        private float mTranslationY;

        private float getFabTranslationYForSnackbar(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            float f = 0.0f;
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            int i = 0;
            while (i < size) {
                View view = dependencies.get(i);
                i++;
                f = (!(view instanceof Snackbar.SnackbarLayout) || !coordinatorLayout.doViewsOverlap(floatingActionButton, view)) ? f : Math.min(f, bh.p(view) - ((float) view.getHeight()));
            }
            return f;
        }

        private void offsetIfNeeded(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            int i = 0;
            Rect access$000 = floatingActionButton.mShadowPadding;
            if (access$000 != null && access$000.centerX() > 0 && access$000.centerY() > 0) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
                int i2 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - layoutParams.rightMargin ? access$000.right : floatingActionButton.getLeft() <= layoutParams.leftMargin ? -access$000.left : 0;
                if (floatingActionButton.getBottom() >= coordinatorLayout.getBottom() - layoutParams.bottomMargin) {
                    i = access$000.bottom;
                } else if (floatingActionButton.getTop() <= layoutParams.topMargin) {
                    i = -access$000.top;
                }
                floatingActionButton.offsetTopAndBottom(i);
                floatingActionButton.offsetLeftAndRight(i2);
            }
        }

        private void updateFabTranslationForSnackbar(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (floatingActionButton.getVisibility() == 0) {
                float fabTranslationYForSnackbar = getFabTranslationYForSnackbar(coordinatorLayout, floatingActionButton);
                if (fabTranslationYForSnackbar != this.mTranslationY) {
                    bh.s(floatingActionButton).a();
                    bh.b((View) floatingActionButton, fabTranslationYForSnackbar);
                    this.mTranslationY = fabTranslationYForSnackbar;
                }
            }
        }

        private boolean updateFabVisibility(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).getAnchorId() != appBarLayout.getId()) {
                return false;
            }
            if (this.mTmpRect == null) {
                this.mTmpRect = new Rect();
            }
            Rect rect = this.mTmpRect;
            ViewGroupUtils.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.hide();
            } else {
                floatingActionButton.show();
            }
            return true;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return SNACKBAR_BEHAVIOR_ENABLED && (view instanceof Snackbar.SnackbarLayout);
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof Snackbar.SnackbarLayout) {
                updateFabTranslationForSnackbar(coordinatorLayout, floatingActionButton, view);
                return false;
            } else if (!(view instanceof AppBarLayout)) {
                return false;
            } else {
                updateFabVisibility(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof Snackbar.SnackbarLayout) {
                bh.s(floatingActionButton).c(0.0f).a(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).a((bt) null);
            }
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = dependencies.get(i2);
                if ((view instanceof AppBarLayout) && updateFabVisibility(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i);
            offsetIfNeeded(coordinatorLayout, floatingActionButton);
            return true;
        }
    }

    public FloatingActionButton(Context context) {
        this(context, (AttributeSet) null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mShadowPadding = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.FloatingActionButton, i, a.g.Widget_Design_FloatingActionButton);
        Drawable drawable = obtainStyledAttributes.getDrawable(a.h.FloatingActionButton_android_background);
        this.mBackgroundTint = obtainStyledAttributes.getColorStateList(a.h.FloatingActionButton_backgroundTint);
        this.mBackgroundTintMode = parseTintMode(obtainStyledAttributes.getInt(a.h.FloatingActionButton_backgroundTintMode, -1), (PorterDuff.Mode) null);
        this.mRippleColor = obtainStyledAttributes.getColor(a.h.FloatingActionButton_rippleColor, 0);
        this.mSize = obtainStyledAttributes.getInt(a.h.FloatingActionButton_fabSize, 0);
        this.mBorderWidth = obtainStyledAttributes.getDimensionPixelSize(a.h.FloatingActionButton_borderWidth, 0);
        float dimension = obtainStyledAttributes.getDimension(a.h.FloatingActionButton_elevation, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(a.h.FloatingActionButton_pressedTranslationZ, 0.0f);
        obtainStyledAttributes.recycle();
        AnonymousClass1 r0 = new ShadowViewDelegate() {
            public float getRadius() {
                return ((float) FloatingActionButton.this.getSizeDimension()) / 2.0f;
            }

            public void setBackgroundDrawable(Drawable drawable) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }

            public void setShadowPadding(int i, int i2, int i3, int i4) {
                FloatingActionButton.this.mShadowPadding.set(i, i2, i3, i4);
                FloatingActionButton.this.setPadding(FloatingActionButton.this.mContentPadding + i, FloatingActionButton.this.mContentPadding + i2, FloatingActionButton.this.mContentPadding + i3, FloatingActionButton.this.mContentPadding + i4);
            }
        };
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            this.mImpl = new FloatingActionButtonLollipop(this, r0);
        } else if (i2 >= 12) {
            this.mImpl = new FloatingActionButtonHoneycombMr1(this, r0);
        } else {
            this.mImpl = new FloatingActionButtonEclairMr1(this, r0);
        }
        this.mContentPadding = (getSizeDimension() - ((int) getResources().getDimension(a.d.fab_content_size))) / 2;
        this.mImpl.setBackgroundDrawable(drawable, this.mBackgroundTint, this.mBackgroundTintMode, this.mRippleColor, this.mBorderWidth);
        this.mImpl.setElevation(dimension);
        this.mImpl.setPressedTranslationZ(dimension2);
        setClickable(true);
    }

    static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        switch (i) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            default:
                return mode;
        }
    }

    private static int resolveAdjustedSize(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        switch (mode) {
            case Integer.MIN_VALUE:
                return Math.min(i, size);
            case 1073741824:
                return size;
            default:
                return i;
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.mImpl.onDrawableStateChanged(getDrawableState());
    }

    public ColorStateList getBackgroundTintList() {
        return this.mBackgroundTint;
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        return this.mBackgroundTintMode;
    }

    /* access modifiers changed from: package-private */
    public final int getSizeDimension() {
        switch (this.mSize) {
            case 1:
                return getResources().getDimensionPixelSize(a.d.fab_size_mini);
            default:
                return getResources().getDimensionPixelSize(a.d.fab_size_normal);
        }
    }

    public void hide() {
        if (getVisibility() == 0) {
            if (!bh.C(this) || isInEditMode()) {
                setVisibility(8);
            } else {
                this.mImpl.hide();
            }
        }
    }

    @TargetApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.mImpl.jumpDrawableToCurrentState();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        int min = Math.min(resolveAdjustedSize(sizeDimension, i), resolveAdjustedSize(sizeDimension, i2));
        setMeasuredDimension(this.mShadowPadding.left + min + this.mShadowPadding.right, min + this.mShadowPadding.top + this.mShadowPadding.bottom);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (this.mImpl != null) {
            this.mImpl.setBackgroundDrawable(drawable, this.mBackgroundTint, this.mBackgroundTintMode, this.mRippleColor, this.mBorderWidth);
        }
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.mImpl.setBackgroundTintList(colorStateList);
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.mImpl.setBackgroundTintMode(mode);
    }

    public void setRippleColor(int i) {
        if (this.mRippleColor != i) {
            this.mRippleColor = i;
            this.mImpl.setRippleColor(i);
        }
    }

    public void show() {
        if (getVisibility() != 0) {
            setVisibility(0);
            if (bh.C(this)) {
                this.mImpl.show();
            }
        }
    }
}
