package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import defpackage.dy;
import defpackage.dz;
import java.util.ArrayList;

/* renamed from: do  reason: invalid class name and default package */
/* compiled from: BaseMenuPresenter */
public abstract class Cdo implements dy {
    protected Context a;
    protected Context b;
    /* access modifiers changed from: protected */
    public ds c;
    protected LayoutInflater d;
    protected LayoutInflater e;
    public dy.a f;
    /* access modifiers changed from: protected */
    public dz g;
    public int h;
    private int i;
    private int j;

    public Cdo(Context context, int i2, int i3) {
        this.a = context;
        this.d = LayoutInflater.from(context);
        this.i = i2;
        this.j = i3;
    }

    public View a(du duVar, View view, ViewGroup viewGroup) {
        dz.a aVar = view instanceof dz.a ? (dz.a) view : (dz.a) this.d.inflate(this.j, viewGroup, false);
        a(duVar, aVar);
        return (View) aVar;
    }

    public dz a(ViewGroup viewGroup) {
        if (this.g == null) {
            this.g = (dz) this.d.inflate(this.i, viewGroup, false);
            this.g.initialize(this.c);
            updateMenuView(true);
        }
        return this.g;
    }

    public abstract void a(du duVar, dz.a aVar);

    public boolean a(ViewGroup viewGroup, int i2) {
        viewGroup.removeViewAt(i2);
        return true;
    }

    public boolean a(du duVar) {
        return true;
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
        return this.h;
    }

    public void initForMenu(Context context, ds dsVar) {
        this.b = context;
        this.e = LayoutInflater.from(this.b);
        this.c = dsVar;
    }

    public void onCloseMenu(ds dsVar, boolean z) {
        if (this.f != null) {
            this.f.onCloseMenu(dsVar, z);
        }
    }

    public boolean onSubMenuSelected(ec ecVar) {
        if (this.f != null) {
            return this.f.onOpenSubMenu(ecVar);
        }
        return false;
    }

    public void updateMenuView(boolean z) {
        int i2;
        int i3;
        ViewGroup viewGroup = (ViewGroup) this.g;
        if (viewGroup != null) {
            if (this.c != null) {
                this.c.i();
                ArrayList<du> h2 = this.c.h();
                int size = h2.size();
                int i4 = 0;
                i2 = 0;
                while (i4 < size) {
                    du duVar = h2.get(i4);
                    if (a(duVar)) {
                        View childAt = viewGroup.getChildAt(i2);
                        du itemData = childAt instanceof dz.a ? ((dz.a) childAt).getItemData() : null;
                        View a2 = a(duVar, childAt, viewGroup);
                        if (duVar != itemData) {
                            a2.setPressed(false);
                            bh.y(a2);
                        }
                        if (a2 != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) a2.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(a2);
                            }
                            ((ViewGroup) this.g).addView(a2, i2);
                        }
                        i3 = i2 + 1;
                    } else {
                        i3 = i2;
                    }
                    i4++;
                    i2 = i3;
                }
            } else {
                i2 = 0;
            }
            while (i2 < viewGroup.getChildCount()) {
                if (!a(viewGroup, i2)) {
                    i2++;
                }
            }
        }
    }
}
