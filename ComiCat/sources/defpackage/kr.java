package defpackage;

import defpackage.md;

/* renamed from: kr  reason: default package */
/* compiled from: TokenResponseException */
public final class kr extends md {
    final transient ko a;

    private kr(md.a aVar, ko koVar) {
        super(aVar);
        this.a = koVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x004f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.kr a(defpackage.mv r7, defpackage.mc r8) {
        /*
            r1 = 0
            md$a r3 = new md$a
            int r0 = r8.c
            java.lang.String r2 = r8.d
            lz r4 = r8.e
            lw r4 = r4.c
            r3.<init>(r0, r2, r4)
            defpackage.ni.a(r7)
            java.lang.String r0 = r8.a
            boolean r2 = r8.a()     // Catch:{ IOException -> 0x006b }
            if (r2 != 0) goto L_0x0066
            if (r0 == 0) goto L_0x0066
            java.io.InputStream r2 = r8.b()     // Catch:{ IOException -> 0x006b }
            if (r2 == 0) goto L_0x0066
            java.lang.String r2 = "application/json; charset=UTF-8"
            boolean r0 = defpackage.ly.b(r2, r0)     // Catch:{ IOException -> 0x006b }
            if (r0 == 0) goto L_0x0066
            mx r0 = new mx     // Catch:{ IOException -> 0x006b }
            r0.<init>((defpackage.mv) r7)     // Catch:{ IOException -> 0x006b }
            java.io.InputStream r2 = r8.b()     // Catch:{ IOException -> 0x006b }
            java.nio.charset.Charset r4 = r8.f()     // Catch:{ IOException -> 0x006b }
            java.lang.Class<ko> r5 = defpackage.ko.class
            java.lang.Object r0 = r0.a(r2, r4, r5)     // Catch:{ IOException -> 0x006b }
            ko r0 = (defpackage.ko) r0     // Catch:{ IOException -> 0x006b }
            java.lang.String r1 = r0.c()     // Catch:{ IOException -> 0x0075 }
            r6 = r1
            r1 = r0
            r0 = r6
        L_0x0045:
            java.lang.StringBuilder r2 = defpackage.md.a(r8)
            boolean r4 = defpackage.ol.a(r0)
            if (r4 != 0) goto L_0x005a
            java.lang.String r4 = defpackage.ok.a
            java.lang.StringBuilder r4 = r2.append(r4)
            r4.append(r0)
            r3.d = r0
        L_0x005a:
            java.lang.String r0 = r2.toString()
            r3.e = r0
            kr r0 = new kr
            r0.<init>(r3, r1)
            return r0
        L_0x0066:
            java.lang.String r0 = r8.e()     // Catch:{ IOException -> 0x006b }
            goto L_0x0045
        L_0x006b:
            r0 = move-exception
            r2 = r0
            r0 = r1
        L_0x006e:
            r2.printStackTrace()
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x0045
        L_0x0075:
            r2 = move-exception
            goto L_0x006e
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kr.a(mv, mc):kr");
    }
}
