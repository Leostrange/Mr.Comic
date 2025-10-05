package defpackage;

import android.annotation.TargetApi;
import android.graphics.Rect;

/* renamed from: agn  reason: default package */
/* compiled from: ComicPageSplitter */
public class agn {

    /* renamed from: agn$a */
    /* compiled from: ComicPageSplitter */
    public static class a extends agn {
    }

    @TargetApi(10)
    /* renamed from: agn$b */
    /* compiled from: ComicPageSplitter */
    public static class b extends agn {
        /* JADX WARNING: Code restructure failed: missing block: B:22:0x0040, code lost:
            r1.recycle();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0044, code lost:
            r0 = th;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:29:0x004f, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x0050, code lost:
            r4 = r0;
            r0 = r2;
            r2 = r1;
            r1 = r4;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x0040  */
        /* JADX WARNING: Removed duplicated region for block: B:24:0x0044 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:5:0x000b] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static android.graphics.Bitmap a(byte[] r5, android.graphics.Rect r6, android.graphics.BitmapFactory.Options r7) {
            /*
                r2 = 0
                r0 = 0
                int r1 = r5.length     // Catch:{ Exception -> 0x0030, all -> 0x003c }
                r3 = 1
                android.graphics.BitmapRegionDecoder r1 = android.graphics.BitmapRegionDecoder.newInstance(r5, r0, r1, r3)     // Catch:{ Exception -> 0x0030, all -> 0x003c }
                if (r1 == 0) goto L_0x0055
                r0 = 1
                r7.inSampleSize = r0     // Catch:{ Exception -> 0x0049, all -> 0x0044 }
                r0 = 0
                r7.inDither = r0     // Catch:{ Exception -> 0x0049, all -> 0x0044 }
                r0 = 1
                r7.inPreferQualityOverSpeed = r0     // Catch:{ Exception -> 0x0049, all -> 0x0044 }
                android.graphics.Bitmap r2 = r1.decodeRegion(r6, r7)     // Catch:{ Exception -> 0x0049, all -> 0x0044 }
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x004f, all -> 0x0044 }
                java.lang.String r3 = "Extracted image options:"
                r0.<init>(r3)     // Catch:{ Exception -> 0x004f, all -> 0x0044 }
                android.graphics.Bitmap$Config r3 = r2.getConfig()     // Catch:{ Exception -> 0x004f, all -> 0x0044 }
                java.lang.String r3 = r3.name()     // Catch:{ Exception -> 0x004f, all -> 0x0044 }
                r0.append(r3)     // Catch:{ Exception -> 0x004f, all -> 0x0044 }
                r0 = r2
            L_0x002a:
                if (r1 == 0) goto L_0x002f
                r1.recycle()
            L_0x002f:
                return r0
            L_0x0030:
                r0 = move-exception
                r1 = r0
                r0 = r2
            L_0x0033:
                r1.printStackTrace()     // Catch:{ all -> 0x0046 }
                if (r2 == 0) goto L_0x002f
                r2.recycle()
                goto L_0x002f
            L_0x003c:
                r0 = move-exception
                r1 = r2
            L_0x003e:
                if (r1 == 0) goto L_0x0043
                r1.recycle()
            L_0x0043:
                throw r0
            L_0x0044:
                r0 = move-exception
                goto L_0x003e
            L_0x0046:
                r0 = move-exception
                r1 = r2
                goto L_0x003e
            L_0x0049:
                r0 = move-exception
                r4 = r0
                r0 = r2
                r2 = r1
                r1 = r4
                goto L_0x0033
            L_0x004f:
                r0 = move-exception
                r4 = r0
                r0 = r2
                r2 = r1
                r1 = r4
                goto L_0x0033
            L_0x0055:
                r0 = r2
                goto L_0x002a
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.agn.b.a(byte[], android.graphics.Rect, android.graphics.BitmapFactory$Options):android.graphics.Bitmap");
        }
    }

    public static Rect a(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5) {
        int i6;
        int i7 = i2 / i3;
        int i8 = i / i3;
        int i9 = i5 % i4;
        if (z2) {
            i8 /= 2;
        }
        int i10 = i4 == 1 ? i7 : i7 / i4;
        int i11 = i4 == 1 ? 0 : (int) (((double) i10) * 1.2d);
        if (i5 < i4) {
            if (!z) {
                i6 = i8;
            }
            i6 = 0;
        } else {
            if (z) {
                i6 = i8;
            }
            i6 = 0;
        }
        int i12 = 0;
        if (i4 > 1) {
            i12 = i9 * i10;
            if (i12 > 0) {
                i12 -= i11 / 2;
            }
            if (i9 == i4 - 1) {
                i12 = i7 - (i10 + i11);
            }
        }
        return new Rect(i6, i12, i8 + i6, i11 + i10 + i12);
    }
}
