package meanlabs.comicreader.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class ThumbnailItemView extends RelativeLayout {
    int a;

    public ThumbnailItemView(Context context) {
        super(context);
    }

    public ThumbnailItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ThumbnailItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(getMeasuredWidth(), this.a);
    }

    public void setHeight(int i) {
        this.a = i;
    }
}
