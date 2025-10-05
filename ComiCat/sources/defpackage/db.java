package defpackage;

import android.support.v7.app.ActionBar;
import android.support.v7.internal.widget.AdapterViewCompat;

/* renamed from: db  reason: default package */
/* compiled from: NavItemSelectedListener */
final class db implements AdapterViewCompat.d {
    private final ActionBar.OnNavigationListener a;

    public db(ActionBar.OnNavigationListener onNavigationListener) {
        this.a = onNavigationListener;
    }

    public final void a(int i, long j) {
        if (this.a != null) {
            this.a.onNavigationItemSelected(i, j);
        }
    }
}
