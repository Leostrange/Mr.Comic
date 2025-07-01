// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.view.View;
import ds;
import dx;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuPresenter

final class g extends dx
{

    final ActionMenuPresenter g;

    public final void onDismiss()
    {
        super.onDismiss();
        ActionMenuPresenter.a(g).close();
        g.k = null;
    }

    public (ActionMenuPresenter actionmenupresenter, Context context, ds ds1, View view)
    {
        g = actionmenupresenter;
        super(context, ds1, view, true, uStyle);
        super.f = 0x800005;
        super.d = actionmenupresenter.n;
    }
}
