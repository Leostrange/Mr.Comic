package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.RadioButton;
import defpackage.cv;

public class AppCompatRadioButton extends RadioButton {
    private static final int[] a = {16843015};
    private er b;
    private Drawable c;

    public AppCompatRadioButton(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cv.a.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (er.a) {
            es a2 = es.a(getContext(), attributeSet, a, i);
            setButtonDrawable(a2.a(0));
            a2.a.recycle();
            this.b = a2.a();
        }
    }

    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        return (Build.VERSION.SDK_INT >= 17 || this.c == null) ? compoundPaddingLeft : compoundPaddingLeft + this.c.getIntrinsicWidth();
    }

    public void setButtonDrawable(int i) {
        if (this.b != null) {
            setButtonDrawable(this.b.a(i, false));
        } else {
            super.setButtonDrawable(i);
        }
    }

    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        this.c = drawable;
    }
}
