package defpackage;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.widget.LinearLayout;
import defpackage.ao;
import defpackage.aw;
import defpackage.dz;

/* renamed from: du  reason: default package */
/* compiled from: MenuItemImpl */
public final class du implements q {
    public static String f;
    public static String g;
    public static String h;
    public static String i;
    final int a;
    public ds b;
    public int c = 0;
    public ao d;
    ContextMenu.ContextMenuInfo e;
    private final int j;
    private final int k;
    private final int l;
    private CharSequence m;
    private CharSequence n;
    private Intent o;
    private char p;
    private char q;
    private Drawable r;
    private int s = 0;
    private ec t;
    private Runnable u;
    private MenuItem.OnMenuItemClickListener v;
    private int w = 16;
    private View x;
    private aw.e y;
    private boolean z = false;

    du(ds dsVar, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        this.b = dsVar;
        this.j = i3;
        this.k = i2;
        this.l = i4;
        this.a = i5;
        this.m = charSequence;
        this.c = i6;
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public q setActionView(View view) {
        this.x = view;
        this.d = null;
        if (view != null && view.getId() == -1 && this.j > 0) {
            view.setId(this.j);
        }
        this.b.g();
        return this;
    }

    private void e(boolean z2) {
        int i2 = this.w;
        this.w = (z2 ? 2 : 0) | (this.w & -3);
        if (i2 != this.w) {
            this.b.b(false);
        }
    }

    public final ao a() {
        return this.d;
    }

    public final CharSequence a(dz.a aVar) {
        return (aVar == null || !aVar.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    public final q a(ao aoVar) {
        if (this.d != null) {
            this.d.a((ao.b) null);
        }
        this.x = null;
        this.d = aoVar;
        this.b.b(true);
        if (this.d != null) {
            this.d.a((ao.b) new ao.b() {
                public final void a() {
                    du.this.b.f();
                }
            });
        }
        return this;
    }

    public final q a(aw.e eVar) {
        this.y = eVar;
        return this;
    }

    /* access modifiers changed from: package-private */
    public final void a(ec ecVar) {
        this.t = ecVar;
        ecVar.setHeaderTitle(getTitle());
    }

    public final void a(boolean z2) {
        this.w = (z2 ? 4 : 0) | (this.w & -5);
    }

    public final boolean b() {
        if ((this.v != null && this.v.onMenuItemClick(this)) || this.b.a(this.b.k(), (MenuItem) this)) {
            return true;
        }
        if (this.u != null) {
            this.u.run();
            return true;
        }
        if (this.o != null) {
            try {
                this.b.a.startActivity(this.o);
                return true;
            } catch (ActivityNotFoundException e2) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e2);
            }
        }
        return this.d != null && this.d.d();
    }

    /* access modifiers changed from: package-private */
    public final boolean b(boolean z2) {
        int i2 = this.w;
        this.w = (z2 ? 0 : 8) | (this.w & -9);
        return i2 != this.w;
    }

    public final char c() {
        return this.b.b() ? this.q : this.p;
    }

    public final void c(boolean z2) {
        if (z2) {
            this.w |= 32;
        } else {
            this.w &= -33;
        }
    }

    public final boolean collapseActionView() {
        if ((this.c & 8) == 0) {
            return false;
        }
        if (this.x == null) {
            return true;
        }
        if (this.y == null || this.y.b(this)) {
            return this.b.b(this);
        }
        return false;
    }

    public final void d(boolean z2) {
        this.z = z2;
        this.b.b(false);
    }

    public final boolean d() {
        return this.b.c() && c() != 0;
    }

    public final boolean e() {
        return (this.w & 4) != 0;
    }

    public final boolean expandActionView() {
        if (!i()) {
            return false;
        }
        if (this.y == null || this.y.a(this)) {
            return this.b.a(this);
        }
        return false;
    }

    public final boolean f() {
        return (this.w & 32) == 32;
    }

    public final boolean g() {
        return (this.c & 1) == 1;
    }

    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    public final View getActionView() {
        if (this.x != null) {
            return this.x;
        }
        if (this.d == null) {
            return null;
        }
        this.x = this.d.a((MenuItem) this);
        return this.x;
    }

    public final char getAlphabeticShortcut() {
        return this.q;
    }

    public final int getGroupId() {
        return this.k;
    }

    public final Drawable getIcon() {
        if (this.r != null) {
            return this.r;
        }
        if (this.s == 0) {
            return null;
        }
        Drawable a2 = er.a(this.b.a, this.s);
        this.s = 0;
        this.r = a2;
        return a2;
    }

    public final Intent getIntent() {
        return this.o;
    }

    @ViewDebug.CapturedViewProperty
    public final int getItemId() {
        return this.j;
    }

    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.e;
    }

    public final char getNumericShortcut() {
        return this.p;
    }

    public final int getOrder() {
        return this.l;
    }

    public final SubMenu getSubMenu() {
        return this.t;
    }

    @ViewDebug.CapturedViewProperty
    public final CharSequence getTitle() {
        return this.m;
    }

    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.n != null ? this.n : this.m;
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    public final boolean h() {
        return (this.c & 2) == 2;
    }

    public final boolean hasSubMenu() {
        return this.t != null;
    }

    public final boolean i() {
        if ((this.c & 8) == 0) {
            return false;
        }
        if (this.x == null && this.d != null) {
            this.x = this.d.a((MenuItem) this);
        }
        return this.x != null;
    }

    public final boolean isActionViewExpanded() {
        return this.z;
    }

    public final boolean isCheckable() {
        return (this.w & 1) == 1;
    }

    public final boolean isChecked() {
        return (this.w & 2) == 2;
    }

    public final boolean isEnabled() {
        return (this.w & 16) != 0;
    }

    public final boolean isVisible() {
        return (this.d == null || !this.d.b()) ? (this.w & 8) == 0 : (this.w & 8) == 0 && this.d.c();
    }

    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    public final /* synthetic */ MenuItem setActionView(int i2) {
        Context context = this.b.a;
        setActionView(LayoutInflater.from(context).inflate(i2, new LinearLayout(context), false));
        return this;
    }

    public final MenuItem setAlphabeticShortcut(char c2) {
        if (this.q != c2) {
            this.q = Character.toLowerCase(c2);
            this.b.b(false);
        }
        return this;
    }

    public final MenuItem setCheckable(boolean z2) {
        int i2 = this.w;
        this.w = (z2 ? 1 : 0) | (this.w & -2);
        if (i2 != this.w) {
            this.b.b(false);
        }
        return this;
    }

    public final MenuItem setChecked(boolean z2) {
        if ((this.w & 4) != 0) {
            ds dsVar = this.b;
            int groupId = getGroupId();
            int size = dsVar.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                du duVar = dsVar.c.get(i2);
                if (duVar.getGroupId() == groupId && duVar.e() && duVar.isCheckable()) {
                    duVar.e(duVar == this);
                }
            }
        } else {
            e(z2);
        }
        return this;
    }

    public final MenuItem setEnabled(boolean z2) {
        if (z2) {
            this.w |= 16;
        } else {
            this.w &= -17;
        }
        this.b.b(false);
        return this;
    }

    public final MenuItem setIcon(int i2) {
        this.r = null;
        this.s = i2;
        this.b.b(false);
        return this;
    }

    public final MenuItem setIcon(Drawable drawable) {
        this.s = 0;
        this.r = drawable;
        this.b.b(false);
        return this;
    }

    public final MenuItem setIntent(Intent intent) {
        this.o = intent;
        return this;
    }

    public final MenuItem setNumericShortcut(char c2) {
        if (this.p != c2) {
            this.p = c2;
            this.b.b(false);
        }
        return this;
    }

    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setOnActionExpandListener()");
    }

    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.v = onMenuItemClickListener;
        return this;
    }

    public final MenuItem setShortcut(char c2, char c3) {
        this.p = c2;
        this.q = Character.toLowerCase(c3);
        this.b.b(false);
        return this;
    }

    public final void setShowAsAction(int i2) {
        switch (i2 & 3) {
            case 0:
            case 1:
            case 2:
                this.c = i2;
                this.b.g();
                return;
            default:
                throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
    }

    public final /* synthetic */ MenuItem setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    public final MenuItem setTitle(int i2) {
        return setTitle((CharSequence) this.b.a.getString(i2));
    }

    public final MenuItem setTitle(CharSequence charSequence) {
        this.m = charSequence;
        this.b.b(false);
        if (this.t != null) {
            this.t.setHeaderTitle(charSequence);
        }
        return this;
    }

    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.n = charSequence;
        this.b.b(false);
        return this;
    }

    public final MenuItem setVisible(boolean z2) {
        if (b(z2)) {
            this.b.f();
        }
        return this;
    }

    public final String toString() {
        return this.m.toString();
    }
}
