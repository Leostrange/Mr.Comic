package android.support.v7.internal.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.ds;

public final class ExpandedMenuView extends ListView implements AdapterView.OnItemClickListener, ds.b, dz {
    private static final int[] a = {16842964, 16843049};
    private ds b;
    private int c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        es a2 = es.a(context, attributeSet, a, i);
        if (a2.d(0)) {
            setBackgroundDrawable(a2.a(0));
        }
        if (a2.d(1)) {
            setDivider(a2.a(1));
        }
        a2.a.recycle();
    }

    public final boolean a(du duVar) {
        return this.b.a((MenuItem) duVar, (dy) null, 0);
    }

    public final int getWindowAnimations() {
        return this.c;
    }

    public final void initialize(ds dsVar) {
        this.b = dsVar;
    }

    /* access modifiers changed from: protected */
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        a((du) getAdapter().getItem(i));
    }
}
