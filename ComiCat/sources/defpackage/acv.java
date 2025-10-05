package defpackage;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import defpackage.acy;
import defpackage.aer;
import defpackage.agm;
import java.io.File;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.cloud.DownloaderService;

/* renamed from: acv  reason: default package */
/* compiled from: Download */
public class acv implements acy {
    public aer.a a;
    public acs b;
    public String c;
    public int d;
    public int e;
    public String f;
    public int g = 0;
    public File h;
    public File i;
    public adf j;
    private adb k;

    /* renamed from: acv$a */
    /* compiled from: Download */
    public enum a {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = 6;
            g = 7;
            h = 8;
            i = new int[]{a, b, c, d, e, f, g, h};
        }

        public static int[] a() {
            return (int[]) i.clone();
        }
    }

    public acv(aer.a aVar) {
        this.a = aVar;
        if (this.a != null) {
            this.b = act.b().a(this.a.c);
            this.d = 0;
            this.j = DownloaderService.a();
            this.e = a.f;
            if (aVar.a()) {
                this.e = a.d;
            } else if (aVar.c()) {
                this.e = a.e;
                this.f = "";
            } else if (aVar.b()) {
                this.e = a.c;
            }
            this.c = agv.b(this.a.d);
            k();
        }
    }

    private void k() {
        act.b();
        this.h = act.c(this.a.a);
        if (this.h.exists() && b()) {
            agz.a(this.h);
        }
        this.d = (int) this.h.length();
    }

    public final void a(int i2) {
        this.e = i2;
        this.j.a(this.a.a, this.e);
    }

    public final void a(int i2, int i3) {
        this.d = i2;
        this.j.a(this.a.a, i2, i3);
        if (!a()) {
            this.k.cancel(true);
        }
    }

    public final void a(acw acw, String str) {
        agt.a("Download", "Error Downloading File: " + this.a.d + ", Error: " + str);
        this.f = str;
        int i2 = a.e;
        if (acw.a() && this.g < 2) {
            this.g++;
            i2 = a.f;
        }
        if (this.e == a.g || this.e == a.h) {
            a(i2);
        }
        if (!acw.a()) {
            this.a.b(true);
            h();
        }
    }

    public final void a(acy.a aVar) {
        if (aVar == acy.a.SUCCESS) {
            a((int) this.h.length(), 0);
            i();
            h();
        }
    }

    public final boolean a() {
        return this.e == a.g || this.e == a.h;
    }

    public final boolean b() {
        return this.b != null;
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        if (b() && f()) {
            a(a.g);
            k();
            if (((long) (this.a.e - this.d)) > ahc.a(this.h.getParentFile())) {
                a(acw.i, ComicReaderApp.a().getString(R.string.insufficientFreeSpace));
                return;
            }
            this.k = new adb(this, this);
            if (agv.h()) {
                this.k.executeOnExecutor(adb.THREAD_POOL_EXECUTOR, new aer.a[]{this.a});
                return;
            }
            this.k.execute(new aer.a[]{this.a});
        }
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        if (this.e == a.g) {
            a(a.f);
        }
    }

    public final boolean e() {
        return this.e == a.g;
    }

    public final boolean f() {
        return this.e == a.f;
    }

    public final boolean g() {
        return this.e == a.c || this.e == a.h || this.e == a.e;
    }

    public final void h() {
        aer aer = aei.a().f;
        aer.a(this.a);
    }

    public void i() {
        boolean z;
        aem b2;
        aeq b3;
        a(a.h);
        j();
        boolean a2 = agp.a(this.h, this.i);
        if (!a2) {
            a(acw.g, ComicReaderApp.a().getString(R.string.errorSavingFile));
        }
        if (a2) {
            if (this.a.h == 0 && (b3 = aei.a().b.b(this.a.d)) != null && b3.g == this.b.a() && b3.d()) {
                this.a.h = b3.a;
            }
            if (this.a.h != 0) {
                File file = this.i;
                int i2 = this.a.h;
                aeq a3 = aei.a().b.a(i2);
                if (a3 != null && file.exists()) {
                    afa afa = new afa(file, false);
                    if (afa.b() && afa.d() != 0 && agm.a(afa, i2)) {
                        a3.h.a(16);
                        a3.b = afa.d();
                        a3.d = file.getPath();
                        aek aek = aei.a().b;
                        z = aek.e(a3);
                        if (z && (b2 = ael.b(a3)) != null) {
                            agm.a(b2, 0, 0);
                        }
                    }
                }
                z = false;
            } else {
                File file2 = this.i;
                int a4 = this.b.a();
                agm.a a5 = agm.a(file2, afa.a(file2.getName()), false, a4, (adc) null, this.a);
                if (a5.a == agm.c.a) {
                    String parent = file2.getParent();
                    acs a6 = act.b().a(a4);
                    if (a6 != null) {
                        parent = parent.replace(a6.h(), "");
                    }
                    if (aei.a().c.a(parent) == null) {
                        aen aen = aei.a().c;
                        if (!(aen.a(parent) != null)) {
                            aem a7 = aem.a(parent);
                            a7.c = a4;
                            a7.f.a(2, a4 != -1);
                            a7.d = 1;
                            aen.a(a7);
                        }
                    }
                    agm.a(parent, 1);
                }
                z = a5.a == agm.c.a;
            }
            if (z) {
                a(a.c);
                String string = ComicReaderApp.a().getString(R.string.cloudSync);
                String string2 = ComicReaderApp.a().getString(R.string.downloadCompleted, new Object[]{this.c});
                String b4 = aei.a().d.b("notify");
                if (!"prefNoNotification".equals(b4)) {
                    boolean equals = "prefNotifyTextAndSound".equals(b4);
                    Context a8 = ComicReaderApp.a();
                    NotificationManager notificationManager = (NotificationManager) a8.getSystemService("notification");
                    if (notificationManager != null) {
                        Notification build = new NotificationCompat.Builder(a8).setContentTitle(string).setContentText(string2).setSmallIcon(R.drawable.icon).setContentIntent(PendingIntent.getActivity(a8, 0, new Intent(), 268435456)).setAutoCancel(true).build();
                        if (equals) {
                            build.defaults |= 4;
                        }
                        notificationManager.notify(equals ? 2 : 1, build);
                    }
                }
                aei.a().h.a(this.a.b, this.a.c, 1);
                this.a.f.a(2, true);
                ael.b();
                return;
            }
            a(acw.d, ComicReaderApp.a().getString(R.string.importFailedInvalidFile));
            this.a.b(true);
        }
    }

    public final boolean j() {
        this.i = new File(agp.b(this.b.h(), this.a.d));
        File parentFile = this.i.getParentFile();
        return parentFile.exists() || parentFile.mkdirs();
    }
}
