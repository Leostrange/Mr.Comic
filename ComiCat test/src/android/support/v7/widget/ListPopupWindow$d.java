// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.database.DataSetObserver;
import android.widget.PopupWindow;

// Referenced classes of package android.support.v7.widget:
//            ListPopupWindow

final class <init> extends DataSetObserver
{

    final ListPopupWindow a;

    public final void onChanged()
    {
        if (a.b.isShowing())
        {
            a.c();
        }
    }

    public final void onInvalidated()
    {
        a.a();
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
