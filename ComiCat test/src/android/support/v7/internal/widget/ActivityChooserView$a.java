// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import bh;
import eh;

// Referenced classes of package android.support.v7.internal.widget:
//            ActivityChooserView

final class <init> extends BaseAdapter
{

    eh a;
    boolean b;
    final ActivityChooserView c;
    private int d;
    private boolean e;
    private boolean f;

    public final int a()
    {
        int i = 0;
        int k = d;
        d = 0x7fffffff;
        int l = android.view.easureSpec(0, 0);
        int i1 = android.view.easureSpec(0, 0);
        int j1 = getCount();
        View view = null;
        int j = 0;
        for (; i < j1; i++)
        {
            view = getView(i, view, null);
            view.measure(l, i1);
            j = Math.max(j, view.getMeasuredWidth());
        }

        d = k;
        return j;
    }

    public final void a(int i)
    {
        if (d != i)
        {
            d = i;
            notifyDataSetChanged();
        }
    }

    public final void a(boolean flag)
    {
        if (f != flag)
        {
            f = flag;
            notifyDataSetChanged();
        }
    }

    public final void a(boolean flag, boolean flag1)
    {
        if (b != flag || e != flag1)
        {
            b = flag;
            e = flag1;
            notifyDataSetChanged();
        }
    }

    public final int getCount()
    {
        int j = a.a();
        int i = j;
        if (!b)
        {
            i = j;
            if (a.b() != null)
            {
                i = j - 1;
            }
        }
        j = Math.min(i, d);
        i = j;
        if (f)
        {
            i = j + 1;
        }
        return i;
    }

    public final Object getItem(int i)
    {
        int j;
        switch (getItemViewType(i))
        {
        default:
            throw new IllegalArgumentException();

        case 1: // '\001'
            return null;

        case 0: // '\0'
            j = i;
            break;
        }
        if (!b)
        {
            j = i;
            if (a.b() != null)
            {
                j = i + 1;
            }
        }
        return a.a(j);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final int getItemViewType(int i)
    {
        return !f || i != getCount() - 1 ? 0 : 1;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        getItemViewType(i);
        JVM INSTR tableswitch 0 1: default 28
    //                   0 107
    //                   1 36;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException();
_L3:
        if (view == null) goto _L5; else goto _L4
_L4:
        View view1 = view;
        if (view.getId() == 1) goto _L6; else goto _L5
_L5:
        view1 = LayoutInflater.from(c.getContext()).inflate(ser_view_list_item, viewgroup, false);
        view1.setId(1);
        ((TextView)view1.findViewById(ViewById)).setText(c.getContext().getString(ser_view_see_all));
_L6:
        return view1;
_L2:
        if (view == null) goto _L8; else goto _L7
_L7:
        view1 = view;
        if (view.getId() == d) goto _L9; else goto _L8
_L8:
        view1 = LayoutInflater.from(c.getContext()).inflate(ser_view_list_item, viewgroup, false);
_L9:
        view = c.getContext().getPackageManager();
        viewgroup = (ImageView)view1.findViewById(ViewById);
        ResolveInfo resolveinfo = (ResolveInfo)getItem(i);
        viewgroup.setImageDrawable(resolveinfo.loadIcon(view));
        ((TextView)view1.findViewById(ViewById)).setText(resolveinfo.loadLabel(view));
        if (b && i == 0 && e)
        {
            bh.b(view1, true);
            return view1;
        } else
        {
            bh.b(view1, false);
            return view1;
        }
    }

    public final int getViewTypeCount()
    {
        return 3;
    }

    private (ActivityChooserView activitychooserview)
    {
        c = activitychooserview;
        super();
        d = 4;
    }

    d(ActivityChooserView activitychooserview, byte byte0)
    {
        this(activitychooserview);
    }
}
