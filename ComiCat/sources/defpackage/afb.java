package defpackage;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.Log;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: afb  reason: default package */
/* compiled from: ComicPage */
public final class afb {
    static final Lock d = new ReentrantLock();
    static final Lock e = new ReentrantLock();
    private static final byte[] n = new byte[32768];
    int a = -1;
    int b = 0;
    SoftReference<Bitmap> c = null;
    private aff f;
    private boolean g = false;
    private int h = 1;
    private int i = -1;
    private int j = -1;
    private int k = -1;
    private int l;
    private byte[] m = null;

    public afb(aff aff) {
        this.f = aff;
        this.l = agw.c();
    }

    private static int a(Bitmap bitmap, int i2, int i3) {
        int i4 = 0;
        if (i2 != 0) {
            while (i2 > 0) {
                i2--;
                if (!a(bitmap.getPixel(i2, i3))) {
                    break;
                }
                i4++;
            }
        } else {
            int width = bitmap.getWidth();
            int i5 = 0;
            while (i5 < width) {
                int i6 = i5 + 1;
                if (!a(bitmap.getPixel(i5, i3))) {
                    break;
                }
                i4++;
                i5 = i6;
            }
        }
        return i4;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b2 A[Catch:{ Exception -> 0x0359 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.Bitmap a(int r17, int r18, boolean r19, boolean r20, boolean r21) {
        /*
            r16 = this;
            r9 = 0
            byte[] r13 = r16.i()     // Catch:{ Exception -> 0x0365 }
            if (r13 == 0) goto L_0x0370
            android.graphics.BitmapFactory$Options r12 = new android.graphics.BitmapFactory$Options     // Catch:{ Exception -> 0x0359 }
            r12.<init>()     // Catch:{ Exception -> 0x0359 }
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.RGB_565     // Catch:{ Exception -> 0x0359 }
            r12.inPreferredConfig = r2     // Catch:{ Exception -> 0x0359 }
            byte[] r2 = n     // Catch:{ Exception -> 0x0359 }
            r12.inTempStorage = r2     // Catch:{ Exception -> 0x0359 }
            r2 = 0
            r12.inPurgeable = r2     // Catch:{ Exception -> 0x0359 }
            r2 = 1
            r12.inSampleSize = r2     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r2 = r0.j     // Catch:{ Exception -> 0x0359 }
            r3 = -1
            if (r2 != r3) goto L_0x003f
            r0 = r16
            int r2 = r0.k     // Catch:{ Exception -> 0x0359 }
            r3 = -1
            if (r2 != r3) goto L_0x003f
            r2 = 1
            r12.inJustDecodeBounds = r2     // Catch:{ Exception -> 0x0359 }
            r2 = 0
            int r3 = r13.length     // Catch:{ Exception -> 0x0359 }
            android.graphics.BitmapFactory.decodeByteArray(r13, r2, r3, r12)     // Catch:{ Exception -> 0x0359 }
            int r2 = r12.outWidth     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            r0.j = r2     // Catch:{ Exception -> 0x0359 }
            int r2 = r12.outHeight     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            r0.k = r2     // Catch:{ Exception -> 0x0359 }
            r2 = 0
            r12.inJustDecodeBounds = r2     // Catch:{ Exception -> 0x0359 }
        L_0x003f:
            r2 = 0
            r0 = r16
            r0.g = r2     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r2 = r0.h     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            r0.a = r2     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r2 = r0.k     // Catch:{ Exception -> 0x0359 }
            r3 = -1
            if (r2 == r3) goto L_0x00b6
            r0 = r16
            int r2 = r0.j     // Catch:{ Exception -> 0x0359 }
            r3 = -1
            if (r2 == r3) goto L_0x00b6
            r0 = r16
            int r2 = r0.j     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r3 = r0.k     // Catch:{ Exception -> 0x0359 }
            if (r2 < r3) goto L_0x02ed
            r2 = 1
        L_0x0065:
            r0 = r16
            r0.i = r2     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r2 = r0.i     // Catch:{ Exception -> 0x0359 }
            if (r2 == 0) goto L_0x02f0
            if (r20 == 0) goto L_0x02f0
            r2 = 1
        L_0x0072:
            r0 = r16
            r0.g = r2     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r3 = r0.a     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            boolean r2 = r0.g     // Catch:{ Exception -> 0x0359 }
            if (r2 == 0) goto L_0x02f3
            r2 = 2
        L_0x0081:
            int r2 = r2 * r3
            r0 = r16
            r0.a = r2     // Catch:{ Exception -> 0x0359 }
            r2 = -1
            r0 = r17
            if (r0 != r2) goto L_0x0090
            r2 = -1
            r0 = r18
            if (r0 == r2) goto L_0x0317
        L_0x0090:
            r2 = -1
            r0 = r18
            if (r0 != r2) goto L_0x02f6
            r0 = r16
            int r2 = r0.j     // Catch:{ Exception -> 0x0359 }
            int r2 = r2 / r17
            r3 = r12
        L_0x009c:
            r3.inSampleSize = r2     // Catch:{ Exception -> 0x0359 }
        L_0x009e:
            r0 = r16
            int r2 = r0.j     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r3 = r0.k     // Catch:{ Exception -> 0x0359 }
            int r2 = r2 * r3
            int r2 = r2 * 4
            int r3 = r12.inSampleSize     // Catch:{ Exception -> 0x0359 }
            int r2 = r2 / r3
            r0 = r16
            int r3 = r0.l     // Catch:{ Exception -> 0x0359 }
            if (r2 > r3) goto L_0x00b6
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ Exception -> 0x0359 }
            r12.inPreferredConfig = r2     // Catch:{ Exception -> 0x0359 }
        L_0x00b6:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0359 }
            java.lang.String r3 = "Scale factor is: "
            r2.<init>(r3)     // Catch:{ Exception -> 0x0359 }
            int r3 = r12.inSampleSize     // Catch:{ Exception -> 0x0359 }
            r2.append(r3)     // Catch:{ Exception -> 0x0359 }
            int r2 = r12.inSampleSize     // Catch:{ Exception -> 0x0359 }
            r3 = 1
            if (r2 <= r3) goto L_0x00d7
            int r4 = r12.inSampleSize     // Catch:{ Exception -> 0x0359 }
            int r2 = java.lang.Integer.highestOneBit(r4)     // Catch:{ Exception -> 0x0359 }
            int r3 = r2 << 1
            int r5 = r4 - r2
            int r4 = r3 - r4
            if (r5 > r4) goto L_0x0341
        L_0x00d5:
            r12.inSampleSize = r2     // Catch:{ Exception -> 0x0359 }
        L_0x00d7:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0359 }
            java.lang.String r3 = "Sanitized Scale factor is: "
            r2.<init>(r3)     // Catch:{ Exception -> 0x0359 }
            int r3 = r12.inSampleSize     // Catch:{ Exception -> 0x0359 }
            r2.append(r3)     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r2 = r0.a     // Catch:{ Exception -> 0x0359 }
            r3 = 1
            if (r2 <= r3) goto L_0x034d
            aei r2 = defpackage.aei.a()     // Catch:{ Exception -> 0x0359 }
            aeu r2 = r2.d     // Catch:{ Exception -> 0x0359 }
            java.lang.String r3 = "right-to-left"
            boolean r3 = r2.c(r3)     // Catch:{ Exception -> 0x0359 }
            if (r3 == 0) goto L_0x0100
            java.lang.String r3 = "double-page-rtl"
            boolean r2 = r2.c(r3)     // Catch:{ Exception -> 0x0359 }
            if (r2 != 0) goto L_0x0344
        L_0x0100:
            r5 = 1
        L_0x0101:
            r0 = r16
            int r2 = r0.j     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r3 = r0.k     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            boolean r6 = r0.g     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r7 = r0.h     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r8 = r0.b     // Catch:{ Exception -> 0x0359 }
            r4 = 0
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0359 }
            java.lang.String r11 = "Scale factor is: "
            r10.<init>(r11)     // Catch:{ Exception -> 0x0359 }
            int r11 = r12.inSampleSize     // Catch:{ Exception -> 0x0359 }
            r10.append(r11)     // Catch:{ Exception -> 0x0359 }
            int r11 = r12.inSampleSize     // Catch:{ Exception -> 0x0359 }
            r10 = 1
            if (r11 <= r10) goto L_0x0347
            int r10 = r11 / 2
        L_0x0129:
            r12.inSampleSize = r10     // Catch:{ Exception -> 0x0359 }
            aei r10 = defpackage.aei.a()     // Catch:{ Exception -> 0x0359 }
            aeu r10 = r10.d     // Catch:{ Exception -> 0x0359 }
            java.lang.String r14 = "use-fast-page-split"
            boolean r10 = r10.c(r14)     // Catch:{ Exception -> 0x0359 }
            if (r10 == 0) goto L_0x034a
            int r10 = android.os.Build.VERSION.SDK_INT     // Catch:{ Exception -> 0x0359 }
            r14 = 10
            if (r10 < r14) goto L_0x034a
            r10 = 1
        L_0x0140:
            if (r10 == 0) goto L_0x0150
            agn$b r4 = new agn$b     // Catch:{ Exception -> 0x0359 }
            r4.<init>()     // Catch:{ Exception -> 0x0359 }
            r4 = 1
            android.graphics.Rect r4 = defpackage.agn.a(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ Exception -> 0x0359 }
            android.graphics.Bitmap r4 = defpackage.agn.b.a(r13, r4, r12)     // Catch:{ Exception -> 0x0359 }
        L_0x0150:
            if (r4 != 0) goto L_0x036d
            agn$a r4 = new agn$a     // Catch:{ Exception -> 0x0359 }
            r4.<init>()     // Catch:{ Exception -> 0x0359 }
            int r4 = r12.inSampleSize     // Catch:{ Exception -> 0x0359 }
            android.graphics.Rect r3 = defpackage.agn.a(r2, r3, r4, r5, r6, r7, r8)     // Catch:{ Exception -> 0x0359 }
            r2 = 0
            r4 = 0
            int r5 = r13.length     // Catch:{ Exception -> 0x0359 }
            android.graphics.Bitmap r4 = android.graphics.BitmapFactory.decodeByteArray(r13, r4, r5, r12)     // Catch:{ Exception -> 0x0359 }
            if (r4 == 0) goto L_0x0179
            int r2 = r3.left     // Catch:{ Exception -> 0x0359 }
            int r5 = r3.top     // Catch:{ Exception -> 0x0359 }
            int r6 = r3.width()     // Catch:{ Exception -> 0x0359 }
            int r3 = r3.height()     // Catch:{ Exception -> 0x0359 }
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r4, r2, r5, r6, r3)     // Catch:{ Exception -> 0x0359 }
            r4.recycle()     // Catch:{ Exception -> 0x0359 }
        L_0x0179:
            r12.inSampleSize = r11     // Catch:{ Exception -> 0x0359 }
            r9 = r2
        L_0x017c:
            if (r19 == 0) goto L_0x02dc
            r2 = 4
            int[] r2 = new int[r2]     // Catch:{ Exception -> 0x0369 }
            int r3 = r9.getHeight()     // Catch:{ Exception -> 0x0369 }
            int r4 = r9.getWidth()     // Catch:{ Exception -> 0x0369 }
            int r5 = r4 * 5
            int r5 = r5 / 100
            int r6 = r3 * 5
            int r6 = r6 / 100
            int r7 = r3 + -200
            r8 = 0
            r10 = 0
            r11 = 100
            int r10 = a(r9, r10, r11)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 0
            r10 = 0
            r10 = r2[r10]     // Catch:{ Exception -> 0x0369 }
            r11 = 0
            double r12 = (double) r7     // Catch:{ Exception -> 0x0369 }
            r14 = 4599075939470750515(0x3fd3333333333333, double:0.3)
            double r12 = r12 * r14
            int r12 = (int) r12     // Catch:{ Exception -> 0x0369 }
            int r11 = a(r9, r11, r12)     // Catch:{ Exception -> 0x0369 }
            int r10 = java.lang.Math.min(r10, r11)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 0
            r10 = 0
            r10 = r2[r10]     // Catch:{ Exception -> 0x0369 }
            r11 = 0
            double r12 = (double) r7     // Catch:{ Exception -> 0x0369 }
            r14 = 4603579539098121011(0x3fe3333333333333, double:0.6)
            double r12 = r12 * r14
            int r12 = (int) r12     // Catch:{ Exception -> 0x0369 }
            int r11 = a(r9, r11, r12)     // Catch:{ Exception -> 0x0369 }
            int r10 = java.lang.Math.min(r10, r11)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 0
            r10 = 0
            r10 = r2[r10]     // Catch:{ Exception -> 0x0369 }
            r11 = 0
            int r12 = r3 + -100
            int r11 = a(r9, r11, r12)     // Catch:{ Exception -> 0x0369 }
            int r10 = java.lang.Math.min(r10, r11)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 0
            r10 = 0
            r10 = r2[r10]     // Catch:{ Exception -> 0x0369 }
            int r10 = java.lang.Math.min(r10, r5)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 1
            r10 = 0
            r11 = 100
            int r10 = b(r9, r10, r11)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 1
            r10 = 1
            r10 = r2[r10]     // Catch:{ Exception -> 0x0369 }
            r11 = 0
            int r12 = r4 / 2
            int r11 = b(r9, r11, r12)     // Catch:{ Exception -> 0x0369 }
            int r10 = java.lang.Math.min(r10, r11)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 1
            r10 = 1
            r10 = r2[r10]     // Catch:{ Exception -> 0x0369 }
            r11 = 0
            int r12 = r4 + -100
            int r11 = b(r9, r11, r12)     // Catch:{ Exception -> 0x0369 }
            int r10 = java.lang.Math.min(r10, r11)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 1
            r10 = 1
            r10 = r2[r10]     // Catch:{ Exception -> 0x0369 }
            int r10 = java.lang.Math.min(r10, r6)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 2
            r10 = 100
            int r10 = a(r9, r4, r10)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 2
            r10 = 2
            r10 = r2[r10]     // Catch:{ Exception -> 0x0369 }
            double r12 = (double) r7     // Catch:{ Exception -> 0x0369 }
            r14 = 4599075939470750515(0x3fd3333333333333, double:0.3)
            double r12 = r12 * r14
            int r11 = (int) r12     // Catch:{ Exception -> 0x0369 }
            int r11 = a(r9, r4, r11)     // Catch:{ Exception -> 0x0369 }
            int r10 = java.lang.Math.min(r10, r11)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r10     // Catch:{ Exception -> 0x0369 }
            r8 = 2
            r10 = 2
            r10 = r2[r10]     // Catch:{ Exception -> 0x0369 }
            double r12 = (double) r7     // Catch:{ Exception -> 0x0369 }
            r14 = 4603579539098121011(0x3fe3333333333333, double:0.6)
            double r12 = r12 * r14
            int r7 = (int) r12     // Catch:{ Exception -> 0x0369 }
            int r7 = a(r9, r4, r7)     // Catch:{ Exception -> 0x0369 }
            int r7 = java.lang.Math.min(r10, r7)     // Catch:{ Exception -> 0x0369 }
            r2[r8] = r7     // Catch:{ Exception -> 0x0369 }
            r7 = 2
            r8 = 2
            r8 = r2[r8]     // Catch:{ Exception -> 0x0369 }
            int r10 = r3 + -100
            int r10 = a(r9, r4, r10)     // Catch:{ Exception -> 0x0369 }
            int r8 = java.lang.Math.min(r8, r10)     // Catch:{ Exception -> 0x0369 }
            r2[r7] = r8     // Catch:{ Exception -> 0x0369 }
            r7 = 2
            r8 = 2
            r8 = r2[r8]     // Catch:{ Exception -> 0x0369 }
            int r5 = java.lang.Math.min(r8, r5)     // Catch:{ Exception -> 0x0369 }
            r2[r7] = r5     // Catch:{ Exception -> 0x0369 }
            r5 = 3
            r7 = 100
            int r7 = b(r9, r3, r7)     // Catch:{ Exception -> 0x0369 }
            r2[r5] = r7     // Catch:{ Exception -> 0x0369 }
            r5 = 3
            r7 = 3
            r7 = r2[r7]     // Catch:{ Exception -> 0x0369 }
            int r8 = r4 / 2
            int r8 = b(r9, r3, r8)     // Catch:{ Exception -> 0x0369 }
            int r7 = java.lang.Math.min(r7, r8)     // Catch:{ Exception -> 0x0369 }
            r2[r5] = r7     // Catch:{ Exception -> 0x0369 }
            r5 = 3
            r7 = 3
            r7 = r2[r7]     // Catch:{ Exception -> 0x0369 }
            int r4 = r4 + -100
            int r3 = b(r9, r3, r4)     // Catch:{ Exception -> 0x0369 }
            int r3 = java.lang.Math.min(r7, r3)     // Catch:{ Exception -> 0x0369 }
            r2[r5] = r3     // Catch:{ Exception -> 0x0369 }
            r3 = 3
            r4 = 3
            r4 = r2[r4]     // Catch:{ Exception -> 0x0369 }
            int r4 = java.lang.Math.min(r4, r6)     // Catch:{ Exception -> 0x0369 }
            r2[r3] = r4     // Catch:{ Exception -> 0x0369 }
            r3 = 0
            r3 = r2[r3]     // Catch:{ Exception -> 0x0369 }
            r4 = 1
            r4 = r2[r4]     // Catch:{ Exception -> 0x0369 }
            int r3 = r3 + r4
            r4 = 2
            r4 = r2[r4]     // Catch:{ Exception -> 0x0369 }
            int r3 = r3 + r4
            r4 = 3
            r4 = r2[r4]     // Catch:{ Exception -> 0x0369 }
            int r3 = r3 + r4
            r4 = 10
            if (r3 <= r4) goto L_0x02dc
            r3 = 0
            r3 = r2[r3]     // Catch:{ OutOfMemoryError -> 0x0355 }
            r4 = 1
            r4 = r2[r4]     // Catch:{ OutOfMemoryError -> 0x0355 }
            int r5 = r9.getWidth()     // Catch:{ OutOfMemoryError -> 0x0355 }
            r6 = 0
            r6 = r2[r6]     // Catch:{ OutOfMemoryError -> 0x0355 }
            r7 = 2
            r7 = r2[r7]     // Catch:{ OutOfMemoryError -> 0x0355 }
            int r6 = r6 + r7
            int r5 = r5 - r6
            int r6 = r9.getHeight()     // Catch:{ OutOfMemoryError -> 0x0355 }
            r7 = 1
            r7 = r2[r7]     // Catch:{ OutOfMemoryError -> 0x0355 }
            r8 = 3
            r2 = r2[r8]     // Catch:{ OutOfMemoryError -> 0x0355 }
            int r2 = r2 + r7
            int r2 = r6 - r2
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r9, r3, r4, r5, r2)     // Catch:{ OutOfMemoryError -> 0x0355 }
        L_0x02d4:
            if (r2 == 0) goto L_0x02dc
            if (r9 == r2) goto L_0x02dc
            r9.recycle()     // Catch:{ Exception -> 0x0369 }
            r9 = r2
        L_0x02dc:
            if (r21 == 0) goto L_0x02e8
            android.graphics.Bitmap r2 = defpackage.agr.a(r9)     // Catch:{ Exception -> 0x0369 }
            if (r2 == r9) goto L_0x02e8
            r9.recycle()     // Catch:{ Exception -> 0x0369 }
            r9 = r2
        L_0x02e8:
            android.graphics.Bitmap r2 = defpackage.agl.a((android.graphics.Bitmap) r9)     // Catch:{ Exception -> 0x0369 }
        L_0x02ec:
            return r2
        L_0x02ed:
            r2 = 0
            goto L_0x0065
        L_0x02f0:
            r2 = 0
            goto L_0x0072
        L_0x02f3:
            r2 = 1
            goto L_0x0081
        L_0x02f6:
            r2 = -1
            r0 = r17
            if (r0 != r2) goto L_0x0304
            r0 = r16
            int r2 = r0.k     // Catch:{ Exception -> 0x0359 }
            int r2 = r2 / r18
            r3 = r12
            goto L_0x009c
        L_0x0304:
            r0 = r16
            int r2 = r0.k     // Catch:{ Exception -> 0x0359 }
            int r2 = r2 / r18
            r0 = r16
            int r3 = r0.j     // Catch:{ Exception -> 0x0359 }
            int r3 = r3 / r17
            int r2 = java.lang.Math.max(r2, r3)     // Catch:{ Exception -> 0x0359 }
            r3 = r12
            goto L_0x009c
        L_0x0317:
            r0 = r16
            int r2 = r0.k     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r3 = r0.j     // Catch:{ Exception -> 0x0359 }
            int r2 = r2 * r3
            int r2 = r2 * 2
            r0 = r16
            int r3 = r0.l     // Catch:{ Exception -> 0x0359 }
            if (r2 <= r3) goto L_0x009e
            double r2 = (double) r2     // Catch:{ Exception -> 0x0359 }
            r0 = r16
            int r4 = r0.l     // Catch:{ Exception -> 0x0359 }
            double r4 = (double) r4     // Catch:{ Exception -> 0x0359 }
            double r2 = r2 / r4
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 <= 0) goto L_0x033d
            double r2 = java.lang.Math.ceil(r2)     // Catch:{ Exception -> 0x0359 }
            int r2 = (int) r2     // Catch:{ Exception -> 0x0359 }
            r3 = r12
            goto L_0x009c
        L_0x033d:
            r2 = 1
            r3 = r12
            goto L_0x009c
        L_0x0341:
            r2 = r3
            goto L_0x00d5
        L_0x0344:
            r5 = 0
            goto L_0x0101
        L_0x0347:
            r10 = r11
            goto L_0x0129
        L_0x034a:
            r10 = 0
            goto L_0x0140
        L_0x034d:
            r2 = 0
            int r3 = r13.length     // Catch:{ Exception -> 0x0359 }
            android.graphics.Bitmap r9 = android.graphics.BitmapFactory.decodeByteArray(r13, r2, r3, r12)     // Catch:{ Exception -> 0x0359 }
            goto L_0x017c
        L_0x0355:
            r2 = move-exception
            r2 = 0
            goto L_0x02d4
        L_0x0359:
            r2 = move-exception
            r3 = r2
            r2 = r9
        L_0x035c:
            r3.printStackTrace()     // Catch:{ Exception -> 0x0360 }
            goto L_0x02ec
        L_0x0360:
            r3 = move-exception
        L_0x0361:
            r3.printStackTrace()
            goto L_0x02ec
        L_0x0365:
            r2 = move-exception
            r3 = r2
            r2 = r9
            goto L_0x0361
        L_0x0369:
            r2 = move-exception
            r3 = r2
            r2 = r9
            goto L_0x035c
        L_0x036d:
            r2 = r4
            goto L_0x0179
        L_0x0370:
            r2 = r9
            goto L_0x02ec
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.afb.a(int, int, boolean, boolean, boolean):android.graphics.Bitmap");
    }

    private static boolean a(int i2) {
        if (i2 == -1) {
            return true;
        }
        return ((((double) Color.green(i2)) * 0.114d) + (0.299d * ((double) Color.red(i2)))) + (((double) Color.blue(i2)) * 0.587d) > 100.0d;
    }

    private static int b(Bitmap bitmap, int i2, int i3) {
        int i4 = 0;
        if (i2 != 0) {
            while (i2 > 0) {
                i2--;
                if (!a(bitmap.getPixel(i3, i2))) {
                    break;
                }
                i4++;
            }
        } else {
            int height = bitmap.getHeight();
            int i5 = 0;
            while (i5 < height - 1) {
                i5++;
                if (!a(bitmap.getPixel(i3, i5))) {
                    break;
                }
                i4++;
            }
        }
        return i4;
    }

    /* access modifiers changed from: private */
    public void h() {
        e.lock();
        try {
            if (this.c == null) {
                this.c = new SoftReference<>(a());
            }
        } catch (OutOfMemoryError e2) {
            Log.e("Prepare Image", "Out of memory", e2);
        } catch (Exception e3) {
            e3.printStackTrace();
        } finally {
            e.unlock();
        }
    }

    private byte[] i() {
        b();
        return this.m;
    }

    public final Bitmap a() {
        boolean z = true;
        if (this.c == null || this.c.get() == null || this.c.get().isRecycled()) {
            aeu aeu = aei.a().d;
            boolean c2 = aeu.c("crop-margins");
            String b2 = aeu.b("two-page-scans");
            boolean c3 = aeu.c("show-2-pages-in-landscape");
            boolean a2 = ahf.a();
            if (!("prefSplit".equals(b2) || ("prefSplitInPortrait".equals(b2) && !a2)) || (a2 && c3)) {
                z = false;
            }
            return a(-1, -1, c2, z, aeu.c("image-enhancer"));
        }
        Bitmap bitmap = this.c.get();
        this.c.clear();
        this.c = null;
        return bitmap;
    }

    public final Bitmap a(int i2, int i3) {
        try {
            return a(i2, i3, false, false, false);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final void a(final boolean z) {
        if (this.m == null) {
            Thread thread = new Thread(new Runnable() {
                public final void run() {
                    System.gc();
                    afb.this.b();
                    if (z) {
                        afb.this.h();
                    }
                }
            });
            thread.setPriority(4);
            thread.start();
        }
    }

    public final void b() {
        ags ags;
        if (this.m == null) {
            d.lock();
            try {
                if (this.m == null && (ags = (ags) this.f.a()) != null) {
                    this.m = ags.a();
                    ags.close();
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            } catch (OutOfMemoryError e3) {
                Log.e("Prepare Content", "Out of memory", e3);
            } finally {
                d.unlock();
            }
        }
    }

    public final Bitmap c() {
        try {
            return a(-1, -1, false, true, false);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final boolean d() {
        if (this.b >= this.a - 1) {
            return false;
        }
        this.b++;
        this.c = null;
        return true;
    }

    public final String e() {
        String str = this.g ? this.b < this.h ? "A" : "B" : "";
        if (this.h <= 1) {
            return str;
        }
        return " S" + ((this.b % this.h) + 1);
    }

    public final int f() {
        if (this.a == -1) {
            h();
        }
        return this.a;
    }

    public final boolean g() {
        if (this.i == -1) {
            h();
        }
        return this.i != 0;
    }
}
