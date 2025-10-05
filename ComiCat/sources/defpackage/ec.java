package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import defpackage.ds;

/* renamed from: ec  reason: default package */
/* compiled from: SubMenuBuilder */
public final class ec extends ds implements SubMenu {
    public ds l;
    private du m;

    public ec(Context context, ds dsVar, du duVar) {
        super(context);
        this.l = dsVar;
        this.m = duVar;
    }

    public final String a() {
        int itemId = this.m != null ? this.m.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.a() + ":" + itemId;
    }

    public final void a(ds.a aVar) {
        this.l.a(aVar);
    }

    /* access modifiers changed from: package-private */
    public final boolean a(ds dsVar, MenuItem menuItem) {
        return super.a(dsVar, menuItem) || this.l.a(dsVar, menuItem);
    }

    public final boolean a(du duVar) {
        return this.l.a(duVar);
    }

    public final boolean b() {
        return this.l.b();
    }

    public final boolean b(du duVar) {
        return this.l.b(duVar);
    }

    public final boolean c() {
        return this.l.c();
    }

    public final MenuItem getItem() {
        return this.m;
    }

    public final ds k() {
        return this.l;
    }

    public final SubMenu setHeaderIcon(int i) {
        super.a(e.getDrawable(this.a, i));
        return this;
    }

    public final SubMenu setHeaderIcon(Drawable drawable) {
        super.a(drawable);
        return this;
    }

    public final SubMenu setHeaderTitle(int i) {
        super.a((CharSequence) this.a.getResources().getString(i));
        return this;
    }

    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        super.a(charSequence);
        return this;
    }

    public final SubMenu setHeaderView(View view) {
        super.a((CharSequence) null, (Drawable) null, view);
        return this;
    }

    public final SubMenu setIcon(int i) {
        this.m.setIcon(i);
        return this;
    }

    public final SubMenu setIcon(Drawable drawable) {
        this.m.setIcon(drawable);
        return this;
    }

    public final void setQwertyMode(boolean z) {
        this.l.setQwertyMode(z);
    }
}
