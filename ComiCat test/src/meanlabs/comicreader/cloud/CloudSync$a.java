// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;

import aci;
import acs;
import act;
import aei;
import aev;
import aew;
import agv;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package meanlabs.comicreader.cloud:
//            CloudSync

public final class a extends BaseAdapter
{

    ArrayList a;
    final CloudSync b;

    public final void a()
    {
        a = new ArrayList();
        Object obj = new ArrayList(act.b().c);
        Collections.sort(((List) (obj)), new Comparator() {

            final CloudSync.a a;

            public final int compare(Object obj1, Object obj2)
            {
                obj1 = (acs)obj1;
                obj2 = (acs)obj2;
                return ((acs) (obj1)).k().compareTo(((acs) (obj2)).k());
            }

            
            {
                a = CloudSync.a.this;
                super();
            }
        });
        acs acs1;
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); a.add(Integer.valueOf(acs1.a())))
        {
            acs1 = (acs)((Iterator) (obj)).next();
        }

    }

    public final boolean areAllItemsEnabled()
    {
        return false;
    }

    public final int getCount()
    {
        return a.size();
    }

    public final Object getItem(int i)
    {
        return a.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        viewgroup = view;
        if (view == null)
        {
            viewgroup = b.getLayoutInflater().inflate(0x7f030028, null);
        }
        i = ((Integer)a.get(i)).intValue();
        Object obj = (TextView)viewgroup.findViewById(0x7f0c008f);
        ImageView imageview = (ImageView)viewgroup.findViewById(0x7f0c008e);
        TextView textview = (TextView)viewgroup.findViewById(0x7f0c0090);
        view = (TextView)viewgroup.findViewById(0x7f0c0091);
        acs acs1 = act.b().a(i);
        if (acs1 != null)
        {
            ((TextView) (obj)).setText(acs1.k());
            imageview.setImageResource(acs1.d());
            textview.setText(b.getString(0x7f06020b));
            obj = aei.a().g.a(i);
            if (obj != null)
            {
                view.setText((new StringBuilder()).append(b.getString(0x7f060131)).append(" ").append(agv.a(b, ((aev) (obj)).k)).toString());
            }
        }
        return viewgroup;
    }

    public final boolean isEnabled(int i)
    {
        return !aci.a();
    }

    public _cls1.a(CloudSync cloudsync)
    {
        b = cloudsync;
        super();
        a();
    }
}
