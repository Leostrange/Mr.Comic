package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import defpackage.aw;
import java.lang.reflect.Method;

@TargetApi(14)
/* renamed from: dv  reason: default package */
/* compiled from: MenuItemWrapperICS */
public class dv extends dp<q> implements MenuItem {
    public Method e;

    /* renamed from: dv$a */
    /* compiled from: MenuItemWrapperICS */
    class a extends ao {
        final ActionProvider b;

        public a(Context context, ActionProvider actionProvider) {
            super(context);
            this.b = actionProvider;
        }

        public final View a() {
            return this.b.onCreateActionView();
        }

        public final void a(SubMenu subMenu) {
            this.b.onPrepareSubMenu(dv.this.a(subMenu));
        }

        public final boolean d() {
            return this.b.onPerformDefaultAction();
        }

        public final boolean e() {
            return this.b.hasSubMenu();
        }
    }

    /* renamed from: dv$b */
    /* compiled from: MenuItemWrapperICS */
    static class b extends FrameLayout implements ex {
        final CollapsibleActionView a;

        b(View view) {
            super(view.getContext());
            this.a = (CollapsibleActionView) view;
            addView(view);
        }

        public final void a() {
            this.a.onActionViewExpanded();
        }

        public final void b() {
            this.a.onActionViewCollapsed();
        }
    }

    /* renamed from: dv$c */
    /* compiled from: MenuItemWrapperICS */
    class c extends dq<MenuItem.OnActionExpandListener> implements aw.e {
        c(MenuItem.OnActionExpandListener onActionExpandListener) {
            super(onActionExpandListener);
        }

        public final boolean a(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.d).onMenuItemActionExpand(dv.this.a(menuItem));
        }

        public final boolean b(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.d).onMenuItemActionCollapse(dv.this.a(menuItem));
        }
    }

    /* renamed from: dv$d */
    /* compiled from: MenuItemWrapperICS */
    class d extends dq<MenuItem.OnMenuItemClickListener> implements MenuItem.OnMenuItemClickListener {
        d(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            super(onMenuItemClickListener);
        }

        public final boolean onMenuItemClick(MenuItem menuItem) {
            return ((MenuItem.OnMenuItemClickListener) this.d).onMenuItemClick(dv.this.a(menuItem));
        }
    }

    dv(Context context, q qVar) {
        super(context, qVar);
    }

    /* access modifiers changed from: package-private */
    public a a(ActionProvider actionProvider) {
        return new a(this.a, actionProvider);
    }

    public boolean collapseActionView() {
        return ((q) this.d).collapseActionView();
    }

    public boolean expandActionView() {
        return ((q) this.d).expandActionView();
    }

    public ActionProvider getActionProvider() {
        ao a2 = ((q) this.d).a();
        if (a2 instanceof a) {
            return ((a) a2).b;
        }
        return null;
    }

    public View getActionView() {
        View actionView = ((q) this.d).getActionView();
        return actionView instanceof b ? (View) ((b) actionView).a : actionView;
    }

    public char getAlphabeticShortcut() {
        return ((q) this.d).getAlphabeticShortcut();
    }

    public int getGroupId() {
        return ((q) this.d).getGroupId();
    }

    public Drawable getIcon() {
        return ((q) this.d).getIcon();
    }

    public Intent getIntent() {
        return ((q) this.d).getIntent();
    }

    public int getItemId() {
        return ((q) this.d).getItemId();
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return ((q) this.d).getMenuInfo();
    }

    public char getNumericShortcut() {
        return ((q) this.d).getNumericShortcut();
    }

    public int getOrder() {
        return ((q) this.d).getOrder();
    }

    public SubMenu getSubMenu() {
        return a(((q) this.d).getSubMenu());
    }

    public CharSequence getTitle() {
        return ((q) this.d).getTitle();
    }

    public CharSequence getTitleCondensed() {
        return ((q) this.d).getTitleCondensed();
    }

    public boolean hasSubMenu() {
        return ((q) this.d).hasSubMenu();
    }

    public boolean isActionViewExpanded() {
        return ((q) this.d).isActionViewExpanded();
    }

    public boolean isCheckable() {
        return ((q) this.d).isCheckable();
    }

    public boolean isChecked() {
        return ((q) this.d).isChecked();
    }

    public boolean isEnabled() {
        return ((q) this.d).isEnabled();
    }

    public boolean isVisible() {
        return ((q) this.d).isVisible();
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ((q) this.d).a((ao) actionProvider != null ? a(actionProvider) : null);
        return this;
    }

    public MenuItem setActionView(int i) {
        ((q) this.d).setActionView(i);
        View actionView = ((q) this.d).getActionView();
        if (actionView instanceof CollapsibleActionView) {
            ((q) this.d).setActionView((View) new b(actionView));
        }
        return this;
    }

    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new b(view);
        }
        ((q) this.d).setActionView(view);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        ((q) this.d).setAlphabeticShortcut(c2);
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        ((q) this.d).setCheckable(z);
        return this;
    }

    public MenuItem setChecked(boolean z) {
        ((q) this.d).setChecked(z);
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        ((q) this.d).setEnabled(z);
        return this;
    }

    public MenuItem setIcon(int i) {
        ((q) this.d).setIcon(i);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        ((q) this.d).setIcon(drawable);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        ((q) this.d).setIntent(intent);
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        ((q) this.d).setNumericShortcut(c2);
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        ((q) this.d).a((aw.e) onActionExpandListener != null ? new c(onActionExpandListener) : null);
        return this;
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        ((q) this.d).setOnMenuItemClickListener(onMenuItemClickListener != null ? new d(onMenuItemClickListener) : null);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        ((q) this.d).setShortcut(c2, c3);
        return this;
    }

    public void setShowAsAction(int i) {
        ((q) this.d).setShowAsAction(i);
    }

    public MenuItem setShowAsActionFlags(int i) {
        ((q) this.d).setShowAsActionFlags(i);
        return this;
    }

    public MenuItem setTitle(int i) {
        ((q) this.d).setTitle(i);
        return this;
    }

    public MenuItem setTitle(CharSequence charSequence) {
        ((q) this.d).setTitle(charSequence);
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        ((q) this.d).setTitleCondensed(charSequence);
        return this;
    }

    public MenuItem setVisible(boolean z) {
        return ((q) this.d).setVisible(z);
    }
}
