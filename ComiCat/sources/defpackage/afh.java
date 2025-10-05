package defpackage;

import com.radaee.pdf.Document;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: afh  reason: default package */
/* compiled from: PdfPage */
public final class afh implements aff {
    static final float c = (((float) ComicReaderApp.d().getResources().getDisplayMetrics().densityDpi) / 60.0f);
    Document a;
    int b;

    public afh(Document document, int i) {
        this.a = document;
        this.b = i;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0098  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00b2  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00b7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.io.InputStream a() {
        /*
            r10 = this;
            r0 = 0
            com.radaee.pdf.Document r1 = r10.a     // Catch:{ Exception -> 0x008f, all -> 0x00a6 }
            int r2 = r10.b     // Catch:{ Exception -> 0x008f, all -> 0x00a6 }
            com.radaee.pdf.Page r4 = r1.a((int) r2)     // Catch:{ Exception -> 0x008f, all -> 0x00a6 }
            if (r4 == 0) goto L_0x00cf
            com.radaee.pdf.Document r1 = r10.a     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            int r2 = r10.b     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r1 = r1.b(r2)     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r2 = c     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r2 = r2 * r1
            com.radaee.pdf.Document r1 = r10.a     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            int r3 = r10.b     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r1 = r1.c(r3)     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r3 = c     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r3 = r3 * r1
            r1 = 1065353216(0x3f800000, float:1.0)
            aei r5 = defpackage.aei.a()     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            aeu r5 = r5.d     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            java.lang.String r6 = "max-image-memory"
            r8 = 6
            long r6 = r5.a((java.lang.String) r6, (long) r8)     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            int r5 = (int) r6     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            int r5 = r5 * 1024
            int r5 = r5 * 1024
            float r6 = r3 * r2
            r7 = 1082130432(0x40800000, float:4.0)
            float r6 = r6 * r7
            float r7 = (float) r5     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            int r7 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r7 <= 0) goto L_0x0048
            float r1 = (float) r5     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r1 = r1 / r6
            double r6 = (double) r1     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            double r6 = java.lang.Math.sqrt(r6)     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r1 = (float) r6     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
        L_0x0048:
            float r2 = r2 * r1
            int r2 = java.lang.Math.round(r2)     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r2 = (float) r2     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r3 = r3 * r1
            int r3 = java.lang.Math.round(r3)     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            float r5 = (float) r3     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            int r2 = (int) r2     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            int r3 = (int) r5     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            android.graphics.Bitmap$Config r6 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createBitmap(r2, r3, r6)     // Catch:{ Exception -> 0x00c6, all -> 0x00bb }
            com.radaee.pdf.Matrix r2 = new com.radaee.pdf.Matrix     // Catch:{ Exception -> 0x00ca, all -> 0x00c0 }
            float r6 = c     // Catch:{ Exception -> 0x00ca, all -> 0x00c0 }
            float r6 = r6 * r1
            float r1 = -r1
            float r7 = c     // Catch:{ Exception -> 0x00ca, all -> 0x00c0 }
            float r1 = r1 * r7
            r7 = 0
            r2.<init>(r6, r1, r7, r5)     // Catch:{ Exception -> 0x00ca, all -> 0x00c0 }
            if (r3 == 0) goto L_0x007f
            r1 = -1
            r3.eraseColor(r1)     // Catch:{ Exception -> 0x00cd }
            boolean r1 = r4.a((android.graphics.Bitmap) r3, (com.radaee.pdf.Matrix) r2)     // Catch:{ Exception -> 0x00cd }
            if (r1 == 0) goto L_0x007f
            byte[] r5 = defpackage.agl.c(r3)     // Catch:{ Exception -> 0x00cd }
            ags r1 = new ags     // Catch:{ Exception -> 0x00cd }
            r1.<init>((byte[]) r5)     // Catch:{ Exception -> 0x00cd }
            r0 = r1
        L_0x007f:
            if (r4 == 0) goto L_0x0084
            r4.a()
        L_0x0084:
            if (r2 == 0) goto L_0x0089
            r2.a()
        L_0x0089:
            if (r3 == 0) goto L_0x008e
            r3.recycle()
        L_0x008e:
            return r0
        L_0x008f:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r4 = r0
        L_0x0093:
            r1.printStackTrace()     // Catch:{ all -> 0x00c4 }
            if (r4 == 0) goto L_0x009b
            r4.a()
        L_0x009b:
            if (r2 == 0) goto L_0x00a0
            r2.a()
        L_0x00a0:
            if (r3 == 0) goto L_0x008e
            r3.recycle()
            goto L_0x008e
        L_0x00a6:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r4 = r0
            r0 = r1
        L_0x00ab:
            if (r4 == 0) goto L_0x00b0
            r4.a()
        L_0x00b0:
            if (r2 == 0) goto L_0x00b5
            r2.a()
        L_0x00b5:
            if (r3 == 0) goto L_0x00ba
            r3.recycle()
        L_0x00ba:
            throw r0
        L_0x00bb:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
            goto L_0x00ab
        L_0x00c0:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x00ab
        L_0x00c4:
            r0 = move-exception
            goto L_0x00ab
        L_0x00c6:
            r1 = move-exception
            r2 = r0
            r3 = r0
            goto L_0x0093
        L_0x00ca:
            r1 = move-exception
            r2 = r0
            goto L_0x0093
        L_0x00cd:
            r1 = move-exception
            goto L_0x0093
        L_0x00cf:
            r2 = r0
            r3 = r0
            goto L_0x007f
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.afh.a():java.io.InputStream");
    }
}
