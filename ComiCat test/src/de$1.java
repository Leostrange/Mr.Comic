// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.support.v7.internal.widget.ActionBarContainer;
import android.view.View;

final class nit> extends bu
{

    final de a;

    public final void onAnimationEnd(View view)
    {
        if (de.a(a) && de.b(a) != null)
        {
            bh.b(de.b(a), 0.0F);
            bh.b(de.c(a), 0.0F);
        }
        if (de.d(a) != null && de.e(a) == 1)
        {
            de.d(a).setVisibility(8);
        }
        de.c(a).setVisibility(8);
        de.c(a).setTransitioning(false);
        de.f(a);
        view = a;
        if (((de) (view)).d != null)
        {
            ((de) (view)).d.onDestroyActionMode(((de) (view)).c);
            view.c = null;
            view.d = null;
        }
        if (de.g(a) != null)
        {
            bh.w(de.g(a));
        }
    }

    >(de de1)
    {
        a = de1;
        super();
    }
}
