package defpackage;

import android.content.Context;
import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;

/* renamed from: ea  reason: default package */
/* compiled from: MenuWrapperFactory */
public final class ea {
    public static Menu a(Context context, p pVar) {
        if (Build.VERSION.SDK_INT >= 14) {
            return new eb(context, pVar);
        }
        throw new UnsupportedOperationException();
    }

    public static MenuItem a(Context context, q qVar) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new dw(context, qVar);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            return new dv(context, qVar);
        }
        throw new UnsupportedOperationException();
    }
}
