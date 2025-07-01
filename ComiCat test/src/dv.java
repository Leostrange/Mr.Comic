// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

public class dv extends dp
    implements MenuItem
{
    class a extends ao
    {

        final ActionProvider b;
        final dv c;

        public final View a()
        {
            return b.onCreateActionView();
        }

        public final void a(SubMenu submenu)
        {
            b.onPrepareSubMenu(c.a(submenu));
        }

        public final boolean d()
        {
            return b.onPerformDefaultAction();
        }

        public final boolean e()
        {
            return b.hasSubMenu();
        }

        public a(Context context, ActionProvider actionprovider)
        {
            c = dv.this;
            super(context);
            b = actionprovider;
        }
    }

    static final class b extends FrameLayout
        implements ex
    {

        final CollapsibleActionView a;

        public final void a()
        {
            a.onActionViewExpanded();
        }

        public final void b()
        {
            a.onActionViewCollapsed();
        }

        b(View view)
        {
            super(view.getContext());
            a = (CollapsibleActionView)view;
            addView(view);
        }
    }

    final class c extends dq
        implements aw.e
    {

        final dv a;

        public final boolean a(MenuItem menuitem)
        {
            return ((android.view.MenuItem.OnActionExpandListener)d).onMenuItemActionExpand(a.a(menuitem));
        }

        public final boolean b(MenuItem menuitem)
        {
            return ((android.view.MenuItem.OnActionExpandListener)d).onMenuItemActionCollapse(a.a(menuitem));
        }

        c(android.view.MenuItem.OnActionExpandListener onactionexpandlistener)
        {
            a = dv.this;
            super(onactionexpandlistener);
        }
    }

    final class d extends dq
        implements android.view.MenuItem.OnMenuItemClickListener
    {

        final dv a;

        public final boolean onMenuItemClick(MenuItem menuitem)
        {
            return ((android.view.MenuItem.OnMenuItemClickListener)d).onMenuItemClick(a.a(menuitem));
        }

        d(android.view.MenuItem.OnMenuItemClickListener onmenuitemclicklistener)
        {
            a = dv.this;
            super(onmenuitemclicklistener);
        }
    }


    public Method e;

    dv(Context context, q q1)
    {
        super(context, q1);
    }

    a a(ActionProvider actionprovider)
    {
        return new a(a, actionprovider);
    }

    public boolean collapseActionView()
    {
        return ((q)d).collapseActionView();
    }

    public boolean expandActionView()
    {
        return ((q)d).expandActionView();
    }

    public ActionProvider getActionProvider()
    {
        ao ao = ((q)d).a();
        if (ao instanceof a)
        {
            return ((a)ao).b;
        } else
        {
            return null;
        }
    }

    public View getActionView()
    {
        View view1 = ((q)d).getActionView();
        View view = view1;
        if (view1 instanceof b)
        {
            view = (View)((b)view1).a;
        }
        return view;
    }

    public char getAlphabeticShortcut()
    {
        return ((q)d).getAlphabeticShortcut();
    }

    public int getGroupId()
    {
        return ((q)d).getGroupId();
    }

    public Drawable getIcon()
    {
        return ((q)d).getIcon();
    }

    public Intent getIntent()
    {
        return ((q)d).getIntent();
    }

    public int getItemId()
    {
        return ((q)d).getItemId();
    }

    public android.view.ContextMenu.ContextMenuInfo getMenuInfo()
    {
        return ((q)d).getMenuInfo();
    }

    public char getNumericShortcut()
    {
        return ((q)d).getNumericShortcut();
    }

    public int getOrder()
    {
        return ((q)d).getOrder();
    }

    public SubMenu getSubMenu()
    {
        return a(((q)d).getSubMenu());
    }

    public CharSequence getTitle()
    {
        return ((q)d).getTitle();
    }

    public CharSequence getTitleCondensed()
    {
        return ((q)d).getTitleCondensed();
    }

    public boolean hasSubMenu()
    {
        return ((q)d).hasSubMenu();
    }

    public boolean isActionViewExpanded()
    {
        return ((q)d).isActionViewExpanded();
    }

    public boolean isCheckable()
    {
        return ((q)d).isCheckable();
    }

    public boolean isChecked()
    {
        return ((q)d).isChecked();
    }

    public boolean isEnabled()
    {
        return ((q)d).isEnabled();
    }

    public boolean isVisible()
    {
        return ((q)d).isVisible();
    }

    public MenuItem setActionProvider(ActionProvider actionprovider)
    {
        q q1 = (q)d;
        if (actionprovider != null)
        {
            actionprovider = a(actionprovider);
        } else
        {
            actionprovider = null;
        }
        q1.a(actionprovider);
        return this;
    }

    public MenuItem setActionView(int i)
    {
        ((q)d).setActionView(i);
        View view = ((q)d).getActionView();
        if (view instanceof CollapsibleActionView)
        {
            ((q)d).setActionView(new b(view));
        }
        return this;
    }

    public MenuItem setActionView(View view)
    {
        Object obj = view;
        if (view instanceof CollapsibleActionView)
        {
            obj = new b(view);
        }
        ((q)d).setActionView(((View) (obj)));
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c1)
    {
        ((q)d).setAlphabeticShortcut(c1);
        return this;
    }

    public MenuItem setCheckable(boolean flag)
    {
        ((q)d).setCheckable(flag);
        return this;
    }

    public MenuItem setChecked(boolean flag)
    {
        ((q)d).setChecked(flag);
        return this;
    }

    public MenuItem setEnabled(boolean flag)
    {
        ((q)d).setEnabled(flag);
        return this;
    }

    public MenuItem setIcon(int i)
    {
        ((q)d).setIcon(i);
        return this;
    }

    public MenuItem setIcon(Drawable drawable)
    {
        ((q)d).setIcon(drawable);
        return this;
    }

    public MenuItem setIntent(Intent intent)
    {
        ((q)d).setIntent(intent);
        return this;
    }

    public MenuItem setNumericShortcut(char c1)
    {
        ((q)d).setNumericShortcut(c1);
        return this;
    }

    public MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onactionexpandlistener)
    {
        q q1 = (q)d;
        if (onactionexpandlistener != null)
        {
            onactionexpandlistener = new c(onactionexpandlistener);
        } else
        {
            onactionexpandlistener = null;
        }
        q1.a(onactionexpandlistener);
        return this;
    }

    public MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onmenuitemclicklistener)
    {
        q q1 = (q)d;
        if (onmenuitemclicklistener != null)
        {
            onmenuitemclicklistener = new d(onmenuitemclicklistener);
        } else
        {
            onmenuitemclicklistener = null;
        }
        q1.setOnMenuItemClickListener(onmenuitemclicklistener);
        return this;
    }

    public MenuItem setShortcut(char c1, char c2)
    {
        ((q)d).setShortcut(c1, c2);
        return this;
    }

    public void setShowAsAction(int i)
    {
        ((q)d).setShowAsAction(i);
    }

    public MenuItem setShowAsActionFlags(int i)
    {
        ((q)d).setShowAsActionFlags(i);
        return this;
    }

    public MenuItem setTitle(int i)
    {
        ((q)d).setTitle(i);
        return this;
    }

    public MenuItem setTitle(CharSequence charsequence)
    {
        ((q)d).setTitle(charsequence);
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charsequence)
    {
        ((q)d).setTitleCondensed(charsequence);
        return this;
    }

    public MenuItem setVisible(boolean flag)
    {
        return ((q)d).setVisible(flag);
    }
}
