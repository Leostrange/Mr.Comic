// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import afa;
import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package meanlabs.comicreader.ui:
//            AsyncPageThumbView

public class PageChooserView extends LinearLayout
{
    public final class a extends BaseAdapter
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

        public a(Context context, afa afa1)
        {
            e = PageChooserView.this;
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


    BaseAdapter a = new BaseAdapter() {

        final PageChooserView a;

        public final int getCount()
        {
            return 0;
        }

        public final Object getItem(int i)
        {
            return null;
        }

        public final long getItemId(int i)
        {
            return 0L;
        }

        public final View getView(int i, View view, ViewGroup viewgroup)
        {
            return null;
        }

            
            {
                a = PageChooserView.this;
                super();
            }
    };
    Gallery b;
    Activity c;
    a d;

    public PageChooserView(Context context)
    {
        super(context);
        a(context);
    }

    public PageChooserView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context);
    }

    private void a(Context context)
    {
        setBackgroundResource(0x7f020058);
        c = (Activity)context;
        c.getLayoutInflater().inflate(0x7f030049, this);
        b = (Gallery)findViewById(0x7f0c00d6);
    }

    public final void a()
    {
        setVisibility(8);
        b.setAdapter(a);
    }

    public final void a(afa afa1, android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        setVisibility(0);
        d = new a(c, afa1);
        b.setAdapter(d);
        b.setSelection(afa1.j.a / d.c, false);
        b.postDelayed(new Runnable(onitemclicklistener) {

            final android.widget.AdapterView.OnItemClickListener a;
            final PageChooserView b;

            public final void run()
            {
                b.b.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(this) {

                    final _cls1 a;

                    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
                    {
                        int j = (int)((long)a.b.d.c * l);
                        a.a.onItemClick(adapterview, view, i, j);
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
            }

            
            {
                b = PageChooserView.this;
                a = onitemclicklistener;
                super();
            }
        }, 100L);
    }
}
