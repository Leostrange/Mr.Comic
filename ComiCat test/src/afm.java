// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import java.util.ArrayList;
import java.util.List;

public abstract class afm extends BaseAdapter
    implements Filterable
{

    protected Context a;
    protected List b;
    protected Activity c;

    public afm(Context context, Activity activity, List list)
    {
        a = context;
        c = activity;
        a(list);
    }

    public final void a(List list)
    {
        Object obj = list;
        if (list == null)
        {
            obj = new ArrayList();
        }
        b = ((List) (obj));
    }

    public int getCount()
    {
        return b.size();
    }

    public Filter getFilter()
    {
        return null;
    }

    public Object getItem(int i)
    {
        if (i < b.size())
        {
            return (aft)b.get(i);
        } else
        {
            return null;
        }
    }

    public long getItemId(int i)
    {
        if (i < b.size())
        {
            return (long)((aft)b.get(i)).j();
        } else
        {
            return -1L;
        }
    }
}
