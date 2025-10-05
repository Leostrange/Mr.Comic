package com.radaee.view;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Scroller;
import com.radaee.pdf.BMP;
import com.radaee.pdf.Document;
import com.radaee.pdf.Global;
import defpackage.tw;
import defpackage.tx;

public class PDFPageView extends View {
    private static Paint f;
    private static int v = 10;
    private float A = -10000.0f;
    private float B = -10000.0f;
    private float C;
    private float D;
    private float E;
    private float F;
    Document a;
    tw b;
    boolean c = false;
    /* access modifiers changed from: private */
    public int d = 0;
    private int e;
    private ty g;
    private ty h;
    private Bitmap i;
    /* access modifiers changed from: private */
    public int j;
    /* access modifiers changed from: private */
    public int k;
    /* access modifiers changed from: private */
    public int l;
    private int m;
    /* access modifiers changed from: private */
    public int n;
    /* access modifiers changed from: private */
    public int o;
    private float p;
    private float q;
    private float r;
    private int s;
    private int t;
    private int u;
    /* access modifiers changed from: private */
    public Scroller w;
    private GestureDetector x = null;
    private float y;
    private float z;

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        public final boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        public final boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (PDFPageView.this.d != 0 || PDFPageView.this.j <= 0 || PDFPageView.this.j >= PDFPageView.this.n - PDFPageView.this.l) {
                return false;
            }
            motionEvent2.getX();
            motionEvent.getX();
            motionEvent2.getY();
            motionEvent.getY();
            PDFPageView.this.w.fling(PDFPageView.this.j, PDFPageView.this.k, (int) (-f), (int) (-f2), 0, PDFPageView.this.n, 0, PDFPageView.this.o);
            return true;
        }

        public final void onLongPress(MotionEvent motionEvent) {
        }

        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        public final void onShowPress(MotionEvent motionEvent) {
        }

        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return false;
        }

        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    public PDFPageView(Context context) {
        super(context);
        b();
    }

    public PDFPageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    private void a(float f2) {
        float b2 = this.a.b(this.e);
        float c2 = this.a.c(this.e);
        if (f2 < this.q) {
            f2 = this.q;
        }
        if (f2 > this.r) {
            f2 = this.r;
        }
        this.p = f2;
        this.n = ((int) (b2 * this.p)) + v;
        this.o = v + ((int) (c2 * this.p));
        if (this.l >= this.n) {
            this.t = ((this.l - this.n) + v) / 2;
        } else {
            this.t = v / 2;
        }
        if (this.m >= this.o) {
            this.u = ((this.m - this.o) + v) / 2;
        } else {
            this.u = v / 2;
        }
        a(this.j);
        b(this.k);
        tw twVar = this.b;
        int i2 = this.t;
        int i3 = this.u;
        float f3 = this.p;
        twVar.e = i2;
        twVar.f = i3;
        twVar.i = f3;
        int b3 = (int) (twVar.c.b(twVar.d) * f3);
        int c3 = (int) (twVar.c.c(twVar.d) * f3);
        if (!(b3 == twVar.g && c3 == twVar.h)) {
            twVar.m = true;
            twVar.g = b3;
            twVar.h = c3;
        }
        tw twVar2 = this.b;
        ty tyVar = this.g;
        if (twVar2.m) {
            twVar2.m = false;
            twVar2.a(tyVar);
            twVar2.a();
        }
    }

    private void a(float f2, float f3) {
        a((int) (((this.p * f3) + ((float) this.t)) - f2));
    }

    private void a(int i2) {
        this.j = i2;
        if (this.j > this.n - this.l) {
            this.j = this.n - this.l;
        }
        if (this.j < 0) {
            this.j = 0;
        }
    }

    private final void b() {
        this.w = new Scroller(getContext());
        this.x = new GestureDetector(getContext(), new a());
        if (f == null) {
            Paint paint = new Paint();
            f = paint;
            paint.setARGB(255, 255, 0, 0);
            f.setTextSize(30.0f);
        }
        this.p = 0.0f;
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.g = null;
    }

    private void b(float f2, float f3) {
        b((int) ((((this.a.c(this.e) - f3) * this.p) + ((float) this.u)) - f2));
    }

    private void b(int i2) {
        this.k = i2;
        if (this.k > this.o - this.m) {
            this.k = this.o - this.m;
        }
        if (this.k < 0) {
            this.k = 0;
        }
    }

    public final void a() {
        if (this.b != null) {
            this.b.a(this.g);
            tw twVar = this.b;
            ty tyVar = this.h;
            int length = twVar.j.b.length;
            for (int i2 = 0; i2 < length; i2++) {
                tx txVar = twVar.j;
                tx.a aVar = txVar.b[i2];
                if (aVar.d == 1) {
                    if (!(aVar.d == 2 || aVar.d == -1)) {
                        if (aVar.e != null) {
                            aVar.e.b();
                        }
                        aVar.d = -1;
                    }
                    txVar.b[i2] = new tx.a(aVar);
                } else if (aVar.d == 2) {
                    txVar.b[i2] = new tx.a(aVar);
                } else {
                    aVar = null;
                }
                if (aVar != null) {
                    tyVar.a.sendMessage(tyVar.a.obtainMessage(4, aVar));
                }
            }
            this.b = null;
        }
        if (this.i != null) {
            this.i.recycle();
            this.i = null;
        }
        this.g = null;
        this.h = null;
        this.a = null;
    }

    public void computeScroll() {
        if (this.b != null && this.w.computeScrollOffset()) {
            a(this.w.getCurrX());
            b(this.w.getCurrY());
            invalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        a();
        super.finalize();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        tx.a aVar;
        if (this.a != null && this.b != null && this.l > 0 && this.m > 0) {
            if (this.i == null) {
                this.i = Bitmap.createBitmap(this.l, this.m, Bitmap.Config.ARGB_8888);
            }
            this.i.eraseColor(-3355444);
            tw twVar = this.b;
            ty tyVar = this.h;
            int length = twVar.j.b.length;
            for (int i2 = 0; i2 < length; i2++) {
                tx txVar = twVar.j;
                tx.a aVar2 = txVar.b[i2];
                if (aVar2.d == 1 || aVar2.d == 2) {
                    aVar = null;
                } else {
                    if (aVar2.d == -1) {
                        aVar = new tx.a(aVar2);
                        txVar.b[i2] = aVar;
                    } else {
                        aVar = aVar2;
                    }
                    aVar.d = 1;
                }
                if (aVar != null) {
                    tyVar.a.sendMessage(tyVar.a.obtainMessage(3, aVar));
                }
            }
            if (this.c) {
                this.b.a(new Canvas(this.i), this.j, this.k);
                if (Global.r) {
                    BMP bmp = new BMP();
                    bmp.a(this.i);
                    bmp.a();
                    bmp.b(this.i);
                }
                canvas.drawBitmap(this.i, 0.0f, 0.0f, (Paint) null);
            } else {
                int i3 = this.j;
                int i4 = this.k;
                BMP bmp2 = new BMP();
                bmp2.a(this.i);
                tw.a a2 = this.b.a(this.g, bmp2, i3, i4);
                bmp2.b(this.i);
                this.b.a(new Canvas(this.i), a2);
                bmp2.a(this.i);
                this.b.a(bmp2, a2);
                if (Global.r) {
                    bmp2.a();
                }
                bmp2.b(this.i);
                canvas.drawBitmap(this.i, 0.0f, 0.0f, (Paint) null);
            }
            if (Global.t) {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ((ActivityManager) getContext().getSystemService("activity")).getMemoryInfo(memoryInfo);
                canvas.drawText("AvialMem:" + (memoryInfo.availMem / 1048576) + " M", 20.0f, 150.0f, f);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.j = 0;
        this.k = 0;
        this.l = i2;
        this.m = i3;
        if (this.i != null) {
            this.i.recycle();
            this.i = null;
        }
        if (this.l > 0 && this.m > 0 && this.a != null) {
            float b2 = this.a.b(this.e);
            float c2 = this.a.c(this.e);
            float f2 = ((float) (i2 - v)) / b2;
            float f3 = ((float) (i3 - v)) / c2;
            switch (this.s) {
                case 1:
                    this.q = f2;
                    break;
                case 2:
                    this.q = f3;
                    break;
                default:
                    if (f2 <= f3) {
                        f3 = f2;
                    }
                    this.q = f3;
                    f2 = f3;
                    break;
            }
            this.r = 12.0f * f2;
            a(this.q);
        }
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00f1, code lost:
        r0 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00f2, code lost:
        r6 = r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r13) {
        /*
            r12 = this;
            r10 = 1073741824(0x40000000, float:2.0)
            r9 = 2
            r8 = -971227136(0xffffffffc61c4000, float:-10000.0)
            r6 = 1
            r7 = 0
            int r0 = r12.d     // Catch:{ Exception -> 0x00d0 }
            if (r0 == r6) goto L_0x0018
            r0 = r7
        L_0x000d:
            if (r0 == 0) goto L_0x00d4
            android.view.ViewParent r0 = r12.getParent()     // Catch:{ Exception -> 0x00d0 }
            r1 = 1
            r0.requestDisallowInterceptTouchEvent(r1)     // Catch:{ Exception -> 0x00d0 }
        L_0x0017:
            return r6
        L_0x0018:
            int r0 = r13.getActionMasked()     // Catch:{ Exception -> 0x00d0 }
            switch(r0) {
                case 1: goto L_0x0072;
                case 2: goto L_0x002a;
                case 3: goto L_0x0072;
                case 4: goto L_0x001f;
                case 5: goto L_0x001f;
                case 6: goto L_0x0072;
                default: goto L_0x001f;
            }     // Catch:{ Exception -> 0x00d0 }
        L_0x001f:
            int r0 = r13.getPointerCount()     // Catch:{ Exception -> 0x00d0 }
            if (r0 >= r9) goto L_0x0070
            r0 = 0
            r12.d = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = r7
            goto L_0x000d
        L_0x002a:
            int r0 = r13.getPointerCount()     // Catch:{ Exception -> 0x00d0 }
            if (r0 >= r9) goto L_0x0035
            r0 = 0
            r12.d = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = r7
            goto L_0x000d
        L_0x0035:
            int r0 = r12.d     // Catch:{ Exception -> 0x00d0 }
            if (r0 != r6) goto L_0x0070
            r0 = 0
            float r0 = r13.getX(r0)     // Catch:{ Exception -> 0x00d0 }
            r1 = 1
            float r1 = r13.getX(r1)     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 - r1
            r1 = 0
            float r1 = r13.getY(r1)     // Catch:{ Exception -> 0x00d0 }
            r2 = 1
            float r2 = r13.getY(r2)     // Catch:{ Exception -> 0x00d0 }
            float r1 = r1 - r2
            float r0 = r0 * r0
            float r1 = r1 * r1
            float r0 = r0 + r1
            float r0 = com.radaee.pdf.Global.sqrtf(r0)     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.D     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 * r1
            float r1 = r12.C     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 / r1
            r12.a((float) r0)     // Catch:{ Exception -> 0x00d0 }
            float r0 = r12.A     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.E     // Catch:{ Exception -> 0x00d0 }
            r12.a(r0, r1)     // Catch:{ Exception -> 0x00d0 }
            float r0 = r12.B     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.F     // Catch:{ Exception -> 0x00d0 }
            r12.b(r0, r1)     // Catch:{ Exception -> 0x00d0 }
            r12.invalidate()     // Catch:{ Exception -> 0x00d0 }
        L_0x0070:
            r0 = r6
            goto L_0x000d
        L_0x0072:
            int r0 = r12.d     // Catch:{ Exception -> 0x00d0 }
            if (r0 != r6) goto L_0x0070
            int r0 = r13.getPointerCount()     // Catch:{ Exception -> 0x00d0 }
            if (r0 > r9) goto L_0x0070
            r0 = 0
            float r0 = r13.getX(r0)     // Catch:{ Exception -> 0x00d0 }
            r1 = 1
            float r1 = r13.getX(r1)     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 - r1
            r1 = 0
            float r1 = r13.getY(r1)     // Catch:{ Exception -> 0x00d0 }
            r2 = 1
            float r2 = r13.getY(r2)     // Catch:{ Exception -> 0x00d0 }
            float r1 = r1 - r2
            float r0 = r0 * r0
            float r1 = r1 * r1
            float r0 = r0 + r1
            float r0 = com.radaee.pdf.Global.sqrtf(r0)     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.D     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 * r1
            float r1 = r12.C     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 / r1
            r12.a((float) r0)     // Catch:{ Exception -> 0x00d0 }
            float r0 = r12.A     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.E     // Catch:{ Exception -> 0x00d0 }
            r12.a(r0, r1)     // Catch:{ Exception -> 0x00d0 }
            float r0 = r12.B     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.F     // Catch:{ Exception -> 0x00d0 }
            r12.b(r0, r1)     // Catch:{ Exception -> 0x00d0 }
            tw r0 = r12.b     // Catch:{ Exception -> 0x00d0 }
            ty r1 = r12.g     // Catch:{ Exception -> 0x00d0 }
            int r2 = r12.j     // Catch:{ Exception -> 0x00d0 }
            int r3 = r12.k     // Catch:{ Exception -> 0x00d0 }
            int r4 = r12.l     // Catch:{ Exception -> 0x00d0 }
            int r5 = r12.m     // Catch:{ Exception -> 0x00d0 }
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Exception -> 0x00d0 }
            r0 = -971227136(0xffffffffc61c4000, float:-10000.0)
            r12.A = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = -971227136(0xffffffffc61c4000, float:-10000.0)
            r12.B = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = 0
            r12.d = r0     // Catch:{ Exception -> 0x00d0 }
            r12.invalidate()     // Catch:{ Exception -> 0x00d0 }
            goto L_0x0070
        L_0x00d0:
            r0 = move-exception
            r6 = r7
            goto L_0x0017
        L_0x00d4:
            int r0 = r12.d     // Catch:{ Exception -> 0x00d0 }
            if (r0 == 0) goto L_0x00e2
            r6 = r7
        L_0x00d9:
            android.view.ViewParent r0 = r12.getParent()     // Catch:{ Exception -> 0x00d0 }
            r0.requestDisallowInterceptTouchEvent(r6)     // Catch:{ Exception -> 0x00d0 }
            goto L_0x0017
        L_0x00e2:
            android.view.GestureDetector r0 = r12.x     // Catch:{ Exception -> 0x00d0 }
            boolean r0 = r0.onTouchEvent(r13)     // Catch:{ Exception -> 0x00d0 }
            if (r0 != 0) goto L_0x00d9
            int r0 = r13.getActionMasked()     // Catch:{ Exception -> 0x00d0 }
            switch(r0) {
                case 0: goto L_0x00f4;
                case 1: goto L_0x0171;
                case 2: goto L_0x010f;
                case 3: goto L_0x0171;
                case 4: goto L_0x00f1;
                case 5: goto L_0x01de;
                default: goto L_0x00f1;
            }     // Catch:{ Exception -> 0x00d0 }
        L_0x00f1:
            r0 = r6
        L_0x00f2:
            r6 = r0
            goto L_0x00d9
        L_0x00f4:
            float r0 = r13.getX()     // Catch:{ Exception -> 0x00d0 }
            r12.A = r0     // Catch:{ Exception -> 0x00d0 }
            float r0 = r13.getY()     // Catch:{ Exception -> 0x00d0 }
            r12.B = r0     // Catch:{ Exception -> 0x00d0 }
            int r0 = r12.j     // Catch:{ Exception -> 0x00d0 }
            float r0 = (float) r0     // Catch:{ Exception -> 0x00d0 }
            r12.y = r0     // Catch:{ Exception -> 0x00d0 }
            int r0 = r12.k     // Catch:{ Exception -> 0x00d0 }
            float r0 = (float) r0     // Catch:{ Exception -> 0x00d0 }
            r12.z = r0     // Catch:{ Exception -> 0x00d0 }
            r12.invalidate()     // Catch:{ Exception -> 0x00d0 }
            r0 = r6
            goto L_0x00f2
        L_0x010f:
            float r0 = r12.A     // Catch:{ Exception -> 0x00d0 }
            int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r0 > 0) goto L_0x0133
            float r0 = r12.B     // Catch:{ Exception -> 0x00d0 }
            int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r0 > 0) goto L_0x0133
            float r0 = r13.getX()     // Catch:{ Exception -> 0x00d0 }
            r12.A = r0     // Catch:{ Exception -> 0x00d0 }
            float r0 = r13.getY()     // Catch:{ Exception -> 0x00d0 }
            r12.B = r0     // Catch:{ Exception -> 0x00d0 }
            int r0 = r12.j     // Catch:{ Exception -> 0x00d0 }
            float r0 = (float) r0     // Catch:{ Exception -> 0x00d0 }
            r12.y = r0     // Catch:{ Exception -> 0x00d0 }
            int r0 = r12.k     // Catch:{ Exception -> 0x00d0 }
            float r0 = (float) r0     // Catch:{ Exception -> 0x00d0 }
            r12.z = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = r6
            goto L_0x00f2
        L_0x0133:
            float r0 = r12.y     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.A     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 + r1
            float r1 = r13.getX()     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 - r1
            int r0 = (int) r0     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.z     // Catch:{ Exception -> 0x00d0 }
            float r2 = r12.B     // Catch:{ Exception -> 0x00d0 }
            float r1 = r1 + r2
            float r2 = r13.getY()     // Catch:{ Exception -> 0x00d0 }
            float r1 = r1 - r2
            int r1 = (int) r1     // Catch:{ Exception -> 0x00d0 }
            int r2 = r12.n     // Catch:{ Exception -> 0x00d0 }
            int r3 = r12.l     // Catch:{ Exception -> 0x00d0 }
            int r2 = r2 - r3
            if (r0 <= r2) goto L_0x026a
            int r0 = r12.n     // Catch:{ Exception -> 0x00d0 }
            int r2 = r12.l     // Catch:{ Exception -> 0x00d0 }
            int r0 = r0 - r2
            r2 = r7
        L_0x0156:
            if (r0 >= 0) goto L_0x0265
            r2 = r7
            r0 = r7
        L_0x015a:
            int r3 = r12.o     // Catch:{ Exception -> 0x00d0 }
            int r4 = r12.m     // Catch:{ Exception -> 0x00d0 }
            int r3 = r3 - r4
            if (r1 <= r3) goto L_0x0166
            int r1 = r12.o     // Catch:{ Exception -> 0x00d0 }
            int r3 = r12.m     // Catch:{ Exception -> 0x00d0 }
            int r1 = r1 - r3
        L_0x0166:
            if (r1 >= 0) goto L_0x0169
            r1 = r7
        L_0x0169:
            r12.j = r2     // Catch:{ Exception -> 0x00d0 }
            r12.k = r1     // Catch:{ Exception -> 0x00d0 }
            r12.invalidate()     // Catch:{ Exception -> 0x00d0 }
            goto L_0x00f2
        L_0x0171:
            float r0 = r12.A     // Catch:{ Exception -> 0x00d0 }
            int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r0 > 0) goto L_0x01a0
            float r0 = r12.B     // Catch:{ Exception -> 0x00d0 }
            int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r0 > 0) goto L_0x01a0
            float r0 = r13.getX()     // Catch:{ Exception -> 0x00d0 }
            r12.A = r0     // Catch:{ Exception -> 0x00d0 }
            float r0 = r13.getY()     // Catch:{ Exception -> 0x00d0 }
            r12.B = r0     // Catch:{ Exception -> 0x00d0 }
            int r0 = r12.j     // Catch:{ Exception -> 0x00d0 }
            float r0 = (float) r0     // Catch:{ Exception -> 0x00d0 }
            r12.y = r0     // Catch:{ Exception -> 0x00d0 }
            int r0 = r12.k     // Catch:{ Exception -> 0x00d0 }
            float r0 = (float) r0     // Catch:{ Exception -> 0x00d0 }
            r12.z = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = r6
        L_0x0194:
            r1 = -971227136(0xffffffffc61c4000, float:-10000.0)
            r12.A = r1     // Catch:{ Exception -> 0x00d0 }
            r1 = -971227136(0xffffffffc61c4000, float:-10000.0)
            r12.B = r1     // Catch:{ Exception -> 0x00d0 }
            goto L_0x00f2
        L_0x01a0:
            float r0 = r12.y     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.A     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 + r1
            float r1 = r13.getX()     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 - r1
            int r0 = (int) r0     // Catch:{ Exception -> 0x00d0 }
            float r1 = r12.z     // Catch:{ Exception -> 0x00d0 }
            float r2 = r12.B     // Catch:{ Exception -> 0x00d0 }
            float r1 = r1 + r2
            float r2 = r13.getY()     // Catch:{ Exception -> 0x00d0 }
            float r1 = r1 - r2
            int r1 = (int) r1     // Catch:{ Exception -> 0x00d0 }
            int r2 = r12.n     // Catch:{ Exception -> 0x00d0 }
            int r3 = r12.l     // Catch:{ Exception -> 0x00d0 }
            int r2 = r2 - r3
            if (r0 <= r2) goto L_0x0262
            int r0 = r12.n     // Catch:{ Exception -> 0x00d0 }
            int r2 = r12.l     // Catch:{ Exception -> 0x00d0 }
            int r0 = r0 - r2
            r2 = r7
        L_0x01c3:
            if (r0 >= 0) goto L_0x025d
            r2 = r7
            r0 = r7
        L_0x01c7:
            int r3 = r12.o     // Catch:{ Exception -> 0x00d0 }
            int r4 = r12.m     // Catch:{ Exception -> 0x00d0 }
            int r3 = r3 - r4
            if (r1 <= r3) goto L_0x01d3
            int r1 = r12.o     // Catch:{ Exception -> 0x00d0 }
            int r3 = r12.m     // Catch:{ Exception -> 0x00d0 }
            int r1 = r1 - r3
        L_0x01d3:
            if (r1 >= 0) goto L_0x01d6
            r1 = r7
        L_0x01d6:
            r12.j = r2     // Catch:{ Exception -> 0x00d0 }
            r12.k = r1     // Catch:{ Exception -> 0x00d0 }
            r12.invalidate()     // Catch:{ Exception -> 0x00d0 }
            goto L_0x0194
        L_0x01de:
            int r0 = r13.getPointerCount()     // Catch:{ Exception -> 0x00d0 }
            if (r0 < r9) goto L_0x00f1
            r0 = 1
            r12.d = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = 0
            float r0 = r13.getX(r0)     // Catch:{ Exception -> 0x00d0 }
            r1 = 1
            float r1 = r13.getX(r1)     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 + r1
            float r0 = r0 / r10
            r12.A = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = 0
            float r0 = r13.getY(r0)     // Catch:{ Exception -> 0x00d0 }
            r1 = 1
            float r1 = r13.getY(r1)     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 + r1
            float r0 = r0 / r10
            r12.B = r0     // Catch:{ Exception -> 0x00d0 }
            float r0 = r12.A     // Catch:{ Exception -> 0x00d0 }
            int r1 = r12.j     // Catch:{ Exception -> 0x00d0 }
            float r1 = (float) r1     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 + r1
            int r1 = r12.t     // Catch:{ Exception -> 0x00d0 }
            float r1 = (float) r1     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 - r1
            float r1 = r12.p     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 / r1
            r12.E = r0     // Catch:{ Exception -> 0x00d0 }
            float r0 = r12.B     // Catch:{ Exception -> 0x00d0 }
            com.radaee.pdf.Document r1 = r12.a     // Catch:{ Exception -> 0x00d0 }
            int r2 = r12.e     // Catch:{ Exception -> 0x00d0 }
            float r1 = r1.c(r2)     // Catch:{ Exception -> 0x00d0 }
            int r2 = r12.k     // Catch:{ Exception -> 0x00d0 }
            float r2 = (float) r2     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 + r2
            int r2 = r12.u     // Catch:{ Exception -> 0x00d0 }
            float r2 = (float) r2     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 - r2
            float r2 = r12.p     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 / r2
            float r0 = r1 - r0
            r12.F = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = 0
            float r0 = r13.getX(r0)     // Catch:{ Exception -> 0x00d0 }
            r1 = 1
            float r1 = r13.getX(r1)     // Catch:{ Exception -> 0x00d0 }
            float r0 = r0 - r1
            r1 = 0
            float r1 = r13.getY(r1)     // Catch:{ Exception -> 0x00d0 }
            r2 = 1
            float r2 = r13.getY(r2)     // Catch:{ Exception -> 0x00d0 }
            float r1 = r1 - r2
            float r0 = r0 * r0
            float r1 = r1 * r1
            float r0 = r0 + r1
            float r0 = com.radaee.pdf.Global.sqrtf(r0)     // Catch:{ Exception -> 0x00d0 }
            r12.C = r0     // Catch:{ Exception -> 0x00d0 }
            float r0 = r12.p     // Catch:{ Exception -> 0x00d0 }
            r12.D = r0     // Catch:{ Exception -> 0x00d0 }
            r0 = 1
            r12.d = r0     // Catch:{ Exception -> 0x00d0 }
            tw r0 = r12.b     // Catch:{ Exception -> 0x00d0 }
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ Exception -> 0x00d0 }
            r0.a((android.graphics.Bitmap.Config) r1)     // Catch:{ Exception -> 0x00d0 }
            r0 = 1
            r12.c = r0     // Catch:{ Exception -> 0x00d0 }
            goto L_0x00f1
        L_0x025d:
            r11 = r0
            r0 = r2
            r2 = r11
            goto L_0x01c7
        L_0x0262:
            r2 = r6
            goto L_0x01c3
        L_0x0265:
            r11 = r0
            r0 = r2
            r2 = r11
            goto L_0x015a
        L_0x026a:
            r2 = r6
            goto L_0x0156
        */
        throw new UnsupportedOperationException("Method not decompiled: com.radaee.view.PDFPageView.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
