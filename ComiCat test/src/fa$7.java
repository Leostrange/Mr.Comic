// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import java.util.ArrayList;

final class > extends >
{

    final mationStart a;
    final bp b;
    final fa c;

    public final void onAnimationEnd(View view)
    {
        b.a(null);
        bh.c(view, 1.0F);
        bh.a(view, 0.0F);
        bh.b(view, 0.0F);
        c.g(a.a);
        c.g.remove(a.a);
        c.c();
    }

    public final void onAnimationStart(View view)
    {
    }

    >(fa fa1, ew ew, bp bp1)
    {
        c = fa1;
        a = ew;
        b = bp1;
        super((byte)0);
    }
}
