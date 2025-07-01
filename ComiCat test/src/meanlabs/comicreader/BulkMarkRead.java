// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acm;
import aei;
import aek;
import ael;
import aeq;
import afw;
import agm;
import agv;
import ahd;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity

public class BulkMarkRead extends ReaderActivity
{
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

        public a(Activity activity)
        {
            d = BulkMarkRead.this;
            super();
            a = activity;
            b = aei.a().b.f();
            c = new SparseIntArray();
            a();
        }
    }


    a a;

    public BulkMarkRead()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03003e);
        bundle = getIntent().getStringExtra("title");
        if (bundle != null)
        {
            setTitle(bundle);
        }
        a = new a(this);
        bundle = (ListView)findViewById(0x7f0c00c0);
        bundle.setAdapter(a);
        bundle.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final BulkMarkRead a;

            public final void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = a.a;
                i = ((aeq)((a) (adapterview)).b.get(i)).a;
                if (((a) (adapterview)).c.get(i) != 0)
                {
                    ((a) (adapterview)).c.delete(i);
                } else
                {
                    ((a) (adapterview)).c.append(i, i);
                }
                a.a.notifyDataSetChanged();
            }

            
            {
                a = BulkMarkRead.this;
                super();
            }
        });
        bundle = (Button)findViewById(0x7f0c0074);
        Button button = (Button)findViewById(0x7f0c00bf);
        button.setText(0x104000a);
        button.setEnabled(true);
        bundle.setOnClickListener(new android.view.View.OnClickListener() {

            final BulkMarkRead a;

            public final void onClick(View view)
            {
                a.finish();
            }

            
            {
                a = BulkMarkRead.this;
                super();
            }
        });
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final BulkMarkRead a;

            public final void onClick(View view)
            {
                view = new afw.a(this) {

                    final _cls3 a;

                    public final void a(boolean flag)
                    {
                        if (flag)
                        {
                            (new acm(a.a, a.a.a.c, new acm.a(this) {

                                final _cls1 a;

                                public final void a()
                                {
                                    agm.a(false);
                                    a.a.a.finish();
                                }

            
            {
                a = _pcls1;
                super();
            }
                            })).execute(new Void[] {
                                null
                            });
                        }
                    }

            
            {
                a = _pcls3;
                super();
            }
                };
                afw.a(a, (String)a.getTitle(), a.getString(0x7f06009b), view);
            }

            
            {
                a = BulkMarkRead.this;
                super();
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0d0002, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        int i = menuitem.getItemId();
        if (i == 0x7f0c010c)
        {
            menuitem = a;
            for (i = 0; i < ((a) (menuitem)).b.size(); i++)
            {
                int j = ((aeq)((a) (menuitem)).b.get(i)).a;
                ((a) (menuitem)).c.append(j, j);
            }

            a.notifyDataSetChanged();
            return true;
        }
        if (i == 0x7f0c010d)
        {
            a.c.clear();
            a.notifyDataSetChanged();
            return true;
        }
        if (i == 0x7f0c010b)
        {
            a.a();
            a.notifyDataSetChanged();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
