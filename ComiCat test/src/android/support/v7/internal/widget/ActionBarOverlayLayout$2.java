// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.view.View;
import bu;

// Referenced classes of package android.support.v7.internal.widget:
//            ActionBarOverlayLayout

final class a extends bu
{

    final ActionBarOverlayLayout a;

    public final void onAnimationCancel(View view)
    {
        ActionBarOverlayLayout.b(a, null);
        ActionBarOverlayLayout.a(a);
    }

    public final void onAnimationEnd(View view)
    {
        ActionBarOverlayLayout.b(a, null);
        ActionBarOverlayLayout.a(a);
    }

    A(ActionBarOverlayLayout actionbaroverlaylayout)
    {
        a = actionbaroverlaylayout;
        super();
    }
}
