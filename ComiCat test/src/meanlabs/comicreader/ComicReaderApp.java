// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import aei;
import aek;
import aen;
import aeo;
import aep;
import aer;
import aes;
import aet;
import aeu;
import aev;
import aew;
import agt;
import agv;
import ahd;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.multidex.MultiDexApplication;
import java.util.ArrayList;
import java.util.HashMap;
import meanlabs.comicreader.cloud.DownloaderService;

// Referenced classes of package meanlabs.comicreader:
//            ThumbnailService, Catalog

public class ComicReaderApp extends MultiDexApplication
{

    public static boolean a = false;
    private static ComicReaderApp b;
    private static Catalog c;
    private static long d = 0L;

    public ComicReaderApp()
    {
    }

    public static Context a()
    {
        return b;
    }

    public static void a(Catalog catalog)
    {
        c = catalog;
    }

    public static void b()
    {
        d = System.currentTimeMillis();
    }

    public static long c()
    {
        return d;
    }

    public static Catalog d()
    {
        return c;
    }

    public void onCreate()
    {
        Object obj;
        b = this;
        ahd.a();
        Object obj1;
        Object obj2;
        aev aev1;
        boolean flag;
        if (aei.a().a.getVersion() <= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        obj1 = aei.a();
        ((aei) (obj1)).b();
        ((aei) (obj1)).b.d();
        ((aei) (obj1)).d.a();
        ((aei) (obj1)).e.a();
        obj = ((aei) (obj1)).g;
        obj;
        JVM INSTR monitorenter ;
        obj.b = new ArrayList();
        obj2 = aei.a().b("SELECT id, type, name, basepath, domain, user, password, token, expiry, flags, lastsynctime FROM services ORDER BY type COLLATE NOCASE ASC");
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_275;
        }
        if (((Cursor) (obj2)).moveToFirst())
        {
            do
            {
                aev1 = new aev();
                aev1.a = ((Cursor) (obj2)).getInt(0);
                aev1.b = ((Cursor) (obj2)).getString(1);
                aev1.c = ((Cursor) (obj2)).getString(2);
                aev1.d = ((Cursor) (obj2)).getString(3);
                aev1.e = ((Cursor) (obj2)).getString(4);
                aev1.f = ((Cursor) (obj2)).getString(5);
                aev1.g = ((Cursor) (obj2)).getString(6);
                aev1.h = ((Cursor) (obj2)).getString(7);
                aev1.i = ((Cursor) (obj2)).getLong(8);
                aev1.j = new aet(((Cursor) (obj2)).getInt(9));
                aev1.k = ((Cursor) (obj2)).getLong(10);
                ((aew) (obj)).b.add(aev1);
            } while (((Cursor) (obj2)).moveToNext());
        }
        ((Cursor) (obj2)).close();
        obj;
        JVM INSTR monitorexit ;
        ((aei) (obj1)).c.d();
        ((aei) (obj1)).f.a();
        obj = ((aei) (obj1)).h;
        ((aep) (obj)).b.clear();
        obj1 = aei.a().b("SELECT exclusionid, downloadref, serviceref, reason FROM cloud_exclusions");
        if (obj1 != null)
        {
            if (((Cursor) (obj1)).moveToFirst())
            {
                do
                {
                    obj2 = new aeo();
                    obj2.a = ((Cursor) (obj1)).getInt(0);
                    obj2.b = ((Cursor) (obj1)).getString(1);
                    obj2.c = ((Cursor) (obj1)).getInt(2);
                    obj2.d = ((Cursor) (obj1)).getInt(3);
                    ((aep) (obj)).b.put(aep.b(((aeo) (obj2)).b, ((aeo) (obj2)).c, ((aeo) (obj2)).d), obj2);
                } while (((Cursor) (obj1)).moveToNext());
            }
            ((Cursor) (obj1)).close();
        }
        if (agv.i())
        {
            getExternalFilesDir(getString(0x7f060090));
        }
        startService(new Intent(this, meanlabs/comicreader/cloud/DownloaderService));
        startService(new Intent(this, meanlabs/comicreader/ThumbnailService));
        agt.a();
        super.onCreate();
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
