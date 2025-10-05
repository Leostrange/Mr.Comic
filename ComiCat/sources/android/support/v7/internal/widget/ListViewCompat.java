package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

public class ListViewCompat extends ListView {
    private static final int[] g = {0};
    protected final Rect a;
    protected int b;
    protected int c;
    protected int d;
    protected int e;
    protected Field f;
    private a h;

    static class a extends cz {
        boolean a = true;

        public a(Drawable drawable) {
            super(drawable);
        }

        public final void draw(Canvas canvas) {
            if (this.a) {
                super.draw(canvas);
            }
        }

        public final void setHotspot(float f, float f2) {
            if (this.a) {
                super.setHotspot(f, f2);
            }
        }

        public final void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.a) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        public final boolean setState(int[] iArr) {
            if (this.a) {
                return super.setState(iArr);
            }
            return false;
        }

        public final boolean setVisible(boolean z, boolean z2) {
            if (this.a) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    public ListViewCompat(Context context) {
        this(context, (AttributeSet) null);
    }

    public ListViewCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ListViewCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Rect();
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        try {
            this.f = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    public final int a(int i, int i2) {
        View view;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i3 = listPaddingBottom + listPaddingTop;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i4 = 0;
        int i5 = 0;
        View view2 = null;
        while (i4 < count) {
            int itemViewType = adapter.getItemViewType(i4);
            if (itemViewType != i5) {
                i5 = itemViewType;
                view = null;
            } else {
                view = view2;
            }
            view2 = adapter.getView(i4, view, this);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            view2.measure(i, (layoutParams == null || layoutParams.height <= 0) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
            i3 = view2.getMeasuredHeight() + (i4 > 0 ? i3 + dividerHeight : i3);
            if (i3 >= i2) {
                return i2;
            }
            i4++;
        }
        return i3;
    }

    public boolean a() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.a.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.a);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        boolean z = true;
        super.drawableStateChanged();
        setSelectorEnabled(true);
        Drawable selector = getSelector();
        if (selector != null) {
            if (!a() || !isPressed()) {
                z = false;
            }
            if (z) {
                selector.setState(getDrawableState());
            }
        }
    }

    public void setSelector(Drawable drawable) {
        this.h = drawable != null ? new a(drawable) : null;
        super.setSelector(this.h);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.b = rect.left;
        this.c = rect.top;
        this.d = rect.right;
        this.e = rect.bottom;
    }

    /* access modifiers changed from: protected */
    public void setSelectorEnabled(boolean z) {
        if (this.h != null) {
            this.h.a = z;
        }
    }
}
