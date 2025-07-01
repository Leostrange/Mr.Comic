// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;

public final class acg extends BaseAdapter
{

    public ArrayList a;
    Activity b;

    public acg(Activity activity, ArrayList arraylist)
    {
        b = activity;
        a = arraylist;
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
        return 0L;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        int k = 1;
        int j = 0xff888888;
        boolean flag = false;
        viewgroup = view;
        if (view == null)
        {
            viewgroup = b.getLayoutInflater().inflate(0x7f030051, null);
        }
        acf acf1 = (acf)a.get(i);
        view = (TextView)viewgroup.findViewById(0x7f0c00a1);
        Object obj = (LinearLayout)viewgroup.findViewById(0x7f0c00a2);
        if (acf1.c != null && acf1.c.length() == 0)
        {
            view.setVisibility(0);
            ((LinearLayout) (obj)).setVisibility(8);
            view.setText(acf1.a);
            return viewgroup;
        }
        view.setVisibility(8);
        ((LinearLayout) (obj)).setVisibility(0);
        view = (TextView)viewgroup.findViewById(0x7f0c00da);
        obj = (TextView)viewgroup.findViewById(0x7f0c00d0);
        ImageView imageview = (ImageView)viewgroup.findViewById(0x7f0c0043);
        if (acf1.e)
        {
            i = -1;
        } else
        {
            i = 0xff888888;
        }
        view.setTextColor(i);
        if (acf1.e)
        {
            i = j;
        } else
        {
            i = 0xff444444;
        }
        ((TextView) (obj)).setTextColor(i);
        if (acf1.e)
        {
            i = 255;
        } else
        {
            i = 50;
        }
        imageview.setAlpha(i);
        view.setText(acf1.a);
        if (acf1.b != null)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        if (acf1.b != null)
        {
            view = acf1.b;
        } else
        {
            view = "";
        }
        ((TextView) (obj)).setText(view);
        if (acf1.c != null)
        {
            if (!acf1.d)
            {
                if (acf1.b == null)
                {
                    view = aei.a().d.b(acf1.c);
                    if (view != null)
                    {
                        ((TextView) (obj)).setText(agw.a(view));
                        i = k;
                    } else
                    {
                        i = j;
                    }
                    k = 0x7f020086;
                    j = i;
                    i = k;
                } else
                {
                    i = 0x7f020086;
                }
            } else
            if (aei.a().d.c(acf1.c))
            {
                i = 0x7f020067;
            } else
            {
                i = 0x7f020066;
            }
        } else
        {
            i = 0;
        }
        imageview.setImageResource(i);
        if (j != 0)
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 8;
        }
        ((TextView) (obj)).setVisibility(i);
        return viewgroup;
    }

    public final boolean isEnabled(int i)
    {
        return ((acf)a.get(i)).e;
    }
}
