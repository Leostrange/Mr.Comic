package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import defpackage.cv;

public class AppCompatButton extends Button {
    private static final int[] a = {16842964};
    private eq b;
    private eq c;
    private er d;

    public AppCompatButton(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cv.a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList a2;
        if (er.a) {
            es a3 = es.a(getContext(), attributeSet, a, i);
            if (a3.d(0) && (a2 = a3.a().a(a3.e(0, -1))) != null) {
                setInternalBackgroundTint(a2);
            }
            this.d = a3.a();
            a3.a.recycle();
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cv.k.AppCompatTextView, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(cv.k.AppCompatTextView_android_textAppearance, -1);
        obtainStyledAttributes.recycle();
        if (resourceId != -1) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, cv.k.TextAppearance);
            if (obtainStyledAttributes2.hasValue(cv.k.TextAppearance_textAllCaps)) {
                setAllCaps(obtainStyledAttributes2.getBoolean(cv.k.TextAppearance_textAllCaps, false));
            }
            obtainStyledAttributes2.recycle();
        }
        TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, cv.k.AppCompatTextView, i, 0);
        if (obtainStyledAttributes3.hasValue(cv.k.AppCompatTextView_textAllCaps)) {
            setAllCaps(obtainStyledAttributes3.getBoolean(cv.k.AppCompatTextView_textAllCaps, false));
        }
        obtainStyledAttributes3.recycle();
        ColorStateList textColors = getTextColors();
        if (textColors != null && !textColors.isStateful()) {
            setTextColor(eo.a(textColors.getDefaultColor(), Build.VERSION.SDK_INT < 21 ? eo.c(context, 16842808) : eo.a(context, 16842808)));
        }
    }

    private void a() {
        if (getBackground() == null) {
            return;
        }
        if (this.c != null) {
            er.a((View) this, this.c);
        } else if (this.b != null) {
            er.a((View) this, this.b);
        }
    }

    private void setInternalBackgroundTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.b == null) {
                this.b = new eq();
            }
            this.b.a = colorStateList;
            this.b.d = true;
        } else {
            this.b = null;
        }
        a();
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        a();
    }

    public ColorStateList getSupportBackgroundTintList() {
        if (this.c != null) {
            return this.c.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.c != null) {
            return this.c.b;
        }
        return null;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    public void setAllCaps(boolean z) {
        setTransformationMethod(z ? new df(getContext()) : null);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        setInternalBackgroundTint((ColorStateList) null);
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        setInternalBackgroundTint(this.d != null ? this.d.a(i) : null);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.c == null) {
            this.c = new eq();
        }
        this.c.a = colorStateList;
        this.c.d = true;
        a();
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.c == null) {
            this.c = new eq();
        }
        this.c.b = mode;
        this.c.c = true;
        a();
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, cv.k.TextAppearance);
        if (obtainStyledAttributes.hasValue(cv.k.TextAppearance_textAllCaps)) {
            setAllCaps(obtainStyledAttributes.getBoolean(cv.k.TextAppearance_textAllCaps, false));
        }
        obtainStyledAttributes.recycle();
    }
}
