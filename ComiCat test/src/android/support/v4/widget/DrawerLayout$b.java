// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import al;
import android.view.View;
import bz;

// Referenced classes of package android.support.v4.widget:
//            DrawerLayout

final class a extends al
{

    final DrawerLayout a;

    public final void onInitializeAccessibilityNodeInfo(View view, bz bz1)
    {
        super.onInitializeAccessibilityNodeInfo(view, bz1);
        if (!DrawerLayout.f(view))
        {
            bz1.c(null);
        }
    }

    (DrawerLayout drawerlayout)
    {
        a = drawerlayout;
        super();
    }
}
