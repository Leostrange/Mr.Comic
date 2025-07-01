// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

static final class a
    implements bt
{

    bp a;

    public final void onAnimationCancel(View view)
    {
        Object obj = view.getTag(0x7e000000);
        if (obj instanceof bt)
        {
            obj = (bt)obj;
        } else
        {
            obj = null;
        }
        if (obj != null)
        {
            ((bt) (obj)).onAnimationCancel(view);
        }
    }

    public final void onAnimationEnd(View view)
    {
        if (bp.d(a) >= 0)
        {
            bh.a(view, bp.d(a), null);
            bp.c(a);
        }
        if (bp.b(a) != null)
        {
            bp.b(a).run();
        }
        Object obj = view.getTag(0x7e000000);
        if (obj instanceof bt)
        {
            obj = (bt)obj;
        } else
        {
            obj = null;
        }
        if (obj != null)
        {
            ((bt) (obj)).onAnimationEnd(view);
        }
    }

    public final void onAnimationStart(View view)
    {
        if (bp.d(a) >= 0)
        {
            bh.a(view, 2, null);
        }
        if (bp.a(a) != null)
        {
            bp.a(a).run();
        }
        Object obj = view.getTag(0x7e000000);
        if (obj instanceof bt)
        {
            obj = (bt)obj;
        } else
        {
            obj = null;
        }
        if (obj != null)
        {
            ((bt) (obj)).onAnimationStart(view);
        }
    }

    iew(bp bp1)
    {
        a = bp1;
    }
}
