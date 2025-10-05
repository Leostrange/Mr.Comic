package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.app.ActionBar;
import android.support.v7.internal.widget.AdapterViewCompat;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.SpinnerAdapter;
import defpackage.cv;
import defpackage.ds;
import defpackage.dy;
import java.util.ArrayList;

/* renamed from: dd  reason: default package */
/* compiled from: ToolbarActionBar */
public final class dd extends ActionBar {
    public Window.Callback a;
    /* access modifiers changed from: private */
    public ej b;
    /* access modifiers changed from: private */
    public boolean c;
    private boolean d;
    private boolean e;
    private ArrayList<ActionBar.OnMenuVisibilityListener> f = new ArrayList<>();
    private dr g;
    private final Runnable h = new Runnable() {
        public final void run() {
            dd ddVar = dd.this;
            Menu a2 = ddVar.a();
            ds dsVar = a2 instanceof ds ? (ds) a2 : null;
            if (dsVar != null) {
                dsVar.d();
            }
            try {
                a2.clear();
                if (!ddVar.a.onCreatePanelMenu(0, a2) || !ddVar.a.onPreparePanel(0, (View) null, a2)) {
                    a2.clear();
                }
            } finally {
                if (dsVar != null) {
                    dsVar.e();
                }
            }
        }
    };
    private final Toolbar.b i = new Toolbar.b() {
        public final boolean a(MenuItem menuItem) {
            return dd.this.a.onMenuItemSelected(0, menuItem);
        }
    };

    /* renamed from: dd$a */
    /* compiled from: ToolbarActionBar */
    final class a implements dy.a {
        private boolean b;

        private a() {
        }

        /* synthetic */ a(dd ddVar, byte b2) {
            this();
        }

        public final void onCloseMenu(ds dsVar, boolean z) {
            if (!this.b) {
                this.b = true;
                dd.this.b.o();
                if (dd.this.a != null) {
                    dd.this.a.onPanelClosed(8, dsVar);
                }
                this.b = false;
            }
        }

        public final boolean onOpenSubMenu(ds dsVar) {
            if (dd.this.a == null) {
                return false;
            }
            dd.this.a.onMenuOpened(8, dsVar);
            return true;
        }
    }

    /* renamed from: dd$b */
    /* compiled from: ToolbarActionBar */
    final class b implements ds.a {
        private b() {
        }

        /* synthetic */ b(dd ddVar, byte b) {
            this();
        }

        public final boolean onMenuItemSelected(ds dsVar, MenuItem menuItem) {
            return false;
        }

        public final void onMenuModeChange(ds dsVar) {
            if (dd.this.a == null) {
                return;
            }
            if (dd.this.b.j()) {
                dd.this.a.onPanelClosed(8, dsVar);
            } else if (dd.this.a.onPreparePanel(0, (View) null, dsVar)) {
                dd.this.a.onMenuOpened(8, dsVar);
            }
        }
    }

    /* renamed from: dd$c */
    /* compiled from: ToolbarActionBar */
    final class c implements dy.a {
        private c() {
        }

        /* synthetic */ c(dd ddVar, byte b) {
            this();
        }

        public final void onCloseMenu(ds dsVar, boolean z) {
            if (dd.this.a != null) {
                dd.this.a.onPanelClosed(0, dsVar);
            }
        }

        public final boolean onOpenSubMenu(ds dsVar) {
            if (dsVar != null || dd.this.a == null) {
                return true;
            }
            dd.this.a.onMenuOpened(0, dsVar);
            return true;
        }
    }

    /* renamed from: dd$d */
    /* compiled from: ToolbarActionBar */
    class d extends dm {
        public d(Window.Callback callback) {
            super(callback);
        }

        public final View onCreatePanelView(int i) {
            switch (i) {
                case 0:
                    Menu x = dd.this.b.x();
                    if (onPreparePanel(i, (View) null, x) && onMenuOpened(i, x)) {
                        return dd.a(dd.this, x);
                    }
            }
            return super.onCreatePanelView(i);
        }

        public final boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel && !dd.this.c) {
                dd.this.b.n();
                boolean unused = dd.this.c = true;
            }
            return onPreparePanel;
        }
    }

    public dd(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.b = new et(toolbar, false);
        this.a = new d(callback);
        this.b.a(this.a);
        toolbar.setOnMenuItemClickListener(this.i);
        this.b.a(charSequence);
    }

    static /* synthetic */ View a(dd ddVar, Menu menu) {
        if (ddVar.g == null && (menu instanceof ds)) {
            ds dsVar = (ds) menu;
            Context b2 = ddVar.b.b();
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = b2.getResources().newTheme();
            newTheme.setTo(b2.getTheme());
            newTheme.resolveAttribute(cv.a.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(cv.a.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(cv.j.Theme_AppCompat_CompactMenu, true);
            }
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(b2, 0);
            contextThemeWrapper.getTheme().setTo(newTheme);
            ddVar.g = new dr(contextThemeWrapper, cv.h.abc_list_menu_item_layout);
            ddVar.g.g = new c(ddVar, (byte) 0);
            dsVar.a((dy) ddVar.g);
        }
        if (menu == null || ddVar.g == null) {
            return null;
        }
        if (ddVar.g.a().getCount() > 0) {
            return (View) ddVar.g.a(ddVar.b.a());
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final Menu a() {
        if (!this.d) {
            this.b.a((dy.a) new a(this, (byte) 0), (ds.a) new b(this, (byte) 0));
            this.d = true;
        }
        return this.b.x();
    }

    public final void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f.add(onMenuVisibilityListener);
    }

    public final void addTab(ActionBar.Tab tab) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void addTab(ActionBar.Tab tab, int i2) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void addTab(ActionBar.Tab tab, int i2, boolean z) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void addTab(ActionBar.Tab tab, boolean z) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final boolean collapseActionView() {
        if (!this.b.c()) {
            return false;
        }
        this.b.d();
        return true;
    }

    public final void dispatchMenuVisibilityChanged(boolean z) {
        if (z != this.e) {
            this.e = z;
            int size = this.f.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f.get(i2).onMenuVisibilityChanged(z);
            }
        }
    }

    public final View getCustomView() {
        return this.b.u();
    }

    public final int getDisplayOptions() {
        return this.b.p();
    }

    public final float getElevation() {
        return bh.u(this.b.a());
    }

    public final int getHeight() {
        return this.b.v();
    }

    public final int getNavigationItemCount() {
        return 0;
    }

    public final int getNavigationMode() {
        return 0;
    }

    public final int getSelectedNavigationIndex() {
        return -1;
    }

    public final ActionBar.Tab getSelectedTab() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final CharSequence getSubtitle() {
        return this.b.f();
    }

    public final ActionBar.Tab getTabAt(int i2) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final int getTabCount() {
        return 0;
    }

    public final Context getThemedContext() {
        return this.b.b();
    }

    public final CharSequence getTitle() {
        return this.b.e();
    }

    public final void hide() {
        this.b.i(8);
    }

    public final boolean invalidateOptionsMenu() {
        this.b.a().removeCallbacks(this.h);
        bh.a((View) this.b.a(), this.h);
        return true;
    }

    public final boolean isShowing() {
        return this.b.w() == 0;
    }

    public final boolean isTitleTruncated() {
        return super.isTitleTruncated();
    }

    public final ActionBar.Tab newTab() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public final boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        Menu a2 = a();
        if (a2 != null) {
            return a2.performShortcut(i2, keyEvent, 0);
        }
        return false;
    }

    public final boolean onMenuKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            openOptionsMenu();
        }
        return true;
    }

    public final boolean openOptionsMenu() {
        return this.b.l();
    }

    public final void removeAllTabs() {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f.remove(onMenuVisibilityListener);
    }

    public final void removeTab(ActionBar.Tab tab) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void removeTabAt(int i2) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void selectTab(ActionBar.Tab tab) {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public final void setBackgroundDrawable(Drawable drawable) {
        this.b.d(drawable);
    }

    public final void setCustomView(int i2) {
        setCustomView(LayoutInflater.from(this.b.b()).inflate(i2, this.b.a(), false));
    }

    public final void setCustomView(View view) {
        setCustomView(view, new ActionBar.LayoutParams(-2, -2));
    }

    public final void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.b.a(view);
    }

    public final void setDefaultDisplayHomeAsUpEnabled(boolean z) {
    }

    public final void setDisplayHomeAsUpEnabled(boolean z) {
        setDisplayOptions(z ? 4 : 0, 4);
    }

    public final void setDisplayOptions(int i2) {
        setDisplayOptions(i2, -1);
    }

    public final void setDisplayOptions(int i2, int i3) {
        this.b.c((this.b.p() & (i3 ^ -1)) | (i2 & i3));
    }

    public final void setDisplayShowCustomEnabled(boolean z) {
        setDisplayOptions(z ? 16 : 0, 16);
    }

    public final void setDisplayShowHomeEnabled(boolean z) {
        setDisplayOptions(z ? 2 : 0, 2);
    }

    public final void setDisplayShowTitleEnabled(boolean z) {
        setDisplayOptions(z ? 8 : 0, 8);
    }

    public final void setDisplayUseLogoEnabled(boolean z) {
        setDisplayOptions(z ? 1 : 0, 1);
    }

    public final void setElevation(float f2) {
        bh.f(this.b.a(), f2);
    }

    public final void setHomeActionContentDescription(int i2) {
        this.b.h(i2);
    }

    public final void setHomeActionContentDescription(CharSequence charSequence) {
        this.b.d(charSequence);
    }

    public final void setHomeAsUpIndicator(int i2) {
        this.b.g(i2);
    }

    public final void setHomeAsUpIndicator(Drawable drawable) {
        this.b.c(drawable);
    }

    public final void setHomeButtonEnabled(boolean z) {
    }

    public final void setIcon(int i2) {
        this.b.a(i2);
    }

    public final void setIcon(Drawable drawable) {
        this.b.a(drawable);
    }

    public final void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.b.a(spinnerAdapter, (AdapterViewCompat.d) new db(onNavigationListener));
    }

    public final void setLogo(int i2) {
        this.b.b(i2);
    }

    public final void setLogo(Drawable drawable) {
        this.b.b(drawable);
    }

    public final void setNavigationMode(int i2) {
        if (i2 == 2) {
            throw new IllegalArgumentException("Tabs not supported in this configuration");
        }
        this.b.d(i2);
    }

    public final void setSelectedNavigationItem(int i2) {
        switch (this.b.r()) {
            case 1:
                this.b.e(i2);
                return;
            default:
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    public final void setShowHideAnimationEnabled(boolean z) {
    }

    public final void setSplitBackgroundDrawable(Drawable drawable) {
    }

    public final void setStackedBackgroundDrawable(Drawable drawable) {
    }

    public final void setSubtitle(int i2) {
        this.b.c(i2 != 0 ? this.b.b().getText(i2) : null);
    }

    public final void setSubtitle(CharSequence charSequence) {
        this.b.c(charSequence);
    }

    public final void setTitle(int i2) {
        this.b.b(i2 != 0 ? this.b.b().getText(i2) : null);
    }

    public final void setTitle(CharSequence charSequence) {
        this.b.b(charSequence);
    }

    public final void setWindowTitle(CharSequence charSequence) {
        this.b.a(charSequence);
    }

    public final void show() {
        this.b.i(0);
    }
}
