// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;
import fd;

// Referenced classes of package android.support.v7.widget:
//            LinearLayoutManager

final class 
{

    int a;
    int b;
    boolean c;
    final LinearLayoutManager d;

    final void a()
    {
        int i;
        if (c)
        {
            i = d.k.c();
        } else
        {
            i = d.k.b();
        }
        b = i;
    }

    public final void a(View view)
    {
        if (c)
        {
            b = d.k.b(view) + d.k.a();
        } else
        {
            b = d.k.a(view);
        }
        a = LinearLayoutManager.a(view);
    }

    public final String toString()
    {
        return (new StringBuilder("AnchorInfo{mPosition=")).append(a).append(", mCoordinate=").append(b).append(", mLayoutFromEnd=").append(c).append('}').toString();
    }
}
