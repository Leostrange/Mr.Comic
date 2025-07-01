// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Intent;
import android.support.v4.widget.DrawerLayout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.Catalog;
import meanlabs.comicreader.CatalogTools;
import meanlabs.comicreader.Help;
import meanlabs.comicreader.SettingsHome;
import meanlabs.comicreader.cloud.ActiveDownloads;
import meanlabs.comicreader.cloud.CloudSync;

public final class afo extends android.support.v4.widget.DrawerLayout.g
    implements android.widget.AdapterView.OnItemClickListener
{
    static final class a extends Enum
    {

        public static final int a;
        public static final int b;
        public static final int c;
        public static final int d;
        public static final int e;
        public static final int f;
        public static final int g;
        public static final int h;
        private static final int i[];

        public static int[] a()
        {
            return (int[])i.clone();
        }

        static 
        {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = 6;
            g = 7;
            h = 8;
            i = (new int[] {
                a, b, c, d, e, f, g, h
            });
        }
    }

    final class b
    {

        int a;
        int b;
        String c;
        boolean d;
        aft e;
        final afo f;

        public b(int i, int j, int k, boolean flag)
        {
            f = afo.this;
            super();
            a = i;
            b = j;
            c = afo.this.a.getString(k);
            d = flag;
            e = null;
        }

        public b(aft aft1)
        {
            f = afo.this;
            super();
            b = -1;
            c = aft1.l();
            d = false;
            e = aft1;
        }
    }

    final class c extends BaseAdapter
    {

        protected Activity a;
        protected List b;
        final afo c;

        public final void a(List list)
        {
            b = list;
            notifyDataSetChanged();
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
            if (i < b.size())
            {
                return (b)b.get(i);
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
            b b1;
            b1 = (b)b.get(i);
            viewgroup = view;
            if (view == null)
            {
                viewgroup = a.getLayoutInflater().inflate(0x7f030033, null);
                viewgroup.setTag(new a(this, viewgroup));
            }
            if (viewgroup == null) goto _L2; else goto _L1
_L1:
            view = (a)viewgroup.getTag();
            ((a) (view)).f.setVisibility(4);
            if (b1.d)
            {
                ((a) (view)).a.setVisibility(0);
                ((a) (view)).b.setVisibility(8);
                ((a) (view)).a.setText(b1.c);
            } else
            {
                ((a) (view)).a.setVisibility(8);
                ((a) (view)).b.setVisibility(0);
                ((a) (view)).d.setText(b1.c);
            }
            if (b1.b == -1 && b1.e == null)
            {
                break MISSING_BLOCK_LABEL_228;
            }
            ((a) (view)).c.setVisibility(0);
            if (b1.b == -1) goto _L4; else goto _L3
_L3:
            ((a) (view)).c.setImageResource(b1.b);
_L2:
            return viewgroup;
_L4:
            ((a) (view)).c.setImageBitmap(b1.e.m());
            if (b1.e.k() != aft.a.c) goto _L2; else goto _L5
_L5:
            ((a) (view)).f.setVisibility(0);
            return viewgroup;
            ((a) (view)).c.setVisibility(4);
            return viewgroup;
        }

        public final boolean isEnabled(int i)
        {
            b b1 = (b)getItem(i);
            if (b1 != null)
            {
                return !b1.d;
            } else
            {
                return false;
            }
        }

        public c(Activity activity, List list)
        {
            c = afo.this;
            super();
            a = activity;
            b = list;
            a(list);
        }
    }

    final class c.a
    {

        public TextView a;
        public RelativeLayout b;
        public ImageView c;
        public TextView d;
        public LinearLayout e;
        public ImageView f;
        final c g;

        public c.a(c c1, View view)
        {
            g = c1;
            super();
            a = (TextView)view.findViewById(0x7f0c00a1);
            b = (RelativeLayout)view.findViewById(0x7f0c00a2);
            c = (ImageView)view.findViewById(0x7f0c0043);
            d = (TextView)view.findViewById(0x7f0c0044);
            e = (LinearLayout)view.findViewById(0x7f0c00a9);
            f = (ImageView)view.findViewById(0x7f0c00a8);
        }
    }


    Catalog a;
    DrawerLayout b;
    ListView c;
    TextView d;
    c e;

    public afo(Catalog catalog, DrawerLayout drawerlayout)
    {
        a = catalog;
        b = drawerlayout;
        b.setDrawerShadow(0x7f020075, 0x800003);
        c = (ListView)b.findViewById(0x7f0c00ad);
        b.setDrawerListener(this);
        d = (TextView)b.findViewById(0x7f0c008c);
        drawerlayout.findViewById(0x7f0c00a1).setOnClickListener(new android.view.View.OnClickListener() {

            final afo a;

            public final void onClick(View view)
            {
            }

            
            {
                a = afo.this;
                super();
            }
        });
        drawerlayout.findViewById(0x7f0c00ab).setOnClickListener(new android.view.View.OnClickListener(catalog) {

            final Catalog a;
            final afo b;

            public final void onClick(View view)
            {
                agv.a(a);
                b.b.a(false);
            }

            
            {
                b = afo.this;
                a = catalog;
                super();
            }
        });
        onDrawerOpened(b);
    }

    public final void onDrawerOpened(View view)
    {
        view = aei.a().d.b("last-sync-time");
        d.setText(agv.a(a, view));
        view = new ArrayList();
        view.add(new b(a.g, 0x7f0200b6, 0x7f060211, false));
        view.add(new b(a.b, 0x7f0200ab, 0x7f060239, false));
        view.add(new b(a.c, 0x7f02006e, 0x7f06007c, false));
        if (aei.a().d.c("enable-hidden-folders"))
        {
            boolean flag = aei.a().d.c("current-hidden-state");
            int j = a.d;
            Object obj1;
            int i;
            if (flag)
            {
                i = 0x7f060221;
            } else
            {
                i = 0x7f060119;
            }
            view.add(new b(j, 0x7f020098, i, false));
        }
        view.add(new b(a.e, 0x7f020074, 0x7f060045, false));
        view.add(new b(a.f, 0x7f0200af, 0x7f060073, false));
        view.add(new b(a.h, 0x7f020091, 0x7f060115, false));
        if (aei.a().d.c("show-reading-history"))
        {
            obj1 = new ArrayList(5);
            Object obj = new ArrayList(5);
            ael.a(((List) (obj1)), ((List) (obj)));
            if (((List) (obj1)).size() > 0)
            {
                view.add(new b(a.a, -1, 0x7f0601d0, true));
                for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); view.add(new b((aft)((Iterator) (obj1)).next()))) { }
            }
            if (((List) (obj)).size() > 0)
            {
                view.add(new b(a.a, -1, 0x7f0601d5, true));
                for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); view.add(new b((aft)((Iterator) (obj)).next()))) { }
            }
        }
        if (e == null)
        {
            e = new c(a, view);
            c.setAdapter(e);
            c.setOnItemClickListener(this);
            return;
        } else
        {
            e.a(view);
            return;
        }
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (b)e.getItem(i);
        if (adapterview == null) goto _L2; else goto _L1
_L1:
        if (((b) (adapterview)).e == null) goto _L4; else goto _L3
_L3:
        ((b) (adapterview)).e.n().a(a);
_L6:
        b.a();
_L2:
        return;
_L4:
        i = ((b) (adapterview)).a;
        static final class _cls4
        {

            static final int a[];

            static 
            {
                a = new int[a.a().length];
                try
                {
                    a[a.b - 1] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[a.c - 1] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[a.d - 1] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[a.g - 1] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[a.e - 1] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[a.h - 1] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[a.f - 1] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls4.a[i - 1])
        {
        case 1: // '\001'
            agm.a(a, a);
            break;

        case 2: // '\002'
            a.startActivity(new Intent(a, meanlabs/comicreader/cloud/CloudSync));
            break;

        case 3: // '\003'
            if (aei.a().d.c("current-hidden-state"))
            {
                afw.a(a, new afw.a() {

                    final afo a;

                    public final void a(boolean flag)
                    {
                        if (flag)
                        {
                            aei.a().d.a("current-hidden-state", false);
                            a.a.c();
                        }
                    }

            
            {
                a = afo.this;
                super();
            }
                });
            } else
            {
                aei.a().d.a("current-hidden-state", true);
                a.f();
            }
            break;

        case 4: // '\004'
            a.startActivity(new Intent(a, meanlabs/comicreader/SettingsHome));
            break;

        case 5: // '\005'
            a.startActivity(new Intent(a, meanlabs/comicreader/cloud/ActiveDownloads));
            break;

        case 6: // '\006'
            a.startActivity(new Intent(a, meanlabs/comicreader/Help));
            break;

        case 7: // '\007'
            a.startActivity(new Intent(a, meanlabs/comicreader/CatalogTools));
            break;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
