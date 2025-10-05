package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.SnackbarManager;
import android.support.design.widget.SwipeDismissBehavior;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class Snackbar {
    private static final int ANIMATION_DURATION = 250;
    private static final int ANIMATION_FADE_DURATION = 180;
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;
    private static final int MSG_DISMISS = 1;
    private static final int MSG_SHOW = 0;
    /* access modifiers changed from: private */
    public static final Handler sHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() {
        public final boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    ((Snackbar) message.obj).showView();
                    return true;
                case 1:
                    ((Snackbar) message.obj).hideView();
                    return true;
                default:
                    return false;
            }
        }
    });
    private final Context mContext;
    private int mDuration;
    /* access modifiers changed from: private */
    public final SnackbarManager.Callback mManagerCallback = new SnackbarManager.Callback() {
        public void dismiss() {
            Snackbar.sHandler.sendMessage(Snackbar.sHandler.obtainMessage(1, Snackbar.this));
        }

        public void show() {
            Snackbar.sHandler.sendMessage(Snackbar.sHandler.obtainMessage(0, Snackbar.this));
        }
    };
    private final ViewGroup mParent;
    /* access modifiers changed from: private */
    public final SnackbarLayout mView;

    final class Behavior extends SwipeDismissBehavior<SnackbarLayout> {
        Behavior() {
        }

        public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, SnackbarLayout snackbarLayout, MotionEvent motionEvent) {
            if (coordinatorLayout.isPointInChildBounds(snackbarLayout, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                switch (motionEvent.getActionMasked()) {
                    case 0:
                        SnackbarManager.getInstance().cancelTimeout(Snackbar.this.mManagerCallback);
                        break;
                    case 1:
                    case 3:
                        SnackbarManager.getInstance().restoreTimeout(Snackbar.this.mManagerCallback);
                        break;
                }
            }
            return super.onInterceptTouchEvent(coordinatorLayout, snackbarLayout, motionEvent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Duration {
    }

    public static class SnackbarLayout extends LinearLayout {
        private TextView mActionView;
        private int mMaxInlineActionWidth;
        private int mMaxWidth;
        private TextView mMessageView;
        private OnLayoutChangeListener mOnLayoutChangeListener;

        interface OnLayoutChangeListener {
            void onLayoutChange(View view, int i, int i2, int i3, int i4);
        }

        public SnackbarLayout(Context context) {
            this(context, (AttributeSet) null);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.SnackbarLayout);
            this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(a.h.SnackbarLayout_android_maxWidth, -1);
            this.mMaxInlineActionWidth = obtainStyledAttributes.getDimensionPixelSize(a.h.SnackbarLayout_maxActionInlineWidth, -1);
            if (obtainStyledAttributes.hasValue(a.h.SnackbarLayout_elevation)) {
                bh.f(this, (float) obtainStyledAttributes.getDimensionPixelSize(a.h.SnackbarLayout_elevation, 0));
            }
            obtainStyledAttributes.recycle();
            setClickable(true);
            LayoutInflater.from(context).inflate(a.f.layout_snackbar_include, this);
        }

        private static void updateTopBottomPadding(View view, int i, int i2) {
            if (bh.A(view)) {
                bh.b(view, bh.m(view), i, bh.n(view), i2);
            } else {
                view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
            }
        }

        private boolean updateViewsWithinLayout(int i, int i2, int i3) {
            boolean z = false;
            if (i != getOrientation()) {
                setOrientation(i);
                z = true;
            }
            if (this.mMessageView.getPaddingTop() == i2 && this.mMessageView.getPaddingBottom() == i3) {
                return z;
            }
            updateTopBottomPadding(this.mMessageView, i2, i3);
            return true;
        }

        /* access modifiers changed from: package-private */
        public void animateChildrenIn(int i, int i2) {
            bh.c((View) this.mMessageView, 0.0f);
            bh.s(this.mMessageView).a(1.0f).a((long) i2).b((long) i).b();
            if (this.mActionView.getVisibility() == 0) {
                bh.c((View) this.mActionView, 0.0f);
                bh.s(this.mActionView).a(1.0f).a((long) i2).b((long) i).b();
            }
        }

        /* access modifiers changed from: package-private */
        public void animateChildrenOut(int i, int i2) {
            bh.c((View) this.mMessageView, 1.0f);
            bh.s(this.mMessageView).a(0.0f).a((long) i2).b((long) i).b();
            if (this.mActionView.getVisibility() == 0) {
                bh.c((View) this.mActionView, 1.0f);
                bh.s(this.mActionView).a(0.0f).a((long) i2).b((long) i).b();
            }
        }

        /* access modifiers changed from: package-private */
        public TextView getActionView() {
            return this.mActionView;
        }

        /* access modifiers changed from: package-private */
        public TextView getMessageView() {
            return this.mMessageView;
        }

        /* access modifiers changed from: protected */
        public void onFinishInflate() {
            super.onFinishInflate();
            this.mMessageView = (TextView) findViewById(a.e.snackbar_text);
            this.mActionView = (TextView) findViewById(a.e.snackbar_action);
        }

        /* access modifiers changed from: protected */
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (z && this.mOnLayoutChangeListener != null) {
                this.mOnLayoutChangeListener.onLayoutChange(this, i, i2, i3, i4);
            }
        }

        /* access modifiers changed from: protected */
        public void onMeasure(int i, int i2) {
            boolean z;
            super.onMeasure(i, i2);
            if (this.mMaxWidth > 0 && getMeasuredWidth() > this.mMaxWidth) {
                i = View.MeasureSpec.makeMeasureSpec(this.mMaxWidth, 1073741824);
                super.onMeasure(i, i2);
            }
            int dimensionPixelSize = getResources().getDimensionPixelSize(a.d.snackbar_padding_vertical_2lines);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(a.d.snackbar_padding_vertical);
            boolean z2 = this.mMessageView.getLayout().getLineCount() > 1;
            if (!z2 || this.mMaxInlineActionWidth <= 0 || this.mActionView.getMeasuredWidth() <= this.mMaxInlineActionWidth) {
                if (!z2) {
                    dimensionPixelSize = dimensionPixelSize2;
                }
                if (updateViewsWithinLayout(0, dimensionPixelSize, dimensionPixelSize)) {
                    z = true;
                }
                z = false;
            } else {
                if (updateViewsWithinLayout(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                    z = true;
                }
                z = false;
            }
            if (z) {
                super.onMeasure(i, i2);
            }
        }

        /* access modifiers changed from: package-private */
        public void setOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
            this.mOnLayoutChangeListener = onLayoutChangeListener;
        }
    }

    Snackbar(ViewGroup viewGroup) {
        this.mParent = viewGroup;
        this.mContext = viewGroup.getContext();
        this.mView = (SnackbarLayout) LayoutInflater.from(this.mContext).inflate(a.f.layout_snackbar, this.mParent, false);
    }

    /* access modifiers changed from: private */
    public void animateViewIn() {
        if (Build.VERSION.SDK_INT >= 14) {
            bh.b((View) this.mView, (float) this.mView.getHeight());
            bh.s(this.mView).c(0.0f).a(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).a(250).a((bt) new bu() {
                public void onAnimationEnd(View view) {
                    SnackbarManager.getInstance().onShown(Snackbar.this.mManagerCallback);
                }

                public void onAnimationStart(View view) {
                    Snackbar.this.mView.animateChildrenIn(70, Snackbar.ANIMATION_FADE_DURATION);
                }
            }).b();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(this.mView.getContext(), a.C0000a.snackbar_in);
        loadAnimation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        loadAnimation.setDuration(250);
        loadAnimation.setAnimationListener(new Animation.AnimationListener() {
            public void onAnimationEnd(Animation animation) {
                SnackbarManager.getInstance().onShown(Snackbar.this.mManagerCallback);
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
            }
        });
        this.mView.startAnimation(loadAnimation);
    }

    private void animateViewOut() {
        if (Build.VERSION.SDK_INT >= 14) {
            bh.s(this.mView).c((float) this.mView.getHeight()).a(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).a(250).a((bt) new bu() {
                public void onAnimationEnd(View view) {
                    Snackbar.this.onViewHidden();
                }

                public void onAnimationStart(View view) {
                    Snackbar.this.mView.animateChildrenOut(0, Snackbar.ANIMATION_FADE_DURATION);
                }
            }).b();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(this.mView.getContext(), a.C0000a.snackbar_out);
        loadAnimation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        loadAnimation.setDuration(250);
        loadAnimation.setAnimationListener(new Animation.AnimationListener() {
            public void onAnimationEnd(Animation animation) {
                Snackbar.this.onViewHidden();
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
            }
        });
        this.mView.startAnimation(loadAnimation);
    }

    private static ViewGroup findSuitableParent(View view) {
        ViewGroup viewGroup = null;
        View view2 = view;
        while (!(view2 instanceof CoordinatorLayout)) {
            if (view2 instanceof FrameLayout) {
                if (view2.getId() == 16908290) {
                    return (ViewGroup) view2;
                }
                viewGroup = (ViewGroup) view2;
            }
            if (view2 != null) {
                ViewParent parent = view2.getParent();
                if (parent instanceof View) {
                    view2 = (View) parent;
                    continue;
                } else {
                    view2 = null;
                    continue;
                }
            }
            if (view2 == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view2;
    }

    private boolean isBeingDragged() {
        ViewGroup.LayoutParams layoutParams = this.mView.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof SwipeDismissBehavior) {
                return ((SwipeDismissBehavior) behavior).getDragState() != 0;
            }
        }
        return false;
    }

    public static Snackbar make(View view, int i, int i2) {
        return make(view, view.getResources().getText(i), i2);
    }

    public static Snackbar make(View view, CharSequence charSequence, int i) {
        Snackbar snackbar = new Snackbar(findSuitableParent(view));
        snackbar.setText(charSequence);
        snackbar.setDuration(i);
        return snackbar;
    }

    /* access modifiers changed from: private */
    public void onViewHidden() {
        this.mParent.removeView(this.mView);
        SnackbarManager.getInstance().onDismissed(this.mManagerCallback);
    }

    public void dismiss() {
        SnackbarManager.getInstance().dismiss(this.mManagerCallback);
    }

    public int getDuration() {
        return this.mDuration;
    }

    public View getView() {
        return this.mView;
    }

    /* access modifiers changed from: package-private */
    public final void hideView() {
        if (this.mView.getVisibility() != 0 || isBeingDragged()) {
            onViewHidden();
        } else {
            animateViewOut();
        }
    }

    public Snackbar setAction(int i, View.OnClickListener onClickListener) {
        return setAction(this.mContext.getText(i), onClickListener);
    }

    public Snackbar setAction(CharSequence charSequence, final View.OnClickListener onClickListener) {
        TextView actionView = this.mView.getActionView();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            actionView.setVisibility(8);
            actionView.setOnClickListener((View.OnClickListener) null);
        } else {
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    onClickListener.onClick(view);
                    Snackbar.this.dismiss();
                }
            });
        }
        return this;
    }

    public Snackbar setActionTextColor(int i) {
        this.mView.getActionView().setTextColor(i);
        return this;
    }

    public Snackbar setActionTextColor(ColorStateList colorStateList) {
        this.mView.getActionView().setTextColor(colorStateList);
        return this;
    }

    public Snackbar setDuration(int i) {
        this.mDuration = i;
        return this;
    }

    public Snackbar setText(int i) {
        return setText(this.mContext.getText(i));
    }

    public Snackbar setText(CharSequence charSequence) {
        this.mView.getMessageView().setText(charSequence);
        return this;
    }

    public void show() {
        SnackbarManager.getInstance().show(this.mDuration, this.mManagerCallback);
    }

    /* access modifiers changed from: package-private */
    public final void showView() {
        if (this.mView.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.mView.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                Behavior behavior = new Behavior();
                behavior.setStartAlphaSwipeDistance(0.1f);
                behavior.setEndAlphaSwipeDistance(0.6f);
                behavior.setSwipeDirection(0);
                behavior.setListener(new SwipeDismissBehavior.OnDismissListener() {
                    public void onDismiss(View view) {
                        Snackbar.this.dismiss();
                    }

                    public void onDragStateChanged(int i) {
                        switch (i) {
                            case 0:
                                SnackbarManager.getInstance().restoreTimeout(Snackbar.this.mManagerCallback);
                                return;
                            case 1:
                            case 2:
                                SnackbarManager.getInstance().cancelTimeout(Snackbar.this.mManagerCallback);
                                return;
                            default:
                                return;
                        }
                    }
                });
                ((CoordinatorLayout.LayoutParams) layoutParams).setBehavior(behavior);
            }
            this.mParent.addView(this.mView);
        }
        if (bh.C(this.mView)) {
            animateViewIn();
        } else {
            this.mView.setOnLayoutChangeListener(new SnackbarLayout.OnLayoutChangeListener() {
                public void onLayoutChange(View view, int i, int i2, int i3, int i4) {
                    Snackbar.this.animateViewIn();
                    Snackbar.this.mView.setOnLayoutChangeListener((SnackbarLayout.OnLayoutChangeListener) null);
                }
            });
        }
    }
}
