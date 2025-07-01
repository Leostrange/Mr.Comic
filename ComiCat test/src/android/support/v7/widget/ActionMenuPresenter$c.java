// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;
import ds;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuPresenter

final class b
    implements Runnable
{

    final ActionMenuPresenter a;
    private a b;

    public final void run()
    {
        Object obj = ActionMenuPresenter.c(a);
        if (((ds) (obj)).b != null)
        {
            ((ds) (obj)).b.a(((ds) (obj)));
        }
        obj = (View)ActionMenuPresenter.d(a);
        if (obj != null && ((View) (obj)).getWindowToken() != null && b.a())
        {
            a.k = b;
        }
        a.m = null;
    }

    public (ActionMenuPresenter actionmenupresenter,  )
    {
        a = actionmenupresenter;
        super();
        b = ;
    }
}
