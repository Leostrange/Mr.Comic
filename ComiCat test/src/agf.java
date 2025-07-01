// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;

public final class agf
{
    final class a
    {

        public int a;
        public int b;
        public int c;
        final agf d;

        public a(int i, int j, int k)
        {
            d = agf.this;
            super();
            a = i;
            b = j;
            c = k;
        }
    }

    public final class b extends BaseAdapter
    {

        ArrayList a;
        Activity b;
        final agf c;

        public final boolean areAllItemsEnabled()
        {
            return true;
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
            return 0L;
        }

        public final View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = view;
            if (view == null)
            {
                viewgroup = b.getLayoutInflater().inflate(0x7f03005b, null);
            }
            view = (a)a.get(i);
            TextView textview = (TextView)viewgroup.findViewById(0x7f0c00c4);
            ImageView imageview = (ImageView)viewgroup.findViewById(0x7f0c0043);
            textview.setText(((a) (view)).b);
            imageview.setImageResource(((a) (view)).c);
            return viewgroup;
        }

        public final boolean isEnabled(int i)
        {
            return true;
        }

        public b(Activity activity, ArrayList arraylist)
        {
            c = agf.this;
            super();
            b = activity;
            a = arraylist;
        }
    }

    public static interface c
    {

        public abstract void c(int i);

        public abstract boolean h();
    }


    Activity a;
    ListView b;
    c c;
    a d;

    public agf(Activity activity, ListView listview, c c1)
    {
        b = listview;
        a = activity;
        c = c1;
        activity = new ArrayList();
        activity.add(new a(0x7f0c0146, 0x7f060110, 0x7f020081));
        listview = new a(0x7f0c0147, 0x7f06020d, 0x7f020089);
        d = listview;
        activity.add(listview);
        activity.add(new a(0x7f0c014a, 0x7f060214, 0x7f02008c));
        activity.add(new a(0x7f0c014b, 0x7f0601fe, 0x7f02008a));
        activity.add(new a(0x7f0c0141, 0x7f06005b, 0x7f020084));
        activity.add(new a(0x7f0c0148, 0x7f060242, 0x7f020083));
        activity.add(new a(0x7f0c0145, 0x7f060211, 0x7f02008b));
        if (agv.a())
        {
            activity.add(new a(0x7f0c014c, 0x7f06020c, 0x7f020087));
        }
        activity.add(new a(0x7f0c014e, 0x7f060150, 0x7f020085));
        activity.add(new a(0x7f0c014f, 0x7f0601c3, 0x7f020088));
        activity.add(new a(0x7f0c0150, 0x7f060059, 0x7f02007e));
        b.setAdapter(new b(a, activity));
        b.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(activity, c1) {

            final ArrayList a;
            final c b;
            final agf c;

            public final void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                i = ((a)a.get(i)).a;
                b.c(i);
                if (i == 0x7f0c0147)
                {
                    c.a();
                }
            }

            
            {
                c = agf.this;
                a = arraylist;
                b = c1;
                super();
            }
        });
    }

    public final void a()
    {
        a a1 = d;
        int i;
        if (c.h())
        {
            i = 0x7f0601ea;
        } else
        {
            i = 0x7f06020d;
        }
        a1.b = i;
        a1 = d;
        if (c.h())
        {
            i = 0x7f020082;
        } else
        {
            i = 0x7f020089;
        }
        a1.c = i;
        ((b)b.getAdapter()).notifyDataSetInvalidated();
    }
}
