// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.widget;

import android.view.View;
import bc;
import bh;

// Referenced classes of package android.support.design.widget:
//            CoordinatorLayoutInsetsHelper

class CoordinatorLayoutInsetsHelperLollipop
    implements CoordinatorLayoutInsetsHelper
{

    CoordinatorLayoutInsetsHelperLollipop()
    {
    }

    public void setupForWindowInsets(View view, bc bc)
    {
        if (bh.x(view))
        {
            bh.a(view, bc);
            view.setSystemUiVisibility(1280);
        }
    }
}
