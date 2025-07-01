// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acs;
import act;
import aei;
import aek;
import ael;
import aeq;
import agv;
import ahd;
import android.app.Activity;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;

// Referenced classes of package meanlabs.comicreader:
//            DeleteMultipleFiles

public final class a extends BaseAdapter
{

    Activity a;
    ArrayList b;
    ArrayList c;
    SparseArray d;
    final DeleteMultipleFiles e;

    public final void a()
    {
        for (int i = 0; i < b.size(); i++)
        {
            Integer integer = (Integer)b.get(i);
            if (integer.intValue() > 0)
            {
                d.append(integer.intValue(), integer);
            }
        }

    }

    public final boolean areAllItemsEnabled()
    {
        return false;
    }

    public final int getCount()
    {
        return b.size();
    }

    public final Object getItem(int i)
    {
        return b.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)((Integer)b.get(i)).intValue();
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        viewgroup = view;
        if (view == null)
        {
            viewgroup = a.getLayoutInflater().inflate(0x7f03003f, null);
        }
        Integer integer = (Integer)b.get(i);
        if (integer.intValue() > 0)
        {
            viewgroup.findViewById(0x7f0c00a1).setVisibility(8);
            viewgroup.findViewById(0x7f0c00a2).setVisibility(0);
            aeq aeq1 = aei.a().b.a(integer.intValue());
            ((TextView)viewgroup.findViewById(0x7f0c00c4)).setText(aeq1.c);
            ((TextView)viewgroup.findViewById(0x7f0c00c5)).setText(agv.c(ael.a(aeq1)));
            ((TextView)viewgroup.findViewById(0x7f0c00c6)).setText(agv.a((new File(aeq1.d)).length()));
            TextView textview = (TextView)viewgroup.findViewById(0x7f0c00c7);
            String s = "";
            view = s;
            if (aeq1.d())
            {
                acs acs1 = act.b().a(aeq1.g);
                view = s;
                if (acs1 != null)
                {
                    view = acs1.k();
                }
            }
            textview.setText(view);
            ((ImageView)viewgroup.findViewById(0x7f0c00c2)).setImageBitmap(ahd.a(aeq1.a, false));
            view = (ImageView)viewgroup.findViewById(0x7f0c00c3);
            if (d.get(integer.intValue()) != null)
            {
                i = 0x7f020073;
            } else
            {
                i = 0x7f020066;
            }
            view.setImageResource(i);
            return viewgroup;
        } else
        {
            viewgroup.findViewById(0x7f0c00a1).setVisibility(0);
            viewgroup.findViewById(0x7f0c00a2).setVisibility(8);
            i = -integer.intValue();
            view = (String)c.get(Integer.valueOf(i).intValue() - 1);
            ((TextView)viewgroup.findViewById(0x7f0c00a1)).setText(view);
            return viewgroup;
        }
    }

    public final boolean isEnabled(int i)
    {
        return getItemId(i) > 0L;
    }

    public (DeleteMultipleFiles deletemultiplefiles, Activity activity, ArrayList arraylist, ArrayList arraylist1, boolean flag)
    {
        e = deletemultiplefiles;
        super();
        a = activity;
        b = arraylist;
        c = arraylist1;
        d = new SparseArray();
        if (flag)
        {
            a();
        }
    }
}
