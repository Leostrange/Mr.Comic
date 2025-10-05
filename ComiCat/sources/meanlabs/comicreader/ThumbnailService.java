package meanlabs.comicreader;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import meanlabs.comicreader.utils.ConnectivityReceiver;

public class ThumbnailService extends Service implements ConnectivityReceiver.b {
    static ThumbnailService c = null;
    public acj a = null;
    public final Lock b = new ReentrantLock();

    public static ThumbnailService a() {
        return c;
    }

    public final void a(boolean z) {
        this.b.lock();
        if (z && this.a != null) {
            this.a.cancel(true);
            this.a = null;
        }
        boolean c2 = aei.a().d.c("create-thumbnails-in-background");
        boolean equals = "prefCreateThumbsInBackground".equals(aei.a().d.b("create-cloud-thumbnails"));
        boolean equals2 = "prefCreateThumbsInBackground".equals(aei.a().d.b("create-smb-sthumbnails"));
        if (c2 || equals || equals2) {
            if (this.a == null) {
                this.a = new acj();
                if (agv.h()) {
                    this.a.executeOnExecutor(acj.THREAD_POOL_EXECUTOR, new Void[]{null});
                } else {
                    this.a.execute(new Void[]{null});
                }
            }
        } else if (this.a != null) {
            this.a.cancel(false);
            this.a = null;
        }
        this.b.unlock();
    }

    public final void b() {
        a(false);
    }

    public final void c() {
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        c = this;
        super.onCreate();
        ConnectivityReceiver.a().a(this);
        a(false);
    }

    public void onDestroy() {
        c = null;
        ConnectivityReceiver.a().b.remove(this);
        if (this.a != null) {
            this.a.cancel(true);
        }
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }
}
