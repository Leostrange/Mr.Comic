package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.CompoundButton;
import defpackage.cv;
import org.apache.http.message.TokenParser;

public class SwitchCompat extends CompoundButton {
    private static final int[] F = {16842912};
    private Layout A;
    private TransformationMethod B;
    private Animation C;
    private final Rect D;
    private final er E;
    private Drawable a;
    private Drawable b;
    private int c;
    private int d;
    private int e;
    private boolean f;
    private CharSequence g;
    private CharSequence h;
    private boolean i;
    private int j;
    private int k;
    private float l;
    private float m;
    private VelocityTracker n;
    private int o;
    private float p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private TextPaint x;
    private ColorStateList y;
    private Layout z;

    public SwitchCompat(Context context) {
        this(context, (AttributeSet) null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cv.a.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.n = VelocityTracker.obtain();
        this.D = new Rect();
        this.x = new TextPaint(1);
        Resources resources = getResources();
        this.x.density = resources.getDisplayMetrics().density;
        es a2 = es.a(context, attributeSet, cv.k.SwitchCompat, i2);
        this.a = a2.a(cv.k.SwitchCompat_android_thumb);
        if (this.a != null) {
            this.a.setCallback(this);
        }
        this.b = a2.a(cv.k.SwitchCompat_track);
        if (this.b != null) {
            this.b.setCallback(this);
        }
        this.g = a2.c(cv.k.SwitchCompat_android_textOn);
        this.h = a2.c(cv.k.SwitchCompat_android_textOff);
        this.i = a2.a(cv.k.SwitchCompat_showText, true);
        this.c = a2.c(cv.k.SwitchCompat_thumbTextPadding, 0);
        this.d = a2.c(cv.k.SwitchCompat_switchMinWidth, 0);
        this.e = a2.c(cv.k.SwitchCompat_switchPadding, 0);
        this.f = a2.a(cv.k.SwitchCompat_splitTrack, false);
        int e2 = a2.e(cv.k.SwitchCompat_switchTextAppearance, 0);
        if (e2 != 0) {
            setSwitchTextAppearance(context, e2);
        }
        this.E = a2.a();
        a2.a.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.k = viewConfiguration.getScaledTouchSlop();
        this.o = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    private Layout a(CharSequence charSequence) {
        CharSequence transformation = this.B != null ? this.B.getTransformation(charSequence, this) : charSequence;
        return new StaticLayout(transformation, this.x, transformation != null ? (int) Math.ceil((double) Layout.getDesiredWidth(transformation, this.x)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private boolean getTargetCheckedState() {
        return this.p > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((eu.a(this) ? 1.0f - this.p : this.p) * ((float) getThumbScrollRange())) + 0.5f);
    }

    private int getThumbScrollRange() {
        if (this.b == null) {
            return 0;
        }
        Rect rect = this.D;
        this.b.getPadding(rect);
        Rect a2 = this.a != null ? ek.a(this.a) : ek.a;
        return ((((this.q - this.s) - rect.left) - rect.right) - a2.left) - a2.right;
    }

    /* access modifiers changed from: private */
    public void setThumbPosition(float f2) {
        this.p = f2;
        invalidate();
    }

    public void draw(Canvas canvas) {
        int i2;
        int i3;
        int i4;
        Rect rect = this.D;
        int i5 = this.t;
        int i6 = this.u;
        int i7 = this.v;
        int i8 = this.w;
        int thumbOffset = i5 + getThumbOffset();
        Rect a2 = this.a != null ? ek.a(this.a) : ek.a;
        if (this.b != null) {
            this.b.getPadding(rect);
            int i9 = rect.left + thumbOffset;
            if (a2 == null || a2.isEmpty()) {
                i3 = i8;
                i4 = i6;
            } else {
                if (a2.left > rect.left) {
                    i5 += a2.left - rect.left;
                }
                i4 = a2.top > rect.top ? (a2.top - rect.top) + i6 : i6;
                if (a2.right > rect.right) {
                    i7 -= a2.right - rect.right;
                }
                i3 = a2.bottom > rect.bottom ? i8 - (a2.bottom - rect.bottom) : i8;
            }
            this.b.setBounds(i5, i4, i7, i3);
            i2 = i9;
        } else {
            i2 = thumbOffset;
        }
        if (this.a != null) {
            this.a.getPadding(rect);
            int i10 = i2 - rect.left;
            int i11 = i2 + this.s + rect.right;
            this.a.setBounds(i10, i6, i11, i8);
            Drawable background = getBackground();
            if (background != null) {
                i.a(background, i10, i6, i11, i8);
            }
        }
        super.draw(canvas);
    }

    public void drawableHotspotChanged(float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f2, f3);
        }
        if (this.a != null) {
            i.a(this.a, f2, f3);
        }
        if (this.b != null) {
            i.a(this.b, f2, f3);
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        if (this.a != null) {
            this.a.setState(drawableState);
        }
        if (this.b != null) {
            this.b.setState(drawableState);
        }
        invalidate();
    }

    public int getCompoundPaddingLeft() {
        if (!eu.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.q;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.e : compoundPaddingLeft;
    }

    public int getCompoundPaddingRight() {
        if (eu.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.q;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.e : compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.i;
    }

    public boolean getSplitTrack() {
        return this.f;
    }

    public int getSwitchMinWidth() {
        return this.d;
    }

    public int getSwitchPadding() {
        return this.e;
    }

    public CharSequence getTextOff() {
        return this.h;
    }

    public CharSequence getTextOn() {
        return this.g;
    }

    public Drawable getThumbDrawable() {
        return this.a;
    }

    public int getThumbTextPadding() {
        return this.c;
    }

    public Drawable getTrackDrawable() {
        return this.b;
    }

    public void jumpDrawablesToCurrentState() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.jumpDrawablesToCurrentState();
            if (this.a != null) {
                this.a.jumpToCurrentState();
            }
            if (this.b != null) {
                this.b.jumpToCurrentState();
            }
            if (this.C != null && !this.C.hasEnded()) {
                clearAnimation();
                this.C = null;
            }
        }
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, F);
        }
        return onCreateDrawableState;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.D;
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.u;
        int i3 = this.w;
        int i4 = i2 + rect.top;
        int i5 = i3 - rect.bottom;
        Drawable drawable2 = this.a;
        if (drawable != null) {
            if (!this.f || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect a2 = ek.a(drawable2);
                drawable2.copyBounds(rect);
                rect.left += a2.left;
                rect.right -= a2.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.z : this.A;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            if (this.y != null) {
                this.x.setColor(this.y.getColorForState(drawableState, 0));
            }
            this.x.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.right + bounds.left;
            } else {
                width = getWidth();
            }
            canvas.translate((float) ((width / 2) - (layout.getWidth() / 2)), (float) (((i4 + i5) / 2) - (layout.getHeight() / 2)));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("android.widget.Switch");
            CharSequence charSequence = isChecked() ? this.g : this.h;
            if (!TextUtils.isEmpty(charSequence)) {
                CharSequence text = accessibilityNodeInfo.getText();
                if (TextUtils.isEmpty(text)) {
                    accessibilityNodeInfo.setText(charSequence);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(text).append(TokenParser.SP).append(charSequence);
                accessibilityNodeInfo.setText(sb);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int height;
        int i9;
        int i10 = 0;
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.a != null) {
            Rect rect = this.D;
            if (this.b != null) {
                this.b.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect a2 = ek.a(this.a);
            i6 = Math.max(0, a2.left - rect.left);
            i10 = Math.max(0, a2.right - rect.right);
        } else {
            i6 = 0;
        }
        if (eu.a(this)) {
            int paddingLeft = getPaddingLeft() + i6;
            i8 = ((this.q + paddingLeft) - i6) - i10;
            i7 = paddingLeft;
        } else {
            int width = (getWidth() - getPaddingRight()) - i10;
            i7 = i10 + i6 + (width - this.q);
            i8 = width;
        }
        switch (getGravity() & 112) {
            case 16:
                i9 = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (this.r / 2);
                height = this.r + i9;
                break;
            case 80:
                height = getHeight() - getPaddingBottom();
                i9 = height - this.r;
                break;
            default:
                i9 = getPaddingTop();
                height = this.r + i9;
                break;
        }
        this.t = i7;
        this.u = i9;
        this.w = height;
        this.v = i8;
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6 = 0;
        if (this.i) {
            if (this.z == null) {
                this.z = a(this.g);
            }
            if (this.A == null) {
                this.A = a(this.h);
            }
        }
        Rect rect = this.D;
        if (this.a != null) {
            this.a.getPadding(rect);
            i5 = (this.a.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.a.getIntrinsicHeight();
        } else {
            i4 = 0;
            i5 = 0;
        }
        this.s = Math.max(this.i ? Math.max(this.z.getWidth(), this.A.getWidth()) + (this.c * 2) : 0, i5);
        if (this.b != null) {
            this.b.getPadding(rect);
            i6 = this.b.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i7 = rect.left;
        int i8 = rect.right;
        if (this.a != null) {
            Rect a2 = ek.a(this.a);
            i7 = Math.max(i7, a2.left);
            i8 = Math.max(i8, a2.right);
        }
        int max = Math.max(this.d, i7 + (this.s * 2) + i8);
        int max2 = Math.max(i6, i4);
        this.q = max;
        this.r = max2;
        super.onMeasure(i2, i3);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(bh.k(this), max2);
        }
    }

    @TargetApi(14)
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.g : this.h;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        float f2 = 1.0f;
        boolean z3 = false;
        this.n.addMovement(motionEvent);
        switch (ax.a(motionEvent)) {
            case 0:
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                if (isEnabled()) {
                    if (this.a != null) {
                        int thumbOffset = getThumbOffset();
                        this.a.getPadding(this.D);
                        int i2 = this.u - this.k;
                        int i3 = (thumbOffset + this.t) - this.k;
                        int i4 = this.s + i3 + this.D.left + this.D.right + this.k;
                        int i5 = this.w + this.k;
                        if (x2 > ((float) i3) && x2 < ((float) i4) && y2 > ((float) i2) && y2 < ((float) i5)) {
                            z3 = true;
                        }
                    }
                    if (z3) {
                        this.j = 1;
                        this.l = x2;
                        this.m = y2;
                        break;
                    }
                }
                break;
            case 1:
            case 3:
                if (this.j != 2) {
                    this.j = 0;
                    this.n.clear();
                    break;
                } else {
                    this.j = 0;
                    boolean z4 = motionEvent.getAction() == 1 && isEnabled();
                    boolean isChecked = isChecked();
                    if (z4) {
                        this.n.computeCurrentVelocity(1000);
                        float xVelocity = this.n.getXVelocity();
                        z2 = Math.abs(xVelocity) > ((float) this.o) ? eu.a(this) ? xVelocity < 0.0f : xVelocity > 0.0f : getTargetCheckedState();
                    } else {
                        z2 = isChecked;
                    }
                    if (z2 != isChecked) {
                        playSoundEffect(0);
                        setChecked(z2);
                    }
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.setAction(3);
                    super.onTouchEvent(obtain);
                    obtain.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
            case 2:
                switch (this.j) {
                    case 1:
                        float x3 = motionEvent.getX();
                        float y3 = motionEvent.getY();
                        if (Math.abs(x3 - this.l) > ((float) this.k) || Math.abs(y3 - this.m) > ((float) this.k)) {
                            this.j = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            this.l = x3;
                            this.m = y3;
                            return true;
                        }
                    case 2:
                        float x4 = motionEvent.getX();
                        int thumbScrollRange = getThumbScrollRange();
                        float f3 = x4 - this.l;
                        float f4 = thumbScrollRange != 0 ? f3 / ((float) thumbScrollRange) : f3 > 0.0f ? 1.0f : -1.0f;
                        if (eu.a(this)) {
                            f4 = -f4;
                        }
                        float f5 = f4 + this.p;
                        if (f5 < 0.0f) {
                            f2 = 0.0f;
                        } else if (f5 <= 1.0f) {
                            f2 = f5;
                        }
                        if (f2 == this.p) {
                            return true;
                        }
                        this.l = x4;
                        setThumbPosition(f2);
                        return true;
                }
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setChecked(boolean z2) {
        float f2 = 1.0f;
        super.setChecked(z2);
        boolean isChecked = isChecked();
        if (getWindowToken() == null || !bh.C(this)) {
            if (this.C != null) {
                clearAnimation();
                this.C = null;
            }
            if (!isChecked) {
                f2 = 0.0f;
            }
            setThumbPosition(f2);
            return;
        }
        final float f3 = this.p;
        if (!isChecked) {
            f2 = 0.0f;
        }
        final float f4 = f2 - f3;
        this.C = new Animation() {
            /* access modifiers changed from: protected */
            public final void applyTransformation(float f, Transformation transformation) {
                SwitchCompat.this.setThumbPosition(f3 + (f4 * f));
            }
        };
        this.C.setDuration(250);
        startAnimation(this.C);
    }

    public void setShowText(boolean z2) {
        if (this.i != z2) {
            this.i = z2;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z2) {
        this.f = z2;
        invalidate();
    }

    public void setSwitchMinWidth(int i2) {
        this.d = i2;
        requestLayout();
    }

    public void setSwitchPadding(int i2) {
        this.e = i2;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i2) {
        Typeface typeface;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, cv.k.TextAppearance);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(cv.k.TextAppearance_android_textColor);
        if (colorStateList != null) {
            this.y = colorStateList;
        } else {
            this.y = getTextColors();
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(cv.k.TextAppearance_android_textSize, 0);
        if (!(dimensionPixelSize == 0 || ((float) dimensionPixelSize) == this.x.getTextSize())) {
            this.x.setTextSize((float) dimensionPixelSize);
            requestLayout();
        }
        int i3 = obtainStyledAttributes.getInt(cv.k.TextAppearance_android_typeface, -1);
        int i4 = obtainStyledAttributes.getInt(cv.k.TextAppearance_android_textStyle, -1);
        switch (i3) {
            case 1:
                typeface = Typeface.SANS_SERIF;
                break;
            case 2:
                typeface = Typeface.SERIF;
                break;
            case 3:
                typeface = Typeface.MONOSPACE;
                break;
            default:
                typeface = null;
                break;
        }
        setSwitchTypeface(typeface, i4);
        if (obtainStyledAttributes.getBoolean(cv.k.TextAppearance_textAllCaps, false)) {
            this.B = new df(getContext());
        } else {
            this.B = null;
        }
        obtainStyledAttributes.recycle();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if (this.x.getTypeface() != typeface) {
            this.x.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setSwitchTypeface(Typeface typeface, int i2) {
        boolean z2 = false;
        if (i2 > 0) {
            Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i2) : Typeface.create(typeface, i2);
            setSwitchTypeface(defaultFromStyle);
            int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ -1) & i2;
            TextPaint textPaint = this.x;
            if ((style & 1) != 0) {
                z2 = true;
            }
            textPaint.setFakeBoldText(z2);
            this.x.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
            return;
        }
        this.x.setFakeBoldText(false);
        this.x.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    public void setTextOff(CharSequence charSequence) {
        this.h = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.g = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        this.a = drawable;
        requestLayout();
    }

    public void setThumbResource(int i2) {
        setThumbDrawable(this.E.a(i2, false));
    }

    public void setThumbTextPadding(int i2) {
        this.c = i2;
        requestLayout();
    }

    public void setTrackDrawable(Drawable drawable) {
        this.b = drawable;
        requestLayout();
    }

    public void setTrackResource(int i2) {
        setTrackDrawable(this.E.a(i2, false));
    }

    public void toggle() {
        setChecked(!isChecked());
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.a || drawable == this.b;
    }
}
