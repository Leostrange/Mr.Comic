// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aei;
import aek;
import ael;
import aeq;
import agv;
import ahd;
import android.app.Activity;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            BulkMarkRead

public final class a extends BaseAdapter
{

    Activity a;
    List b;
    SparseIntArray c;
    final BulkMarkRead d;

    public final void a()
    {
        c.clear();
        for (int i = 0; i < b.size(); i++)
        {
            if (((aeq)b.get(i)).p())
            {
                int j = ((aeq)b.get(i)).a;
                c.append(j, j);
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
        return (long)((aeq)b.get(i)).a;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        viewgroup = view;
        if (view == null)
        {
            viewgroup = a.getLayoutInflater().inflate(0x7f03003f, null);
        }
        view = (aeq)b.get(i);
        viewgroup.findViewById(0x7f0c00a1).setVisibility(8);
        viewgroup.findViewById(0x7f0c00a2).setVisibility(0);
        ((TextView)viewgroup.findViewById(0x7f0c00c4)).setText(((aeq) (view)).c);
        ((TextView)viewgroup.findViewById(0x7f0c00c5)).setText(agv.c(ael.a(view)));
        ((TextView)viewgroup.findViewById(0x7f0c00c6)).setText("");
        ((ImageView)viewgroup.findViewById(0x7f0c00c2)).setImageBitmap(ahd.a(((aeq) (view)).a, false));
        ImageView imageview = (ImageView)viewgroup.findViewById(0x7f0c00c3);
        if (c.get(((aeq) (view)).a) != 0)
        {
            imageview.setVisibility(0);
            imageview.setImageResource(0x7f02006b);
            return viewgroup;
        } else
        {
            imageview.setVisibility(4);
            return viewgroup;
        }
    }

    public final boolean isEnabled(int i)
    {
        return getItemId(i) > 0L;
    }

    public (BulkMarkRead bulkmarkread, Activity activity)
    {
        d = bulkmarkread;
        super();
        a = activity;
        b = aei.a().b.f();
        c = new SparseIntArray();
        a();
    }
}
