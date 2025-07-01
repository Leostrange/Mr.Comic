// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import afa;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

// Referenced classes of package meanlabs.comicreader.ui:
//            PageChooserView, AsyncPageThumbView

public final class c extends BaseAdapter
{

    protected Context a;
    afa b;
    int c;
    int d;
    final PageChooserView e;

    public final int getCount()
    {
        return d;
    }

    public final Object getItem(int i)
    {
        i = c * i;
        if (i < b.d())
        {
            return b.a(i);
        } else
        {
            return null;
        }
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        i *= c;
        viewgroup = view;
        if (view == null)
        {
            viewgroup = e.c.getLayoutInflater().inflate(0x7f03004a, null);
        }
        view = b.a(i);
        ((TextView)viewgroup.findViewById(0x7f0c00d8)).setText(String.valueOf(i + 1));
        ((AsyncPageThumbView)viewgroup.findViewById(0x7f0c00d7)).setPage(view);
        return viewgroup;
    }

    public (PageChooserView pagechooserview, Context context, afa afa1)
    {
        e = pagechooserview;
        super();
        c = 1;
        a = context;
        b = afa1;
        d = afa1.d();
        if (d < 200) goto _L2; else goto _L1
_L1:
        c = 5;
_L4:
        d = (int)Math.ceil((double)d / (double)c);
        return;
_L2:
        if (d >= 100)
        {
            c = 3;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
