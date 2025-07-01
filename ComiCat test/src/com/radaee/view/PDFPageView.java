// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.view;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.Scroller;
import com.radaee.pdf.BMP;
import com.radaee.pdf.Document;
import com.radaee.pdf.Global;
import com.radaee.pdf.Page;
import tw;
import tx;
import ty;

public class PDFPageView extends View
{
    final class a extends android.view.GestureDetector.SimpleOnGestureListener
    {

        final PDFPageView a;

        public final boolean onDoubleTap(MotionEvent motionevent)
        {
            return false;
        }

        public final boolean onDoubleTapEvent(MotionEvent motionevent)
        {
            return false;
        }

        public final boolean onDown(MotionEvent motionevent)
        {
            return false;
        }

        public final boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
        {
            if (PDFPageView.a(a) != 0 || PDFPageView.b(a) <= 0 || PDFPageView.b(a) >= PDFPageView.c(a) - PDFPageView.d(a))
            {
                return false;
            } else
            {
                motionevent1.getX();
                motionevent.getX();
                motionevent1.getY();
                motionevent.getY();
                PDFPageView.e(a).fling(PDFPageView.b(a), PDFPageView.f(a), (int)(-f1), (int)(-f2), 0, PDFPageView.c(a), 0, PDFPageView.g(a));
                return true;
            }
        }

        public final void onLongPress(MotionEvent motionevent)
        {
        }

        public final boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
        {
            return false;
        }

        public final void onShowPress(MotionEvent motionevent)
        {
        }

        public final boolean onSingleTapConfirmed(MotionEvent motionevent)
        {
            return false;
        }

        public final boolean onSingleTapUp(MotionEvent motionevent)
        {
            return false;
        }

        a()
        {
            a = PDFPageView.this;
            super();
        }
    }


    private static Paint f;
    private static int v = 10;
    private float A;
    private float B;
    private float C;
    private float D;
    private float E;
    private float F;
    Document a;
    tw b;
    boolean c;
    private int d;
    private int e;
    private ty g;
    private ty h;
    private Bitmap i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private float p;
    private float q;
    private float r;
    private int s;
    private int t;
    private int u;
    private Scroller w;
    private GestureDetector x;
    private float y;
    private float z;

    public PDFPageView(Context context)
    {
        super(context);
        d = 0;
        x = null;
        A = -10000F;
        B = -10000F;
        c = false;
        b();
    }

    public PDFPageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = 0;
        x = null;
        A = -10000F;
        B = -10000F;
        c = false;
        b();
    }

    static int a(PDFPageView pdfpageview)
    {
        return pdfpageview.d;
    }

    private void a(float f1)
    {
        float f3 = a.b(e);
        float f4 = a.c(e);
        float f2 = f1;
        if (f1 < q)
        {
            f2 = q;
        }
        f1 = f2;
        if (f2 > r)
        {
            f1 = r;
        }
        p = f1;
        int i1 = (int)(f3 * p);
        int j1 = (int)(f4 * p);
        n = i1 + v;
        o = v + j1;
        tw tw1;
        ty ty1;
        if (l >= n)
        {
            t = ((l - n) + v) / 2;
        } else
        {
            t = v / 2;
        }
        if (m >= o)
        {
            u = ((m - o) + v) / 2;
        } else
        {
            u = v / 2;
        }
        a(j);
        b(k);
        tw1 = b;
        i1 = t;
        j1 = u;
        f1 = p;
        tw1.e = i1;
        tw1.f = j1;
        tw1.i = f1;
        i1 = (int)(tw1.c.b(tw1.d) * f1);
        j1 = (int)(tw1.c.c(tw1.d) * f1);
        if (i1 != tw1.g || j1 != tw1.h)
        {
            tw1.m = true;
            tw1.g = i1;
            tw1.h = j1;
        }
        tw1 = b;
        ty1 = g;
        if (tw1.m)
        {
            tw1.m = false;
            tw1.a(ty1);
            tw1.a();
        }
    }

    private void a(float f1, float f2)
    {
        a((int)((p * f2 + (float)t) - f1));
    }

    private void a(int i1)
    {
        j = i1;
        if (j > n - l)
        {
            j = n - l;
        }
        if (j < 0)
        {
            j = 0;
        }
    }

    static int b(PDFPageView pdfpageview)
    {
        return pdfpageview.j;
    }

    private final void b()
    {
        w = new Scroller(getContext());
        x = new GestureDetector(getContext(), new a());
        if (f == null)
        {
            Paint paint = new Paint();
            f = paint;
            paint.setARGB(255, 255, 0, 0);
            f.setTextSize(30F);
        }
        p = 0.0F;
        j = 0;
        k = 0;
        l = 0;
        m = 0;
        g = null;
    }

    private void b(float f1, float f2)
    {
        b((int)(((a.c(e) - f2) * p + (float)u) - f1));
    }

    private void b(int i1)
    {
        k = i1;
        if (k > o - m)
        {
            k = o - m;
        }
        if (k < 0)
        {
            k = 0;
        }
    }

    static int c(PDFPageView pdfpageview)
    {
        return pdfpageview.n;
    }

    static int d(PDFPageView pdfpageview)
    {
        return pdfpageview.l;
    }

    static Scroller e(PDFPageView pdfpageview)
    {
        return pdfpageview.w;
    }

    static int f(PDFPageView pdfpageview)
    {
        return pdfpageview.k;
    }

    static int g(PDFPageView pdfpageview)
    {
        return pdfpageview.o;
    }

    public final void a()
    {
        if (b == null) goto _L2; else goto _L1
_L1:
        tw tw1;
        ty ty1;
        int i1;
        int j1;
        b.a(g);
        tw1 = b;
        ty1 = h;
        j1 = tw1.j.b.length;
        i1 = 0;
_L6:
        if (i1 < j1) goto _L4; else goto _L3
_L3:
        b = null;
_L2:
        if (i != null)
        {
            i.recycle();
            i = null;
        }
        g = null;
        h = null;
        a = null;
        return;
_L4:
        tx.a a1;
        tx tx1;
        tx1 = tw1.j;
        a1 = tx1.b[i1];
        if (a1.d != 1)
        {
            break; /* Loop/switch isn't completed */
        }
        if (a1.d != 2 && a1.d != -1)
        {
            if (a1.e != null)
            {
                a1.e.b();
            }
            a1.d = -1;
        }
        tx1.b[i1] = new tx.a(tx1, a1);
_L7:
        if (a1 != null)
        {
            ty1.a.sendMessage(ty1.a.obtainMessage(4, a1));
        }
        i1++;
        if (true) goto _L6; else goto _L5
_L5:
        if (a1.d == 2)
        {
            tx1.b[i1] = new tx.a(tx1, a1);
        } else
        {
            a1 = null;
        }
          goto _L7
        if (true) goto _L6; else goto _L8
_L8:
    }

    public void computeScroll()
    {
        if (b != null && w.computeScrollOffset())
        {
            a(w.getCurrX());
            b(w.getCurrY());
            invalidate();
        }
    }

    protected void finalize()
    {
        a();
        super.finalize();
    }

    protected void onDraw(Canvas canvas)
    {
        if (a != null && b != null && l > 0 && m > 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        ty ty1;
        int i1;
        int k1;
        if (i == null)
        {
            i = Bitmap.createBitmap(l, m, android.graphics.Bitmap.Config.ARGB_8888);
        }
        i.eraseColor(0xffcccccc);
        obj = b;
        ty1 = h;
        k1 = ((tw) (obj)).j.b.length;
        i1 = 0;
_L4:
label0:
        {
            if (i1 < k1)
            {
                break label0;
            }
            tx.a a1;
            tx tx1;
            if (c)
            {
                i1 = j;
                int l1 = k;
                Canvas canvas1 = new Canvas(i);
                b.a(canvas1, i1, l1);
                if (Global.r)
                {
                    BMP bmp = new BMP();
                    bmp.a(i);
                    bmp.a();
                    bmp.b(i);
                }
                canvas.drawBitmap(i, 0.0F, 0.0F, null);
            } else
            {
                int j1 = j;
                int i2 = k;
                BMP bmp1 = new BMP();
                bmp1.a(i);
                tw.a a2 = b.a(g, bmp1, j1, i2);
                bmp1.b(i);
                Canvas canvas2 = new Canvas(i);
                b.a(canvas2, a2);
                bmp1.a(i);
                b.a(bmp1, a2);
                if (Global.r)
                {
                    bmp1.a();
                }
                bmp1.b(i);
                canvas.drawBitmap(i, 0.0F, 0.0F, null);
            }
            if (Global.t)
            {
                ActivityManager activitymanager = (ActivityManager)getContext().getSystemService("activity");
                obj = new android.app.ActivityManager.MemoryInfo();
                activitymanager.getMemoryInfo(((android.app.ActivityManager.MemoryInfo) (obj)));
                canvas.drawText((new StringBuilder("AvialMem:")).append(((android.app.ActivityManager.MemoryInfo) (obj)).availMem / 0x100000L).append(" M").toString(), 20F, 150F, f);
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        tx1 = ((tw) (obj)).j;
        a1 = tx1.b[i1];
        if (a1.d == 1 || a1.d == 2)
        {
            a1 = null;
        } else
        {
            if (a1.d == -1)
            {
                a1 = new tx.a(tx1, a1);
                tx1.b[i1] = a1;
            }
            a1.d = 1;
        }
        if (a1 != null)
        {
            ty1.a.sendMessage(ty1.a.obtainMessage(3, a1));
        }
        i1++;
          goto _L4
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        j = 0;
        k = 0;
        l = i1;
        m = j1;
        if (i != null)
        {
            i.recycle();
            i = null;
        }
        if (l <= 0 || m <= 0 || a == null) goto _L2; else goto _L1
_L1:
        float f1;
        float f2;
        f1 = a.b(e);
        f2 = a.c(e);
        f1 = (float)(i1 - v) / f1;
        f2 = (float)(j1 - v) / f2;
        s;
        JVM INSTR tableswitch 1 2: default 144
    //                   1 181
    //                   2 190;
           goto _L3 _L4 _L5
_L3:
        if (f1 > f2)
        {
            f1 = f2;
        }
        q = f1;
_L7:
        r = 12F * f1;
        a(q);
_L2:
        return;
_L4:
        q = f1;
        continue; /* Loop/switch isn't completed */
_L5:
        q = f2;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = true;
        if (d == 1) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L9:
        int j1;
        int k1;
        if (i1 != 0)
        {
            float f1;
            float f2;
            try
            {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            // Misplaced declaration of an exception variable
            catch (MotionEvent motionevent)
            {
                return false;
            }
            return true;
        }
          goto _L3
_L2:
        motionevent.getActionMasked();
        JVM INSTR tableswitch 1 6: default 1026
    //                   1 197
    //                   2 91
    //                   3 197
    //                   4 72
    //                   5 72
    //                   6 197;
           goto _L4 _L5 _L6 _L5 _L4 _L4 _L5
_L4:
        if (motionevent.getPointerCount() >= 2) goto _L8; else goto _L7
_L7:
        d = 0;
        i1 = 0;
          goto _L9
_L6:
        if (motionevent.getPointerCount() >= 2) goto _L11; else goto _L10
_L10:
        d = 0;
        i1 = 0;
          goto _L9
_L11:
        if (d == 1)
        {
            f1 = motionevent.getX(0) - motionevent.getX(1);
            f2 = motionevent.getY(0) - motionevent.getY(1);
            a((Global.sqrtf(f1 * f1 + f2 * f2) * D) / C);
            a(A, E);
            b(B, F);
            invalidate();
        }
          goto _L8
_L5:
        if (d == 1 && motionevent.getPointerCount() <= 2)
        {
            f1 = motionevent.getX(0) - motionevent.getX(1);
            f2 = motionevent.getY(0) - motionevent.getY(1);
            a((Global.sqrtf(f1 * f1 + f2 * f2) * D) / C);
            a(A, E);
            b(B, F);
            b.a(g, j, k, l, m);
            A = -10000F;
            B = -10000F;
            d = 0;
            invalidate();
        }
          goto _L8
_L3:
        if (d == 0) goto _L13; else goto _L12
_L12:
        flag = false;
_L15:
        getParent().requestDisallowInterceptTouchEvent(flag);
        return flag;
_L13:
        if (x.onTouchEvent(motionevent)) goto _L15; else goto _L14
_L14:
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 5: default 1038
    //                   0 412
    //                   1 632
    //                   2 456
    //                   3 632
    //                   4 1038
    //                   5 820;
           goto _L16 _L17 _L18 _L19 _L18 _L16 _L20
_L17:
        A = motionevent.getX();
        B = motionevent.getY();
        y = j;
        z = k;
        invalidate();
        flag = true;
          goto _L15
_L19:
        if (A > -10000F || B > -10000F) goto _L22; else goto _L21
_L21:
        A = motionevent.getX();
        B = motionevent.getY();
        y = j;
        z = k;
        flag = true;
          goto _L15
_L22:
        i1 = (int)((y + A) - motionevent.getX());
        k1 = (int)((z + B) - motionevent.getY());
        if (i1 <= n - l) goto _L24; else goto _L23
_L23:
        i1 = n - l;
        flag = false;
          goto _L25
_L35:
        i1 = k1;
        if (k1 > o - m)
        {
            i1 = o - m;
        }
          goto _L26
_L38:
        j = j1;
        k = k1;
        invalidate();
          goto _L15
_L18:
        if (A > -10000F || B > -10000F) goto _L28; else goto _L27
_L27:
        A = motionevent.getX();
        B = motionevent.getY();
        y = j;
        z = k;
        flag = true;
_L33:
        A = -10000F;
        B = -10000F;
          goto _L15
_L28:
        i1 = (int)((y + A) - motionevent.getX());
        k1 = (int)((z + B) - motionevent.getY());
        if (i1 <= n - l) goto _L30; else goto _L29
_L29:
        i1 = n - l;
        flag = false;
          goto _L31
_L34:
        i1 = k1;
        if (k1 > o - m)
        {
            i1 = o - m;
        }
          goto _L32
_L41:
        j = j1;
        k = k1;
        invalidate();
          goto _L33
_L20:
        if (motionevent.getPointerCount() >= 2)
        {
            d = 1;
            A = (motionevent.getX(0) + motionevent.getX(1)) / 2.0F;
            B = (motionevent.getY(0) + motionevent.getY(1)) / 2.0F;
            E = ((A + (float)j) - (float)t) / p;
            f1 = B;
            F = a.c(e) - ((f1 + (float)k) - (float)u) / p;
            f1 = motionevent.getX(0) - motionevent.getX(1);
            f2 = motionevent.getY(0) - motionevent.getY(1);
            C = Global.sqrtf(f1 * f1 + f2 * f2);
            D = p;
            d = 1;
            b.a(android.graphics.Bitmap.Config.ARGB_8888);
            c = true;
        }
          goto _L16
_L40:
        j1 = i1;
          goto _L34
_L30:
        flag = true;
        continue; /* Loop/switch isn't completed */
_L37:
        j1 = i1;
          goto _L35
_L24:
        flag = true;
        continue; /* Loop/switch isn't completed */
_L8:
        i1 = 1;
          goto _L9
_L16:
        flag = true;
          goto _L15
_L25:
        if (i1 >= 0) goto _L37; else goto _L36
_L36:
        j1 = 0;
        flag = false;
          goto _L35
_L26:
        k1 = i1;
        if (i1 < 0)
        {
            k1 = 0;
        }
          goto _L38
_L31:
        if (i1 >= 0) goto _L40; else goto _L39
_L39:
        j1 = 0;
        flag = false;
          goto _L34
_L32:
        k1 = i1;
        if (i1 < 0)
        {
            k1 = 0;
        }
          goto _L41
    }

}
