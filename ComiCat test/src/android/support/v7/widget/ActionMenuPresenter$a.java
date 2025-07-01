// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import du;
import dx;
import ec;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuPresenter

final class h extends dx
{

    final ActionMenuPresenter g;
    private ec h;

    public final void onDismiss()
    {
        super.onDismiss();
        g.l = null;
        g.o = 0;
    }

    public (ActionMenuPresenter actionmenupresenter, Context context, ec ec1)
    {
        boolean flag1 = false;
        g = actionmenupresenter;
        super(context, ec1, null, false, uStyle);
        h = ec1;
        int i;
        if (!((du)ec1.getItem()).f())
        {
            int j;
            boolean flag;
            if (actionmenupresenter.i == null)
            {
                context = (View)ActionMenuPresenter.b(actionmenupresenter);
            } else
            {
                context = actionmenupresenter.i;
            }
            super.b = context;
        }
        super.d = actionmenupresenter.n;
        j = ec1.size();
        i = 0;
        do
        {
label0:
            {
                flag = flag1;
                if (i < j)
                {
                    actionmenupresenter = ec1.getItem(i);
                    if (!actionmenupresenter.isVisible() || actionmenupresenter.getIcon() == null)
                    {
                        break label0;
                    }
                    flag = true;
                }
                super.e = flag;
                return;
            }
            i++;
        } while (true);
    }
}
