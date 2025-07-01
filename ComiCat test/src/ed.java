// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

final class ed extends eb
    implements SubMenu
{

    ed(Context context, r r1)
    {
        super(context, r1);
    }

    public final void clearHeader()
    {
        ((r)d).clearHeader();
    }

    public final MenuItem getItem()
    {
        return a(((r)d).getItem());
    }

    public final SubMenu setHeaderIcon(int i)
    {
        ((r)d).setHeaderIcon(i);
        return this;
    }

    public final SubMenu setHeaderIcon(Drawable drawable)
    {
        ((r)d).setHeaderIcon(drawable);
        return this;
    }

    public final SubMenu setHeaderTitle(int i)
    {
        ((r)d).setHeaderTitle(i);
        return this;
    }

    public final SubMenu setHeaderTitle(CharSequence charsequence)
    {
        ((r)d).setHeaderTitle(charsequence);
        return this;
    }

    public final SubMenu setHeaderView(View view)
    {
        ((r)d).setHeaderView(view);
        return this;
    }

    public final SubMenu setIcon(int i)
    {
        ((r)d).setIcon(i);
        return this;
    }

    public final SubMenu setIcon(Drawable drawable)
    {
        ((r)d).setIcon(drawable);
        return this;
    }
}
