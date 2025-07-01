// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.widget.PopupWindow;

// Referenced classes of package android.support.v7.widget:
//            ListPopupWindow

final class <init>
    implements Runnable
{

    final ListPopupWindow a;

    public final void run()
    {
        if (ListPopupWindow.a(a) != null && ListPopupWindow.a(a).getCount() > ListPopupWindow.a(a).getChildCount() && ListPopupWindow.a(a).getChildCount() <= a.e)
        {
            ListPopupWindow.b(a).setInputMethodMode(2);
            a.c();
        }
    }

    private (ListPopupWindow listpopupwindow)
    {
        a = listpopupwindow;
        super();
    }

    a(ListPopupWindow listpopupwindow, byte byte0)
    {
        this(listpopupwindow);
    }
}
