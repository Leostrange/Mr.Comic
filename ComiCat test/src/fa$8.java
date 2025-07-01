// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import java.util.ArrayList;

final class > extends >
{

    final mationStart a;
    final bp b;
    final View c;
    final fa d;

    public final void onAnimationEnd(View view)
    {
        b.a(null);
        bh.c(c, 1.0F);
        bh.a(c, 0.0F);
        bh.b(c, 0.0F);
        d.g(a.b);
        d.g.remove(a.b);
        d.c();
    }

    public final void onAnimationStart(View view)
    {
    }

    >(fa fa1, ew ew, bp bp1, View view)
    {
        d = fa1;
        a = ew;
        b = bp1;
        c = view;
        super((byte)0);
    }
}
