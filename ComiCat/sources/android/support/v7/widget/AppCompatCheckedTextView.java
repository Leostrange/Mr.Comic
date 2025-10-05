package android.support.v7.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

public class AppCompatCheckedTextView extends CheckedTextView {
    private static final int[] a = {16843016};
    private er b;

    public AppCompatCheckedTextView(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (er.a) {
            es a2 = es.a(getContext(), attributeSet, a, i);
            setCheckMarkDrawable(a2.a(0));
            a2.a.recycle();
            this.b = a2.a();
        }
    }

    public void setCheckMarkDrawable(int i) {
        if (this.b != null) {
            setCheckMarkDrawable(this.b.a(i, false));
        } else {
            super.setCheckMarkDrawable(i);
        }
    }
}
