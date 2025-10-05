package defpackage;

import defpackage.acy;
import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: aef  reason: default package */
/* compiled from: SMBService */
public final class aef extends acs {
    zl b;
    final Lock c = new ReentrantLock();

    public aef(aev aev) {
        super(aev);
    }

    public static int a(aev aev) {
        try {
            return a(aev.d, a(aev.e, aev.f, aev.g)).g() ? 0 : 1;
        } catch (MalformedURLException e) {
            agt.a((Exception) e);
            return 3;
        } catch (zo e2) {
            agt.a((Exception) e2);
            return 1;
        } catch (aaq e3) {
            agt.a((Exception) e3);
            return 2;
        } catch (Exception e4) {
            agt.a(e4);
            return 2;
        }
    }

    private static aar a(String str, zl zlVar) {
        return new aar(str, zlVar);
    }

    private static String a(String str) {
        String trim = str.trim();
        if (trim == null || trim.length() <= 0) {
            return null;
        }
        return trim;
    }

    private static zl a(String str, String str2, String str3) {
        return new zl(a(str), a(str2), a(str3));
    }

    private zl o() {
        this.c.lock();
        if (this.b == null) {
            this.b = a(this.a.e, this.a.f, this.a.g);
        }
        this.c.unlock();
        return this.b;
    }

    public final List<adc> a(adc adc) {
        ArrayList arrayList;
        aed e;
        try {
            aar[] a = aeh.a(((aee) adc).a);
            arrayList = new ArrayList(a.length);
            try {
                for (aar aee : a) {
                    arrayList.add(new aee(aee, this.a.d));
                }
            } catch (aed e2) {
                e = e2;
                agt.a((Exception) e);
                return arrayList;
            }
        } catch (aed e3) {
            aed aed = e3;
            arrayList = null;
            e = aed;
            agt.a((Exception) e);
            return arrayList;
        }
        return arrayList;
    }

    public final boolean a(String str, String str2, acy acy) {
        boolean z = false;
        try {
            agt.a("SMBService", "Downloading File: " + str);
            aar a = a(str, o());
            agt.a("SMBService", "File can be read? " + (a.g() ? "true" : "false"));
            agt.a("SMBService", "Input allowed? " + (a.getDoInput() ? "true" : "false"));
            if (a.f() && a.g()) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(a.getInputStream());
                agt.a("SMBService", "Opened Stream for file");
                FileOutputStream b2 = agz.b(str2);
                if (b2 != null) {
                    z = aha.a(bufferedInputStream, b2, acy, 2097152);
                }
                acy.a(z ? acy.a.SUCCESS : acy.a.FAIL);
            }
        } catch (Exception e) {
            agt.a(e);
        }
        return z;
    }

    public final String b() {
        return "smb";
    }

    public final String c() {
        return ComicReaderApp.a().getString(R.string.addSMBShare);
    }

    public final int d() {
        return R.drawable.smb;
    }

    public final String e() {
        return "";
    }

    public final boolean f() {
        try {
            return a(this.a.d, o()).g();
        } catch (Exception e) {
            agt.a(e);
            return false;
        }
    }

    public final String g() {
        return "smb/" + this.a.c.replace("smb://", "");
    }

    public final adc j() {
        try {
            aar a = a(this.a.d, o());
            if (a.g()) {
                return new aee(a, this.a.d);
            }
        } catch (Exception e) {
            agt.a(e);
        }
        return null;
    }

    public final String m() {
        return aei.a().d.b("smb-download-newly-added-files");
    }

    public final boolean n() {
        return "prefCreateThumbs".equals(aei.a().d.b("create-smb-sthumbnails"));
    }
}
