// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import tu;
import tw;
import ty;

// Referenced classes of package com.radaee.view:
//            PDFPageView

public class PDFViewPager extends ViewPager
{

    private PDFPageView b[];
    private ty c;
    private ty d;
    private Handler e = new Handler(Looper.myLooper()) {

        final PDFViewPager a;

        public final void handleMessage(Message message)
        {
            message.what;
            JVM INSTR lookupswitch 3: default 40
        //                       0: 46
        //                       1: 275
        //                       100: 284;
               goto _L1 _L2 _L3 _L4
_L1:
            super.handleMessage(message);
            return;
_L2:
            Object obj;
            int l;
            l = ((tu)message.obj).c;
            obj = PDFViewPager.a(a)[l];
            if (((PDFPageView) (obj)).b != null) goto _L6; else goto _L5
_L5:
            int i = 0;
_L9:
            if (i != 0)
            {
                obj = PDFViewPager.a(a)[l];
                if (((PDFPageView) (obj)).b != null)
                {
                    tw tw1 = ((PDFPageView) (obj)).b;
                    if (tw1.b != null)
                    {
                        tw1.b.recycle();
                    }
                    tw1.b = null;
                    obj.c = false;
                    ((PDFPageView) (obj)).invalidate();
                }
            }
            continue; /* Loop/switch isn't completed */
_L6:
            obj = ((PDFPageView) (obj)).b;
            if (((tw) (obj)).a != null) goto _L8; else goto _L7
_L7:
            i = 0;
              goto _L9
_L8:
            int i1;
            int j1;
            i1 = ((tw) (obj)).a.length;
            j1 = ((tw) (obj)).a[0].length;
            i = 0;
_L14:
            if (i < j1) goto _L11; else goto _L10
_L10:
            i = 1;
              goto _L9
_L11:
            int k = 0;
_L17:
            if (k < i1) goto _L13; else goto _L12
_L12:
            i++;
              goto _L14
_L13:
            tu tu1 = ((tw) (obj)).a[k][i];
            boolean flag;
            if ((tu1.k || tu1.j != 0) && (!tu1.k || tu1.j <= 0))
            {
                flag = false;
            } else
            {
                flag = true;
            }
            if (flag) goto _L16; else goto _L15
_L15:
            i = 0;
              goto _L9
_L16:
            k++;
              goto _L17
_L3:
            int j = message.arg1;
            continue; /* Loop/switch isn't completed */
_L4:
            if (PDFViewPager.a(a) != null && PDFViewPager.a(a).length > 0)
            {
                PDFViewPager.a(a)[a.getCurrentItem()].invalidate();
            }
            if (true) goto _L1; else goto _L18
_L18:
        }

            
            {
                a = PDFViewPager.this;
                super(looper);
            }
    };

    public PDFViewPager(Context context)
    {
        super(context);
        b = null;
    }

    public PDFViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = null;
    }

    static PDFPageView[] a(PDFViewPager pdfviewpager)
    {
        return pdfviewpager.b;
    }

    protected void finalize()
    {
        if (b == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        j = b.length;
        i = 0;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        if (c != null)
        {
            c.destroy();
            d.destroy();
            c = null;
            d = null;
        }
        super.finalize();
        return;
_L3:
        boolean flag;
        if (b[i].a != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            b[i].a();
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        try
        {
            flag = super.onInterceptTouchEvent(motionevent);
        }
        // Misplaced declaration of an exception variable
        catch (MotionEvent motionevent)
        {
            return false;
        }
        return flag;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        try
        {
            flag = super.onTouchEvent(motionevent);
        }
        // Misplaced declaration of an exception variable
        catch (MotionEvent motionevent)
        {
            return false;
        }
        return flag;
    }
}
