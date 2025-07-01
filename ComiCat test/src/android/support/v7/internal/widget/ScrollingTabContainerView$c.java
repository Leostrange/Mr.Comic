// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.view.View;
import bt;

// Referenced classes of package android.support.v7.internal.widget:
//            ScrollingTabContainerView

public final class b
    implements bt
{

    final ScrollingTabContainerView a;
    private boolean b;
    private int c;

    public final void onAnimationCancel(View view)
    {
        b = true;
    }

    public final void onAnimationEnd(View view)
    {
        if (b)
        {
            return;
        } else
        {
            a.g = null;
            a.setVisibility(c);
            return;
        }
    }

    public final void onAnimationStart(View view)
    {
        a.setVisibility(0);
        b = false;
    }

    protected (ScrollingTabContainerView scrollingtabcontainerview)
    {
        a = scrollingtabcontainerview;
        super();
        b = false;
    }
}
