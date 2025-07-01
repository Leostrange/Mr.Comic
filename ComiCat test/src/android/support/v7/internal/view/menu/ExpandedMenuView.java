// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import ds;
import du;
import dz;
import es;

public final class ExpandedMenuView extends ListView
    implements android.widget.AdapterView.OnItemClickListener, ds.b, dz
{

    private static final int a[] = {
        0x10100d4, 0x1010129
    };
    private ds b;
    private int c;

    public ExpandedMenuView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x1010074);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset);
        setOnItemClickListener(this);
        context = es.a(context, attributeset, a, i);
        if (context.d(0))
        {
            setBackgroundDrawable(context.a(0));
        }
        if (context.d(1))
        {
            setDivider(context.a(1));
        }
        ((es) (context)).a.recycle();
    }

    public final boolean a(du du1)
    {
        return b.a(du1, null, 0);
    }

    public final int getWindowAnimations()
    {
        return c;
    }

    public final void initialize(ds ds1)
    {
        b = ds1;
    }

    protected final void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        a((du)getAdapter().getItem(i));
    }

}
