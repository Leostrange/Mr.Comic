// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class ao
{
    public static interface a
    {

        public abstract void a(boolean flag);
    }

    public static interface b
    {

        public abstract void a();
    }


    public a a;
    private final Context b;
    private b c;

    public ao(Context context)
    {
        b = context;
    }

    public abstract View a();

    public View a(MenuItem menuitem)
    {
        return a();
    }

    public void a(SubMenu submenu)
    {
    }

    public void a(b b1)
    {
        if (c != null && b1 != null)
        {
            Log.w("ActionProvider(support)", (new StringBuilder("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ")).append(getClass().getSimpleName()).append(" instance while it is still in use somewhere else?").toString());
        }
        c = b1;
    }

    public final void a(boolean flag)
    {
        if (a != null)
        {
            a.a(flag);
        }
    }

    public boolean b()
    {
        return false;
    }

    public boolean c()
    {
        return true;
    }

    public boolean d()
    {
        return false;
    }

    public boolean e()
    {
        return false;
    }
}
