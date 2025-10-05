package meanlabs.comicreader.cloud;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.support.v4.app.NotificationCompat;
import defpackage.acv;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicreader.utils.ConnectivityReceiver;

public class DownloaderService extends Service implements adf {
    public static DownloaderService c = null;
    adf a;
    public ada b;

    public static DownloaderService a() {
        return c;
    }

    public static void d(acv acv) {
        if (acv.e == acv.a.e && acv.b()) {
            acv.j();
            if (acv.i.exists()) {
                agz.a(acv.i);
            }
            acv.a.b(false);
            acv.h();
            acv.a(acv.a.f);
        }
    }

    public final void a(int i) {
        if (this.a != null) {
            this.a.a(i);
        }
    }

    public final void a(int i, int i2) {
        acv b2;
        boolean z = false;
        if (i2 == acv.a.c && (b2 = this.b.a.b(i)) != null && (aei.a().d.c("auto-clear-completed") || b2.a.f.c(NotificationCompat.FLAG_LOCAL_ONLY))) {
            this.b.a.a(i);
            z = true;
        }
        if (this.a != null) {
            if (z || i2 == acv.a.b) {
                this.a.a(i);
            } else {
                this.a.a(i, i2);
            }
        }
        if (i2 != acv.a.g || i2 != acv.a.f) {
            this.b.a();
        }
    }

    public final void a(int i, int i2, int i3) {
        if (this.a != null) {
            this.a.a(i, i2, i3);
        }
    }

    public final void a(acv acv) {
        if (this.a != null) {
            this.a.a(acv);
        }
    }

    public final void a(acv acv, boolean z) {
        if (!acv.g() || z) {
            if (!acv.g() || z) {
                acv.a(acv.a.b);
                if (acv.h.exists()) {
                    agz.a(acv.h);
                }
                acv.j.a(acv.a.a);
            }
            this.b.a.a(acv.a.a);
            this.b.a();
        }
    }

    public final boolean a(String str, int i, String str2, int i2, String str3, int i3, int i4) {
        acv a2 = this.b.a(str, i, str2, i2, str3, i3, i4);
        if (a2 == null) {
            return false;
        }
        a(a2);
        return true;
    }

    public final List<acv> b() {
        return this.b.a.a;
    }

    public final void b(acv acv) {
        if (acv.e == acv.a.d || acv.e == acv.a.e) {
            acv.a(acv.a.f);
            acv.a.a(false);
            acv.h();
            acv.g = 0;
        }
        this.b.a();
    }

    /* JADX INFO: finally extract failed */
    public final void c() {
        this.b.b = true;
        try {
            for (acv b2 : b()) {
                b(b2);
            }
            this.b.b = false;
            this.b.a();
        } catch (Throwable th) {
            this.b.b = false;
            throw th;
        }
    }

    public final void c(acv acv) {
        if (acv.e == acv.a.g || acv.f()) {
            if (!(acv.e == acv.a.c || acv.e == acv.a.h)) {
                acv.a(acv.a.d);
                acv.a.a(true);
                acv.h();
            }
            this.b.a();
        }
    }

    public final void d() {
        this.b.b = true;
        try {
            List<acv> b2 = b();
            if (b2 != null) {
                ArrayList<acv> arrayList = new ArrayList<>();
                for (acv next : b2) {
                    if (next.a.b()) {
                        arrayList.add(next);
                    }
                }
                for (acv e : arrayList) {
                    e(e);
                }
            }
        } finally {
            this.b.b = false;
        }
    }

    public final void e() {
        this.b.b = true;
        try {
            for (acv acv : new ArrayList(b())) {
                if (acv.a.c()) {
                    d(acv);
                }
            }
        } finally {
            this.b.b = false;
            this.b.a();
        }
    }

    public final void e(acv acv) {
        this.b.a.a(acv.a.a);
        a(acv.a.a);
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        c = this;
        super.onCreate();
        this.b = new ada();
        this.b.a();
        ConnectivityReceiver a2 = ConnectivityReceiver.a();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        a2.a.registerReceiver(a2, intentFilter);
        a2.b();
    }

    public void onDestroy() {
        c = null;
        this.b.d();
        ConnectivityReceiver a2 = ConnectivityReceiver.a();
        a2.a.unregisterReceiver(a2);
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }
}
