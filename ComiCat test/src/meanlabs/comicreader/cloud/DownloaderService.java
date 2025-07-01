// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud;

import acv;
import acz;
import ada;
import adf;
import aei;
import aet;
import aeu;
import agz;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.utils.ConnectivityReceiver;

public class DownloaderService extends Service
    implements adf
{

    public static DownloaderService c = null;
    adf a;
    public ada b;

    public DownloaderService()
    {
    }

    public static DownloaderService a()
    {
        return c;
    }

    public static void d(acv acv1)
    {
        if (acv1.e == acv.a.e && acv1.b())
        {
            acv1.j();
            if (acv1.i.exists())
            {
                agz.a(acv1.i);
            }
            acv1.a.b(false);
            acv1.h();
            acv1.a(acv.a.f);
        }
    }

    public final void a(int i)
    {
        if (a != null)
        {
            a.a(i);
        }
    }

    public final void a(int i, int j)
    {
        boolean flag;
label0:
        {
            boolean flag1 = false;
            flag = flag1;
            if (j != acv.a.c)
            {
                break label0;
            }
            acv acv1 = b.a.b(i);
            flag = flag1;
            if (acv1 == null)
            {
                break label0;
            }
            if (!aei.a().d.c("auto-clear-completed"))
            {
                flag = flag1;
                if (!acv1.a.f.c(256))
                {
                    break label0;
                }
            }
            b.a.a(i);
            flag = true;
        }
        if (a != null)
        {
            if (flag || j == acv.a.b)
            {
                a.a(i);
            } else
            {
                a.a(i, j);
            }
        }
        if (j != acv.a.g || j != acv.a.f)
        {
            b.a();
        }
    }

    public final void a(int i, int j, int k)
    {
        if (a != null)
        {
            a.a(i, j, k);
        }
    }

    public final void a(acv acv1)
    {
        if (a != null)
        {
            a.a(acv1);
        }
    }

    public final void a(acv acv1, boolean flag)
    {
        if (!acv1.g() || flag)
        {
            if (!acv1.g() || flag)
            {
                acv1.a(acv.a.b);
                if (acv1.h.exists())
                {
                    agz.a(acv1.h);
                }
                acv1.j.a(acv1.a.a);
            }
            b.a.a(acv1.a.a);
            b.a();
        }
    }

    public final boolean a(String s, int i, String s1, int j, String s2, int k, int l)
    {
        s = b.a(s, i, s1, j, s2, k, l);
        if (s != null)
        {
            a(((acv) (s)));
            return true;
        } else
        {
            return false;
        }
    }

    public final List b()
    {
        return b.a.a;
    }

    public final void b(acv acv1)
    {
        if (acv1.e == acv.a.d || acv1.e == acv.a.e)
        {
            acv1.a(acv.a.f);
            acv1.a.a(false);
            acv1.h();
            acv1.g = 0;
        }
        b.a();
    }

    public final void c()
    {
        b.b = true;
        for (Iterator iterator = b().iterator(); iterator.hasNext(); b((acv)iterator.next())) { }
        break MISSING_BLOCK_LABEL_54;
        Exception exception;
        exception;
        b.b = false;
        throw exception;
        b.b = false;
        b.a();
        return;
    }

    public final void c(acv acv1)
    {
        if (acv1.e == acv.a.g || acv1.f())
        {
            if (acv1.e != acv.a.c && acv1.e != acv.a.h)
            {
                acv1.a(acv.a.d);
                acv1.a.a(true);
                acv1.h();
            }
            b.a();
        }
    }

    public final void d()
    {
        b.b = true;
        Object obj1 = b();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        Object obj;
        obj = new ArrayList();
        obj1 = ((List) (obj1)).iterator();
        do
        {
            if (!((Iterator) (obj1)).hasNext())
            {
                break;
            }
            acv acv1 = (acv)((Iterator) (obj1)).next();
            if (acv1.a.b())
            {
                ((List) (obj)).add(acv1);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_83;
        obj;
        b.b = false;
        throw obj;
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); e((acv)((Iterator) (obj)).next())) { }
        b.b = false;
        return;
    }

    public final void e()
    {
        b.b = true;
        Iterator iterator = (new ArrayList(b())).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            acv acv1 = (acv)iterator.next();
            if (acv1.a.c())
            {
                d(acv1);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_79;
        Exception exception;
        exception;
        b.b = false;
        b.a();
        throw exception;
        b.b = false;
        b.a();
        return;
    }

    public final void e(acv acv1)
    {
        b.a.a(acv1.a.a);
        a(acv1.a.a);
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        c = this;
        super.onCreate();
        b = new ada();
        b.a();
        ConnectivityReceiver connectivityreceiver = ConnectivityReceiver.a();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        connectivityreceiver.a.registerReceiver(connectivityreceiver, intentfilter);
        connectivityreceiver.b();
    }

    public void onDestroy()
    {
        c = null;
        b.d();
        ConnectivityReceiver connectivityreceiver = ConnectivityReceiver.a();
        connectivityreceiver.a.unregisterReceiver(connectivityreceiver);
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        return 1;
    }

}
