package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v7.internal.view.menu.ListMenuItemView;
import android.support.v7.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import defpackage.cv;
import defpackage.dy;
import defpackage.dz;
import java.util.ArrayList;

/* renamed from: dx  reason: default package */
/* compiled from: MenuPopupHelper */
public class dx implements View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, dy {
    static final int a = cv.h.abc_popup_menu_item_layout;
    public View b;
    public ListPopupWindow c;
    protected dy.a d;
    protected boolean e;
    protected int f;
    private final Context g;
    /* access modifiers changed from: private */
    public final LayoutInflater h;
    /* access modifiers changed from: private */
    public final ds i;
    private final a j;
    /* access modifiers changed from: private */
    public final boolean k;
    private final int l;
    private final int m;
    private final int n;
    private ViewTreeObserver o;
    private ViewGroup p;
    private boolean q;
    private int r;

    /* renamed from: dx$a */
    /* compiled from: MenuPopupHelper */
    class a extends BaseAdapter {
        /* access modifiers changed from: private */
        public ds b;
        private int c = -1;

        public a(ds dsVar) {
            this.b = dsVar;
            a();
        }

        private void a() {
            du duVar = dx.this.i.j;
            if (duVar != null) {
                ArrayList<du> j = dx.this.i.j();
                int size = j.size();
                for (int i = 0; i < size; i++) {
                    if (j.get(i) == duVar) {
                        this.c = i;
                        return;
                    }
                }
            }
            this.c = -1;
        }

        /* renamed from: a */
        public final du getItem(int i) {
            ArrayList<du> j = dx.this.k ? this.b.j() : this.b.h();
            if (this.c >= 0 && i >= this.c) {
                i++;
            }
            return j.get(i);
        }

        public final int getCount() {
            ArrayList<du> j = dx.this.k ? this.b.j() : this.b.h();
            return this.c < 0 ? j.size() : j.size() - 1;
        }

        public final long getItemId(int i) {
            return (long) i;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = view == null ? dx.this.h.inflate(dx.a, viewGroup, false) : view;
            dz.a aVar = (dz.a) inflate;
            if (dx.this.e) {
                ((ListMenuItemView) inflate).setForceShowIcon(true);
            }
            aVar.initialize(getItem(i), 0);
            return inflate;
        }

        public final void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    private dx(Context context, ds dsVar, View view) {
        this(context, dsVar, view, false, cv.a.popupMenuStyle);
    }

    public dx(Context context, ds dsVar, View view, boolean z, int i2) {
        this(context, dsVar, view, z, i2, (byte) 0);
    }

    private dx(Context context, ds dsVar, View view, boolean z, int i2, byte b2) {
        this.f = 0;
        this.g = context;
        this.h = LayoutInflater.from(context);
        this.i = dsVar;
        this.j = new a(this.i);
        this.k = z;
        this.m = i2;
        this.n = 0;
        Resources resources = context.getResources();
        this.l = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(cv.d.abc_config_prefDialogWidth));
        this.b = view;
        dsVar.a((dy) this, context);
    }

    public final boolean a() {
        View view;
        int i2 = 0;
        this.c = new ListPopupWindow(this.g, (AttributeSet) null, this.m, this.n);
        this.c.a((PopupWindow.OnDismissListener) this);
        this.c.h = this;
        this.c.a((ListAdapter) this.j);
        this.c.d();
        View view2 = this.b;
        if (view2 == null) {
            return false;
        }
        boolean z = this.o == null;
        this.o = view2.getViewTreeObserver();
        if (z) {
            this.o.addOnGlobalLayoutListener(this);
        }
        this.c.g = view2;
        this.c.d = this.f;
        if (!this.q) {
            a aVar = this.j;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = aVar.getCount();
            int i3 = 0;
            int i4 = 0;
            View view3 = null;
            while (true) {
                if (i3 >= count) {
                    break;
                }
                int itemViewType = aVar.getItemViewType(i3);
                if (itemViewType != i4) {
                    i4 = itemViewType;
                    view = null;
                } else {
                    view = view3;
                }
                if (this.p == null) {
                    this.p = new FrameLayout(this.g);
                }
                view3 = aVar.getView(i3, view, this.p);
                view3.measure(makeMeasureSpec, makeMeasureSpec2);
                int measuredWidth = view3.getMeasuredWidth();
                if (measuredWidth >= this.l) {
                    i2 = this.l;
                    break;
                }
                if (measuredWidth <= i2) {
                    measuredWidth = i2;
                }
                i3++;
                i2 = measuredWidth;
            }
            this.r = i2;
            this.q = true;
        }
        this.c.a(this.r);
        this.c.b.setInputMethodMode(2);
        this.c.c();
        this.c.c.setOnKeyListener(this);
        return true;
    }

    public final void b() {
        if (c()) {
            this.c.a();
        }
    }

    public final boolean c() {
        return this.c != null && this.c.b.isShowing();
    }

    public boolean collapseItemActionView(ds dsVar, du duVar) {
        return false;
    }

    public boolean expandItemActionView(ds dsVar, du duVar) {
        return false;
    }

    public boolean flagActionItems() {
        return false;
    }

    public int getId() {
        return 0;
    }

    public void initForMenu(Context context, ds dsVar) {
    }

    public void onCloseMenu(ds dsVar, boolean z) {
        if (dsVar == this.i) {
            b();
            if (this.d != null) {
                this.d.onCloseMenu(dsVar, z);
            }
        }
    }

    public void onDismiss() {
        this.c = null;
        this.i.close();
        if (this.o != null) {
            if (!this.o.isAlive()) {
                this.o = this.b.getViewTreeObserver();
            }
            this.o.removeGlobalOnLayoutListener(this);
            this.o = null;
        }
    }

    public void onGlobalLayout() {
        if (c()) {
            View view = this.b;
            if (view == null || !view.isShown()) {
                b();
            } else if (c()) {
                this.c.c();
            }
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        a aVar = this.j;
        aVar.b.a((MenuItem) aVar.getItem(i2), (dy) null, 0);
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        b();
        return true;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    public Parcelable onSaveInstanceState() {
        return null;
    }

    public boolean onSubMenuSelected(ec ecVar) {
        boolean z;
        if (ecVar.hasVisibleItems()) {
            dx dxVar = new dx(this.g, ecVar, this.b);
            dxVar.d = this.d;
            int size = ecVar.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z = false;
                    break;
                }
                MenuItem item = ecVar.getItem(i2);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i2++;
            }
            dxVar.e = z;
            if (dxVar.a()) {
                if (this.d == null) {
                    return true;
                }
                this.d.onOpenSubMenu(ecVar);
                return true;
            }
        }
        return false;
    }

    public void updateMenuView(boolean z) {
        this.q = false;
        if (this.j != null) {
            this.j.notifyDataSetChanged();
        }
    }
}
