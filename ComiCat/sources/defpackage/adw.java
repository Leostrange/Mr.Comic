package defpackage;

import defpackage.ov;
import java.io.IOException;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: adw  reason: default package */
/* compiled from: GoogleDriveSession */
final class adw {
    ov a = null;
    aev b;

    public adw(aev aev) {
        this.b = aev;
        ov.b bVar = new ov.b(new ms(), new nc());
        bVar.f(ComicReaderApp.a().getString(R.string.app_name));
        bVar.a((ox) new ox() {
            public final void a(ow<?> owVar) {
                owVar.a((Boolean) true);
                owVar.b("917345885065.apps.googleusercontent.com");
                ads.a(adw.this.b);
                owVar.a(adw.this.b.h);
            }
        });
        this.a = new ov(bVar);
    }

    private boolean b() {
        return this.a != null;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v2, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: java.util.ArrayList} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v10, resolved type: java.util.ArrayList} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v14, resolved type: java.util.ArrayList} */
    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r0v1, types: [java.util.List<oz>] */
    /* JADX WARNING: type inference failed for: r0v11 */
    /* JADX WARNING: type inference failed for: r0v15 */
    /* JADX WARNING: type inference failed for: r0v16 */
    /* JADX WARNING: type inference failed for: r0v18 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<defpackage.oz> a(defpackage.oz r8) {
        /*
            r7 = this;
            r0 = 0
            boolean r1 = r7.b()
            if (r1 == 0) goto L_0x008b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "('"
            r1.<init>(r3)
            java.lang.String r3 = r8.id
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r3 = "' in parents and trashed = false)"
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r2.append(r1)
            java.lang.String r1 = " and (mimeType = 'application/vnd.google-apps.folder'"
            r2.append(r1)
            java.lang.String[] r3 = defpackage.afa.l()
            int r4 = r3.length
            r1 = 0
        L_0x0031:
            if (r1 >= r4) goto L_0x0045
            r5 = r3[r1]
            java.lang.String r6 = " or title contains '."
            r2.append(r6)
            r2.append(r5)
            java.lang.String r5 = "'"
            r2.append(r5)
            int r1 = r1 + 1
            goto L_0x0031
        L_0x0045:
            r1 = 41
            r2.append(r1)
            java.lang.String r4 = r2.toString()
            r2 = r0
        L_0x004f:
            ov r1 = r7.a     // Catch:{ Exception -> 0x00ad }
            ov$c r1 = r1.d()     // Catch:{ Exception -> 0x00ad }
            ov$c$b r1 = r1.a()     // Catch:{ Exception -> 0x00ad }
            r1.q = r4     // Catch:{ Exception -> 0x00ad }
            r3 = 500(0x1f4, float:7.0E-43)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ Exception -> 0x00ad }
            r1.maxResults = r3     // Catch:{ Exception -> 0x00ad }
            java.lang.String r3 = "drive"
            r1.spaces = r3     // Catch:{ Exception -> 0x00ad }
            java.lang.String r3 = "items(fileSize,id,md5Checksum,mimeType,title),nextPageToken"
            ov$c$b r1 = r1.c(r3)     // Catch:{ Exception -> 0x00ad }
            r1.pageToken = r0     // Catch:{ Exception -> 0x00ad }
            java.lang.Object r0 = r1.c()     // Catch:{ Exception -> 0x00ad }
            pa r0 = (defpackage.pa) r0     // Catch:{ Exception -> 0x00ad }
            java.lang.String r3 = r0.nextPageToken     // Catch:{ Exception -> 0x00ad }
            if (r2 != 0) goto L_0x0095
            if (r3 == 0) goto L_0x0081
            int r1 = r3.length()     // Catch:{ Exception -> 0x00ad }
            if (r1 != 0) goto L_0x008c
        L_0x0081:
            java.util.List<oz> r0 = r0.items     // Catch:{ Exception -> 0x00ad }
        L_0x0083:
            if (r3 == 0) goto L_0x008b
            int r1 = r3.length()     // Catch:{ Exception -> 0x009c }
            if (r1 > 0) goto L_0x00b1
        L_0x008b:
            return r0
        L_0x008c:
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch:{ Exception -> 0x00ad }
            java.util.List<oz> r0 = r0.items     // Catch:{ Exception -> 0x00ad }
            r1.<init>(r0)     // Catch:{ Exception -> 0x00ad }
            r0 = r1
            goto L_0x0083
        L_0x0095:
            java.util.List<oz> r0 = r0.items     // Catch:{ Exception -> 0x00ad }
            r2.addAll(r0)     // Catch:{ Exception -> 0x00ad }
            r0 = r2
            goto L_0x0083
        L_0x009c:
            r1 = move-exception
        L_0x009d:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Failed to get listing for: "
            r2.<init>(r3)
            java.lang.String r3 = r8.id
            r2.append(r3)
            r1.printStackTrace()
            goto L_0x008b
        L_0x00ad:
            r0 = move-exception
            r1 = r0
            r0 = r2
            goto L_0x009d
        L_0x00b1:
            r2 = r0
            r0 = r3
            goto L_0x004f
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.adw.a(oz):java.util.List");
    }

    public final oy a() {
        try {
            return (oy) new ov.a().a().c();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final oz a(String str) {
        if (b()) {
            try {
                return (oz) this.a.d().a(str).c();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0058 A[Catch:{ Exception -> 0x0062 }] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x005f A[Catch:{ Exception -> 0x0062 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(java.lang.String r6, java.lang.String r7, defpackage.acy r8) {
        /*
            r5 = this;
            r0 = 0
            boolean r1 = r5.b()
            if (r1 == 0) goto L_0x005e
            if (r6 == 0) goto L_0x0070
            int r1 = r6.length()     // Catch:{ Exception -> 0x0062 }
            if (r1 <= 0) goto L_0x0070
            lr r1 = new lr     // Catch:{ Exception -> 0x0062 }
            r1.<init>((java.lang.String) r6)     // Catch:{ Exception -> 0x0062 }
            ov r2 = r5.a     // Catch:{ Exception -> 0x0062 }
            ma r2 = r2.b     // Catch:{ Exception -> 0x0062 }
            java.lang.String r3 = "GET"
            r4 = 0
            lz r1 = r2.a(r3, r1, r4)     // Catch:{ Exception -> 0x0062 }
            aev r2 = r5.b     // Catch:{ Exception -> 0x0062 }
            defpackage.ads.a((defpackage.aev) r2)     // Catch:{ Exception -> 0x0062 }
            lw r2 = r1.b     // Catch:{ Exception -> 0x0062 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0062 }
            java.lang.String r4 = "Bearer "
            r3.<init>(r4)     // Catch:{ Exception -> 0x0062 }
            aev r4 = r5.b     // Catch:{ Exception -> 0x0062 }
            java.lang.String r4 = r4.h     // Catch:{ Exception -> 0x0062 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x0062 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x0062 }
            r2.a((java.lang.String) r3)     // Catch:{ Exception -> 0x0062 }
            mc r1 = r1.a()     // Catch:{ Exception -> 0x0062 }
            if (r1 == 0) goto L_0x0070
            boolean r2 = r1.a()     // Catch:{ Exception -> 0x0062 }
            if (r2 == 0) goto L_0x0070
            java.io.FileOutputStream r2 = defpackage.agz.b(r7)     // Catch:{ Exception -> 0x0062 }
            if (r2 == 0) goto L_0x0070
            java.io.InputStream r1 = r1.b()     // Catch:{ Exception -> 0x0062 }
            boolean r1 = defpackage.aha.a(r1, r2, r8)     // Catch:{ Exception -> 0x0062 }
        L_0x0056:
            if (r1 == 0) goto L_0x005f
            acy$a r2 = defpackage.acy.a.SUCCESS     // Catch:{ Exception -> 0x0062 }
        L_0x005a:
            r8.a(r2)     // Catch:{ Exception -> 0x0062 }
            r0 = r1
        L_0x005e:
            return r0
        L_0x005f:
            acy$a r2 = defpackage.acy.a.FAIL     // Catch:{ Exception -> 0x0062 }
            goto L_0x005a
        L_0x0062:
            r1 = move-exception
            r1.printStackTrace()
            acw r2 = defpackage.acw.c
            java.lang.String r1 = defpackage.agv.a((java.lang.Exception) r1)
            r8.a((defpackage.acw) r2, (java.lang.String) r1)
            goto L_0x005e
        L_0x0070:
            r1 = r0
            goto L_0x0056
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.adw.a(java.lang.String, java.lang.String, acy):boolean");
    }
}
