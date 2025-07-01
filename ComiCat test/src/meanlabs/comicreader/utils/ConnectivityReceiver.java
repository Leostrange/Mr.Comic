// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.utils;

import aei;
import aeu;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

public final class ConnectivityReceiver extends BroadcastReceiver
{
    public static final class a extends Enum
    {

        public static final int a;
        public static final int b;
        public static final int c;
        public static final int d;
        public static final int e;
        private static final int f[];

        static 
        {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = (new int[] {
                a, b, c, d, e
            });
        }
    }

    public static interface b
    {

        public abstract void b();

        public abstract void c();
    }


    static ConnectivityReceiver d;
    public Context a;
    public List b;
    public boolean c;
    private final ConnectivityManager e;

    private ConnectivityReceiver(Context context)
    {
        c = false;
        a = context;
        b = new ArrayList();
        e = (ConnectivityManager)context.getSystemService("connectivity");
        e.getNetworkInfo(1);
        b();
    }

    public static ConnectivityReceiver a()
    {
        if (d == null)
        {
            d = new ConnectivityReceiver(ComicReaderApp.a());
        }
        return d;
    }

    private void d()
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            b b1 = (b)iterator.next();
            if (c)
            {
                b1.b();
            } else
            {
                b1.c();
            }
        }

    }

    public final void a(b b1)
    {
        if (b1 != null && !b.contains(b1))
        {
            b.add(b1);
        }
    }

    public final void b()
    {
        NetworkInfo networkinfo = e.getActiveNetworkInfo();
        if (networkinfo == null || networkinfo.getState() != android.net.NetworkInfo.State.CONNECTED)
        {
            if (c)
            {
                c = false;
                d();
            }
        } else
        if (!c)
        {
            c = true;
            d();
            return;
        }
    }

    public final int c()
    {
        boolean flag = aei.a().d.c("download-only-on-wifi");
        boolean flag1 = aei.a().d.c("dont-download-on-roaming");
        NetworkInfo networkinfo = e.getActiveNetworkInfo();
        if (networkinfo == null)
        {
            return a.b;
        }
        if (networkinfo.getDetailedState() != android.net.NetworkInfo.DetailedState.CONNECTED)
        {
            return a.e;
        }
        if (flag && networkinfo.getType() != 1)
        {
            return a.c;
        }
        if (flag1 && networkinfo.isRoaming())
        {
            return a.d;
        } else
        {
            return a.a;
        }
    }

    public final void onReceive(Context context, Intent intent)
    {
        context = e.getActiveNetworkInfo();
        if (context == null || intent.getBooleanExtra("noConnectivity", false))
        {
            c = false;
            if (b != null)
            {
                d();
            }
        } else
        if (context != null && !intent.getBooleanExtra("noConnectivity", false))
        {
            c = true;
            if (b != null)
            {
                d();
                return;
            }
        }
    }
}
