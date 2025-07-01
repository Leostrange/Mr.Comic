// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.cloud.DownloaderService;

public final class act
    implements ade
{

    private static act d = null;
    public ade a;
    public List b;
    public List c;

    private act()
    {
        b = new ArrayList();
        c = new ArrayList();
        a(new adr());
        a(new adv());
        a(new adn());
        a(new aea());
        a(new aeg());
        c();
    }

    public static String a()
    {
        String s;
label0:
        {
            String s1 = aei.a().d.b("cloud-sync-download-location");
            if (s1 != null)
            {
                s = s1;
                if (s1.length() != 0)
                {
                    break label0;
                }
            }
            s = agw.d();
        }
        return s;
    }

    private void a(add add1)
    {
        b.add(add1);
    }

    public static act b()
    {
        if (d == null)
        {
            d = new act();
        }
        return d;
    }

    public static File c(int i)
    {
        Object obj;
        if (android.os.Build.VERSION.SDK_INT > 7)
        {
            obj = ComicReaderApp.a().getExternalFilesDir(null);
        } else
        {
            obj = agw.d();
            if (obj != null && ((String) (obj)).length() > 0)
            {
                obj = new File(((String) (obj)));
            } else
            {
                obj = null;
            }
        }
        if (obj == null)
        {
            obj = ComicReaderApp.a().getFilesDir();
        }
        obj = new File((new StringBuilder()).append(((File) (obj)).getAbsolutePath()).append("/temp/").toString());
        if (((File) (obj)).exists() || ((File) (obj)).mkdirs())
        {
            return new File((new StringBuilder()).append(((File) (obj)).getAbsolutePath()).append(File.separatorChar).append(i).append("_tmp").toString());
        } else
        {
            return null;
        }
    }

    private void c()
    {
        aev aev1;
        for (Iterator iterator = aei.a().g.a().iterator(); iterator.hasNext(); c.add(a(aev1.b).a(aev1)))
        {
            aev1 = (aev)iterator.next();
        }

    }

    public final acs a(int i)
    {
        for (Iterator iterator = c.iterator(); iterator.hasNext();)
        {
            acs acs1 = (acs)iterator.next();
            if (acs1.a() == i)
            {
                return acs1;
            }
        }

        return null;
    }

    public final add a(String s)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            add add1 = (add)iterator.next();
            if (add1.a().equals(s))
            {
                return add1;
            }
        }

        return null;
    }

    public final void a(int i, boolean flag)
    {
        if (flag)
        {
            aev aev1 = aei.a().g.a(i);
            c.add(a(aev1.b).a(aev1));
        }
        if (a != null)
        {
            a.a(i, flag);
        }
    }

    public final void b(int i)
    {
        DownloaderService downloaderservice;
        Object obj;
        obj = a(i);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        downloaderservice = DownloaderService.a();
        downloaderservice.b.b = true;
        Iterator iterator = (new ArrayList(downloaderservice.b())).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            acv acv1 = (acv)iterator.next();
            if (acv1.a.c == i)
            {
                downloaderservice.a(acv1, true);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_102;
        obj;
        downloaderservice.b.b = false;
        downloaderservice.b.a();
        throw obj;
        downloaderservice.b.b = false;
        downloaderservice.b.a();
        agm.a(i);
        ((acs) (obj)).i();
    }

    public final void b(int i, boolean flag)
    {
        if (flag)
        {
            aev aev1 = aei.a().g.a(i);
            if (aev1 != null)
            {
                aev1.k = ahc.b();
                aew aew1 = aei.a().g;
                aew.b(aev1);
            }
        }
        aei.a().b.d();
        acr.a();
        if (a != null)
        {
            a.b(i, flag);
        }
    }

    public final void d(int i)
    {
        c.remove(a(i));
        if (a != null)
        {
            a.d(i);
        }
    }

    public final void e(int i)
    {
        if (a != null)
        {
            a.e(i);
        }
    }

}
