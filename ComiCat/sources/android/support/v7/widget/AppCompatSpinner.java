package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListPopupWindow;
import android.widget.Spinner;
import defpackage.cv;
import java.lang.reflect.Field;

public class AppCompatSpinner extends Spinner {
    private static final int[] a = {16842964, 16843126};
    private eq b;
    private eq c;
    private er d;

    public AppCompatSpinner(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cv.a.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList a2;
        if (er.a) {
            es a3 = es.a(getContext(), attributeSet, a, i);
            if (a3.d(0) && (a2 = a3.a().a(a3.e(0, -1))) != null) {
                setInternalBackgroundTint(a2);
            }
            if (a3.d(1)) {
                Drawable a4 = a3.a(1);
                if (Build.VERSION.SDK_INT >= 16) {
                    setPopupBackgroundDrawable(a4);
                } else if (Build.VERSION.SDK_INT >= 11) {
                    try {
                        Field declaredField = Spinner.class.getDeclaredField("mPopup");
                        declaredField.setAccessible(true);
                        Object obj = declaredField.get(this);
                        if (obj instanceof ListPopupWindow) {
                            ((ListPopupWindow) obj).setBackgroundDrawable(a4);
                        }
                    } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            this.d = a3.a();
            a3.a.recycle();
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
}
