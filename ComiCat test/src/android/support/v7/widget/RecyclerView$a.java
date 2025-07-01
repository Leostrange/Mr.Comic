// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import v;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static abstract class 
{

    final a a;
    boolean b;

    public abstract  a();

    public final void a( , int i)
    {
        .b = i;
        if (b)
        {
            .d = -1L;
        }
        .a(1, 519);
        v.a("RV OnBindView");
        v.a();
    }

    public abstract int b();
}
