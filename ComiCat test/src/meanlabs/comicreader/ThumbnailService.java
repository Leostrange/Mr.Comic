// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import acj;
import aei;
import aeu;
import agv;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import meanlabs.comicreader.utils.ConnectivityReceiver;

public class ThumbnailService extends Service
    implements meanlabs.comicreader.utils.ConnectivityReceiver.b
{

    static ThumbnailService c = null;
    public acj a;
    public final Lock b = new ReentrantLock();

    public ThumbnailService()
    {
        a = null;
    }

    public static ThumbnailService a()
    {
        return c;
    }

    public final void a(boolean flag)
    {
        boolean flag1;
        boolean flag2;
        b.lock();
        if (flag && a != null)
        {
            a.cancel(true);
            a = null;
        }
        flag = aei.a().d.c("create-thumbnails-in-background");
        flag1 = "prefCreateThumbsInBackground".equals(aei.a().d.b("create-cloud-thumbnails"));
        flag2 = "prefCreateThumbsInBackground".equals(aei.a().d.b("create-smb-sthumbnails"));
        if (!flag && !flag1 && !flag2) goto _L2; else goto _L1
_L1:
        if (a == null)
        {
            a = new acj();
            if (agv.h())
            {
                a.executeOnExecutor(acj.THREAD_POOL_EXECUTOR, new Void[] {
                    null
                });
            } else
            {
                a.execute(new Void[] {
                    null
                });
            }
        }
_L4:
        b.unlock();
        return;
_L2:
        if (a != null)
        {
            a.cancel(false);
            a = null;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void b()
    {
        a(false);
    }

    public final void c()
    {
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        c = this;
        super.onCreate();
        ConnectivityReceiver.a().a(this);
        a(false);
    }

    public void onDestroy()
    {
        c = null;
        ConnectivityReceiver.a().b.remove(this);
        if (a != null)
        {
            a.cancel(true);
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        return 1;
    }

}
