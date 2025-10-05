package defpackage;

import android.annotation.SuppressLint;
import android.os.Build;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.cloud.DownloaderService;

/* renamed from: act  reason: default package */
/* compiled from: CloudStorageManager */
public final class act implements ade {
    private static act d = null;
    public ade a;
    public List<add> b = new ArrayList();
    public List<acs> c = new ArrayList();

    private act() {
        a((add) new adr());
        a((add) new adv());
        a((add) new adn());
        a((add) new aea());
        a((add) new aeg());
        c();
    }

    public static String a() {
        String b2 = aei.a().d.b("cloud-sync-download-location");
        return (b2 == null || b2.length() == 0) ? agw.d() : b2;
    }

    private void a(add add) {
        this.b.add(add);
    }

    public static act b() {
        if (d == null) {
            d = new act();
        }
        return d;
    }

    @SuppressLint({"NewApi"})
    public static File c(int i) {
        File file;
        if (Build.VERSION.SDK_INT > 7) {
            file = ComicReaderApp.a().getExternalFilesDir((String) null);
        } else {
            String d2 = agw.d();
            file = (d2 == null || d2.length() <= 0) ? null : new File(d2);
        }
        if (file == null) {
            file = ComicReaderApp.a().getFilesDir();
        }
        File file2 = new File(file.getAbsolutePath() + "/temp/");
        if (file2.exists() || file2.mkdirs()) {
            return new File(file2.getAbsolutePath() + File.separatorChar + i + "_tmp");
        }
        return null;
    }

    private void c() {
        for (aev next : aei.a().g.a()) {
            this.c.add(a(next.b).a(next));
        }
    }

    public final acs a(int i) {
        for (acs next : this.c) {
            if (next.a() == i) {
                return next;
            }
        }
        return null;
    }

    public final add a(String str) {
        for (add next : this.b) {
            if (next.a().equals(str)) {
                return next;
            }
        }
        return null;
    }

    public final void a(int i, boolean z) {
        if (z) {
            aev a2 = aei.a().g.a(i);
            this.c.add(a(a2.b).a(a2));
        }
        if (this.a != null) {
            this.a.a(i, z);
        }
    }

    /* JADX INFO: finally extract failed */
    public final void b(int i) {
        acs a2 = a(i);
        if (a2 != null) {
            DownloaderService a3 = DownloaderService.a();
            a3.b.b = true;
            try {
                for (acv acv : new ArrayList(a3.b())) {
                    if (acv.a.c == i) {
                        a3.a(acv, true);
                    }
                }
                a3.b.b = false;
                a3.b.a();
                agm.a(i);
                a2.i();
            } catch (Throwable th) {
                a3.b.b = false;
                a3.b.a();
                throw th;
            }
        }
    }

    public final void b(int i, boolean z) {
        aev a2;
        if (z && (a2 = aei.a().g.a(i)) != null) {
            a2.k = ahc.b();
            aew aew = aei.a().g;
            aew.b(a2);
        }
        aei.a().b.d();
        acr.a();
        if (this.a != null) {
            this.a.b(i, z);
        }
    }

    public final void d(int i) {
        this.c.remove(a(i));
        if (this.a != null) {
            this.a.d(i);
        }
    }

    public final void e(int i) {
        if (this.a != null) {
            this.a.e(i);
        }
    }
}
