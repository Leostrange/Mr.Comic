// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;
import dx;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuPresenter, ListPopupWindow

final class  extends 
{

    final ActionMenuPresenter a;
    final b b;

    public final ListPopupWindow a()
    {
        if (b.b.k == null)
        {
            return null;
        } else
        {
            return ((dx) (b.b.k)).c;
        }
    }

    public final boolean b()
    {
        b.b.d();
        return true;
    }

    public final boolean c()
    {
        if (b.b.m != null)
        {
            return false;
        } else
        {
            b.b.e();
            return true;
        }
    }

    ( , View view, ActionMenuPresenter actionmenupresenter)
    {
        b = ;
        a = actionmenupresenter;
        super(view);
    }
}
