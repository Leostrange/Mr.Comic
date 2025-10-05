package defpackage;

import android.support.v4.app.NotificationCompat;
import defpackage.acy;
import defpackage.aer;
import java.io.File;
import meanlabs.comicreader.cloud.DownloaderService;

/* renamed from: adh  reason: default package */
/* compiled from: RemoteFileUtils */
public final class adh {
    public static File a(String str, String str2, long j, aev aev, boolean z, acy acy) {
        acs a;
        String b = ago.b(aev.b + str2);
        String a2 = agv.a(str2);
        if (a2 != null && a2.length() > 0) {
            b = b + ".tmp." + a2;
        }
        File a3 = adi.a().a(b, j);
        if (a3 != null || (a = act.b().a(aev.a)) == null || !a.f()) {
            return a3;
        }
        File file = new File(agp.b(adi.a().a.getAbsolutePath(), b));
        String a4 = adi.a().a(b);
        if (acy == null) {
            acy = new acy() {
                public final void a(int i, int i2) {
                }

                public final void a(acw acw, String str) {
                }

                public final void a(acy.a aVar) {
                }

                public final boolean a() {
                    return true;
                }
            };
        }
        if (a.a(str, a4, acy)) {
            File file2 = new File(a4);
            if (file2.renameTo(file)) {
                file2 = file;
            }
            if (z) {
                return file2;
            }
            adi a5 = adi.a();
            synchronized (a5) {
                a5.a(adi.c - 1);
                a5.b.add(file2);
            }
            return file2;
        }
        agz.a(new File(a4));
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(defpackage.aeq r3, boolean r4, boolean r5, defpackage.aek r6) {
        /*
            r0 = 0
            if (r6 == 0) goto L_0x0030
        L_0x0003:
            r1 = 1
            boolean r2 = r3.g()
            if (r2 == 0) goto L_0x003c
            if (r5 != 0) goto L_0x0037
            aet r1 = r3.h
            r2 = 8
            r1.a(r2, r0)
            aet r1 = r3.h
            r2 = 16
            r1.a(r2, r0)
            if (r4 != 0) goto L_0x0027
            java.lang.String r1 = ""
            r3.e = r1
            java.lang.String r1 = ""
            r3.f = r1
            r1 = -1
            r3.g = r1
        L_0x0027:
            defpackage.aek.a((defpackage.aeq) r3)
        L_0x002a:
            if (r0 == 0) goto L_0x002f
            r6.g(r3)
        L_0x002f:
            return
        L_0x0030:
            aei r1 = defpackage.aei.a()
            aek r6 = r1.b
            goto L_0x0003
        L_0x0037:
            java.lang.String r0 = r3.d
            defpackage.agz.a((java.lang.String) r0)
        L_0x003c:
            r0 = r1
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.adh.a(aeq, boolean, boolean, aek):void");
    }

    public static boolean a(aeq aeq) {
        adg a;
        if (!aeq.d() || aeq.g() || (a = adg.a(aeq.f)) == null) {
            return false;
        }
        aer.a a2 = aei.a().f.a(a.a);
        if (a2 == null) {
            return DownloaderService.c.a(a.a, aeq.g, aeq.e, (int) a.b, "", aeq.a, NotificationCompat.FLAG_LOCAL_ONLY);
        }
        DownloaderService downloaderService = DownloaderService.c;
        acv b = downloaderService.b.a.b(a2.a);
        if (b == null) {
            return false;
        }
        if (a2.a()) {
            DownloaderService.c.b(b);
            return false;
        } else if (!a2.c()) {
            return false;
        } else {
            DownloaderService.d(b);
            return false;
        }
    }
}
