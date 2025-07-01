// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import aei;
import aeu;
import afp;
import afx;
import afy;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import meanlabs.comicreader.ReaderActivity;

public class GestureListenerActivity extends ReaderActivity
    implements android.view.GestureDetector.OnDoubleTapListener, android.view.GestureDetector.OnGestureListener, android.view.View.OnTouchListener
{
    final class a extends afy.b
    {

        final GestureListenerActivity a;

        public final boolean a()
        {
            a.h = a.g;
            return true;
        }

        public final boolean a(afy afy1)
        {
            GestureListenerActivity gesturelisteneractivity = a;
            gesturelisteneractivity.h = gesturelisteneractivity.h * afy1.b();
            a.h = Math.max(1.0F, Math.min(a.h, 4F));
            a.a(a.h);
            return true;
        }

        public final void b()
        {
            a.g = a.h;
            a.i = System.currentTimeMillis();
        }

        private a()
        {
            a = GestureListenerActivity.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }

    final class b
        implements Runnable
    {

        public MotionEvent a;
        final GestureListenerActivity b;

        public final void run()
        {
            b.a(a);
        }

        b()
        {
            b = GestureListenerActivity.this;
            super();
        }
    }


    private Handler a;
    private int b;
    b c;
    protected GestureDetector d;
    protected afy e;
    protected boolean f;
    protected float g;
    protected float h;
    protected long i;
    private int j;
    private int k;
    private int l;

    public GestureListenerActivity()
    {
        c = new b();
        f = false;
        a = null;
        g = 1.0F;
        h = 1.0F;
        i = 0L;
    }

    private boolean c()
    {
        return System.currentTimeMillis() - i < 50L;
    }

    public boolean a(float f1)
    {
        return false;
    }

    public boolean a(MotionEvent motionevent)
    {
        return false;
    }

    public final void b(float f1)
    {
        g = f1;
        h = f1;
    }

    public boolean b(int i1)
    {
        return false;
    }

    public boolean b(MotionEvent motionevent)
    {
        f = false;
        return true;
    }

    protected final boolean c(MotionEvent motionevent)
    {
        Point point = f();
        int i1 = (int)motionevent.getY();
        return i1 >= point.x && i1 <= point.y;
    }

    protected Point f()
    {
        return null;
    }

    protected final void m()
    {
        DisplayMetrics displaymetrics;
        String s;
        char c1;
        displaymetrics = getResources().getDisplayMetrics();
        c1 = 'd';
        s = aei.a().d.b("swipe-senstivity");
        if (!"prefHigh".equals(s)) goto _L2; else goto _L1
_L1:
        c1 = '2';
_L4:
        b = (int)((float)(c1 * displaymetrics.densityDpi) / 160F);
        j = (int)((float)(displaymetrics.densityDpi * 200) / 160F);
        k = (int)((float)(displaymetrics.densityDpi * 500) / 160F);
        l = (int)((float)(displaymetrics.densityDpi * 2000) / 160F);
        (new StringBuilder("Configured min distance is:")).append(b);
        return;
_L2:
        if ("prefLow".equals(s))
        {
            c1 = '\310';
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final boolean n()
    {
        return e.a();
    }

    public final void o()
    {
        g = 1.0F;
        h = 1.0F;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = new GestureDetector(this, this);
        d.setOnDoubleTapListener(this);
        bundle = new a((byte)0);
        if (android.os.Build.VERSION.SDK_INT < 8)
        {
            bundle = new afp(this, bundle);
        } else
        {
            bundle = new afx(this, bundle);
        }
        e = bundle;
        m();
    }

    public boolean onDoubleTap(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onDoubleTapEvent(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onDown(MotionEvent motionevent)
    {
        return true;
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        if (!e.a() && motionevent != null && motionevent1 != null && c(motionevent) && !c())
        {
            (new StringBuilder("X Velocity is: ")).append(f1).append(" and distance is ").append(String.valueOf(motionevent.getX() - motionevent1.getX()));
            if (motionevent.getX() - motionevent1.getX() > (float)b && Math.abs(f1) > (float)k)
            {
                Math.abs(f1);
                motionevent1.getPointerCount();
                return b(1);
            }
            if (motionevent1.getX() - motionevent.getX() > (float)b && Math.abs(f1) > (float)k)
            {
                Math.abs(f1);
                motionevent1.getPointerCount();
                return b(-1);
            }
            if (motionevent.getY() - motionevent1.getY() > (float)j && Math.abs(f2) > (float)k)
            {
                Math.abs(f2);
                motionevent1.getPointerCount();
                return b(2);
            }
            if (motionevent1.getY() - motionevent.getY() > (float)j && Math.abs(f2) > (float)k)
            {
                Math.abs(f2);
                motionevent1.getPointerCount();
                return b(-2);
            }
        }
        return false;
    }

    public void onLongPress(MotionEvent motionevent)
    {
        f = true;
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        return false;
    }

    public void onShowPress(MotionEvent motionevent)
    {
    }

    public boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        if (c())
        {
            return false;
        } else
        {
            c.a = motionevent;
            a = new Handler();
            a.postDelayed(c, 150L);
            return false;
        }
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        boolean flag;
        e.a(motionevent);
        if (a != null)
        {
            a.removeMessages(0);
            a = null;
        }
        switch (motionevent.getAction())
        {
        default:
            flag = false;
            break;

        case 0: // '\0'
        case 1: // '\001'
            break MISSING_BLOCK_LABEL_85;
        }
_L1:
        return (flag || !e.a()) && d.onTouchEvent(motionevent);
        if (motionevent.getAction() == 1)
        {
            flag = b(motionevent);
        } else
        {
            flag = onDown(motionevent);
        }
          goto _L1
    }
}
