// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import java.util.ArrayList;

final class c extends bu
{

    final dl a;
    private boolean b;
    private int c;

    public final void onAnimationEnd(View view)
    {
        int i = c + 1;
        c = i;
        if (i == a.a.size())
        {
            if (a.b != null)
            {
                a.b.onAnimationEnd(null);
            }
            c = 0;
            b = false;
            a.c = false;
        }
    }

    public final void onAnimationStart(View view)
    {
        if (!b)
        {
            b = true;
            if (a.b != null)
            {
                a.b.onAnimationStart(null);
                return;
            }
        }
    }

    >(dl dl1)
    {
        a = dl1;
        super();
        b = false;
        c = 0;
    }
}
