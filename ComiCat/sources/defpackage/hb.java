package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: hb  reason: default package */
/* compiled from: ThirdPartyResourceParser */
public class hb {
    public static final String a = hb.class.getName();
    public final String b = a();
    private final String c;
    private final Context d;

    public hb(Context context, String str) {
        this.c = str;
        this.d = context;
    }

    private String a() {
        InputStream inputStream;
        if (this.d != null) {
            try {
                inputStream = this.d.getPackageManager().getResourcesForApplication(this.c).getAssets().open("api_key.txt");
                try {
                    gz.c(a, "Attempting to parse API Key from assets directory");
                    String a2 = a(inputStream);
                    if (inputStream == null) {
                        return a2;
                    }
                    try {
                        inputStream.close();
                        return a2;
                    } catch (IOException e) {
                        gz.c(a, "Unable to get api key asset document: " + e.getMessage());
                    } catch (PackageManager.NameNotFoundException e2) {
                        gz.c(a, "Unable to get api key asset document: " + e2.getMessage());
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
        }
        return null;
        if (inputStream != null) {
            inputStream.close();
        }
        throw th;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0069 A[SYNTHETIC, Splitter:B:21:0x0069] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x006e A[SYNTHETIC, Splitter:B:24:0x006e] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00ac A[SYNTHETIC, Splitter:B:33:0x00ac] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00b1 A[SYNTHETIC, Splitter:B:36:0x00b1] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.io.InputStream r7) {
        /*
            r0 = 0
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x004c, all -> 0x00a6 }
            java.lang.String r1 = "UTF-8"
            r3.<init>(r7, r1)     // Catch:{ IOException -> 0x004c, all -> 0x00a6 }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ IOException -> 0x00ef, all -> 0x00e9 }
            r2.<init>(r3)     // Catch:{ IOException -> 0x00ef, all -> 0x00e9 }
            java.lang.String r0 = r2.readLine()     // Catch:{ IOException -> 0x00f3 }
            r3.close()     // Catch:{ IOException -> 0x0018 }
        L_0x0014:
            r2.close()     // Catch:{ IOException -> 0x0032 }
        L_0x0017:
            return r0
        L_0x0018:
            r1 = move-exception
            java.lang.String r3 = a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "Unable to close InputStreamReader: "
            r4.<init>(r5)
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r1 = r4.append(r1)
            java.lang.String r1 = r1.toString()
            defpackage.gz.d(r3, r1)
            goto L_0x0014
        L_0x0032:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Unable to close BufferedReader: "
            r3.<init>(r4)
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            defpackage.gz.d(r2, r1)
            goto L_0x0017
        L_0x004c:
            r1 = move-exception
            r2 = r0
            r3 = r0
        L_0x004f:
            java.lang.String r4 = a     // Catch:{ all -> 0x00ed }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ed }
            java.lang.String r6 = "Unable read from asset: "
            r5.<init>(r6)     // Catch:{ all -> 0x00ed }
            java.lang.String r1 = r1.getMessage()     // Catch:{ all -> 0x00ed }
            java.lang.StringBuilder r1 = r5.append(r1)     // Catch:{ all -> 0x00ed }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x00ed }
            defpackage.gz.c(r4, r1)     // Catch:{ all -> 0x00ed }
            if (r3 == 0) goto L_0x006c
            r3.close()     // Catch:{ IOException -> 0x008c }
        L_0x006c:
            if (r2 == 0) goto L_0x0017
            r2.close()     // Catch:{ IOException -> 0x0072 }
            goto L_0x0017
        L_0x0072:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Unable to close BufferedReader: "
            r3.<init>(r4)
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            defpackage.gz.d(r2, r1)
            goto L_0x0017
        L_0x008c:
            r1 = move-exception
            java.lang.String r3 = a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "Unable to close InputStreamReader: "
            r4.<init>(r5)
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r1 = r4.append(r1)
            java.lang.String r1 = r1.toString()
            defpackage.gz.d(r3, r1)
            goto L_0x006c
        L_0x00a6:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        L_0x00aa:
            if (r3 == 0) goto L_0x00af
            r3.close()     // Catch:{ IOException -> 0x00b5 }
        L_0x00af:
            if (r2 == 0) goto L_0x00b4
            r2.close()     // Catch:{ IOException -> 0x00cf }
        L_0x00b4:
            throw r0
        L_0x00b5:
            r1 = move-exception
            java.lang.String r3 = a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "Unable to close InputStreamReader: "
            r4.<init>(r5)
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r1 = r4.append(r1)
            java.lang.String r1 = r1.toString()
            defpackage.gz.d(r3, r1)
            goto L_0x00af
        L_0x00cf:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Unable to close BufferedReader: "
            r3.<init>(r4)
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            defpackage.gz.d(r2, r1)
            goto L_0x00b4
        L_0x00e9:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x00aa
        L_0x00ed:
            r0 = move-exception
            goto L_0x00aa
        L_0x00ef:
            r1 = move-exception
            r2 = r0
            goto L_0x004f
        L_0x00f3:
            r1 = move-exception
            goto L_0x004f
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hb.a(java.io.InputStream):java.lang.String");
    }

    public final String a(String str) {
        if (this.d == null) {
            return null;
        }
        gz.c(a, "Attempting to parse API Key from meta data in Android manifest");
        try {
            ApplicationInfo applicationInfo = this.d.getPackageManager().getApplicationInfo(this.c, NotificationCompat.FLAG_HIGH_PRIORITY);
            if (applicationInfo.metaData != null) {
                return applicationInfo.metaData.getString(str);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            gz.d(a, "(key=" + str + ") " + e.getMessage());
            return null;
        }
    }
}
