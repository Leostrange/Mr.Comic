// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import ey;
import ez;
import v;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

final class a
    implements Runnable
{

    final RecyclerView a;

    public final void run()
    {
        if (RecyclerView.a(a)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (RecyclerView.b(a))
        {
            v.a("RV FullInvalidate");
            a.h();
            v.a();
            return;
        }
        if (!a.b.d()) goto _L1; else goto _L3
_L3:
        RecyclerView recyclerview;
        int i;
        int j;
        v.a("RV PartialInvalidate");
        a.a();
        a.b.b();
        if (RecyclerView.c(a))
        {
            break MISSING_BLOCK_LABEL_206;
        }
        recyclerview = a;
        j = recyclerview.c.a();
        i = 0;
_L5:
        a a1;
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        a1 = RecyclerView.b(recyclerview.c.b(i));
        if (a1 != null && !a1.b())
        {
            if (!a1.m() && !a1.i())
            {
                break; /* Loop/switch isn't completed */
            }
            recyclerview.requestLayout();
        }
_L7:
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        if (!a1.j()) goto _L7; else goto _L6
_L6:
label0:
        {
            if (a1.e != 0)
            {
                break label0;
            }
            if (!a1.k() || !recyclerview.g())
            {
                recyclerview.d.a(a1, a1.b);
            } else
            {
                recyclerview.requestLayout();
            }
        }
          goto _L7
        recyclerview.requestLayout();
        a.a(true);
        v.a();
        return;
    }

    (RecyclerView recyclerview)
    {
        a = recyclerview;
        super();
    }
}
