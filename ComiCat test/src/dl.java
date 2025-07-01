// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

public final class dl
{

    final ArrayList a = new ArrayList();
    bt b;
    boolean c;
    private long d;
    private Interpolator e;
    private final bu f = new bu() {

        final dl a;
        private boolean b;
        private int c;

        public final void onAnimationEnd(View view)
        {
            int i = c + 1;
            c = i;
            if (i == a.a.size())
            {
                if (a.b != null)
                {
                    a.b.onAnimationEnd(null);
                }
                c = 0;
                b = false;
                a.c = false;
            }
        }

        public final void onAnimationStart(View view)
        {
            if (!b)
            {
                b = true;
                if (a.b != null)
                {
                    a.b.onAnimationStart(null);
                    return;
                }
            }
        }

            
            {
                a = dl.this;
                super();
                b = false;
                c = 0;
            }
    };

    public dl()
    {
        d = -1L;
    }

    public final dl a(Interpolator interpolator)
    {
        if (!c)
        {
            e = interpolator;
        }
        return this;
    }

    public final dl a(bp bp1)
    {
        if (!c)
        {
            a.add(bp1);
        }
        return this;
    }

    public final dl a(bt bt)
    {
        if (!c)
        {
            b = bt;
        }
        return this;
    }

    public final void a()
    {
        if (c)
        {
            return;
        }
        bp bp1;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); bp1.b())
        {
            bp1 = (bp)iterator.next();
            if (d >= 0L)
            {
                bp1.a(d);
            }
            if (e != null)
            {
                bp1.a(e);
            }
            if (b != null)
            {
                bp1.a(f);
            }
        }

        c = true;
    }

    public final void b()
    {
        if (!c)
        {
            return;
        }
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((bp)iterator.next()).a()) { }
        c = false;
    }

    public final dl c()
    {
        if (!c)
        {
            d = 250L;
        }
        return this;
    }
}
