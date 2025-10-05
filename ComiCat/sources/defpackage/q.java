package defpackage;

import android.view.MenuItem;
import android.view.View;
import defpackage.aw;

/* renamed from: q  reason: default package */
/* compiled from: SupportMenuItem */
public interface q extends MenuItem {
    ao a();

    q a(ao aoVar);

    q a(aw.e eVar);

    boolean collapseActionView();

    boolean expandActionView();

    View getActionView();

    boolean isActionViewExpanded();

    MenuItem setActionView(int i);

    MenuItem setActionView(View view);

    void setShowAsAction(int i);

    MenuItem setShowAsActionFlags(int i);
}
