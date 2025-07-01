// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageButton;
import ds;
import du;
import dy;
import ec;
import ex;

// Referenced classes of package android.support.v7.widget:
//            Toolbar

public final class <init>
    implements dy
{

    ds a;
    public du b;
    final Toolbar c;

    public final boolean collapseItemActionView(ds ds1, du du1)
    {
        if (c.c instanceof ex)
        {
            ((ex)c.c).b();
        }
        c.removeView(c.c);
        c.removeView(Toolbar.c(c));
        c.c = null;
        Toolbar.a(c, false);
        b = null;
        c.requestLayout();
        du1.d(false);
        return true;
    }

    public final boolean expandItemActionView(ds ds1, du du1)
    {
        Toolbar.b(c);
        if (Toolbar.c(c).getParent() != c)
        {
            c.addView(Toolbar.c(c));
        }
        c.c = du1.getActionView();
        b = du1;
        if (c.c.getParent() != c)
        {
            ds1 = Toolbar.d();
            ds1.gravity = 0x800003 | Toolbar.d(c) & 0x70;
            ds1.a = 2;
            c.c.setLayoutParams(ds1);
            c.addView(c.c);
        }
        Toolbar.a(c, true);
        c.requestLayout();
        du1.d(true);
        if (c.c instanceof ex)
        {
            ((ex)c.c).a();
        }
        return true;
    }

    public final boolean flagActionItems()
    {
        return false;
    }

    public final int getId()
    {
        return 0;
    }

    public final void initForMenu(Context context, ds ds1)
    {
        if (a != null && b != null)
        {
            a.b(b);
        }
        a = ds1;
    }

    public final void onCloseMenu(ds ds1, boolean flag)
    {
    }

    public final void onRestoreInstanceState(Parcelable parcelable)
    {
    }

    public final Parcelable onSaveInstanceState()
    {
        return null;
    }

    public final boolean onSubMenuSelected(ec ec)
    {
        return false;
    }

    public final void updateMenuView(boolean flag)
    {
        boolean flag2 = false;
        if (b == null) goto _L2; else goto _L1
_L1:
        boolean flag1 = flag2;
        if (a == null) goto _L4; else goto _L3
_L3:
        int i;
        int j;
        j = a.size();
        i = 0;
_L9:
        flag1 = flag2;
        if (i >= j) goto _L4; else goto _L5
_L5:
        if (a.getItem(i) != b) goto _L7; else goto _L6
_L6:
        flag1 = true;
_L4:
        if (!flag1)
        {
            collapseItemActionView(a, b);
        }
_L2:
        return;
_L7:
        i++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private youtParams(Toolbar toolbar)
    {
        c = toolbar;
        super();
    }

    c(Toolbar toolbar, byte byte0)
    {
        this(toolbar);
    }
}
