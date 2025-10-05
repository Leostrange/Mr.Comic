package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Message;
import android.support.design.widget.ValueAnimatorCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.a;

public class TextInputLayout extends LinearLayout {
    private static final int ANIMATION_DURATION = 200;
    private static final int MSG_UPDATE_LABEL = 0;
    private ValueAnimatorCompat mAnimator;
    /* access modifiers changed from: private */
    public final CollapsingTextHelper mCollapsingTextHelper;
    private int mDefaultTextColor;
    /* access modifiers changed from: private */
    public EditText mEditText;
    private boolean mErrorEnabled;
    private int mErrorTextAppearance;
    /* access modifiers changed from: private */
    public TextView mErrorView;
    private int mFocusedTextColor;
    /* access modifiers changed from: private */
    public final Handler mHandler;
    private CharSequence mHint;

    class TextInputAccessibilityDelegate extends al {
        private TextInputAccessibilityDelegate() {
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
        }

        public void onInitializeAccessibilityNodeInfo(View view, bz bzVar) {
            super.onInitializeAccessibilityNodeInfo(view, bzVar);
            bzVar.b((CharSequence) TextInputLayout.class.getSimpleName());
            CharSequence text = TextInputLayout.this.mCollapsingTextHelper.getText();
            if (!TextUtils.isEmpty(text)) {
                bz.a.e(bzVar.b, text);
            }
            if (TextInputLayout.this.mEditText != null) {
                bz.a.a(bzVar.b, (View) TextInputLayout.this.mEditText);
            }
            CharSequence text2 = TextInputLayout.this.mErrorView != null ? TextInputLayout.this.mErrorView.getText() : null;
            if (!TextUtils.isEmpty(text2)) {
                bz.a.v(bzVar.b);
                bz.a.a(bzVar.b, text2);
            }
        }

        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            CharSequence text = TextInputLayout.this.mCollapsingTextHelper.getText();
            if (!TextUtils.isEmpty(text)) {
                accessibilityEvent.getText().add(text);
            }
        }
    }

    public TextInputLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(1);
        setWillNotDraw(false);
        this.mCollapsingTextHelper = new CollapsingTextHelper(this);
        this.mHandler = new Handler(new Handler.Callback() {
            public boolean handleMessage(Message message) {
                switch (message.what) {
                    case 0:
                        TextInputLayout.this.updateLabelVisibility(true);
                        return true;
                    default:
                        return false;
                }
            }
        });
        this.mCollapsingTextHelper.setTextSizeInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        this.mCollapsingTextHelper.setPositionInterpolator(new AccelerateInterpolator());
        this.mCollapsingTextHelper.setCollapsedTextVerticalGravity(48);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.TextInputLayout, 0, a.g.Widget_Design_TextInputLayout);
        this.mHint = obtainStyledAttributes.getText(a.h.TextInputLayout_android_hint);
        int resourceId = obtainStyledAttributes.getResourceId(a.h.TextInputLayout_hintTextAppearance, -1);
        if (resourceId != -1) {
            this.mCollapsingTextHelper.setCollapsedTextAppearance(resourceId);
        }
        this.mErrorTextAppearance = obtainStyledAttributes.getResourceId(a.h.TextInputLayout_errorTextAppearance, 0);
        boolean z = obtainStyledAttributes.getBoolean(a.h.TextInputLayout_errorEnabled, false);
        this.mDefaultTextColor = getThemeAttrColor(16842906);
        this.mFocusedTextColor = this.mCollapsingTextHelper.getCollapsedTextColor();
        this.mCollapsingTextHelper.setCollapsedTextColor(this.mDefaultTextColor);
        this.mCollapsingTextHelper.setExpandedTextColor(this.mDefaultTextColor);
        obtainStyledAttributes.recycle();
        if (z) {
            setErrorEnabled(true);
        }
        if (bh.e(this) == 0) {
            bh.c((View) this, 1);
        }
        bh.a((View) this, (al) new TextInputAccessibilityDelegate());
    }

    private void animateToExpansionFraction(float f) {
        if (this.mAnimator == null) {
            this.mAnimator = ViewUtils.createAnimator();
            this.mAnimator.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
            this.mAnimator.setDuration(200);
            this.mAnimator.setUpdateListener(new ValueAnimatorCompat.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                    TextInputLayout.this.mCollapsingTextHelper.setExpansionFraction(valueAnimatorCompat.getAnimatedFloatValue());
                }
            });
        } else if (this.mAnimator.isRunning()) {
            this.mAnimator.cancel();
        }
        this.mAnimator.setFloatValues(this.mCollapsingTextHelper.getExpansionFraction(), f);
        this.mAnimator.start();
    }

    private void collapseHint(boolean z) {
        if (z) {
            animateToExpansionFraction(1.0f);
        } else {
            this.mCollapsingTextHelper.setExpansionFraction(1.0f);
        }
    }

    private void expandHint(boolean z) {
        if (z) {
            animateToExpansionFraction(0.0f);
        } else {
            this.mCollapsingTextHelper.setExpansionFraction(0.0f);
        }
    }

    private int getThemeAttrColor(int i) {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.data;
        }
        return -65281;
    }

    private LinearLayout.LayoutParams setEditText(EditText editText, ViewGroup.LayoutParams layoutParams) {
        if (this.mEditText != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        this.mEditText = editText;
        this.mCollapsingTextHelper.setExpandedTextSize(this.mEditText.getTextSize());
        this.mEditText.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
                TextInputLayout.this.mHandler.sendEmptyMessage(0);
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        this.mDefaultTextColor = this.mEditText.getHintTextColors().getDefaultColor();
        this.mEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                TextInputLayout.this.mHandler.sendEmptyMessage(0);
            }
        });
        if (TextUtils.isEmpty(this.mHint)) {
            setHint(this.mEditText.getHint());
            this.mEditText.setHint((CharSequence) null);
        }
        if (this.mErrorView != null) {
            bh.b(this.mErrorView, bh.m(this.mEditText), 0, bh.n(this.mEditText), this.mEditText.getPaddingBottom());
        }
        updateLabelVisibility(false);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams);
        Paint paint = new Paint();
        paint.setTextSize(this.mCollapsingTextHelper.getExpandedTextSize());
        layoutParams2.topMargin = (int) (-paint.ascent());
        return layoutParams2;
    }

    /* access modifiers changed from: private */
    public void updateLabelVisibility(boolean z) {
        boolean z2 = !TextUtils.isEmpty(this.mEditText.getText());
        boolean isFocused = this.mEditText.isFocused();
        this.mCollapsingTextHelper.setExpandedTextColor(this.mDefaultTextColor);
        this.mCollapsingTextHelper.setCollapsedTextColor(isFocused ? this.mFocusedTextColor : this.mDefaultTextColor);
        if (z2 || isFocused) {
            collapseHint(z);
        } else {
            expandHint(z);
        }
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            super.addView(view, 0, setEditText((EditText) view, layoutParams));
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        this.mCollapsingTextHelper.draw(canvas);
    }

    public EditText getEditText() {
        return this.mEditText;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mEditText != null) {
            int left = this.mEditText.getLeft() + this.mEditText.getCompoundPaddingLeft();
            int right = this.mEditText.getRight() - this.mEditText.getCompoundPaddingRight();
            this.mCollapsingTextHelper.setExpandedBounds(left, this.mEditText.getTop() + this.mEditText.getCompoundPaddingTop(), right, this.mEditText.getBottom() - this.mEditText.getCompoundPaddingBottom());
            this.mCollapsingTextHelper.setCollapsedBounds(left, getPaddingTop(), right, (i4 - i2) - getPaddingBottom());
            this.mCollapsingTextHelper.recalculate();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.mErrorEnabled) {
            if (!TextUtils.isEmpty(charSequence)) {
                setErrorEnabled(true);
            } else {
                return;
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.mErrorView.setText(charSequence);
            this.mErrorView.setVisibility(0);
            bh.c((View) this.mErrorView, 0.0f);
            bh.s(this.mErrorView).a(1.0f).a(200).a(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).a((bt) null).b();
        } else if (this.mErrorView.getVisibility() == 0) {
            bh.s(this.mErrorView).a(0.0f).a(200).a(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).a((bt) new bu() {
                public void onAnimationEnd(View view) {
                    TextInputLayout.this.mErrorView.setText((CharSequence) null);
                    TextInputLayout.this.mErrorView.setVisibility(4);
                }
            }).b();
        }
        sendAccessibilityEvent(2048);
    }

    public void setErrorEnabled(boolean z) {
        if (this.mErrorEnabled != z) {
            if (z) {
                this.mErrorView = new TextView(getContext());
                this.mErrorView.setTextAppearance(getContext(), this.mErrorTextAppearance);
                this.mErrorView.setVisibility(4);
                addView(this.mErrorView);
                if (this.mEditText != null) {
                    bh.b(this.mErrorView, bh.m(this.mEditText), 0, bh.n(this.mEditText), this.mEditText.getPaddingBottom());
                }
            } else {
                removeView(this.mErrorView);
                this.mErrorView = null;
            }
            this.mErrorEnabled = z;
        }
    }

    public void setHint(CharSequence charSequence) {
        this.mHint = charSequence;
        this.mCollapsingTextHelper.setText(charSequence);
        sendAccessibilityEvent(2048);
    }
}
