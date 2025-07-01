// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import bh;
import bp;

// Referenced classes of package android.support.v7.internal.widget:
//            ActionBarOverlayLayout, ActionBarContainer

final class a
    implements Runnable
{

    final ActionBarOverlayLayout a;

    public final void run()
    {
        ActionBarOverlayLayout.b(a);
        ActionBarOverlayLayout.a(a, bh.s(ActionBarOverlayLayout.d(a)).c(-ActionBarOverlayLayout.d(a).getHeight()).a(ActionBarOverlayLayout.c(a)));
        if (ActionBarOverlayLayout.e(a) != null && ActionBarOverlayLayout.e(a).getVisibility() != 8)
        {
            ActionBarOverlayLayout.b(a, bh.s(ActionBarOverlayLayout.e(a)).c(ActionBarOverlayLayout.e(a).getHeight()).a(ActionBarOverlayLayout.f(a)));
        }
    }

    A(ActionBarOverlayLayout actionbaroverlaylayout)
    {
        a = actionbaroverlaylayout;
        super();
    }
}
