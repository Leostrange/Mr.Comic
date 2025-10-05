package defpackage;

import android.content.Context;
import android.os.Build;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Map;

/* renamed from: dp  reason: default package */
/* compiled from: BaseMenuWrapper */
abstract class dp<T> extends dq<T> {
    final Context a;
    Map<q, MenuItem> b;
    Map<r, SubMenu> c;

    dp(Context context, T t) {
        super(t);
        this.a = context;
    }

    /* access modifiers changed from: package-private */
    public final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof q)) {
            return menuItem;
        }
        q qVar = (q) menuItem;
        if (this.b == null) {
            this.b = new ab();
        }
        MenuItem menuItem2 = this.b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItem a2 = ea.a(this.a, qVar);
        this.b.put(qVar, a2);
        return a2;
    }

    /* access modifiers changed from: package-private */
    public final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof r)) {
            return subMenu;
        }
        r rVar = (r) subMenu;
        if (this.c == null) {
            this.c = new ab();
        }
        SubMenu subMenu2 = this.c.get(rVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        Context context = this.a;
        if (Build.VERSION.SDK_INT >= 14) {
            ed edVar = new ed(context, rVar);
            this.c.put(rVar, edVar);
            return edVar;
        }
        throw new UnsupportedOperationException();
    }
}
