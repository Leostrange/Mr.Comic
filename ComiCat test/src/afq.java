// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.ArrayAdapter;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.Catalog;
import meanlabs.comicreader.ComicReaderApp;

public final class afq
{
    final class a
        implements android.support.v7.app.ActionBar.OnNavigationListener
    {

        boolean a;
        public int b;
        final afq c;

        public final boolean onNavigationItemSelected(int l, long l1)
        {
            aei.a().d.a("catalog-folder", String.valueOf(afq.a(c, l).a));
            boolean flag;
            if (b != l)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            b = l;
            if (!a && flag)
            {
                c.a.d();
            }
            return true;
        }

        private a()
        {
            c = afq.this;
            super();
            a = false;
            b = 0;
        }

        a(byte byte0)
        {
            this();
        }
    }


    public static final String f = ComicReaderApp.a().getString(0x7f06004e);
    public static final String g = ComicReaderApp.a().getString(0x7f06024f);
    public static final String h = ComicReaderApp.a().getString(0x7f0601d1);
    public static final String i = ComicReaderApp.a().getString(0x7f060127);
    public static final String j = ComicReaderApp.a().getString(0x7f0601c4);
    public static final String k = ComicReaderApp.a().getString(0x7f0601d4);
    Catalog a;
    ArrayAdapter b;
    a c;
    List d;
    public Hashtable e;

    public afq(Catalog catalog)
    {
        a = catalog;
    }

    private aem a(int l, String s)
    {
        aem aem1 = aem.a(s);
        aem1.a = l;
        aem1.b = s;
        aem1.f.a(16);
        e.put(Integer.valueOf(l), aem1);
        return aem1;
    }

    static aem a(afq afq1, int l)
    {
        return afq1.e(l);
    }

    private void d(int l)
    {
        if (l != -1)
        {
            a.getSupportActionBar().setSelectedNavigationItem(l);
        }
    }

    private aem e(int l)
    {
        List list = d;
        if (l < 0 || l >= d.size())
        {
            l = 0;
        }
        return (aem)list.get(l);
    }

    private int f(int l)
    {
        for (int i1 = 0; i1 < d.size(); i1++)
        {
            if (((aem)d.get(i1)).a == l)
            {
                return i1;
            }
        }

        return 0;
    }

    public final aem a()
    {
        return e(b());
    }

    public final void a(int l)
    {
        d(f(l));
    }

    public final void a(boolean flag)
    {
        a.getSupportActionBar().setNavigationMode(1);
        b = null;
        if (b == null)
        {
            Object obj = aei.a().d;
            ArrayAdapter arrayadapter = new ArrayAdapter(a, 0x1090008);
            e = new Hashtable();
            d = new ArrayList();
            d.add(a(0, f));
            d.add(a(-2, g));
            d.add(a(-3, h));
            d.add(a(-4, i));
            if (((aeu) (obj)).a("last-synced-id", 0L) != 0L)
            {
                d.add(a(-6, k));
            }
            if (((aeu) (obj)).c("enable-hidden-folders") && !((aeu) (obj)).c("current-hidden-state"))
            {
                d.add(a(-5, j));
            }
            c();
            obj = ael.a(aei.a().c.e());
            if (obj != null)
            {
                d.addAll(((java.util.Collection) (obj)));
                for (int l = 0; l < d.size(); l++)
                {
                    arrayadapter.add(((aem)d.get(l)).b);
                }

            }
            arrayadapter.setDropDownViewResource(0x7f030038);
            b = arrayadapter;
        }
        if (c == null)
        {
            c = new a((byte)0);
        }
        a.getSupportActionBar().setListNavigationCallbacks(b, c);
        int i1 = f((int)aei.a().d.a("catalog-folder", 0L));
        if (flag)
        {
            b(i1);
            return;
        } else
        {
            d(i1);
            return;
        }
    }

    public final int b()
    {
        if (c == null)
        {
            return -1;
        } else
        {
            return c.b;
        }
    }

    public final void b(int l)
    {
        if (l != -1)
        {
            c.a = true;
            c.b = l;
            a.getSupportActionBar().setSelectedNavigationItem(l);
            a.findViewById(0x7f0c00ba).postDelayed(new Runnable() {

                final afq a;

                public final void run()
                {
                    a.c.a = false;
                }

            
            {
                a = afq.this;
                super();
            }
            }, 100L);
        }
    }

    public final void c()
    {
        Object obj = aei.a().d;
        int i3 = (int)((aeu) (obj)).a("last-synced-id", 0L);
        boolean flag1 = agw.a();
        boolean flag2 = ((aeu) (obj)).c("enable-hidden-folders");
        obj = aei.a().b.f().iterator();
        int i1 = 0;
        int l = 0;
        int l1 = 0;
        int k1 = 0;
        int j1 = 0;
        while (((Iterator) (obj)).hasNext()) 
        {
label0:
            {
                aeq aeq1 = (aeq)((Iterator) (obj)).next();
                int i2;
                int j2;
                int k2;
                boolean flag;
                int l2;
                if (!flag2 || agw.a(aeq1))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    i2 = 1;
                } else
                {
                    i2 = 0;
                }
                l2 = j1 + i2;
                if (flag1)
                {
                    k2 = l1;
                    i2 = l;
                    j2 = i1;
                    if (flag)
                    {
                        break label0;
                    }
                }
                j1 = i1;
                if (!aeq1.p())
                {
                    j1 = i1 + 1;
                }
                i1 = l;
                if (aeq1.h.c(2))
                {
                    i1 = l + 1;
                }
                k2 = l1;
                i2 = i1;
                j2 = j1;
                if (aeq1.a())
                {
                    k2 = l1 + 1;
                    j2 = j1;
                    i2 = i1;
                }
            }
            if (aeq1.a > i3)
            {
                l = 1;
            } else
            {
                l = 0;
            }
            k1 = l + k1;
            j1 = l2;
            l1 = k2;
            l = i2;
            i1 = j2;
        }
        ((aem)e.get(Integer.valueOf(-2))).d = i1;
        ((aem)e.get(Integer.valueOf(-3))).d = l;
        ((aem)e.get(Integer.valueOf(-4))).d = l1;
        if (c(-6))
        {
            ((aem)e.get(Integer.valueOf(-6))).d = k1;
        }
        if (c(-5))
        {
            ((aem)e.get(Integer.valueOf(-5))).d = j1;
        }
    }

    public final boolean c(int l)
    {
        return e.containsKey(Integer.valueOf(l));
    }

}
