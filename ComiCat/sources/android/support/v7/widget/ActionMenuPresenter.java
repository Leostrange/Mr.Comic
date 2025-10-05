package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.widget.TintImageView;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import defpackage.ao;
import defpackage.cv;
import defpackage.dy;
import defpackage.dz;
import java.util.ArrayList;

public final class ActionMenuPresenter extends Cdo implements ao.a {
    private b A;
    View i;
    boolean j;
    e k;
    a l;
    public c m;
    final f n = new f(this, (byte) 0);
    int o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private int t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private final SparseBooleanArray y = new SparseBooleanArray();
    private View z;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int a;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.a = parcel.readInt();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.a);
        }
    }

    class a extends dx {
        final /* synthetic */ ActionMenuPresenter g;
        private ec h;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(ActionMenuPresenter actionMenuPresenter, Context context, ec ecVar) {
            super(context, ecVar, (View) null, false, cv.a.actionOverflowMenuStyle);
            boolean z = false;
            this.g = actionMenuPresenter;
            this.h = ecVar;
            if (!((du) ecVar.getItem()).f()) {
                this.b = actionMenuPresenter.i == null ? (View) actionMenuPresenter.g : actionMenuPresenter.i;
            }
            this.d = actionMenuPresenter.n;
            int size = ecVar.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                MenuItem item = ecVar.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i++;
            }
            this.e = z;
        }

        public final void onDismiss() {
            super.onDismiss();
            this.g.l = null;
            this.g.o = 0;
        }
    }

    class b extends ActionMenuItemView.b {
        private b() {
        }

        /* synthetic */ b(ActionMenuPresenter actionMenuPresenter, byte b) {
            this();
        }

        public final ListPopupWindow a() {
            if (ActionMenuPresenter.this.l != null) {
                return ActionMenuPresenter.this.l.c;
            }
            return null;
        }
    }

    class c implements Runnable {
        private e b;

        public c(e eVar) {
            this.b = eVar;
        }

        public final void run() {
            ds c = ActionMenuPresenter.this.c;
            if (c.b != null) {
                c.b.onMenuModeChange(c);
            }
            View view = (View) ActionMenuPresenter.this.g;
            if (!(view == null || view.getWindowToken() == null || !this.b.a())) {
                ActionMenuPresenter.this.k = this.b;
            }
            ActionMenuPresenter.this.m = null;
        }
    }

    class d extends TintImageView implements ActionMenuView.a {
        private final float[] b = new float[2];

        public d(Context context) {
            super(context, (AttributeSet) null, cv.a.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            setOnTouchListener(new ListPopupWindow.b(this, ActionMenuPresenter.this) {
                public final ListPopupWindow a() {
                    if (ActionMenuPresenter.this.k == null) {
                        return null;
                    }
                    return ActionMenuPresenter.this.k.c;
                }

                public final boolean b() {
                    ActionMenuPresenter.this.d();
                    return true;
                }

                public final boolean c() {
                    if (ActionMenuPresenter.this.m != null) {
                        return false;
                    }
                    ActionMenuPresenter.this.e();
                    return true;
                }
            });
        }

        public final boolean b() {
            return false;
        }

        public final boolean c() {
            return false;
        }

        public final boolean performClick() {
            if (!super.performClick()) {
                playSoundEffect(0);
                ActionMenuPresenter.this.d();
            }
            return true;
        }

        /* access modifiers changed from: protected */
        public final boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (!(drawable == null || background == null)) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                i.a(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    class e extends dx {
        public e(Context context, ds dsVar, View view) {
            super(context, dsVar, view, true, cv.a.actionOverflowMenuStyle);
            this.f = 8388613;
            this.d = ActionMenuPresenter.this.n;
        }

        public final void onDismiss() {
            super.onDismiss();
            ActionMenuPresenter.this.c.close();
            ActionMenuPresenter.this.k = null;
        }
    }

    class f implements dy.a {
        private f() {
        }

        /* synthetic */ f(ActionMenuPresenter actionMenuPresenter, byte b) {
            this();
        }

        public final void onCloseMenu(ds dsVar, boolean z) {
            if (dsVar instanceof ec) {
                ((ec) dsVar).l.a(false);
            }
            dy.a aVar = ActionMenuPresenter.this.f;
            if (aVar != null) {
                aVar.onCloseMenu(dsVar, z);
            }
        }

        public final boolean onOpenSubMenu(ds dsVar) {
            if (dsVar == null) {
                return false;
            }
            ActionMenuPresenter.this.o = ((ec) dsVar).getItem().getItemId();
            dy.a aVar = ActionMenuPresenter.this.f;
            if (aVar != null) {
                return aVar.onOpenSubMenu(dsVar);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, cv.h.abc_action_menu_layout, cv.h.abc_action_menu_item_layout);
    }

    public final View a(du duVar, View view, ViewGroup viewGroup) {
        View actionView = duVar.getActionView();
        if (actionView == null || duVar.i()) {
            actionView = super.a(duVar, view, viewGroup);
        }
        actionView.setVisibility(duVar.isActionViewExpanded() ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!((ActionMenuView) viewGroup).checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(ActionMenuView.a(layoutParams));
        }
        return actionView;
    }

    public final dz a(ViewGroup viewGroup) {
        dz a2 = super.a(viewGroup);
        ((ActionMenuView) a2).setPresenter(this);
        return a2;
    }

    public final void a() {
        if (!this.u) {
            this.t = this.b.getResources().getInteger(cv.g.abc_max_action_buttons);
        }
        if (this.c != null) {
            this.c.b(true);
        }
    }

    public final void a(int i2) {
        this.r = i2;
        this.v = true;
        this.w = true;
    }

    public final void a(ActionMenuView actionMenuView) {
        this.g = actionMenuView;
        actionMenuView.initialize(this.c);
    }

    public final void a(du duVar, dz.a aVar) {
        aVar.initialize(duVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.g);
        if (this.A == null) {
            this.A = new b(this, (byte) 0);
        }
        actionMenuItemView.setPopupCallback(this.A);
    }

    public final void a(boolean z2) {
        if (z2) {
            super.onSubMenuSelected((ec) null);
        } else {
            this.c.a(false);
        }
    }

    public final boolean a(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.i) {
            return false;
        }
        return super.a(viewGroup, i2);
    }

    public final boolean a(du duVar) {
        return duVar.f();
    }

    public final void b() {
        this.p = true;
        this.q = true;
    }

    public final void c() {
        this.t = Integer.MAX_VALUE;
        this.u = true;
    }

    public final boolean d() {
        if (!this.p || h() || this.c == null || this.g == null || this.m != null || this.c.j().isEmpty()) {
            return false;
        }
        this.m = new c(new e(this.b, this.c, this.i));
        ((View) this.g).post(this.m);
        super.onSubMenuSelected((ec) null);
        return true;
    }

    public final boolean e() {
        if (this.m == null || this.g == null) {
            e eVar = this.k;
            if (eVar == null) {
                return false;
            }
            eVar.b();
            return true;
        }
        ((View) this.g).removeCallbacks(this.m);
        this.m = null;
        return true;
    }

    public final boolean f() {
        return e() | g();
    }

    public final boolean flagActionItems() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        int i8;
        int i9;
        ArrayList<du> h = this.c.h();
        int size = h.size();
        int i10 = this.t;
        int i11 = this.s;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.g;
        int i12 = 0;
        int i13 = 0;
        boolean z3 = false;
        int i14 = 0;
        while (i14 < size) {
            du duVar = h.get(i14);
            if (duVar.h()) {
                i12++;
            } else if (duVar.g()) {
                i13++;
            } else {
                z3 = true;
            }
            i14++;
            i10 = (!this.j || !duVar.isActionViewExpanded()) ? i10 : 0;
        }
        if (this.p && (z3 || i12 + i13 > i10)) {
            i10--;
        }
        int i15 = i10 - i12;
        SparseBooleanArray sparseBooleanArray = this.y;
        sparseBooleanArray.clear();
        if (this.v) {
            int i16 = i11 / this.x;
            i2 = ((i11 % this.x) / i16) + this.x;
            i3 = i16;
        } else {
            i2 = 0;
            i3 = 0;
        }
        int i17 = 0;
        int i18 = 0;
        int i19 = i3;
        while (i18 < size) {
            du duVar2 = h.get(i18);
            if (duVar2.h()) {
                View a2 = a(duVar2, this.z, viewGroup);
                if (this.z == null) {
                    this.z = a2;
                }
                if (this.v) {
                    i4 = i19 - ActionMenuView.a(a2, i2, i19, makeMeasureSpec, 0);
                } else {
                    a2.measure(makeMeasureSpec, makeMeasureSpec);
                    i4 = i19;
                }
                i6 = a2.getMeasuredWidth();
                int i20 = i11 - i6;
                if (i17 != 0) {
                    i6 = i17;
                }
                int groupId = duVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                duVar2.c(true);
                i5 = i20;
                i7 = i15;
            } else if (duVar2.g()) {
                int groupId2 = duVar2.getGroupId();
                boolean z4 = sparseBooleanArray.get(groupId2);
                boolean z5 = (i15 > 0 || z4) && i11 > 0 && (!this.v || i19 > 0);
                if (z5) {
                    View a3 = a(duVar2, this.z, viewGroup);
                    if (this.z == null) {
                        this.z = a3;
                    }
                    if (this.v) {
                        int a4 = ActionMenuView.a(a3, i2, i19, makeMeasureSpec, 0);
                        i19 -= a4;
                        if (a4 == 0) {
                            z5 = false;
                        }
                    } else {
                        a3.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    int measuredWidth = a3.getMeasuredWidth();
                    i11 -= measuredWidth;
                    if (i17 == 0) {
                        i17 = measuredWidth;
                    }
                    if (this.v) {
                        z2 = z5 & (i11 >= 0);
                        i8 = i19;
                    } else {
                        z2 = z5 & (i11 + i17 > 0);
                        i8 = i19;
                    }
                } else {
                    z2 = z5;
                    i8 = i19;
                }
                if (z2 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                    i9 = i15;
                } else if (z4) {
                    sparseBooleanArray.put(groupId2, false);
                    int i21 = i15;
                    for (int i22 = 0; i22 < i18; i22++) {
                        du duVar3 = h.get(i22);
                        if (duVar3.getGroupId() == groupId2) {
                            if (duVar3.f()) {
                                i21++;
                            }
                            duVar3.c(false);
                        }
                    }
                    i9 = i21;
                } else {
                    i9 = i15;
                }
                if (z2) {
                    i9--;
                }
                duVar2.c(z2);
                i6 = i17;
                i5 = i11;
                i7 = i9;
                i4 = i8;
            } else {
                duVar2.c(false);
                i4 = i19;
                i5 = i11;
                i6 = i17;
                i7 = i15;
            }
            i18++;
            i11 = i5;
            i15 = i7;
            i17 = i6;
            i19 = i4;
        }
        return true;
    }

    public final boolean g() {
        if (this.l == null) {
            return false;
        }
        this.l.b();
        return true;
    }

    public final boolean h() {
        return this.k != null && this.k.c();
    }

    public final void initForMenu(Context context, ds dsVar) {
        boolean z2 = true;
        super.initForMenu(context, dsVar);
        Resources resources = context.getResources();
        dg a2 = dg.a(context);
        if (!this.q) {
            if (Build.VERSION.SDK_INT < 19 && bl.b(ViewConfiguration.get(a2.a))) {
                z2 = false;
            }
            this.p = z2;
        }
        if (!this.w) {
            this.r = a2.a.getResources().getDisplayMetrics().widthPixels / 2;
        }
        if (!this.u) {
            this.t = a2.a.getResources().getInteger(cv.g.abc_max_action_buttons);
        }
        int i2 = this.r;
        if (this.p) {
            if (this.i == null) {
                this.i = new d(this.a);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i2 -= this.i.getMeasuredWidth();
        } else {
            this.i = null;
        }
        this.s = i2;
        this.x = (int) (56.0f * resources.getDisplayMetrics().density);
        this.z = null;
    }

    public final void onCloseMenu(ds dsVar, boolean z2) {
        f();
        super.onCloseMenu(dsVar, z2);
    }

    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        SavedState savedState = (SavedState) parcelable;
        if (savedState.a > 0 && (findItem = this.c.findItem(savedState.a)) != null) {
            onSubMenuSelected((ec) findItem.getSubMenu());
        }
    }

    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.a = this.o;
        return savedState;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean onSubMenuSelected(defpackage.ec r8) {
        /*
            r7 = this;
            r3 = 0
            boolean r0 = r8.hasVisibleItems()
            if (r0 != 0) goto L_0x0009
            r0 = r3
        L_0x0008:
            return r0
        L_0x0009:
            r0 = r8
        L_0x000a:
            ds r1 = r0.l
            ds r2 = r7.c
            if (r1 == r2) goto L_0x0015
            ds r0 = r0.l
            ec r0 = (defpackage.ec) r0
            goto L_0x000a
        L_0x0015:
            android.view.MenuItem r5 = r0.getItem()
            dz r0 = r7.g
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            if (r0 == 0) goto L_0x0044
            int r6 = r0.getChildCount()
            r4 = r3
        L_0x0024:
            if (r4 >= r6) goto L_0x0044
            android.view.View r2 = r0.getChildAt(r4)
            boolean r1 = r2 instanceof defpackage.dz.a
            if (r1 == 0) goto L_0x0040
            r1 = r2
            dz$a r1 = (defpackage.dz.a) r1
            du r1 = r1.getItemData()
            if (r1 != r5) goto L_0x0040
            r0 = r2
        L_0x0038:
            if (r0 != 0) goto L_0x0048
            android.view.View r0 = r7.i
            if (r0 != 0) goto L_0x0046
            r0 = r3
            goto L_0x0008
        L_0x0040:
            int r1 = r4 + 1
            r4 = r1
            goto L_0x0024
        L_0x0044:
            r0 = 0
            goto L_0x0038
        L_0x0046:
            android.view.View r0 = r7.i
        L_0x0048:
            android.view.MenuItem r1 = r8.getItem()
            int r1 = r1.getItemId()
            r7.o = r1
            android.support.v7.widget.ActionMenuPresenter$a r1 = new android.support.v7.widget.ActionMenuPresenter$a
            android.content.Context r2 = r7.b
            r1.<init>(r7, r2, r8)
            r7.l = r1
            android.support.v7.widget.ActionMenuPresenter$a r1 = r7.l
            r1.b = r0
            android.support.v7.widget.ActionMenuPresenter$a r0 = r7.l
            boolean r0 = r0.a()
            if (r0 != 0) goto L_0x006f
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "MenuPopupHelper cannot be used without an anchor"
            r0.<init>(r1)
            throw r0
        L_0x006f:
            super.onSubMenuSelected(r8)
            r0 = 1
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ActionMenuPresenter.onSubMenuSelected(ec):boolean");
    }

    public final void updateMenuView(boolean z2) {
        boolean z3 = true;
        boolean z4 = false;
        ((View) this.g).getParent();
        super.updateMenuView(z2);
        ((View) this.g).requestLayout();
        if (this.c != null) {
            ds dsVar = this.c;
            dsVar.i();
            ArrayList<du> arrayList = dsVar.d;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ao aoVar = arrayList.get(i2).d;
                if (aoVar != null) {
                    aoVar.a = this;
                }
            }
        }
        ArrayList<du> j2 = this.c != null ? this.c.j() : null;
        if (this.p && j2 != null) {
            int size2 = j2.size();
            if (size2 == 1) {
                z4 = !j2.get(0).isActionViewExpanded();
            } else {
                if (size2 <= 0) {
                    z3 = false;
                }
                z4 = z3;
            }
        }
        if (z4) {
            if (this.i == null) {
                this.i = new d(this.a);
            }
            ViewGroup viewGroup = (ViewGroup) this.i.getParent();
            if (viewGroup != this.g) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.i);
                }
                ((ActionMenuView) this.g).addView(this.i, ActionMenuView.a());
            }
        } else if (this.i != null && this.i.getParent() == this.g) {
            ((ViewGroup) this.g).removeView(this.i);
        }
        ((ActionMenuView) this.g).setOverflowReserved(this.p);
    }
}
