package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import defpackage.aw;

/* renamed from: dn  reason: default package */
/* compiled from: ActionMenuItem */
public final class dn implements q {
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private CharSequence e;
    private CharSequence f;
    private Intent g;
    private char h;
    private char i;
    private Drawable j;
    private int k = 0;
    private Context l;
    private MenuItem.OnMenuItemClickListener m;
    private int n = 16;

    public dn(Context context, CharSequence charSequence) {
        this.l = context;
        this.a = 16908332;
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = charSequence;
    }

    public final ao a() {
        return null;
    }

    public final q a(ao aoVar) {
        throw new UnsupportedOperationException();
    }

    public final q a(aw.e eVar) {
        return this;
    }

    public final boolean collapseActionView() {
        return false;
    }

    public final boolean expandActionView() {
        return false;
    }

    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    public final View getActionView() {
        return null;
    }

    public final char getAlphabeticShortcut() {
        return this.i;
    }

    public final int getGroupId() {
        return this.b;
    }

    public final Drawable getIcon() {
        return this.j;
    }

    public final Intent getIntent() {
        return this.g;
    }

    public final int getItemId() {
        return this.a;
    }

    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    public final char getNumericShortcut() {
        return this.h;
    }

    public final int getOrder() {
        return this.d;
    }

    public final SubMenu getSubMenu() {
        return null;
    }

    public final CharSequence getTitle() {
        return this.e;
    }

    public final CharSequence getTitleCondensed() {
        return this.f != null ? this.f : this.e;
    }

    public final boolean hasSubMenu() {
        return false;
    }

    public final boolean isActionViewExpanded() {
        return false;
    }

    public final boolean isCheckable() {
        return (this.n & 1) != 0;
    }

    public final boolean isChecked() {
        return (this.n & 2) != 0;
    }

    public final boolean isEnabled() {
        return (this.n & 16) != 0;
    }

    public final boolean isVisible() {
        return (this.n & 8) == 0;
    }

    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    public final /* synthetic */ MenuItem setActionView(int i2) {
        throw new UnsupportedOperationException();
    }

    public final /* synthetic */ MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    public final MenuItem setAlphabeticShortcut(char c2) {
        this.i = c2;
        return this;
    }

    public final MenuItem setCheckable(boolean z) {
        this.n = (z ? 1 : 0) | (this.n & -2);
        return this;
    }

    public final MenuItem setChecked(boolean z) {
        this.n = (z ? 2 : 0) | (this.n & -3);
        return this;
    }

    public final MenuItem setEnabled(boolean z) {
        this.n = (z ? 16 : 0) | (this.n & -17);
        return this;
    }

    public final MenuItem setIcon(int i2) {
        this.k = i2;
        this.j = e.getDrawable(this.l, i2);
        return this;
    }

    public final MenuItem setIcon(Drawable drawable) {
        this.j = drawable;
        this.k = 0;
        return this;
    }

    public final MenuItem setIntent(Intent intent) {
        this.g = intent;
        return this;
    }

    public final MenuItem setNumericShortcut(char c2) {
        this.h = c2;
        return this;
    }

    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.m = onMenuItemClickListener;
        return this;
    }

    public final MenuItem setShortcut(char c2, char c3) {
        this.h = c2;
        this.i = c3;
        return this;
    }

    public final void setShowAsAction(int i2) {
    }

    public final /* synthetic */ MenuItem setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    public final MenuItem setTitle(int i2) {
        this.e = this.l.getResources().getString(i2);
        return this;
    }

    public final MenuItem setTitle(CharSequence charSequence) {
        this.e = charSequence;
        return this;
    }

    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        return this;
    }

    public final MenuItem setVisible(boolean z) {
        this.n = (z ? 0 : 8) | (this.n & 8);
        return this;
    }
}
