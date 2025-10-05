package defpackage;

import android.content.Context;
import android.os.Parcelable;

/* renamed from: dy  reason: default package */
/* compiled from: MenuPresenter */
public interface dy {

    /* renamed from: dy$a */
    /* compiled from: MenuPresenter */
    public interface a {
        void onCloseMenu(ds dsVar, boolean z);

        boolean onOpenSubMenu(ds dsVar);
    }

    boolean collapseItemActionView(ds dsVar, du duVar);

    boolean expandItemActionView(ds dsVar, du duVar);

    boolean flagActionItems();

    int getId();

    void initForMenu(Context context, ds dsVar);

    void onCloseMenu(ds dsVar, boolean z);

    void onRestoreInstanceState(Parcelable parcelable);

    Parcelable onSaveInstanceState();

    boolean onSubMenuSelected(ec ecVar);

    void updateMenuView(boolean z);
}
