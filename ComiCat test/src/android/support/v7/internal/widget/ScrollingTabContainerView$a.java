// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.support.v7.widget.LinearLayoutCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

// Referenced classes of package android.support.v7.internal.widget:
//            ScrollingTabContainerView

public final class <init> extends BaseAdapter
{

    final ScrollingTabContainerView a;

    public final int getCount()
    {
        return ScrollingTabContainerView.a(a).getChildCount();
    }

    public final Object getItem(int i)
    {
        return ((bView)ScrollingTabContainerView.a(a).getChildAt(i)).a;
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            return ScrollingTabContainerView.a(a, (android.support.v7.app.ainerView.a.a)getItem(i));
        } else
        {
            viewgroup = (bView)view;
            viewgroup.a = (android.support.v7.app.ainerView.TabView.a)getItem(i);
            viewgroup.a();
            return view;
        }
    }

    private bView(ScrollingTabContainerView scrollingtabcontainerview)
    {
        a = scrollingtabcontainerview;
        super();
    }

    a(ScrollingTabContainerView scrollingtabcontainerview, byte byte0)
    {
        this(scrollingtabcontainerview);
    }
}
