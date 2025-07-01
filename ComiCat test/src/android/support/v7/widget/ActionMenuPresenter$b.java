// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import dx;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuPresenter, ListPopupWindow

final class <init> extends android.support.v7.internal.view.menu.init>
{

    final ActionMenuPresenter a;

    public final ListPopupWindow a()
    {
        if (a.l != null)
        {
            return ((dx) (a.l)).c;
        } else
        {
            return null;
        }
    }

    private ItemView.b(ActionMenuPresenter actionmenupresenter)
    {
        a = actionmenupresenter;
        super();
    }

    ItemView.b(ActionMenuPresenter actionmenupresenter, byte byte0)
    {
        this(actionmenupresenter);
    }
}
