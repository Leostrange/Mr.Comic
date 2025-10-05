package meanlabs.comicreader.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

public final class ConnectivityReceiver extends BroadcastReceiver {
    static ConnectivityReceiver d;
    public Context a;
    public List<b> b;
    public boolean c = false;
    private final ConnectivityManager e;

    public enum a {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = new int[]{a, b, c, d, e};
        }
    }

    public interface b {
        void b();

        void c();
    }

    private ConnectivityReceiver(Context context) {
        this.a = context;
        this.b = new ArrayList();
        this.e = (ConnectivityManager) context.getSystemService("connectivity");
        this.e.getNetworkInfo(1);
        b();
    }

    public static ConnectivityReceiver a() {
        if (d == null) {
            d = new ConnectivityReceiver(ComicReaderApp.a());
        }
        return d;
    }

    private void d() {
        for (b next : this.b) {
            if (this.c) {
                next.b();
            } else {
                next.c();
            }
        }
    }

    public final void a(b bVar) {
        if (bVar != null && !this.b.contains(bVar)) {
            this.b.add(bVar);
        }
    }

    public final void b() {
        NetworkInfo activeNetworkInfo = this.e.getActiveNetworkInfo();
        if (activeNetworkInfo == null || activeNetworkInfo.getState() != NetworkInfo.State.CONNECTED) {
            if (this.c) {
                this.c = false;
                d();
            }
        } else if (!this.c) {
            this.c = true;
            d();
        }
    }

    public final int c() {
        boolean c2 = aei.a().d.c("download-only-on-wifi");
        boolean c3 = aei.a().d.c("dont-download-on-roaming");
        NetworkInfo activeNetworkInfo = this.e.getActiveNetworkInfo();
        return activeNetworkInfo == null ? a.b : activeNetworkInfo.getDetailedState() != NetworkInfo.DetailedState.CONNECTED ? a.e : (!c2 || activeNetworkInfo.getType() == 1) ? (!c3 || !activeNetworkInfo.isRoaming()) ? a.a : a.d : a.c;
    }

    public final void onReceive(Context context, Intent intent) {
        NetworkInfo activeNetworkInfo = this.e.getActiveNetworkInfo();
        if (activeNetworkInfo == null || intent.getBooleanExtra("noConnectivity", false)) {
            this.c = false;
            if (this.b != null) {
                d();
            }
        } else if (activeNetworkInfo != null && !intent.getBooleanExtra("noConnectivity", false)) {
            this.c = true;
            if (this.b != null) {
                d();
            }
        }
    }
}
