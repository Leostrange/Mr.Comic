// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import java.util.ArrayList;

public final class dd extends ActionBar
{
    final class a
        implements dy.a
    {

        final dd a;
        private boolean b;

        public final void onCloseMenu(ds ds1, boolean flag)
        {
            if (b)
            {
                return;
            }
            b = true;
            dd.c(a).o();
            if (dd.a(a) != null)
            {
                dd.a(a).onPanelClosed(8, ds1);
            }
            b = false;
        }

        public final boolean onOpenSubMenu(ds ds1)
        {
            if (dd.a(a) != null)
            {
                dd.a(a).onMenuOpened(8, ds1);
                return true;
            } else
            {
                return false;
            }
        }

        private a()
        {
            a = dd.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }

    final class b
        implements ds.a
    {

        final dd a;

        public final boolean onMenuItemSelected(ds ds1, MenuItem menuitem)
        {
            return false;
        }

        public final void onMenuModeChange(ds ds1)
        {
            if (dd.a(a) != null)
            {
                if (dd.c(a).j())
                {
                    dd.a(a).onPanelClosed(8, ds1);
                } else
                if (dd.a(a).onPreparePanel(0, null, ds1))
                {
                    dd.a(a).onMenuOpened(8, ds1);
                    return;
                }
            }
        }

        private b()
        {
            a = dd.this;
            super();
        }

        b(byte byte0)
        {
            this();
        }
    }

    final class c
        implements dy.a
    {

        final dd a;

        public final void onCloseMenu(ds ds1, boolean flag)
        {
            if (dd.a(a) != null)
            {
                dd.a(a).onPanelClosed(0, ds1);
            }
        }

        public final boolean onOpenSubMenu(ds ds1)
        {
            if (ds1 == null && dd.a(a) != null)
            {
                dd.a(a).onMenuOpened(0, ds1);
            }
            return true;
        }

        private c()
        {
            a = dd.this;
            super();
        }

        c(byte byte0)
        {
            this();
        }
    }

    final class d extends dm
    {

        final dd a;

        public final View onCreatePanelView(int j)
        {
            j;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 26;
               goto _L1 _L2
_L1:
            Menu menu;
            return super.onCreatePanelView(j);
_L2:
            if (onPreparePanel(j, null, menu = dd.c(a).x()) && onMenuOpened(j, menu))
            {
                return dd.a(a, menu);
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        public final boolean onPreparePanel(int j, View view, Menu menu)
        {
            boolean flag = super.onPreparePanel(j, view, menu);
            if (flag && !dd.b(a))
            {
                dd.c(a).n();
                dd.d(a);
            }
            return flag;
        }

        public d(android.view.Window.Callback callback)
        {
            a = dd.this;
            super(callback);
        }
    }


    public android.view.Window.Callback a;
    private ej b;
    private boolean c;
    private boolean d;
    private boolean e;
    private ArrayList f;
    private dr g;
    private final Runnable h = new Runnable() {

        final dd a;

        public final void run()
        {
            ds ds1;
            dd dd1 = a;
            Menu menu = dd1.a();
            if (menu instanceof ds)
            {
                ds1 = (ds)menu;
            } else
            {
                ds1 = null;
            }
            if (ds1 != null)
            {
                ds1.d();
            }
            menu.clear();
            if (!dd1.a.onCreatePanelMenu(0, menu) || !dd1.a.onPreparePanel(0, null, menu))
            {
                menu.clear();
            }
            if (ds1 != null)
            {
                ds1.e();
            }
            return;
            Exception exception;
            exception;
            if (ds1 != null)
            {
                ds1.e();
            }
            throw exception;
        }

            
            {
                a = dd.this;
                super();
            }
    };
    private final android.support.v7.widget.Toolbar.b i = new android.support.v7.widget.Toolbar.b() {

        final dd a;

        public final boolean a(MenuItem menuitem)
        {
            return dd.a(a).onMenuItemSelected(0, menuitem);
        }

            
            {
                a = dd.this;
                super();
            }
    };

    public dd(Toolbar toolbar, CharSequence charsequence, android.view.Window.Callback callback)
    {
        f = new ArrayList();
        b = new et(toolbar, false);
        a = new d(callback);
        b.a(a);
        toolbar.setOnMenuItemClickListener(i);
        b.a(charsequence);
    }

    static View a(dd dd1, Menu menu)
    {
        if (dd1.g == null && (menu instanceof ds))
        {
            ds ds1 = (ds)menu;
            Object obj = dd1.b.b();
            TypedValue typedvalue = new TypedValue();
            android.content.res.Resources.Theme theme = ((Context) (obj)).getResources().newTheme();
            theme.setTo(((Context) (obj)).getTheme());
            theme.resolveAttribute(cv.a.actionBarPopupTheme, typedvalue, true);
            if (typedvalue.resourceId != 0)
            {
                theme.applyStyle(typedvalue.resourceId, true);
            }
            theme.resolveAttribute(cv.a.panelMenuListTheme, typedvalue, true);
            if (typedvalue.resourceId != 0)
            {
                theme.applyStyle(typedvalue.resourceId, true);
            } else
            {
                theme.applyStyle(cv.j.Theme_AppCompat_CompactMenu, true);
            }
            obj = new ContextThemeWrapper(((Context) (obj)), 0);
            ((Context) (obj)).getTheme().setTo(theme);
            dd1.g = new dr(((Context) (obj)), cv.h.abc_list_menu_item_layout);
            dd1.g.g = dd1. new c((byte)0);
            ds1.a(dd1.g);
        }
        if (menu == null || dd1.g == null)
        {
            return null;
        }
        if (dd1.g.a().getCount() > 0)
        {
            return (View)dd1.g.a(dd1.b.a());
        } else
        {
            return null;
        }
    }

    static android.view.Window.Callback a(dd dd1)
    {
        return dd1.a;
    }

    static boolean b(dd dd1)
    {
        return dd1.c;
    }

    static ej c(dd dd1)
    {
        return dd1.b;
    }

    static boolean d(dd dd1)
    {
        dd1.c = true;
        return true;
    }

    final Menu a()
    {
        if (!d)
        {
            b.a(new a((byte)0), new b((byte)0));
            d = true;
        }
        return b.x();
    }

    public final void addOnMenuVisibilityListener(android.support.v7.app.ActionBar.OnMenuVisibilityListener onmenuvisibilitylistener)
    {
        f.add(onmenuvisibilitylistener);
    }

    public final void addTab(android.support.v7.app.ActionBar.Tab tab)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void addTab(android.support.v7.app.ActionBar.Tab tab, int j)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void addTab(android.support.v7.app.ActionBar.Tab tab, int j, boolean flag)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void addTab(android.support.v7.app.ActionBar.Tab tab, boolean flag)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final boolean collapseActionView()
    {
        if (b.c())
        {
            b.d();
            return true;
        } else
        {
            return false;
        }
    }

    public final void dispatchMenuVisibilityChanged(boolean flag)
    {
        if (flag != e)
        {
            e = flag;
            int k = f.size();
            int j = 0;
            while (j < k) 
            {
                ((android.support.v7.app.ActionBar.OnMenuVisibilityListener)f.get(j)).onMenuVisibilityChanged(flag);
                j++;
            }
        }
    }

    public final View getCustomView()
    {
        return b.u();
    }

    public final int getDisplayOptions()
    {
        return b.p();
    }

    public final float getElevation()
    {
        return bh.u(b.a());
    }

    public final int getHeight()
    {
        return b.v();
    }

    public final int getNavigationItemCount()
    {
        return 0;
    }

    public final int getNavigationMode()
    {
        return 0;
    }

    public final int getSelectedNavigationIndex()
    {
        return -1;
    }

    public final android.support.v7.app.ActionBar.Tab getSelectedTab()
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final CharSequence getSubtitle()
    {
        return b.f();
    }

    public final android.support.v7.app.ActionBar.Tab getTabAt(int j)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final int getTabCount()
    {
        return 0;
    }

    public final Context getThemedContext()
    {
        return b.b();
    }

    public final CharSequence getTitle()
    {
        return b.e();
    }

    public final void hide()
    {
        b.i(8);
    }

    public final boolean invalidateOptionsMenu()
    {
        b.a().removeCallbacks(h);
        bh.a(b.a(), h);
        return true;
    }

    public final boolean isShowing()
    {
        return b.w() == 0;
    }

    public final boolean isTitleTruncated()
    {
        return super.isTitleTruncated();
    }

    public final android.support.v7.app.ActionBar.Tab newTab()
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    public final boolean onKeyShortcut(int j, KeyEvent keyevent)
    {
        boolean flag = false;
        Menu menu = a();
        if (menu != null)
        {
            flag = menu.performShortcut(j, keyevent, 0);
        }
        return flag;
    }

    public final boolean onMenuKeyEvent(KeyEvent keyevent)
    {
        if (keyevent.getAction() == 1)
        {
            openOptionsMenu();
        }
        return true;
    }

    public final boolean openOptionsMenu()
    {
        return b.l();
    }

    public final void removeAllTabs()
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void removeOnMenuVisibilityListener(android.support.v7.app.ActionBar.OnMenuVisibilityListener onmenuvisibilitylistener)
    {
        f.remove(onmenuvisibilitylistener);
    }

    public final void removeTab(android.support.v7.app.ActionBar.Tab tab)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void removeTabAt(int j)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void selectTab(android.support.v7.app.ActionBar.Tab tab)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void setBackgroundDrawable(Drawable drawable)
    {
        b.d(drawable);
    }

    public final void setCustomView(int j)
    {
        setCustomView(LayoutInflater.from(b.b()).inflate(j, b.a(), false));
    }

    public final void setCustomView(View view)
    {
        setCustomView(view, new android.support.v7.app.ActionBar.LayoutParams(-2, -2));
    }

    public final void setCustomView(View view, android.support.v7.app.ActionBar.LayoutParams layoutparams)
    {
        view.setLayoutParams(layoutparams);
        b.a(view);
    }

    public final void setDefaultDisplayHomeAsUpEnabled(boolean flag)
    {
    }

    public final void setDisplayHomeAsUpEnabled(boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        setDisplayOptions(byte0, 4);
    }

    public final void setDisplayOptions(int j)
    {
        setDisplayOptions(j, -1);
    }

    public final void setDisplayOptions(int j, int k)
    {
        int l = b.p();
        b.c(l & ~k | j & k);
    }

    public final void setDisplayShowCustomEnabled(boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 16;
        } else
        {
            byte0 = 0;
        }
        setDisplayOptions(byte0, 16);
    }

    public final void setDisplayShowHomeEnabled(boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        setDisplayOptions(byte0, 2);
    }

    public final void setDisplayShowTitleEnabled(boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        setDisplayOptions(byte0, 8);
    }

    public final void setDisplayUseLogoEnabled(boolean flag)
    {
        int j;
        if (flag)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        setDisplayOptions(j, 1);
    }

    public final void setElevation(float f1)
    {
        bh.f(b.a(), f1);
    }

    public final void setHomeActionContentDescription(int j)
    {
        b.h(j);
    }

    public final void setHomeActionContentDescription(CharSequence charsequence)
    {
        b.d(charsequence);
    }

    public final void setHomeAsUpIndicator(int j)
    {
        b.g(j);
    }

    public final void setHomeAsUpIndicator(Drawable drawable)
    {
        b.c(drawable);
    }

    public final void setHomeButtonEnabled(boolean flag)
    {
    }

    public final void setIcon(int j)
    {
        b.a(j);
    }

    public final void setIcon(Drawable drawable)
    {
        b.a(drawable);
    }

    public final void setListNavigationCallbacks(SpinnerAdapter spinneradapter, android.support.v7.app.ActionBar.OnNavigationListener onnavigationlistener)
    {
        b.a(spinneradapter, new db(onnavigationlistener));
    }

    public final void setLogo(int j)
    {
        b.b(j);
    }

    public final void setLogo(Drawable drawable)
    {
        b.b(drawable);
    }

    public final void setNavigationMode(int j)
    {
        if (j == 2)
        {
            throw new IllegalArgumentException("Tabs not supported in this configuration");
        } else
        {
            b.d(j);
            return;
        }
    }

    public final void setSelectedNavigationItem(int j)
    {
        switch (b.r())
        {
        default:
            throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");

        case 1: // '\001'
            b.e(j);
            break;
        }
    }

    public final void setShowHideAnimationEnabled(boolean flag)
    {
    }

    public final void setSplitBackgroundDrawable(Drawable drawable)
    {
    }

    public final void setStackedBackgroundDrawable(Drawable drawable)
    {
    }

    public final void setSubtitle(int j)
    {
        ej ej1 = b;
        CharSequence charsequence;
        if (j != 0)
        {
            charsequence = b.b().getText(j);
        } else
        {
            charsequence = null;
        }
        ej1.c(charsequence);
    }

    public final void setSubtitle(CharSequence charsequence)
    {
        b.c(charsequence);
    }

    public final void setTitle(int j)
    {
        ej ej1 = b;
        CharSequence charsequence;
        if (j != 0)
        {
            charsequence = b.b().getText(j);
        } else
        {
            charsequence = null;
        }
        ej1.b(charsequence);
    }

    public final void setTitle(CharSequence charsequence)
    {
        b.b(charsequence);
    }

    public final void setWindowTitle(CharSequence charsequence)
    {
        b.a(charsequence);
    }

    public final void show()
    {
        b.i(0);
    }
}
