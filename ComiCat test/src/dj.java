// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;

public final class dj extends ActionMode
{
    public static final class a
        implements ew.a
    {

        final android.view.ActionMode.Callback a;
        final Context b;
        final ArrayList c = new ArrayList();
        final aj d = new aj();

        private Menu a(Menu menu)
        {
            Menu menu2 = (Menu)d.get(menu);
            Menu menu1 = menu2;
            if (menu2 == null)
            {
                menu1 = ea.a(b, (p)menu);
                d.put(menu, menu1);
            }
            return menu1;
        }

        public final ActionMode a(ew ew1)
        {
            int j = c.size();
            for (int i = 0; i < j; i++)
            {
                dj dj1 = (dj)c.get(i);
                if (dj1 != null && dj1.b == ew1)
                {
                    return dj1;
                }
            }

            ew1 = new dj(b, ew1);
            c.add(ew1);
            return ew1;
        }

        public final boolean onActionItemClicked(ew ew1, MenuItem menuitem)
        {
            return a.onActionItemClicked(a(ew1), ea.a(b, (q)menuitem));
        }

        public final boolean onCreateActionMode(ew ew1, Menu menu)
        {
            return a.onCreateActionMode(a(ew1), a(menu));
        }

        public final void onDestroyActionMode(ew ew1)
        {
            a.onDestroyActionMode(a(ew1));
        }

        public final boolean onPrepareActionMode(ew ew1, Menu menu)
        {
            return a.onPrepareActionMode(a(ew1), a(menu));
        }

        public a(Context context, android.view.ActionMode.Callback callback)
        {
            b = context;
            a = callback;
        }
    }


    final Context a;
    final ew b;

    public dj(Context context, ew ew1)
    {
        a = context;
        b = ew1;
    }

    public final void finish()
    {
        b.c();
    }

    public final View getCustomView()
    {
        return b.i();
    }

    public final Menu getMenu()
    {
        return ea.a(a, (p)b.b());
    }

    public final MenuInflater getMenuInflater()
    {
        return b.a();
    }

    public final CharSequence getSubtitle()
    {
        return b.g();
    }

    public final Object getTag()
    {
        return b.b;
    }

    public final CharSequence getTitle()
    {
        return b.f();
    }

    public final boolean getTitleOptionalHint()
    {
        return b.c;
    }

    public final void invalidate()
    {
        b.d();
    }

    public final boolean isTitleOptional()
    {
        return b.h();
    }

    public final void setCustomView(View view)
    {
        b.a(view);
    }

    public final void setSubtitle(int i)
    {
        b.b(i);
    }

    public final void setSubtitle(CharSequence charsequence)
    {
        b.a(charsequence);
    }

    public final void setTag(Object obj)
    {
        b.b = obj;
    }

    public final void setTitle(int i)
    {
        b.a(i);
    }

    public final void setTitle(CharSequence charsequence)
    {
        b.b(charsequence);
    }

    public final void setTitleOptionalHint(boolean flag)
    {
        b.a(flag);
    }
}
