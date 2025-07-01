// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;

final class nit> extends al
{

    final fe a;

    public final void onInitializeAccessibilityNodeInfo(View view, bz bz)
    {
        super.onInitializeAccessibilityNodeInfo(view, bz);
        if (!a.a() && a.a.getLayoutManager() != null)
        {
            a.a.getLayoutManager().a(view, bz);
        }
    }

    public final boolean performAccessibilityAction(View view, int i, Bundle bundle)
    {
        boolean flag1 = false;
        boolean flag;
        if (super.performAccessibilityAction(view, i, bundle))
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (!a.a())
            {
                flag = flag1;
                if (a.a.getLayoutManager() != null)
                {
                    view = a.a.getLayoutManager();
                    bundle = ((android.support.v7.widget.lerView.h) (view)).r.a;
                    view = ((android.support.v7.widget.lerView.h) (view)).r.n;
                    return false;
                }
            }
        }
        return flag;
    }

    >(fe fe1)
    {
        a = fe1;
        super();
    }
}
