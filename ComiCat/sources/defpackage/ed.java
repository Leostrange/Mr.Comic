package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: ed  reason: default package */
/* compiled from: SubMenuWrapperICS */
final class ed extends eb implements SubMenu {
    ed(Context context, r rVar) {
        super(context, rVar);
    }

    public final void clearHeader() {
        ((r) this.d).clearHeader();
    }

    public final MenuItem getItem() {
        return a(((r) this.d).getItem());
    }

    public final SubMenu setHeaderIcon(int i) {
        ((r) this.d).setHeaderIcon(i);
        return this;
    }

    public final SubMenu setHeaderIcon(Drawable drawable) {
        ((r) this.d).setHeaderIcon(drawable);
        return this;
    }

    public final SubMenu setHeaderTitle(int i) {
        ((r) this.d).setHeaderTitle(i);
        return this;
    }

    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        ((r) this.d).setHeaderTitle(charSequence);
        return this;
    }

    public final SubMenu setHeaderView(View view) {
        ((r) this.d).setHeaderView(view);
        return this;
    }

    public final SubMenu setIcon(int i) {
        ((r) this.d).setIcon(i);
        return this;
    }

    public final SubMenu setIcon(Drawable drawable) {
        ((r) this.d).setIcon(drawable);
        return this;
    }
}
