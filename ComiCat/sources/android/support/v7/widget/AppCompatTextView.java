package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import defpackage.cv;

public class AppCompatTextView extends TextView {
    public AppCompatTextView(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
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
    }

    public void setAllCaps(boolean z) {
        setTransformationMethod(z ? new df(getContext()) : null);
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
