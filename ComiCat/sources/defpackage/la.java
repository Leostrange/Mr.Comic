package defpackage;

import defpackage.md;

/* renamed from: la  reason: default package */
/* compiled from: GoogleJsonResponseException */
public final class la extends md {
    private final transient kz a;

    private la(md.a aVar, kz kzVar) {
        super(aVar);
        this.a = kzVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x005d A[SYNTHETIC, Splitter:B:22:0x005d] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008a A[SYNTHETIC, Splitter:B:34:0x008a] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0091 A[Catch:{ IOException -> 0x00bd }] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x009f A[SYNTHETIC, Splitter:B:42:0x009f] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00ac  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.la a(defpackage.mv r6, defpackage.mc r7) {
        /*
            r1 = 0
            md$a r4 = new md$a
            int r0 = r7.c
            java.lang.String r2 = r7.d
            lz r3 = r7.e
            lw r3 = r3.c
            r4.<init>(r0, r2, r3)
            defpackage.ni.a(r6)
            boolean r0 = r7.a()     // Catch:{ IOException -> 0x00b7 }
            if (r0 != 0) goto L_0x00b2
            java.lang.String r0 = "application/json; charset=UTF-8"
            java.lang.String r2 = r7.a     // Catch:{ IOException -> 0x00b7 }
            boolean r0 = defpackage.ly.b(r0, r2)     // Catch:{ IOException -> 0x00b7 }
            if (r0 == 0) goto L_0x00b2
            java.io.InputStream r0 = r7.b()     // Catch:{ IOException -> 0x00b7 }
            if (r0 == 0) goto L_0x00b2
            java.io.InputStream r0 = r7.b()     // Catch:{ IOException -> 0x0081, all -> 0x009a }
            my r3 = r6.a((java.io.InputStream) r0)     // Catch:{ IOException -> 0x0081, all -> 0x009a }
            nb r0 = r3.d()     // Catch:{ IOException -> 0x00ca, all -> 0x00c2 }
            if (r0 != 0) goto L_0x0039
            nb r0 = r3.c()     // Catch:{ IOException -> 0x00ca, all -> 0x00c2 }
        L_0x0039:
            if (r0 == 0) goto L_0x00d4
            java.lang.String r0 = "error"
            java.util.Set r0 = java.util.Collections.singleton(r0)     // Catch:{ IOException -> 0x00ca, all -> 0x00c2 }
            r3.a((java.util.Set<java.lang.String>) r0)     // Catch:{ IOException -> 0x00ca, all -> 0x00c2 }
            nb r0 = r3.d()     // Catch:{ IOException -> 0x00ca, all -> 0x00c2 }
            nb r2 = defpackage.nb.END_OBJECT     // Catch:{ IOException -> 0x00ca, all -> 0x00c2 }
            if (r0 == r2) goto L_0x00d4
            java.lang.Class<kz> r0 = defpackage.kz.class
            java.lang.Object r0 = r3.a(r0)     // Catch:{ IOException -> 0x00ca, all -> 0x00c2 }
            kz r0 = (defpackage.kz) r0     // Catch:{ IOException -> 0x00ca, all -> 0x00c2 }
            java.lang.String r1 = r0.c()     // Catch:{ IOException -> 0x00ce }
            r5 = r1
            r1 = r0
            r0 = r5
        L_0x005b:
            if (r1 != 0) goto L_0x0060
            r3.b()     // Catch:{ IOException -> 0x00bb }
        L_0x0060:
            java.lang.StringBuilder r2 = defpackage.md.a(r7)
            boolean r3 = defpackage.ol.a(r0)
            if (r3 != 0) goto L_0x0075
            java.lang.String r3 = defpackage.ok.a
            java.lang.StringBuilder r3 = r2.append(r3)
            r3.append(r0)
            r4.d = r0
        L_0x0075:
            java.lang.String r0 = r2.toString()
            r4.e = r0
            la r0 = new la
            r0.<init>(r4, r1)
            return r0
        L_0x0081:
            r0 = move-exception
            r2 = r0
            r3 = r1
            r0 = r1
        L_0x0085:
            r2.printStackTrace()     // Catch:{ all -> 0x00c5 }
            if (r3 != 0) goto L_0x0091
            r7.c()     // Catch:{ IOException -> 0x00bd }
            r5 = r1
            r1 = r0
            r0 = r5
            goto L_0x0060
        L_0x0091:
            if (r0 != 0) goto L_0x00d0
            r3.b()     // Catch:{ IOException -> 0x00bd }
            r5 = r1
            r1 = r0
            r0 = r5
            goto L_0x0060
        L_0x009a:
            r0 = move-exception
            r3 = r1
            r2 = r1
        L_0x009d:
            if (r3 != 0) goto L_0x00ac
            r7.c()     // Catch:{ IOException -> 0x00a3 }
        L_0x00a2:
            throw r0     // Catch:{ IOException -> 0x00a3 }
        L_0x00a3:
            r0 = move-exception
            r5 = r0
            r0 = r1
            r1 = r2
            r2 = r5
        L_0x00a8:
            r2.printStackTrace()
            goto L_0x0060
        L_0x00ac:
            if (r2 != 0) goto L_0x00a2
            r3.b()     // Catch:{ IOException -> 0x00a3 }
            goto L_0x00a2
        L_0x00b2:
            java.lang.String r0 = r7.e()     // Catch:{ IOException -> 0x00b7 }
            goto L_0x0060
        L_0x00b7:
            r0 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x00a8
        L_0x00bb:
            r2 = move-exception
            goto L_0x00a8
        L_0x00bd:
            r2 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L_0x00a8
        L_0x00c2:
            r0 = move-exception
            r2 = r1
            goto L_0x009d
        L_0x00c5:
            r2 = move-exception
            r5 = r2
            r2 = r0
            r0 = r5
            goto L_0x009d
        L_0x00ca:
            r0 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x0085
        L_0x00ce:
            r2 = move-exception
            goto L_0x0085
        L_0x00d0:
            r5 = r1
            r1 = r0
            r0 = r5
            goto L_0x0060
        L_0x00d4:
            r0 = r1
            goto L_0x005b
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.la.a(mv, mc):la");
    }
}
