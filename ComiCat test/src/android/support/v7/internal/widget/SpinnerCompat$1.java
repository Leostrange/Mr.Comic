// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.support.v7.widget.ListPopupWindow;
import android.view.View;

// Referenced classes of package android.support.v7.internal.widget:
//            SpinnerCompat

final class a extends android.support.v7.widget.b
{

    final c a;
    final SpinnerCompat b;

    public final ListPopupWindow a()
    {
        return a;
    }

    public final boolean b()
    {
        if (!SpinnerCompat.a(b).b())
        {
            SpinnerCompat.a(b).c();
        }
        return true;
    }

    (SpinnerCompat spinnercompat, View view,  )
    {
        b = spinnercompat;
        a = ;
        super(view);
    }
}
