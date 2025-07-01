// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            ComicFolders

public final class c extends BaseAdapter
{

    Activity a;
    List b;
    HashMap c;
    final ComicFolders d;

    public final boolean areAllItemsEnabled()
    {
        return true;
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
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        viewgroup = view;
        if (view == null)
        {
            viewgroup = a.getLayoutInflater().inflate(0x7f03003f, null);
            viewgroup.findViewById(0x7f0c00a1).setVisibility(8);
            viewgroup.findViewById(0x7f0c00a2).setVisibility(0);
        }
        view = (String)b.get(i);
        if (view != null)
        {
            view = new File(view);
            ((TextView)viewgroup.findViewById(0x7f0c00c4)).setText(view.getName());
            ((TextView)viewgroup.findViewById(0x7f0c00c5)).setText(view.getAbsolutePath());
            ((ImageView)viewgroup.findViewById(0x7f0c00c2)).setImageResource(0x7f02007b);
            view = (ImageView)viewgroup.findViewById(0x7f0c00c3);
            String s = (String)getItem(i);
            if (s != null)
            {
                if (c.get(s) != null)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
            } else
            {
                i = 0;
            }
            if (i != 0)
            {
                i = 0x7f020073;
            } else
            {
                i = 0x7f020066;
            }
            view.setImageResource(i);
        }
        return viewgroup;
    }

    public (ComicFolders comicfolders, Activity activity, List list)
    {
        d = comicfolders;
        super();
        a = activity;
        b = new ArrayList(list);
        c = new HashMap();
    }
}
