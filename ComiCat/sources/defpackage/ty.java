package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.Timer;
import java.util.TimerTask;

/* renamed from: ty  reason: default package */
/* compiled from: VThread */
public final class ty extends Thread {
    public Handler a;
    /* access modifiers changed from: private */
    public Handler b;
    private Timer c;
    private TimerTask d;
    private boolean e;
    private boolean f;

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void a() {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.e     // Catch:{ Exception -> 0x0014, all -> 0x0016 }
            if (r0 == 0) goto L_0x000a
            r0 = 0
            r1.e = r0     // Catch:{ Exception -> 0x0014, all -> 0x0016 }
        L_0x0008:
            monitor-exit(r1)
            return
        L_0x000a:
            r0 = 1
            r1.f = r0     // Catch:{ Exception -> 0x0014, all -> 0x0016 }
            r1.wait()     // Catch:{ Exception -> 0x0014, all -> 0x0016 }
            r0 = 0
            r1.f = r0     // Catch:{ Exception -> 0x0014, all -> 0x0016 }
            goto L_0x0008
        L_0x0014:
            r0 = move-exception
            goto L_0x0008
        L_0x0016:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ty.a():void");
    }

    private synchronized void b() {
        if (this.f) {
            notify();
        } else {
            this.e = true;
        }
    }

    /* access modifiers changed from: protected */
    public final void a(tu tuVar) {
        boolean z = true;
        if (!tuVar.k) {
            tuVar.k = true;
            tuVar.j = 0;
        } else {
            z = false;
        }
        if (z) {
            this.a.sendMessage(this.a.obtainMessage(0, tuVar));
        }
    }

    /* access modifiers changed from: protected */
    public final void b(tu tuVar) {
        boolean z = false;
        if (tuVar.k) {
            tuVar.k = false;
            if (tuVar.j <= 0) {
                tuVar.j = -1;
            }
            if (tuVar.b != null) {
                tuVar.b.b();
            }
            z = true;
        }
        if (z) {
            this.a.sendMessage(this.a.obtainMessage(1, tuVar));
        }
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void destroy() {
        /*
            r2 = this;
            monitor-enter(r2)
            java.util.Timer r0 = r2.c     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            r0.cancel()     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            java.util.TimerTask r0 = r2.d     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            r0.cancel()     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            r0 = 0
            r2.c = r0     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            r0 = 0
            r2.d = r0     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            android.os.Handler r0 = r2.a     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            r1 = 100
            r0.sendEmptyMessage(r1)     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            r2.join()     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            r0 = 0
            r2.a = r0     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
            r0 = 0
            r2.b = r0     // Catch:{ InterruptedException -> 0x0026, all -> 0x0023 }
        L_0x0021:
            monitor-exit(r2)
            return
        L_0x0023:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L_0x0026:
            r0 = move-exception
            goto L_0x0021
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ty.destroy():void");
    }

    public final void run() {
        Looper.prepare();
        this.a = new Handler(Looper.myLooper()) {
            /* JADX WARNING: CFG modification limit reached, blocks count: 221 */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void handleMessage(android.os.Message r12) {
                /*
                    r11 = this;
                    r2 = 1
                    r3 = 0
                    r10 = 0
                    if (r12 == 0) goto L_0x027c
                    int r0 = r12.what
                    if (r0 != 0) goto L_0x007e
                    java.lang.Object r0 = r12.obj
                    tu r0 = (defpackage.tu) r0
                    com.radaee.pdf.DIB r1 = new com.radaee.pdf.DIB
                    r1.<init>()
                    int r4 = r0.g
                    int r5 = r0.h
                    r1.a(r4, r5)
                    int r4 = r0.j
                    if (r4 >= 0) goto L_0x003d
                    r1.a()
                L_0x0020:
                    ty r0 = defpackage.ty.this
                    android.os.Handler r1 = r0.b
                    ty r0 = defpackage.ty.this
                    android.os.Handler r2 = r0.b
                    java.lang.Object r0 = r12.obj
                    tu r0 = (defpackage.tu) r0
                    android.os.Message r0 = r2.obtainMessage(r3, r0)
                    r1.sendMessage(r0)
                    r12.obj = r10
                    super.handleMessage(r12)
                L_0x003c:
                    return
                L_0x003d:
                    com.radaee.pdf.Document r4 = r0.a
                    int r5 = r0.c
                    com.radaee.pdf.Page r4 = r4.a((int) r5)
                    r0.b = r4
                    com.radaee.pdf.Page r4 = r0.b
                    r4.a((com.radaee.pdf.DIB) r1)
                    r0.i = r1
                    int r4 = r0.j
                    if (r4 < 0) goto L_0x0020
                    com.radaee.pdf.Matrix r4 = new com.radaee.pdf.Matrix
                    float r5 = r0.d
                    float r6 = r0.d
                    float r6 = -r6
                    int r7 = r0.e
                    int r7 = -r7
                    float r7 = (float) r7
                    com.radaee.pdf.Document r8 = r0.a
                    int r9 = r0.c
                    float r8 = r8.c(r9)
                    float r9 = r0.d
                    float r8 = r8 * r9
                    int r9 = r0.f
                    float r9 = (float) r9
                    float r8 = r8 - r9
                    r4.<init>(r5, r6, r7, r8)
                    com.radaee.pdf.Page r5 = r0.b
                    r5.a((com.radaee.pdf.DIB) r1, (com.radaee.pdf.Matrix) r4)
                    r4.a()
                    int r1 = r0.j
                    if (r1 < 0) goto L_0x0020
                    r0.j = r2
                    goto L_0x0020
                L_0x007e:
                    int r0 = r12.what
                    if (r0 != r2) goto L_0x008f
                    java.lang.Object r0 = r12.obj
                    tu r0 = (defpackage.tu) r0
                    r0.b()
                    r12.obj = r10
                    super.handleMessage(r12)
                    goto L_0x003c
                L_0x008f:
                    int r0 = r12.what
                    r1 = 2
                    if (r0 != r1) goto L_0x01dc
                    java.lang.Object r0 = r12.obj
                    tv r0 = (defpackage.tv) r0
                    com.radaee.pdf.Document r1 = r0.h
                    int r1 = r1.c()
                    int r4 = r0.j
                    if (r4 >= 0) goto L_0x019d
                L_0x00a2:
                    com.radaee.pdf.Page r4 = r0.g
                    if (r4 == 0) goto L_0x00aa
                    int r4 = r0.e
                    if (r4 >= 0) goto L_0x00b2
                L_0x00aa:
                    int r4 = r0.d
                    if (r4 < 0) goto L_0x00b2
                    boolean r4 = r0.k
                    if (r4 == 0) goto L_0x00ee
                L_0x00b2:
                    boolean r1 = r0.k
                    if (r1 != 0) goto L_0x00ba
                    int r1 = r0.d
                    if (r1 >= 0) goto L_0x014c
                L_0x00ba:
                    com.radaee.pdf.Page$a r1 = r0.i
                    if (r1 == 0) goto L_0x00c5
                    com.radaee.pdf.Page$a r1 = r0.i
                    r1.b()
                    r0.i = r10
                L_0x00c5:
                    com.radaee.pdf.Page r1 = r0.g
                    if (r1 == 0) goto L_0x00d0
                    com.radaee.pdf.Page r1 = r0.g
                    r1.a()
                    r0.g = r10
                L_0x00d0:
                    r1 = r3
                L_0x00d1:
                    r0.a()
                    ty r0 = defpackage.ty.this
                    android.os.Handler r0 = r0.b
                    ty r4 = defpackage.ty.this
                    android.os.Handler r4 = r4.b
                    android.os.Message r1 = r4.obtainMessage(r2, r1, r3)
                    r0.sendMessage(r1)
                    r12.obj = r10
                    super.handleMessage(r12)
                    goto L_0x003c
                L_0x00ee:
                    com.radaee.pdf.Page r4 = r0.g
                    if (r4 != 0) goto L_0x0123
                    int r4 = r0.d
                    if (r4 < r1) goto L_0x00fa
                    int r4 = r1 + -1
                    r0.d = r4
                L_0x00fa:
                    com.radaee.pdf.Document r4 = r0.h
                    int r5 = r0.d
                    com.radaee.pdf.Page r4 = r4.a((int) r5)
                    r0.g = r4
                    com.radaee.pdf.Page r4 = r0.g
                    r4.c()
                    com.radaee.pdf.Page r4 = r0.g
                    java.lang.String r5 = r0.a
                    boolean r6 = r0.b
                    boolean r7 = r0.c
                    com.radaee.pdf.Page$a r4 = r4.a(r5, r6, r7)
                    r0.i = r4
                    com.radaee.pdf.Page$a r4 = r0.i
                    if (r4 != 0) goto L_0x0143
                    r0.f = r3
                L_0x011d:
                    int r4 = r0.f
                    int r4 = r4 + -1
                    r0.e = r4
                L_0x0123:
                    int r4 = r0.e
                    if (r4 >= 0) goto L_0x00a2
                    com.radaee.pdf.Page$a r4 = r0.i
                    if (r4 == 0) goto L_0x0132
                    com.radaee.pdf.Page$a r4 = r0.i
                    r4.b()
                    r0.i = r10
                L_0x0132:
                    com.radaee.pdf.Page r4 = r0.g
                    r4.a()
                    r0.g = r10
                    r0.f = r3
                    int r4 = r0.d
                    int r4 = r4 + -1
                    r0.d = r4
                    goto L_0x00a2
                L_0x0143:
                    com.radaee.pdf.Page$a r4 = r0.i
                    int r4 = r4.a()
                    r0.f = r4
                    goto L_0x011d
                L_0x014c:
                    r1 = r2
                    goto L_0x00d1
                L_0x014e:
                    com.radaee.pdf.Page r4 = r0.g
                    if (r4 != 0) goto L_0x017d
                    int r4 = r0.d
                    if (r4 >= 0) goto L_0x0158
                    r0.d = r3
                L_0x0158:
                    com.radaee.pdf.Document r4 = r0.h
                    int r5 = r0.d
                    com.radaee.pdf.Page r4 = r4.a((int) r5)
                    r0.g = r4
                    com.radaee.pdf.Page r4 = r0.g
                    r4.c()
                    com.radaee.pdf.Page r4 = r0.g
                    java.lang.String r5 = r0.a
                    boolean r6 = r0.b
                    boolean r7 = r0.c
                    com.radaee.pdf.Page$a r4 = r4.a(r5, r6, r7)
                    r0.i = r4
                    com.radaee.pdf.Page$a r4 = r0.i
                    if (r4 != 0) goto L_0x01d0
                    r0.f = r3
                L_0x017b:
                    r0.e = r3
                L_0x017d:
                    int r4 = r0.e
                    int r5 = r0.f
                    if (r4 < r5) goto L_0x019d
                    com.radaee.pdf.Page$a r4 = r0.i
                    if (r4 == 0) goto L_0x018e
                    com.radaee.pdf.Page$a r4 = r0.i
                    r4.b()
                    r0.i = r10
                L_0x018e:
                    com.radaee.pdf.Page r4 = r0.g
                    r4.a()
                    r0.g = r10
                    r0.f = r3
                    int r4 = r0.d
                    int r4 = r4 + 1
                    r0.d = r4
                L_0x019d:
                    com.radaee.pdf.Page r4 = r0.g
                    if (r4 == 0) goto L_0x01a7
                    int r4 = r0.e
                    int r5 = r0.f
                    if (r4 < r5) goto L_0x01af
                L_0x01a7:
                    int r4 = r0.d
                    if (r4 >= r1) goto L_0x01af
                    boolean r4 = r0.k
                    if (r4 == 0) goto L_0x014e
                L_0x01af:
                    boolean r4 = r0.k
                    if (r4 != 0) goto L_0x01b7
                    int r4 = r0.d
                    if (r4 < r1) goto L_0x01d9
                L_0x01b7:
                    com.radaee.pdf.Page$a r1 = r0.i
                    if (r1 == 0) goto L_0x01c2
                    com.radaee.pdf.Page$a r1 = r0.i
                    r1.b()
                    r0.i = r10
                L_0x01c2:
                    com.radaee.pdf.Page r1 = r0.g
                    if (r1 == 0) goto L_0x01cd
                    com.radaee.pdf.Page r1 = r0.g
                    r1.a()
                    r0.g = r10
                L_0x01cd:
                    r1 = r3
                    goto L_0x00d1
                L_0x01d0:
                    com.radaee.pdf.Page$a r4 = r0.i
                    int r4 = r4.a()
                    r0.f = r4
                    goto L_0x017b
                L_0x01d9:
                    r1 = r2
                    goto L_0x00d1
                L_0x01dc:
                    int r0 = r12.what
                    r1 = 3
                    if (r0 != r1) goto L_0x0252
                    java.lang.Object r0 = r12.obj
                    tx$a r0 = (defpackage.tx.a) r0
                    tx r1 = defpackage.tx.this
                    int r1 = r1.f
                    if (r1 != 0) goto L_0x0225
                    com.radaee.pdf.Matrix r3 = new com.radaee.pdf.Matrix
                    tx r1 = defpackage.tx.this
                    float r1 = r1.c
                    tx r2 = defpackage.tx.this
                    float r2 = r2.c
                    float r2 = -r2
                    r4 = 0
                    tx r5 = defpackage.tx.this
                    com.radaee.pdf.Document r5 = r5.a
                    tx r6 = defpackage.tx.this
                    int r6 = r6.e
                    float r5 = r5.c(r6)
                    tx r6 = defpackage.tx.this
                    float r6 = r6.c
                    float r5 = r5 * r6
                    int r6 = r0.b
                    float r6 = (float) r6
                    float r5 = r5 - r6
                    r3.<init>(r1, r2, r4, r5)
                    tx r1 = defpackage.tx.this
                    com.radaee.pdf.Document r1 = r1.a
                    tx r2 = defpackage.tx.this
                    int r2 = r2.e
                    tx r4 = defpackage.tx.this
                    int r4 = r4.d
                    int r5 = r0.c
                    r0.a(r1, r2, r3, r4, r5)
                    r3.a()
                    goto L_0x003c
                L_0x0225:
                    com.radaee.pdf.Matrix r3 = new com.radaee.pdf.Matrix
                    tx r1 = defpackage.tx.this
                    float r1 = r1.c
                    tx r2 = defpackage.tx.this
                    float r2 = r2.c
                    float r2 = -r2
                    int r4 = r0.a
                    int r4 = -r4
                    float r4 = (float) r4
                    tx r5 = defpackage.tx.this
                    int r5 = r5.d
                    float r5 = (float) r5
                    r3.<init>(r1, r2, r4, r5)
                    tx r1 = defpackage.tx.this
                    com.radaee.pdf.Document r1 = r1.a
                    tx r2 = defpackage.tx.this
                    int r2 = r2.e
                    int r4 = r0.c
                    tx r5 = defpackage.tx.this
                    int r5 = r5.d
                    r0.a(r1, r2, r3, r4, r5)
                    r3.a()
                    goto L_0x003c
                L_0x0252:
                    int r0 = r12.what
                    r1 = 4
                    if (r0 != r1) goto L_0x0273
                    java.lang.Object r0 = r12.obj
                    tx$a r0 = (defpackage.tx.a) r0
                    com.radaee.pdf.Page r1 = r0.e
                    if (r1 == 0) goto L_0x0264
                    com.radaee.pdf.Page r1 = r0.e
                    r1.a()
                L_0x0264:
                    android.graphics.Bitmap r1 = r0.f
                    if (r1 == 0) goto L_0x026d
                    android.graphics.Bitmap r1 = r0.f
                    r1.recycle()
                L_0x026d:
                    r0.e = r10
                    r0.f = r10
                    goto L_0x003c
                L_0x0273:
                    int r0 = r12.what
                    r1 = 100
                    if (r0 != r1) goto L_0x003c
                    super.handleMessage(r12)
                L_0x027c:
                    android.os.Looper r0 = r11.getLooper()
                    r0.quit()
                    goto L_0x003c
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.ty.AnonymousClass2.handleMessage(android.os.Message):void");
            }
        };
        b();
        Looper.loop();
    }

    public final void start() {
        super.start();
        a();
        this.c = new Timer();
        this.d = new TimerTask() {
            public final void run() {
                ty.this.b.sendEmptyMessage(100);
            }
        };
        this.c.schedule(this.d, 100, 100);
    }
}
