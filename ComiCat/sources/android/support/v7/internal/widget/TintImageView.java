package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

public class TintImageView extends ImageView {
    private static final int[] a = {16842964, 16843033};
    private final er b;

    public TintImageView(Context context) {
        this(context, (AttributeSet) null);
    }

    public TintImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TintImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        es a2 = es.a(getContext(), attributeSet, a, i);
        if (a2.a.length() > 0) {
            if (a2.d(0)) {
                setBackgroundDrawable(a2.a(0));
            }
            if (a2.d(1)) {
                setImageDrawable(a2.a(1));
            }
        }
        a2.a.recycle();
        this.b = a2.a();
    }

    public void setImageResource(int i) {
        setImageDrawable(this.b.a(i, false));
    }
}
