// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

final class dw extends dv
{
    final class a extends dv.a
        implements android.view.ActionProvider.VisibilityListener
    {

        ao.b d;
        final dw e;

        public final View a(MenuItem menuitem)
        {
            return b.onCreateActionView(menuitem);
        }

        public final void a(ao.b b1)
        {
            d = b1;
            ActionProvider actionprovider = b;
            if (b1 != null)
            {
                b1 = this;
            } else
            {
                b1 = null;
            }
            actionprovider.setVisibilityListener(b1);
        }

        public final boolean b()
        {
            return b.overridesItemVisibility();
        }

        public final boolean c()
        {
            return b.isVisible();
        }

        public final void onActionProviderVisibilityChanged(boolean flag)
        {
            if (d != null)
            {
                d.a();
            }
        }

        public a(Context context, ActionProvider actionprovider)
        {
            e = dw.this;
            super(dw.this, context, actionprovider);
        }
    }


    dw(Context context, q q)
    {
        super(context, q);
    }

    final dv.a a(ActionProvider actionprovider)
    {
        return new a(a, actionprovider);
    }
}
