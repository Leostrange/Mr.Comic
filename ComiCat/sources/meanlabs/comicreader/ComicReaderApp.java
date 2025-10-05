package meanlabs.comicreader;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.support.multidex.MultiDexApplication;
import java.util.ArrayList;
import meanlabs.comicat.R;
import meanlabs.comicreader.cloud.DownloaderService;

public class ComicReaderApp extends MultiDexApplication {
    public static boolean a = false;
    private static ComicReaderApp b;
    private static Catalog c;
    private static long d = 0;

    public static Context a() {
        return b;
    }

    public static void a(Catalog catalog) {
        c = catalog;
    }

    public static void b() {
        d = System.currentTimeMillis();
    }

    public static long c() {
        return d;
    }

    public static Catalog d() {
        return c;
    }

    public void onCreate() {
        b = this;
        ahd.a();
        a = aei.a().a.getVersion() <= 0;
        aei a2 = aei.a();
        a2.b();
        a2.b.d();
        a2.d.a();
        a2.e.a();
        aew aew = a2.g;
        synchronized (aew) {
            aew.b = new ArrayList<>();
            Cursor b2 = aei.a().b("SELECT id, type, name, basepath, domain, user, password, token, expiry, flags, lastsynctime FROM services ORDER BY type COLLATE NOCASE ASC");
            if (b2 != null) {
                if (b2.moveToFirst()) {
                    do {
                        aev aev = new aev();
                        aev.a = b2.getInt(0);
                        aev.b = b2.getString(1);
                        aev.c = b2.getString(2);
                        aev.d = b2.getString(3);
                        aev.e = b2.getString(4);
                        aev.f = b2.getString(5);
                        aev.g = b2.getString(6);
                        aev.h = b2.getString(7);
                        aev.i = b2.getLong(8);
                        aev.j = new aet(b2.getInt(9));
                        aev.k = b2.getLong(10);
                        aew.b.add(aev);
                    } while (b2.moveToNext());
                }
                b2.close();
            }
        }
        a2.c.d();
        a2.f.a();
        aep aep = a2.h;
        aep.b.clear();
        Cursor b3 = aei.a().b("SELECT exclusionid, downloadref, serviceref, reason FROM cloud_exclusions");
        if (b3 != null) {
            if (b3.moveToFirst()) {
                do {
                    aeo aeo = new aeo();
                    aeo.a = b3.getInt(0);
                    aeo.b = b3.getString(1);
                    aeo.c = b3.getInt(2);
                    aeo.d = b3.getInt(3);
                    aep.b.put(aep.b(aeo.b, aeo.c, aeo.d), aeo);
                } while (b3.moveToNext());
            }
            b3.close();
        }
        if (agv.i()) {
            getExternalFilesDir(getString(R.string.comics));
        }
        startService(new Intent(this, DownloaderService.class));
        startService(new Intent(this, ThumbnailService.class));
        agt.a();
        super.onCreate();
    }
}
