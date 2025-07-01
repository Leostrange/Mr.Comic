// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

public final class afp extends afy
{

    private final Context a;
    private final afy.a b;
    private boolean c;
    private MotionEvent d;
    private MotionEvent e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private float p;
    private long q;
    private final float r;
    private float s;
    private float t;
    private boolean u;

    public afp(Context context, afy.a a1)
    {
        ViewConfiguration viewconfiguration = ViewConfiguration.get(context);
        a = context;
        b = a1;
        r = viewconfiguration.getScaledEdgeSlop();
    }

    private static float b(MotionEvent motionevent)
    {
        return (motionevent.getX() - motionevent.getRawX()) + motionevent.getX(1);
    }

    private static float c(MotionEvent motionevent)
    {
        return (motionevent.getY() - motionevent.getRawY()) + motionevent.getY(1);
    }

    private void c()
    {
        if (d != null)
        {
            d.recycle();
            d = null;
        }
        if (e != null)
        {
            e.recycle();
            e = null;
        }
        u = false;
        c = false;
    }

    private void d(MotionEvent motionevent)
    {
        if (e != null)
        {
            e.recycle();
        }
        e = MotionEvent.obtain(motionevent);
        l = -1F;
        m = -1F;
        n = -1F;
        MotionEvent motionevent1 = d;
        float f1 = motionevent1.getX(0);
        float f2 = motionevent1.getY(0);
        float f3 = motionevent1.getX(1);
        float f4 = motionevent1.getY(1);
        float f5 = motionevent.getX(0);
        float f6 = motionevent.getY(0);
        float f8 = motionevent.getX(1);
        float f7 = motionevent.getY(1);
        f8 -= f5;
        f7 -= f6;
        h = f3 - f1;
        i = f4 - f2;
        j = f8;
        k = f7;
        f = f8 * 0.5F + f5;
        g = f7 * 0.5F + f6;
        q = motionevent.getEventTime() - motionevent1.getEventTime();
        o = motionevent.getPressure(0) + motionevent.getPressure(1);
        f1 = motionevent1.getPressure(0);
        p = motionevent1.getPressure(1) + f1;
    }

    public final boolean a()
    {
        return c;
    }

    public final boolean a(MotionEvent motionevent)
    {
        int i1;
        boolean flag;
        int k1;
        flag = false;
        i1 = 0;
        k1 = motionevent.getAction();
        if (c) goto _L2; else goto _L1
_L1:
        k1 & 0xff;
        JVM INSTR tableswitch 2 6: default 60
    //                   2 346
    //                   3 60
    //                   4 60
    //                   5 62
    //                   6 563;
           goto _L3 _L4 _L3 _L3 _L5 _L6
_L3:
        return true;
_L5:
        DisplayMetrics displaymetrics = a.getResources().getDisplayMetrics();
        s = (float)displaymetrics.widthPixels - r;
        t = (float)displaymetrics.heightPixels - r;
        c();
        d = MotionEvent.obtain(motionevent);
        q = 0L;
        d(motionevent);
        float f1 = r;
        float f3 = s;
        float f5 = t;
        float f7 = motionevent.getRawX();
        float f9 = motionevent.getRawY();
        float f11 = b(motionevent);
        float f13 = c(motionevent);
        if (f7 < f1 || f9 < f1 || f7 > f3 || f9 > f5)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (f11 < f1 || f13 < f1 || f11 > f3 || f13 > f5)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i1 != 0 && flag)
        {
            f = -1F;
            g = -1F;
            u = true;
            return true;
        }
        if (i1 != 0)
        {
            f = motionevent.getX(1);
            g = motionevent.getY(1);
            u = true;
            return true;
        }
        if (flag)
        {
            f = motionevent.getX(0);
            g = motionevent.getY(0);
            u = true;
            return true;
        } else
        {
            c = b.a();
            return true;
        }
_L4:
        if (!u) goto _L3; else goto _L7
_L7:
        float f2 = r;
        float f4 = s;
        float f6 = t;
        float f8 = motionevent.getRawX();
        float f10 = motionevent.getRawY();
        float f12 = b(motionevent);
        float f14 = c(motionevent);
        if (f8 < f2 || f10 < f2 || f8 > f4 || f10 > f6)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (f12 < f2 || f14 < f2 || f12 > f4 || f14 > f6)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i1 != 0 && flag)
        {
            f = -1F;
            g = -1F;
            return true;
        }
        if (i1 != 0)
        {
            f = motionevent.getX(1);
            g = motionevent.getY(1);
            return true;
        }
        if (flag)
        {
            f = motionevent.getX(0);
            g = motionevent.getY(0);
            return true;
        } else
        {
            u = false;
            c = b.a();
            return true;
        }
_L6:
        if (!u) goto _L3; else goto _L8
_L8:
        if ((k1 & 0xff00) >> 8 == 0)
        {
            i1 = 1;
        }
        f = motionevent.getX(i1);
        g = motionevent.getY(i1);
        return true;
_L2:
        switch (k1 & 0xff)
        {
        case 4: // '\004'
        case 5: // '\005'
        default:
            return true;

        case 2: // '\002'
            d(motionevent);
            if (o / p > 0.67F && b.a(this))
            {
                d.recycle();
                d = MotionEvent.obtain(motionevent);
                return true;
            }
            break;

        case 6: // '\006'
            d(motionevent);
            int j1 = ((flag) ? 1 : 0);
            if ((k1 & 0xff00) >> 8 == 0)
            {
                j1 = 1;
            }
            f = motionevent.getX(j1);
            g = motionevent.getY(j1);
            if (!u)
            {
                b.b();
            }
            c();
            return true;

        case 3: // '\003'
            if (!u)
            {
                b.b();
            }
            c();
            return true;
        }
        if (true) goto _L3; else goto _L9
_L9:
    }

    public final float b()
    {
        if (n == -1F)
        {
            if (l == -1F)
            {
                float f1 = j;
                float f3 = k;
                l = (float)Math.sqrt(f1 * f1 + f3 * f3);
            }
            float f2 = l;
            if (m == -1F)
            {
                float f4 = h;
                float f5 = i;
                m = (float)Math.sqrt(f4 * f4 + f5 * f5);
            }
            n = f2 / m;
        }
        return n;
    }
}
