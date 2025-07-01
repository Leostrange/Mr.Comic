// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public final class ec extends ds
    implements SubMenu
{

    public ds l;
    private du m;

    public ec(Context context, ds ds1, du du1)
    {
        super(context);
        l = ds1;
        m = du1;
    }

    public final String a()
    {
        int i;
        if (m != null)
        {
            i = m.getItemId();
        } else
        {
            i = 0;
        }
        if (i == 0)
        {
            return null;
        } else
        {
            return (new StringBuilder()).append(super.a()).append(":").append(i).toString();
        }
    }

    public final void a(ds.a a1)
    {
        l.a(a1);
    }

    final boolean a(ds ds1, MenuItem menuitem)
    {
        return super.a(ds1, menuitem) || l.a(ds1, menuitem);
    }

    public final boolean a(du du1)
    {
        return l.a(du1);
    }

    public final boolean b()
    {
        return l.b();
    }

    public final boolean b(du du1)
    {
        return l.b(du1);
    }

    public final boolean c()
    {
        return l.c();
    }

    public final MenuItem getItem()
    {
        return m;
    }

    public final ds k()
    {
        return l;
    }

    public final SubMenu setHeaderIcon(int i)
    {
        super.a(e.getDrawable(super.a, i));
        return this;
    }

    public final SubMenu setHeaderIcon(Drawable drawable)
    {
        super.a(drawable);
        return this;
    }

    public final SubMenu setHeaderTitle(int i)
    {
        super.a(super.a.getResources().getString(i));
        return this;
    }

    public final SubMenu setHeaderTitle(CharSequence charsequence)
    {
        super.a(charsequence);
        return this;
    }

    public final SubMenu setHeaderView(View view)
    {
        super.a(null, null, view);
        return this;
    }

    public final SubMenu setIcon(int i)
    {
        m.setIcon(i);
        return this;
    }

    public final SubMenu setIcon(Drawable drawable)
    {
        m.setIcon(drawable);
        return this;
    }

    public final void setQwertyMode(boolean flag)
    {
        l.setQwertyMode(flag);
    }
}
