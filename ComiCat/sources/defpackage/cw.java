package defpackage;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.TimingLogger;
import defpackage.cy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;

/* renamed from: cw  reason: default package */
/* compiled from: ColorCutQuantizer */
public final class cw {
    private static final Comparator<a> f = new Comparator<a>() {
        public final /* synthetic */ int compare(Object obj, Object obj2) {
            return ((a) obj2).a() - ((a) obj).a();
        }
    };
    final int[] a;
    final int[] b;
    public final List<cy.c> c;
    final TimingLogger d = null;
    private final float[] e = new float[3];

    /* renamed from: cw$a */
    /* compiled from: ColorCutQuantizer */
    class a {
        int a;
        private int c;
        private int d;
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;

        a(int i2, int i3) {
            this.c = i2;
            this.a = i3;
            c();
        }

        /* access modifiers changed from: package-private */
        public final int a() {
            return ((this.f - this.e) + 1) * ((this.h - this.g) + 1) * ((this.j - this.i) + 1);
        }

        /* access modifiers changed from: package-private */
        public final boolean b() {
            return (this.a + 1) - this.c > 1;
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            int[] iArr = cw.this.a;
            int[] iArr2 = cw.this.b;
            int i2 = Integer.MIN_VALUE;
            int i3 = 0;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MAX_VALUE;
            int i8 = Integer.MIN_VALUE;
            for (int i9 = this.c; i9 <= this.a; i9++) {
                int i10 = iArr[i9];
                i3 += iArr2[i10];
                int a2 = cw.a(i10);
                int b2 = cw.b(i10);
                int c2 = cw.c(i10);
                if (a2 > i4) {
                    i4 = a2;
                }
                if (a2 < i7) {
                    i7 = a2;
                }
                if (b2 > i8) {
                    i8 = b2;
                }
                if (b2 < i6) {
                    i6 = b2;
                }
                if (c2 > i2) {
                    i2 = c2;
                }
                if (c2 < i5) {
                    i5 = c2;
                }
            }
            this.e = i7;
            this.f = i4;
            this.g = i6;
            this.h = i8;
            this.i = i5;
            this.j = i2;
            this.d = i3;
        }

        /* access modifiers changed from: package-private */
        public final int d() {
            int i2 = this.f - this.e;
            int i3 = this.h - this.g;
            int i4 = this.j - this.i;
            int i5 = (i2 < i3 || i2 < i4) ? (i3 < i2 || i3 < i4) ? -1 : -2 : -3;
            int[] iArr = cw.this.a;
            int[] iArr2 = cw.this.b;
            cw.a(iArr, i5, this.c, this.a);
            Arrays.sort(iArr, this.c, this.a + 1);
            cw.a(iArr, i5, this.c, this.a);
            int i6 = this.d / 2;
            int i7 = 0;
            for (int i8 = this.c; i8 <= this.a; i8++) {
                i7 += iArr2[iArr[i8]];
                if (i7 >= i6) {
                    return i8;
                }
            }
            return this.c;
        }

        /* access modifiers changed from: package-private */
        public final cy.c e() {
            int i2 = 0;
            int[] iArr = cw.this.a;
            int[] iArr2 = cw.this.b;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = this.c; i6 <= this.a; i6++) {
                int i7 = iArr[i6];
                int i8 = iArr2[i7];
                i2 += i8;
                i5 += cw.a(i7) * i8;
                i4 += cw.b(i7) * i8;
                i3 += cw.c(i7) * i8;
            }
            return new cy.c(cw.b(Math.round(((float) i5) / ((float) i2)), Math.round(((float) i4) / ((float) i2)), Math.round(((float) i3) / ((float) i2))), i2);
        }
    }

    private cw(int[] iArr, int i) {
        int i2;
        int[] iArr2 = new int[32768];
        this.b = iArr2;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int i4 = iArr[i3];
            int c2 = c(Color.blue(i4), 8, 5) | (c(Color.red(i4), 8, 5) << 10) | (c(Color.green(i4), 8, 5) << 5);
            iArr[i3] = c2;
            iArr2[c2] = iArr2[c2] + 1;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < 32768; i6++) {
            if (iArr2[i6] > 0) {
                int d2 = d(i6);
                h.a(Color.red(d2), Color.green(d2), Color.blue(d2), this.e);
                if (a(this.e)) {
                    iArr2[i6] = 0;
                }
            }
            if (iArr2[i6] > 0) {
                i5++;
            }
        }
        int[] iArr3 = new int[i5];
        this.a = iArr3;
        int i7 = 0;
        int i8 = 0;
        while (i7 < 32768) {
            if (iArr2[i7] > 0) {
                i2 = i8 + 1;
                iArr3[i8] = i7;
            } else {
                i2 = i8;
            }
            i7++;
            i8 = i2;
        }
        if (i5 <= i) {
            this.c = new ArrayList();
            for (int i9 : iArr3) {
                this.c.add(new cy.c(d(i9), iArr2[i9]));
            }
            return;
        }
        PriorityQueue priorityQueue = new PriorityQueue(i, f);
        priorityQueue.offer(new a(0, this.a.length - 1));
        a((PriorityQueue<a>) priorityQueue, i);
        this.c = a((Collection<a>) priorityQueue);
    }

    static /* synthetic */ int a(int i) {
        return (i >> 10) & 31;
    }

    public static cw a(Bitmap bitmap, int i) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[(width * height)];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return new cw(iArr, i);
    }

    private static List<cy.c> a(Collection<a> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (a e2 : collection) {
            cy.c e3 = e2.e();
            if (!a(e3.a())) {
                arrayList.add(e3);
            }
        }
        return arrayList;
    }

    private static void a(PriorityQueue<a> priorityQueue, int i) {
        a poll;
        while (priorityQueue.size() < i && (poll = priorityQueue.poll()) != null && poll.b()) {
            if (!poll.b()) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int d2 = poll.d();
            a aVar = new a(d2 + 1, poll.a);
            poll.a = d2;
            poll.c();
            priorityQueue.offer(aVar);
            priorityQueue.offer(poll);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:1:0x0004, code lost:
        if (r5 > r6) goto L_0x0003;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0006, code lost:
        r0 = r3[r5];
        r3[r5] = (r0 & 31) | ((((r0 >> 5) & 31) << 10) | (((r0 >> 10) & 31) << 5));
        r5 = r5 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:3:0x001d, code lost:
        if (r5 > r6) goto L_0x0003;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:4:0x001f, code lost:
        r0 = r3[r5];
        r3[r5] = ((r0 >> 10) & 31) | (((r0 & 31) << 10) | (((r0 >> 5) & 31) << 5));
        r5 = r5 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void a(int[] r3, int r4, int r5, int r6) {
        /*
            switch(r4) {
                case -3: goto L_0x0003;
                case -2: goto L_0x0004;
                case -1: goto L_0x001d;
                default: goto L_0x0003;
            }
        L_0x0003:
            return
        L_0x0004:
            if (r5 > r6) goto L_0x0003
            r0 = r3[r5]
            int r1 = r0 >> 5
            r1 = r1 & 31
            int r1 = r1 << 10
            int r2 = r0 >> 10
            r2 = r2 & 31
            int r2 = r2 << 5
            r1 = r1 | r2
            r0 = r0 & 31
            r0 = r0 | r1
            r3[r5] = r0
            int r5 = r5 + 1
            goto L_0x0004
        L_0x001d:
            if (r5 > r6) goto L_0x0003
            r0 = r3[r5]
            r1 = r0 & 31
            int r1 = r1 << 10
            int r2 = r0 >> 5
            r2 = r2 & 31
            int r2 = r2 << 5
            r1 = r1 | r2
            int r0 = r0 >> 10
            r0 = r0 & 31
            r0 = r0 | r1
            r3[r5] = r0
            int r5 = r5 + 1
            goto L_0x001d
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cw.a(int[], int, int, int):void");
    }

    private static boolean a(float[] fArr) {
        if (!(fArr[2] >= 0.95f)) {
            if (!(fArr[2] <= 0.05f)) {
                if (!(fArr[0] >= 10.0f && fArr[0] <= 37.0f && fArr[1] <= 0.82f)) {
                    return false;
                }
            }
        }
        return true;
    }

    static /* synthetic */ int b(int i) {
        return (i >> 5) & 31;
    }

    /* access modifiers changed from: private */
    public static int b(int i, int i2, int i3) {
        return Color.rgb(c(i, 5, 8), c(i2, 5, 8), c(i3, 5, 8));
    }

    static /* synthetic */ int c(int i) {
        return i & 31;
    }

    private static int c(int i, int i2, int i3) {
        return (i3 > i2 ? (((1 << i3) - 1) * i) / ((1 << i2) - 1) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    private static int d(int i) {
        return b((i >> 10) & 31, (i >> 5) & 31, i & 31);
    }
}
