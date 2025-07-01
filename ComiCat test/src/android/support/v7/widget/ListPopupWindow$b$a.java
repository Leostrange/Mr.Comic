// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;
import android.view.ViewParent;

// Referenced classes of package android.support.v7.widget:
//            ListPopupWindow

final class <init>
    implements Runnable
{

    final ptTouchEvent a;

    public final void run()
    {
        <init>(a).getParent().requestDisallowInterceptTouchEvent(true);
    }

    private ( )
    {
        a = ;
        super();
    }

    a(a a1, byte byte0)
    {
        this(a1);
    }
}
