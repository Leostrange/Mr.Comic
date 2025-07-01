// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import afw;
import agw;
import ahh;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
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
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package meanlabs.comicreader:
//            ReaderActivity

public class ComicFolders extends ReaderActivity
    implements ahh.a
{
    public static interface a
    {

        public abstract void c();
    }

    public final class b extends BaseAdapter
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

        public b(Activity activity, List list)
        {
            d = ComicFolders.this;
            super();
            a = activity;
            b = new ArrayList(list);
            c = new HashMap();
        }
    }


    public static a a;
    private boolean b;
    private boolean c;
    private b d;
    private ahh e;

    public ComicFolders()
    {
        c = false;
    }

    static b a(ComicFolders comicfolders)
    {
        return comicfolders.d;
    }

    static void b(ComicFolders comicfolders)
    {
        if (a != null)
        {
            a.c();
            a = null;
        }
        comicfolders.finish();
    }

    static boolean c(ComicFolders comicfolders)
    {
        return comicfolders.c;
    }

    static boolean d(ComicFolders comicfolders)
    {
        return comicfolders.b;
    }

    public final void a(String s)
    {
        if (s != null)
        {
            b b1 = d;
            if (!b1.b.contains(s))
            {
                b1.b.add(s);
            }
            c = true;
        }
        e.dismiss();
        d.notifyDataSetChanged();
    }

    public final void g()
    {
        e.dismiss();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03002a);
        b = getIntent().getBooleanExtra("warn", false);
        d = new b(this, agw.b());
        bundle = (ListView)findViewById(0x7f0c0094);
        bundle.setEmptyView(findViewById(0x1020004));
        bundle.setAdapter(d);
        bundle.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ComicFolders a;

            public final void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = ComicFolders.a(a);
                view = (String)adapterview.getItem(i);
                if (view != null)
                {
                    if (((b) (adapterview)).c.get(view) != null)
                    {
                        ((b) (adapterview)).c.remove(view);
                    } else
                    {
                        ((b) (adapterview)).c.put(view, Boolean.valueOf(true));
                    }
                }
                ComicFolders.a(a).notifyDataSetChanged();
            }

            
            {
                a = ComicFolders.this;
                super();
            }
        });
        bundle = (Button)findViewById(0x7f0c0074);
        Button button = (Button)findViewById(0x7f0c0079);
        bundle.setOnClickListener(new android.view.View.OnClickListener() {

            final ComicFolders a;

            public final void onClick(View view)
            {
                ComicFolders.b(a);
            }

            
            {
                a = ComicFolders.this;
                super();
            }
        });
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final ComicFolders a;

            public final void onClick(View view)
            {
                if (ComicFolders.c(a) && ComicFolders.d(a))
                {
                    view = a;
                    afw.a(view, view.getString(0x7f060138), view.getString(0x7f0601ff), new afw.a(this) {

                        final _cls3 a;

                        public final void a(boolean flag)
                        {
                            if (flag)
                            {
                                agw.a(ComicFolders.a(a.a).b);
                            }
                            ComicFolders.b(a.a);
                        }

            
            {
                a = _pcls3;
                super();
            }
                    });
                    return;
                }
                if (ComicFolders.c(a))
                {
                    agw.a(ComicFolders.a(a).b);
                }
                ComicFolders.b(a);
            }

            
            {
                a = ComicFolders.this;
                super();
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0d0009, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag1 = false;
        boolean flag = false;
        int j = menuitem.getItemId();
        if (j == 0x7f0c0075)
        {
            if (android.os.Build.VERSION.SDK_INT >= 23)
            {
                flag = true;
            }
            if (flag)
            {
                menuitem = "/";
            } else
            {
                menuitem = null;
            }
            e = ahh.a(getString(0x7f060089), menuitem);
            e.show(getSupportFragmentManager(), null);
            return true;
        }
        if (j == 0x7f0c0135)
        {
            menuitem = d;
            int i = ((b) (menuitem)).c.size();
            ((b) (menuitem)).b.removeAll(((b) (menuitem)).c.keySet());
            ((b) (menuitem)).c.clear();
            if (c || i > 0)
            {
                flag1 = true;
            }
            c = flag1;
            d.notifyDataSetChanged();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
