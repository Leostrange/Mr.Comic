// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

public final class di extends ew
    implements ds.a
{

    private Context a;
    private ActionBarContextView d;
    private ew.a e;
    private WeakReference f;
    private boolean g;
    private boolean h;
    private ds i;

    public di(Context context, ActionBarContextView actionbarcontextview, ew.a a1, boolean flag)
    {
        a = context;
        d = actionbarcontextview;
        e = a1;
        context = new ds(actionbarcontextview.getContext());
        context.e = 1;
        i = context;
        i.a(this);
        h = flag;
    }

    public final MenuInflater a()
    {
        return new MenuInflater(d.getContext());
    }

    public final void a(int j)
    {
        b(a.getString(j));
    }

    public final void a(View view)
    {
        d.setCustomView(view);
        if (view != null)
        {
            view = new WeakReference(view);
        } else
        {
            view = null;
        }
        f = view;
    }

    public final void a(CharSequence charsequence)
    {
        d.setSubtitle(charsequence);
    }

    public final void a(boolean flag)
    {
        super.a(flag);
        d.setTitleOptional(flag);
    }

    public final Menu b()
    {
        return i;
    }

    public final void b(int j)
    {
        a(a.getString(j));
    }

    public final void b(CharSequence charsequence)
    {
        d.setTitle(charsequence);
    }

    public final void c()
    {
        if (g)
        {
            return;
        } else
        {
            g = true;
            d.sendAccessibilityEvent(32);
            e.onDestroyActionMode(this);
            return;
        }
    }

    public final void d()
    {
        e.onPrepareActionMode(this, i);
    }

    public final CharSequence f()
    {
        return d.getTitle();
    }

    public final CharSequence g()
    {
        return d.getSubtitle();
    }

    public final boolean h()
    {
        return d.k;
    }

    public final View i()
    {
        if (f != null)
        {
            return (View)f.get();
        } else
        {
            return null;
        }
    }

    public final boolean onMenuItemSelected(ds ds1, MenuItem menuitem)
    {
        return e.onActionItemClicked(this, menuitem);
    }

    public final void onMenuModeChange(ds ds1)
    {
        d();
        d.a();
    }
}
