package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.app.AlertDialog;
import android.support.v7.internal.view.menu.ExpandedMenuView;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import defpackage.cv;
import defpackage.dy;
import defpackage.dz;
import java.util.ArrayList;

/* renamed from: dr  reason: default package */
/* compiled from: ListMenuPresenter */
public final class dr implements AdapterView.OnItemClickListener, dy {
    Context a;
    LayoutInflater b;
    ds c;
    ExpandedMenuView d;
    int e;
    int f;
    public dy.a g;
    a h;
    /* access modifiers changed from: private */
    public int i;
    private int j;

    /* renamed from: dr$a */
    /* compiled from: ListMenuPresenter */
    class a extends BaseAdapter {
        private int b = -1;

        public a() {
            a();
        }

        private void a() {
            du duVar = dr.this.c.j;
            if (duVar != null) {
                ArrayList<du> j = dr.this.c.j();
                int size = j.size();
                for (int i = 0; i < size; i++) {
                    if (j.get(i) == duVar) {
                        this.b = i;
                        return;
                    }
                }
            }
            this.b = -1;
        }

        /* renamed from: a */
        public final du getItem(int i) {
            ArrayList<du> j = dr.this.c.j();
            int a2 = dr.this.i + i;
            if (this.b >= 0 && a2 >= this.b) {
                a2++;
            }
            return j.get(a2);
        }

        public final int getCount() {
            int size = dr.this.c.j().size() - dr.this.i;
            return this.b < 0 ? size : size - 1;
        }

        public final long getItemId(int i) {
            return (long) i;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = view == null ? dr.this.b.inflate(dr.this.f, viewGroup, false) : view;
            ((dz.a) inflate).initialize(getItem(i), 0);
            return inflate;
        }

        public final void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    private dr(int i2) {
        this.f = i2;
        this.e = 0;
    }

    public dr(Context context, int i2) {
        this(i2);
        this.a = context;
        this.b = LayoutInflater.from(this.a);
    }

    public final ListAdapter a() {
        if (this.h == null) {
            this.h = new a();
        }
        return this.h;
    }

    public final dz a(ViewGroup viewGroup) {
        if (this.d == null) {
            this.d = (ExpandedMenuView) this.b.inflate(cv.h.abc_expanded_menu_layout, viewGroup, false);
            if (this.h == null) {
                this.h = new a();
            }
            this.d.setAdapter(this.h);
            this.d.setOnItemClickListener(this);
        }
        return this.d;
    }

    public final boolean collapseItemActionView(ds dsVar, du duVar) {
        return false;
    }

    public final boolean expandItemActionView(ds dsVar, du duVar) {
        return false;
    }

    public final boolean flagActionItems() {
        return false;
    }

    public final int getId() {
        return this.j;
    }

    public final void initForMenu(Context context, ds dsVar) {
        if (this.e != 0) {
            this.a = new ContextThemeWrapper(context, this.e);
            this.b = LayoutInflater.from(this.a);
        } else if (this.a != null) {
            this.a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(this.a);
            }
        }
        this.c = dsVar;
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }

    public final void onCloseMenu(ds dsVar, boolean z) {
        if (this.g != null) {
            this.g.onCloseMenu(dsVar, z);
        }
    }

    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.c.a((MenuItem) this.h.getItem(i2), (dy) this, 0);
    }

    public final void onRestoreInstanceState(Parcelable parcelable) {
        SparseArray sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public final Parcelable onSaveInstanceState() {
        if (this.d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray sparseArray = new SparseArray();
        if (this.d != null) {
            this.d.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    public final boolean onSubMenuSelected(ec ecVar) {
        if (!ecVar.hasVisibleItems()) {
            return false;
        }
        dt dtVar = new dt(ecVar);
        ds dsVar = dtVar.a;
        AlertDialog.Builder builder = new AlertDialog.Builder(dsVar.a);
        dtVar.c = new dr(builder.getContext(), cv.h.abc_list_menu_item_layout);
        dtVar.c.g = dtVar;
        dtVar.a.a((dy) dtVar.c);
        builder.setAdapter(dtVar.c.a(), dtVar);
        View view = dsVar.h;
        if (view != null) {
            builder.setCustomTitle(view);
        } else {
            builder.setIcon(dsVar.g).setTitle(dsVar.f);
        }
        builder.setOnKeyListener(dtVar);
        dtVar.b = builder.create();
        dtVar.b.setOnDismissListener(dtVar);
        WindowManager.LayoutParams attributes = dtVar.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        dtVar.b.show();
        if (this.g != null) {
            this.g.onOpenSubMenu(ecVar);
        }
        return true;
    }

    public final void updateMenuView(boolean z) {
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }
}
