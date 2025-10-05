package defpackage;

import android.app.Activity;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;

/* renamed from: ads  reason: default package */
/* compiled from: GoogleAuthHandler */
public final class ads {
    private static ku a = null;
    private static int b = 10000;

    private static List<String> a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("https://www.googleapis.com/auth/drive");
        return arrayList;
    }

    public static void a(Activity activity) {
        Toast.makeText(activity, activity.getString(R.string.unableToLogIntoService, new Object[]{activity.getString(R.string.googleDrive)}), 1).show();
        act.b().a(-1, false);
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(final android.app.Activity r10, java.lang.String r11, int r12) {
        /*
            r8 = 1000(0x3e8, double:4.94E-321)
            r7 = 0
            r6 = 1
            ku r0 = a
            if (r0 != 0) goto L_0x0029
            ku$a r0 = new ku$a
            ms r1 = new ms
            r1.<init>()
            nc r2 = new nc
            r2.<init>()
            java.lang.String r3 = "917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju.apps.googleusercontent.com"
            java.lang.String r4 = "avLwAxpxX69OLnGfAjsYGg59"
            java.util.List r5 = a()
            r0.<init>(r1, r2, r3, r4, r5)
            java.lang.String r1 = "offline"
            r0.p = r1
            ku r0 = r0.a()
            a = r0
        L_0x0029:
            ku r0 = a
            kw r0 = r0.a(r11)
            r0.b(r11)
            java.lang.String r1 = "http://localhost"
            r0.c(r1)
            java.util.List r1 = a()
            r0.b((java.util.Collection<java.lang.String>) r1)
            ky r0 = r0.b()     // Catch:{ IOException -> 0x0111 }
            if (r0 == 0) goto L_0x00b9
            java.lang.String r1 = r0.accessToken     // Catch:{ IOException -> 0x0111 }
            java.lang.String r2 = r0.refreshToken     // Catch:{ IOException -> 0x0111 }
            java.lang.Long r0 = r0.expiresInSeconds     // Catch:{ IOException -> 0x0111 }
            if (r1 == 0) goto L_0x00b9
            int r3 = r1.length()     // Catch:{ IOException -> 0x0111 }
            if (r3 <= 0) goto L_0x00b9
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0111 }
            java.lang.String r4 = "Tokens are: "
            r3.<init>(r4)     // Catch:{ IOException -> 0x0111 }
            java.lang.StringBuilder r3 = r3.append(r1)     // Catch:{ IOException -> 0x0111 }
            java.lang.String r4 = ", "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ IOException -> 0x0111 }
            java.lang.StringBuilder r3 = r3.append(r2)     // Catch:{ IOException -> 0x0111 }
            java.lang.String r4 = ", "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ IOException -> 0x0111 }
            r3.append(r0)     // Catch:{ IOException -> 0x0111 }
            r3 = -1
            if (r12 != r3) goto L_0x00c7
            aev r3 = new aev     // Catch:{ IOException -> 0x0111 }
            r3.<init>()     // Catch:{ IOException -> 0x0111 }
            java.lang.String r4 = "googledrive"
            r3.b = r4     // Catch:{ IOException -> 0x0111 }
            r3.h = r1     // Catch:{ IOException -> 0x0111 }
            r3.g = r2     // Catch:{ IOException -> 0x0111 }
            long r4 = defpackage.ahc.b()     // Catch:{ IOException -> 0x0111 }
            long r0 = r0.longValue()     // Catch:{ IOException -> 0x0111 }
            long r0 = r0 * r8
            long r0 = r0 + r4
            r3.i = r0     // Catch:{ IOException -> 0x0111 }
            adw r0 = new adw     // Catch:{ IOException -> 0x0111 }
            r0.<init>(r3)     // Catch:{ IOException -> 0x0111 }
            oy r0 = r0.a()     // Catch:{ IOException -> 0x0111 }
            if (r0 == 0) goto L_0x00c4
            pc r0 = r0.user     // Catch:{ IOException -> 0x0111 }
            java.lang.String r0 = r0.displayName     // Catch:{ IOException -> 0x0111 }
        L_0x009b:
            r3.f = r0     // Catch:{ IOException -> 0x0111 }
            java.lang.String r0 = r3.f     // Catch:{ IOException -> 0x0111 }
            r3.c = r0     // Catch:{ IOException -> 0x0111 }
            aei r0 = defpackage.aei.a()     // Catch:{ IOException -> 0x0111 }
            aew r0 = r0.g     // Catch:{ IOException -> 0x0111 }
            boolean r0 = r0.a((defpackage.aev) r3)     // Catch:{ IOException -> 0x0111 }
            if (r0 == 0) goto L_0x0119
            act r0 = defpackage.act.b()     // Catch:{ IOException -> 0x0116 }
            int r1 = r3.a     // Catch:{ IOException -> 0x0116 }
            r2 = 1
            r0.a(r1, r2)     // Catch:{ IOException -> 0x0116 }
            r0 = r6
        L_0x00b8:
            r7 = r0
        L_0x00b9:
            if (r7 != 0) goto L_0x00c3
            ads$1 r0 = new ads$1
            r0.<init>(r10)
            r10.runOnUiThread(r0)
        L_0x00c3:
            return
        L_0x00c4:
            java.lang.String r0 = ""
            goto L_0x009b
        L_0x00c7:
            aei r3 = defpackage.aei.a()     // Catch:{ IOException -> 0x0111 }
            aew r3 = r3.g     // Catch:{ IOException -> 0x0111 }
            aev r3 = r3.a((int) r12)     // Catch:{ IOException -> 0x0111 }
            if (r3 == 0) goto L_0x00b9
            r3.h = r1     // Catch:{ IOException -> 0x0111 }
            r3.g = r2     // Catch:{ IOException -> 0x0111 }
            long r4 = defpackage.ahc.b()     // Catch:{ IOException -> 0x0111 }
            long r0 = r0.longValue()     // Catch:{ IOException -> 0x0111 }
            long r0 = r0 * r8
            long r0 = r0 + r4
            r3.i = r0     // Catch:{ IOException -> 0x0111 }
            adw r0 = new adw     // Catch:{ IOException -> 0x0111 }
            r0.<init>(r3)     // Catch:{ IOException -> 0x0111 }
            oy r0 = r0.a()     // Catch:{ IOException -> 0x0111 }
            if (r0 == 0) goto L_0x010e
            pc r0 = r0.user     // Catch:{ IOException -> 0x0111 }
            java.lang.String r0 = r0.displayName     // Catch:{ IOException -> 0x0111 }
        L_0x00f2:
            r3.f = r0     // Catch:{ IOException -> 0x0111 }
            java.lang.String r0 = r3.f     // Catch:{ IOException -> 0x0111 }
            r3.c = r0     // Catch:{ IOException -> 0x0111 }
            aei r0 = defpackage.aei.a()     // Catch:{ IOException -> 0x0111 }
            aew r0 = r0.g     // Catch:{ IOException -> 0x0111 }
            boolean r0 = defpackage.aew.c(r3)     // Catch:{ IOException -> 0x0111 }
            if (r0 == 0) goto L_0x00b9
            act r0 = defpackage.act.b()     // Catch:{ IOException -> 0x0111 }
            r1 = 0
            r0.a(r12, r1)     // Catch:{ IOException -> 0x0111 }
            r7 = r6
            goto L_0x00b9
        L_0x010e:
            java.lang.String r0 = ""
            goto L_0x00f2
        L_0x0111:
            r0 = move-exception
        L_0x0112:
            r0.printStackTrace()
            goto L_0x00b9
        L_0x0116:
            r0 = move-exception
            r7 = r6
            goto L_0x0112
        L_0x0119:
            r0 = r7
            goto L_0x00b8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ads.a(android.app.Activity, java.lang.String, int):void");
    }

    public static boolean a(aev aev) {
        ky c;
        try {
            new StringBuilder("Checking expiry: ").append(aev.i).append(", against: ").append(ahc.b());
            if (ahc.b() > aev.i - ((long) b) && (c = new kx(new ms(), new nc(), aev.g, "917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju.apps.googleusercontent.com", "avLwAxpxX69OLnGfAjsYGg59").b()) != null) {
                String str = c.accessToken;
                long longValue = c.expiresInSeconds.longValue();
                if (str != null && str.length() > 0) {
                    new StringBuilder("New Tokens are: ").append(str).append(", ").append(longValue);
                    aev.h = str;
                    aev.i = ahc.b() + (longValue * 1000);
                    aew aew = aei.a().g;
                    aew.c(aev);
                }
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
