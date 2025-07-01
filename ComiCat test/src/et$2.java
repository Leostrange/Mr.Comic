// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.support.v7.widget.Toolbar;
import android.view.View;

final class b extends bu
{

    final et a;
    private boolean b;

    public final void onAnimationCancel(View view)
    {
        b = true;
    }

    public final void onAnimationEnd(View view)
    {
        if (!b)
        {
            a.a.setVisibility(8);
        }
    }

    >(et et1)
    {
        a = et1;
        super();
        b = false;
    }
}
