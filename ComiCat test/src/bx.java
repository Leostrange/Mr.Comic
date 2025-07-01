// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.WindowInsets;

final class bx extends bw
{

    final WindowInsets a;

    bx(WindowInsets windowinsets)
    {
        a = windowinsets;
    }

    public final int a()
    {
        return a.getSystemWindowInsetLeft();
    }

    public final bw a(int i, int j, int k, int l)
    {
        return new bx(a.replaceSystemWindowInsets(i, j, k, l));
    }

    public final int b()
    {
        return a.getSystemWindowInsetTop();
    }

    public final int c()
    {
        return a.getSystemWindowInsetRight();
    }

    public final int d()
    {
        return a.getSystemWindowInsetBottom();
    }

    public final boolean e()
    {
        return a.isConsumed();
    }

    public final bw f()
    {
        return new bx(a.consumeSystemWindowInsets());
    }
}
