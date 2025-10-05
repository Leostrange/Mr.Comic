package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.widget.Toast;
import defpackage.ku;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.cloud.googledrive.GoogleNonWebViewAuthActivity;

/* renamed from: adx  reason: default package */
/* compiled from: GoogleNonWebViewAuthHandler */
public final class adx {
    private static ku a = null;
    private static int b = 10000;

    private static ku a() {
        if (a == null) {
            ku.a aVar = new ku.a(new ms(), new nc(), "917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju.apps.googleusercontent.com", "avLwAxpxX69OLnGfAjsYGg59", b());
            aVar.p = "offline";
            a = aVar.a();
        }
        return a;
    }

    public static void a(Activity activity) {
        Toast.makeText(activity, activity.getString(R.string.unableToLogIntoService, new Object[]{activity.getString(R.string.googleDrive)}), 1).show();
        act.b().a(-1, false);
    }

    public static void a(Activity activity, int i) {
        ku a2 = a();
        kv kvVar = new kv(a2.f, a2.e, "", a2.h);
        kvVar.accessType = a2.j;
        kvVar.approvalPrompt = a2.i;
        kvVar.d("com.googleusercontent.apps.917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju:/localhost");
        String e = kvVar.e();
        Intent intent = new Intent(activity, GoogleNonWebViewAuthActivity.class);
        intent.putExtra("authurl", e);
        intent.putExtra("serviecid", i);
        activity.startActivity(intent);
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(final android.app.Activity r11, java.lang.String r12, int r13) {
        /*
            r8 = 1000(0x3e8, double:4.94E-321)
            r1 = 0
            r0 = 1
            ku r2 = a()
            kw r2 = r2.a(r12)
            r2.b(r12)
            java.lang.String r3 = "com.googleusercontent.apps.917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju:/localhost"
            r2.c(r3)
            java.util.List r3 = b()
            r2.b((java.util.Collection<java.lang.String>) r3)
            ky r2 = r2.b()     // Catch:{ IOException -> 0x00ed }
            if (r2 == 0) goto L_0x0095
            java.lang.String r3 = r2.accessToken     // Catch:{ IOException -> 0x00ed }
            java.lang.String r4 = r2.refreshToken     // Catch:{ IOException -> 0x00ed }
            java.lang.Long r2 = r2.expiresInSeconds     // Catch:{ IOException -> 0x00ed }
            if (r3 == 0) goto L_0x0095
            int r5 = r3.length()     // Catch:{ IOException -> 0x00ed }
            if (r5 <= 0) goto L_0x0095
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x00ed }
            java.lang.String r6 = "Tokens are: "
            r5.<init>(r6)     // Catch:{ IOException -> 0x00ed }
            java.lang.StringBuilder r5 = r5.append(r3)     // Catch:{ IOException -> 0x00ed }
            java.lang.String r6 = ", "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ IOException -> 0x00ed }
            java.lang.StringBuilder r5 = r5.append(r4)     // Catch:{ IOException -> 0x00ed }
            java.lang.String r6 = ", "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ IOException -> 0x00ed }
            r5.append(r2)     // Catch:{ IOException -> 0x00ed }
            r5 = -1
            if (r13 != r5) goto L_0x00a3
            aev r5 = new aev     // Catch:{ IOException -> 0x00ed }
            r5.<init>()     // Catch:{ IOException -> 0x00ed }
            java.lang.String r6 = "googledrive"
            r5.b = r6     // Catch:{ IOException -> 0x00ed }
            r5.h = r3     // Catch:{ IOException -> 0x00ed }
            r5.g = r4     // Catch:{ IOException -> 0x00ed }
            long r6 = defpackage.ahc.b()     // Catch:{ IOException -> 0x00ed }
            long r2 = r2.longValue()     // Catch:{ IOException -> 0x00ed }
            long r2 = r2 * r8
            long r2 = r2 + r6
            r5.i = r2     // Catch:{ IOException -> 0x00ed }
            adw r2 = new adw     // Catch:{ IOException -> 0x00ed }
            r2.<init>(r5)     // Catch:{ IOException -> 0x00ed }
            oy r2 = r2.a()     // Catch:{ IOException -> 0x00ed }
            if (r2 == 0) goto L_0x00a0
            pc r2 = r2.user     // Catch:{ IOException -> 0x00ed }
            java.lang.String r2 = r2.displayName     // Catch:{ IOException -> 0x00ed }
        L_0x0078:
            r5.f = r2     // Catch:{ IOException -> 0x00ed }
            java.lang.String r2 = r5.f     // Catch:{ IOException -> 0x00ed }
            r5.c = r2     // Catch:{ IOException -> 0x00ed }
            aei r2 = defpackage.aei.a()     // Catch:{ IOException -> 0x00ed }
            aew r2 = r2.g     // Catch:{ IOException -> 0x00ed }
            boolean r2 = r2.a((defpackage.aev) r5)     // Catch:{ IOException -> 0x00ed }
            if (r2 == 0) goto L_0x00f7
            act r1 = defpackage.act.b()     // Catch:{ IOException -> 0x00f2 }
            int r2 = r5.a     // Catch:{ IOException -> 0x00f2 }
            r3 = 1
            r1.a(r2, r3)     // Catch:{ IOException -> 0x00f2 }
        L_0x0094:
            r1 = r0
        L_0x0095:
            if (r1 != 0) goto L_0x009f
            adx$1 r0 = new adx$1
            r0.<init>(r11)
            r11.runOnUiThread(r0)
        L_0x009f:
            return
        L_0x00a0:
            java.lang.String r2 = ""
            goto L_0x0078
        L_0x00a3:
            aei r5 = defpackage.aei.a()     // Catch:{ IOException -> 0x00ed }
            aew r5 = r5.g     // Catch:{ IOException -> 0x00ed }
            aev r5 = r5.a((int) r13)     // Catch:{ IOException -> 0x00ed }
            if (r5 == 0) goto L_0x0095
            r5.h = r3     // Catch:{ IOException -> 0x00ed }
            r5.g = r4     // Catch:{ IOException -> 0x00ed }
            long r6 = defpackage.ahc.b()     // Catch:{ IOException -> 0x00ed }
            long r2 = r2.longValue()     // Catch:{ IOException -> 0x00ed }
            long r2 = r2 * r8
            long r2 = r2 + r6
            r5.i = r2     // Catch:{ IOException -> 0x00ed }
            adw r2 = new adw     // Catch:{ IOException -> 0x00ed }
            r2.<init>(r5)     // Catch:{ IOException -> 0x00ed }
            oy r2 = r2.a()     // Catch:{ IOException -> 0x00ed }
            if (r2 == 0) goto L_0x00ea
            pc r2 = r2.user     // Catch:{ IOException -> 0x00ed }
            java.lang.String r2 = r2.displayName     // Catch:{ IOException -> 0x00ed }
        L_0x00ce:
            r5.f = r2     // Catch:{ IOException -> 0x00ed }
            java.lang.String r2 = r5.f     // Catch:{ IOException -> 0x00ed }
            r5.c = r2     // Catch:{ IOException -> 0x00ed }
            aei r2 = defpackage.aei.a()     // Catch:{ IOException -> 0x00ed }
            aew r2 = r2.g     // Catch:{ IOException -> 0x00ed }
            boolean r2 = defpackage.aew.c(r5)     // Catch:{ IOException -> 0x00ed }
            if (r2 == 0) goto L_0x0095
            act r2 = defpackage.act.b()     // Catch:{ IOException -> 0x00ed }
            r3 = 0
            r2.a(r13, r3)     // Catch:{ IOException -> 0x00ed }
            r1 = r0
            goto L_0x0095
        L_0x00ea:
            java.lang.String r2 = ""
            goto L_0x00ce
        L_0x00ed:
            r0 = move-exception
        L_0x00ee:
            r0.printStackTrace()
            goto L_0x0095
        L_0x00f2:
            r1 = move-exception
            r10 = r1
            r1 = r0
            r0 = r10
            goto L_0x00ee
        L_0x00f7:
            r0 = r1
            goto L_0x0094
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.adx.a(android.app.Activity, java.lang.String, int):void");
    }

    private static List<String> b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("https://www.googleapis.com/auth/drive");
        return arrayList;
    }
}
