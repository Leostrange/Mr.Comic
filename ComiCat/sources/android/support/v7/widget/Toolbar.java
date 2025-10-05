package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.ActionMenuView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import defpackage.cv;
import defpackage.ds;
import defpackage.dy;
import java.util.ArrayList;
import java.util.List;

public class Toolbar extends ViewGroup {
    private boolean A;
    private boolean B;
    private final ArrayList<View> C;
    private final int[] D;
    /* access modifiers changed from: private */
    public b E;
    private final ActionMenuView.d F;
    private et G;
    private ActionMenuPresenter H;
    private dy.a I;
    private ds.a J;
    private boolean K;
    private final Runnable L;
    private final er M;
    public ActionMenuView a;
    public TextView b;
    View c;
    public a d;
    private TextView e;
    private ImageButton f;
    private ImageView g;
    private Drawable h;
    private CharSequence i;
    /* access modifiers changed from: private */
    public ImageButton j;
    private Context k;
    private int l;
    private int m;
    private int n;
    /* access modifiers changed from: private */
    public int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private final en u;
    private int v;
    private CharSequence w;
    private CharSequence x;
    private int y;
    private int z;

    public static class LayoutParams extends ActionBar.LayoutParams {
        int a = 0;

        public LayoutParams() {
            super(-2, -2);
            this.gravity = 8388627;
        }

        public LayoutParams(byte b) {
            super(-2, -2);
            this.gravity = 8388627;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.a = layoutParams.a;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super((ViewGroup.LayoutParams) marginLayoutParams);
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int a;
        boolean b;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt();
            this.b = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
            parcel.writeInt(this.b ? 1 : 0);
        }
    }

    public class a implements dy {
        ds a;
        public du b;

        private a() {
        }

        /* synthetic */ a(Toolbar toolbar, byte b2) {
            this();
        }

        public final boolean collapseItemActionView(ds dsVar, du duVar) {
            if (Toolbar.this.c instanceof ex) {
                ((ex) Toolbar.this.c).b();
            }
            Toolbar.this.removeView(Toolbar.this.c);
            Toolbar.this.removeView(Toolbar.this.j);
            Toolbar.this.c = null;
            Toolbar.this.setChildVisibilityForExpandedActionView(false);
            this.b = null;
            Toolbar.this.requestLayout();
            duVar.d(false);
            return true;
        }

        public final boolean expandItemActionView(ds dsVar, du duVar) {
            Toolbar.b(Toolbar.this);
            if (Toolbar.this.j.getParent() != Toolbar.this) {
                Toolbar.this.addView(Toolbar.this.j);
            }
            Toolbar.this.c = duVar.getActionView();
            this.b = duVar;
            if (Toolbar.this.c.getParent() != Toolbar.this) {
                LayoutParams d = Toolbar.d();
                d.gravity = 8388611 | (Toolbar.this.o & 112);
                d.a = 2;
                Toolbar.this.c.setLayoutParams(d);
                Toolbar.this.addView(Toolbar.this.c);
            }
            Toolbar.this.setChildVisibilityForExpandedActionView(true);
            Toolbar.this.requestLayout();
            duVar.d(true);
            if (Toolbar.this.c instanceof ex) {
                ((ex) Toolbar.this.c).a();
            }
            return true;
        }

        public final boolean flagActionItems() {
            return false;
        }

        public final int getId() {
            return 0;
        }

        public final void initForMenu(Context context, ds dsVar) {
            if (!(this.a == null || this.b == null)) {
                this.a.b(this.b);
            }
            this.a = dsVar;
        }

        public final void onCloseMenu(ds dsVar, boolean z) {
        }

        public final void onRestoreInstanceState(Parcelable parcelable) {
        }

        public final Parcelable onSaveInstanceState() {
            return null;
        }

        public final boolean onSubMenuSelected(ec ecVar) {
            return false;
        }

        public final void updateMenuView(boolean z) {
            boolean z2 = false;
            if (this.b != null) {
                if (this.a != null) {
                    int size = this.a.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        } else if (this.a.getItem(i) == this.b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!z2) {
                    collapseItemActionView(this.a, this.b);
                }
            }
        }
    }

    public interface b {
        boolean a(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, (AttributeSet) null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cv.a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.u = new en();
        this.v = 8388627;
        this.C = new ArrayList<>();
        this.D = new int[2];
        this.F = new ActionMenuView.d() {
            public final boolean a(MenuItem menuItem) {
                if (Toolbar.this.E != null) {
                    return Toolbar.this.E.a(menuItem);
                }
                return false;
            }
        };
        this.L = new Runnable() {
            public final void run() {
                Toolbar.this.b();
            }
        };
        es a2 = es.a(getContext(), attributeSet, cv.k.Toolbar, i2);
        this.m = a2.e(cv.k.Toolbar_titleTextAppearance, 0);
        this.n = a2.e(cv.k.Toolbar_subtitleTextAppearance, 0);
        this.v = a2.a.getInteger(cv.k.Toolbar_android_gravity, this.v);
        this.o = 48;
        int b2 = a2.b(cv.k.Toolbar_titleMargins, 0);
        this.t = b2;
        this.s = b2;
        this.r = b2;
        this.q = b2;
        int b3 = a2.b(cv.k.Toolbar_titleMarginStart, -1);
        if (b3 >= 0) {
            this.q = b3;
        }
        int b4 = a2.b(cv.k.Toolbar_titleMarginEnd, -1);
        if (b4 >= 0) {
            this.r = b4;
        }
        int b5 = a2.b(cv.k.Toolbar_titleMarginTop, -1);
        if (b5 >= 0) {
            this.s = b5;
        }
        int b6 = a2.b(cv.k.Toolbar_titleMarginBottom, -1);
        if (b6 >= 0) {
            this.t = b6;
        }
        this.p = a2.c(cv.k.Toolbar_maxButtonHeight, -1);
        int b7 = a2.b(cv.k.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int b8 = a2.b(cv.k.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        this.u.b(a2.c(cv.k.Toolbar_contentInsetLeft, 0), a2.c(cv.k.Toolbar_contentInsetRight, 0));
        if (!(b7 == Integer.MIN_VALUE && b8 == Integer.MIN_VALUE)) {
            this.u.a(b7, b8);
        }
        this.h = a2.a(cv.k.Toolbar_collapseIcon);
        this.i = a2.c(cv.k.Toolbar_collapseContentDescription);
        CharSequence c2 = a2.c(cv.k.Toolbar_title);
        if (!TextUtils.isEmpty(c2)) {
            setTitle(c2);
        }
        CharSequence c3 = a2.c(cv.k.Toolbar_subtitle);
        if (!TextUtils.isEmpty(c3)) {
            setSubtitle(c3);
        }
        this.k = getContext();
        setPopupTheme(a2.e(cv.k.Toolbar_popupTheme, 0));
        Drawable a3 = a2.a(cv.k.Toolbar_navigationIcon);
        if (a3 != null) {
            setNavigationIcon(a3);
        }
        CharSequence c4 = a2.c(cv.k.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(c4)) {
            setNavigationContentDescription(c4);
        }
        a2.a.recycle();
        this.M = a2.a();
    }

    private int a(int i2) {
        int h2 = bh.h(this);
        int a2 = ap.a(i2, h2) & 7;
        switch (a2) {
            case 1:
            case 3:
            case 5:
                return a2;
            default:
                return h2 == 1 ? 5 : 3;
        }
    }

    private int a(View view, int i2) {
        int max;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int i4 = layoutParams.gravity & 112;
        switch (i4) {
            case 16:
            case 48:
            case 80:
                break;
            default:
                i4 = this.v & 112;
                break;
        }
        switch (i4) {
            case 48:
                return getPaddingTop() - i3;
            case 80:
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - layoutParams.bottomMargin) - i3;
            default:
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i5 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                if (i5 < layoutParams.topMargin) {
                    max = layoutParams.topMargin;
                } else {
                    int i6 = (((height - paddingBottom) - measuredHeight) - i5) - paddingTop;
                    max = i6 < layoutParams.bottomMargin ? Math.max(0, i5 - (layoutParams.bottomMargin - i6)) : i5;
                }
                return max + paddingTop;
        }
    }

    private int a(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i7);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + max + i3, marginLayoutParams.width), getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    private int a(View view, int i2, int[] iArr, int i3) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = layoutParams.leftMargin - iArr[0];
        int max = Math.max(0, i4) + i2;
        iArr[0] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a2, max + measuredWidth, view.getMeasuredHeight() + a2);
        return layoutParams.rightMargin + measuredWidth + max;
    }

    private static LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ActionBar.LayoutParams ? new LayoutParams((ActionBar.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    private void a(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams layoutParams2 = layoutParams == null ? new LayoutParams() : !checkLayoutParams(layoutParams) ? a(layoutParams) : (LayoutParams) layoutParams;
        layoutParams2.a = 1;
        addView(view, layoutParams2);
    }

    private void a(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private void a(List<View> list, int i2) {
        boolean z2 = true;
        if (bh.h(this) != 1) {
            z2 = false;
        }
        int childCount = getChildCount();
        int a2 = ap.a(i2, bh.h(this));
        list.clear();
        if (z2) {
            for (int i3 = childCount - 1; i3 >= 0; i3--) {
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a == 0 && b(childAt) && a(layoutParams.gravity) == a2) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.a == 0 && b(childAt2) && a(layoutParams2.gravity) == a2) {
                list.add(childAt2);
            }
        }
    }

    private int b(View view, int i2, int[] iArr, int i3) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = layoutParams.rightMargin - iArr[1];
        int max = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int a2 = a(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a2, max, view.getMeasuredHeight() + a2);
        return max - (layoutParams.leftMargin + measuredWidth);
    }

    static /* synthetic */ void b(Toolbar toolbar) {
        if (toolbar.j == null) {
            toolbar.j = new ImageButton(toolbar.getContext(), (AttributeSet) null, cv.a.toolbarNavigationButtonStyle);
            toolbar.j.setImageDrawable(toolbar.h);
            toolbar.j.setContentDescription(toolbar.i);
            LayoutParams layoutParams = new LayoutParams();
            layoutParams.gravity = 8388611 | (toolbar.o & 112);
            layoutParams.a = 2;
            toolbar.j.setLayoutParams(layoutParams);
            toolbar.j.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    Toolbar.this.c();
                }
            });
        }
    }

    private boolean b(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private static int c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return av.b(marginLayoutParams) + av.a(marginLayoutParams);
    }

    private static int d(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.bottomMargin + marginLayoutParams.topMargin;
    }

    protected static LayoutParams d() {
        return new LayoutParams();
    }

    private void e() {
        if (this.g == null) {
            this.g = new ImageView(getContext());
        }
    }

    private void e(View view) {
        if (((LayoutParams) view.getLayoutParams()).a != 2 && view != this.a) {
            view.setVisibility(this.c != null ? 8 : 0);
        }
    }

    private void f() {
        if (this.a == null) {
            this.a = new ActionMenuView(getContext());
            this.a.setPopupTheme(this.l);
            this.a.setOnMenuItemClickListener(this.F);
            this.a.setMenuCallbacks(this.I, this.J);
            LayoutParams layoutParams = new LayoutParams();
            layoutParams.gravity = 8388613 | (this.o & 112);
            this.a.setLayoutParams(layoutParams);
            a((View) this.a);
        }
    }

    private void g() {
        if (this.f == null) {
            this.f = new ImageButton(getContext(), (AttributeSet) null, cv.a.toolbarNavigationButtonStyle);
            LayoutParams layoutParams = new LayoutParams();
            layoutParams.gravity = 8388611 | (this.o & 112);
            this.f.setLayoutParams(layoutParams);
        }
    }

    private MenuInflater getMenuInflater() {
        return new dk(getContext());
    }

    /* access modifiers changed from: private */
    public void setChildVisibilityForExpandedActionView(boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (!(((LayoutParams) childAt.getLayoutParams()).a == 2 || childAt == this.a)) {
                childAt.setVisibility(z2 ? 8 : 0);
            }
        }
    }

    public final boolean a() {
        if (this.a != null) {
            ActionMenuView actionMenuView = this.a;
            if (actionMenuView.c != null && actionMenuView.c.h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean b() {
        if (this.a != null) {
            ActionMenuView actionMenuView = this.a;
            if (actionMenuView.c != null && actionMenuView.c.d()) {
                return true;
            }
        }
        return false;
    }

    public final void c() {
        du duVar = this.d == null ? null : this.d.b;
        if (duVar != null) {
            duVar.collapseActionView();
        }
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return a(layoutParams);
    }

    public int getContentInsetEnd() {
        en enVar = this.u;
        return enVar.g ? enVar.a : enVar.b;
    }

    public int getContentInsetLeft() {
        return this.u.a;
    }

    public int getContentInsetRight() {
        return this.u.b;
    }

    public int getContentInsetStart() {
        en enVar = this.u;
        return enVar.g ? enVar.b : enVar.a;
    }

    public Drawable getLogo() {
        if (this.g != null) {
            return this.g.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        if (this.g != null) {
            return this.g.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        f();
        if (this.a.a == null) {
            ds dsVar = (ds) this.a.getMenu();
            if (this.d == null) {
                this.d = new a(this, (byte) 0);
            }
            this.a.setExpandedActionViewsExclusive(true);
            dsVar.a((dy) this.d, this.k);
        }
        return this.a.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        if (this.f != null) {
            return this.f.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        if (this.f != null) {
            return this.f.getDrawable();
        }
        return null;
    }

    public int getPopupTheme() {
        return this.l;
    }

    public CharSequence getSubtitle() {
        return this.x;
    }

    public CharSequence getTitle() {
        return this.w;
    }

    public ej getWrapper() {
        if (this.G == null) {
            this.G = new et(this, true);
        }
        return this.G;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.L);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int a2 = ax.a(motionEvent);
        if (a2 == 9) {
            this.B = false;
        }
        if (!this.B) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (a2 == 9 && !onHoverEvent) {
                this.B = true;
            }
        }
        if (a2 == 10 || a2 == 3) {
            this.B = false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int max;
        boolean z3 = bh.h(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i16 = width - paddingRight;
        int[] iArr = this.D;
        iArr[1] = 0;
        iArr[0] = 0;
        int r2 = bh.r(this);
        if (!b((View) this.f)) {
            i6 = paddingLeft;
        } else if (z3) {
            i16 = b(this.f, i16, iArr, r2);
            i6 = paddingLeft;
        } else {
            i6 = a(this.f, paddingLeft, iArr, r2);
        }
        if (b((View) this.j)) {
            if (z3) {
                i16 = b(this.j, i16, iArr, r2);
            } else {
                i6 = a(this.j, i6, iArr, r2);
            }
        }
        if (b((View) this.a)) {
            if (z3) {
                i6 = a(this.a, i6, iArr, r2);
            } else {
                i16 = b(this.a, i16, iArr, r2);
            }
        }
        iArr[0] = Math.max(0, getContentInsetLeft() - i6);
        iArr[1] = Math.max(0, getContentInsetRight() - ((width - paddingRight) - i16));
        int max2 = Math.max(i6, getContentInsetLeft());
        int min = Math.min(i16, (width - paddingRight) - getContentInsetRight());
        if (b(this.c)) {
            if (z3) {
                min = b(this.c, min, iArr, r2);
            } else {
                max2 = a(this.c, max2, iArr, r2);
            }
        }
        if (!b((View) this.g)) {
            i7 = min;
            i8 = max2;
        } else if (z3) {
            i7 = b(this.g, min, iArr, r2);
            i8 = max2;
        } else {
            i7 = min;
            i8 = a(this.g, max2, iArr, r2);
        }
        boolean b2 = b((View) this.b);
        boolean b3 = b((View) this.e);
        int i17 = 0;
        if (b2) {
            LayoutParams layoutParams = (LayoutParams) this.b.getLayoutParams();
            i17 = layoutParams.bottomMargin + layoutParams.topMargin + this.b.getMeasuredHeight() + 0;
        }
        if (b3) {
            LayoutParams layoutParams2 = (LayoutParams) this.e.getLayoutParams();
            i9 = layoutParams2.bottomMargin + layoutParams2.topMargin + this.e.getMeasuredHeight() + i17;
        } else {
            i9 = i17;
        }
        if (b2 || b3) {
            TextView textView = b2 ? this.b : this.e;
            TextView textView2 = b3 ? this.e : this.b;
            LayoutParams layoutParams3 = (LayoutParams) textView.getLayoutParams();
            LayoutParams layoutParams4 = (LayoutParams) textView2.getLayoutParams();
            boolean z4 = (b2 && this.b.getMeasuredWidth() > 0) || (b3 && this.e.getMeasuredWidth() > 0);
            switch (this.v & 112) {
                case 48:
                    i10 = layoutParams3.topMargin + getPaddingTop() + this.s;
                    break;
                case 80:
                    i10 = (((height - paddingBottom) - layoutParams4.bottomMargin) - this.t) - i9;
                    break;
                default:
                    int i18 = (((height - paddingTop) - paddingBottom) - i9) / 2;
                    if (i18 < layoutParams3.topMargin + this.s) {
                        max = layoutParams3.topMargin + this.s;
                    } else {
                        int i19 = (((height - paddingBottom) - i9) - i18) - paddingTop;
                        max = i19 < layoutParams3.bottomMargin + this.t ? Math.max(0, i18 - ((layoutParams4.bottomMargin + this.t) - i19)) : i18;
                    }
                    i10 = paddingTop + max;
                    break;
            }
            if (z3) {
                int i20 = (z4 ? this.q : 0) - iArr[1];
                int max3 = i7 - Math.max(0, i20);
                iArr[1] = Math.max(0, -i20);
                if (b2) {
                    int measuredWidth = max3 - this.b.getMeasuredWidth();
                    int measuredHeight = this.b.getMeasuredHeight() + i10;
                    this.b.layout(measuredWidth, i10, max3, measuredHeight);
                    int i21 = measuredWidth - this.r;
                    i10 = measuredHeight + ((LayoutParams) this.b.getLayoutParams()).bottomMargin;
                    i14 = i21;
                } else {
                    i14 = max3;
                }
                if (b3) {
                    LayoutParams layoutParams5 = (LayoutParams) this.e.getLayoutParams();
                    int i22 = layoutParams5.topMargin + i10;
                    this.e.layout(max3 - this.e.getMeasuredWidth(), i22, max3, this.e.getMeasuredHeight() + i22);
                    int i23 = layoutParams5.bottomMargin;
                    i15 = max3 - this.r;
                } else {
                    i15 = max3;
                }
                i7 = z4 ? Math.min(i14, i15) : max3;
            } else {
                int i24 = (z4 ? this.q : 0) - iArr[0];
                i8 += Math.max(0, i24);
                iArr[0] = Math.max(0, -i24);
                if (b2) {
                    int measuredWidth2 = this.b.getMeasuredWidth() + i8;
                    int measuredHeight2 = this.b.getMeasuredHeight() + i10;
                    this.b.layout(i8, i10, measuredWidth2, measuredHeight2);
                    int i25 = ((LayoutParams) this.b.getLayoutParams()).bottomMargin + measuredHeight2;
                    i11 = measuredWidth2 + this.r;
                    i12 = i25;
                } else {
                    i11 = i8;
                    i12 = i10;
                }
                if (b3) {
                    LayoutParams layoutParams6 = (LayoutParams) this.e.getLayoutParams();
                    int i26 = i12 + layoutParams6.topMargin;
                    int measuredWidth3 = this.e.getMeasuredWidth() + i8;
                    this.e.layout(i8, i26, measuredWidth3, this.e.getMeasuredHeight() + i26);
                    int i27 = layoutParams6.bottomMargin;
                    i13 = this.r + measuredWidth3;
                } else {
                    i13 = i8;
                }
                if (z4) {
                    i8 = Math.max(i11, i13);
                }
            }
        }
        a((List<View>) this.C, 3);
        int size = this.C.size();
        int i28 = i8;
        for (int i29 = 0; i29 < size; i29++) {
            i28 = a(this.C.get(i29), i28, iArr, r2);
        }
        a((List<View>) this.C, 5);
        int size2 = this.C.size();
        int i30 = 0;
        int i31 = i7;
        while (i30 < size2) {
            int b4 = b(this.C.get(i30), i31, iArr, r2);
            i30++;
            i31 = b4;
        }
        a((List<View>) this.C, 1);
        ArrayList<View> arrayList = this.C;
        int i32 = iArr[0];
        int i33 = iArr[1];
        int size3 = arrayList.size();
        int i34 = i32;
        int i35 = i33;
        int i36 = 0;
        int i37 = 0;
        while (i36 < size3) {
            View view = arrayList.get(i36);
            LayoutParams layoutParams7 = (LayoutParams) view.getLayoutParams();
            int i38 = layoutParams7.leftMargin - i34;
            int i39 = layoutParams7.rightMargin - i35;
            int max4 = Math.max(0, i38);
            int max5 = Math.max(0, i39);
            i34 = Math.max(0, -i38);
            i35 = Math.max(0, -i39);
            i36++;
            i37 += view.getMeasuredWidth() + max4 + max5;
        }
        int i40 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (i37 / 2);
        int i41 = i40 + i37;
        if (i40 < i28) {
            i40 = i28;
        } else if (i41 > i31) {
            i40 -= i41 - i31;
        }
        int size4 = this.C.size();
        int i42 = 0;
        int i43 = i40;
        while (i42 < size4) {
            int a2 = a(this.C.get(i42), i43, iArr, r2);
            i42++;
            i43 = a2;
        }
        this.C.clear();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        char c2;
        char c3;
        int i4;
        int i5;
        boolean z2;
        int i6;
        int i7;
        int[] iArr = this.D;
        if (eu.a(this)) {
            c2 = 0;
            c3 = 1;
        } else {
            c2 = 1;
            c3 = 0;
        }
        int i8 = 0;
        if (b((View) this.f)) {
            a(this.f, i2, 0, i3, this.p);
            i8 = this.f.getMeasuredWidth() + c((View) this.f);
            int max = Math.max(0, this.f.getMeasuredHeight() + d((View) this.f));
            i4 = eu.a(0, bh.l(this.f));
            i5 = max;
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (b((View) this.j)) {
            a(this.j, i2, 0, i3, this.p);
            i8 = this.j.getMeasuredWidth() + c((View) this.j);
            i5 = Math.max(i5, this.j.getMeasuredHeight() + d((View) this.j));
            i4 = eu.a(i4, bh.l(this.j));
        }
        int contentInsetStart = getContentInsetStart();
        int max2 = Math.max(contentInsetStart, i8) + 0;
        iArr[c3] = Math.max(0, contentInsetStart - i8);
        int i9 = 0;
        if (b((View) this.a)) {
            a(this.a, i2, max2, i3, this.p);
            i9 = this.a.getMeasuredWidth() + c((View) this.a);
            i5 = Math.max(i5, this.a.getMeasuredHeight() + d((View) this.a));
            i4 = eu.a(i4, bh.l(this.a));
        }
        int contentInsetEnd = getContentInsetEnd();
        int max3 = max2 + Math.max(contentInsetEnd, i9);
        iArr[c2] = Math.max(0, contentInsetEnd - i9);
        if (b(this.c)) {
            max3 += a(this.c, i2, max3, i3, 0, iArr);
            i5 = Math.max(i5, this.c.getMeasuredHeight() + d(this.c));
            i4 = eu.a(i4, bh.l(this.c));
        }
        if (b((View) this.g)) {
            max3 += a(this.g, i2, max3, i3, 0, iArr);
            i5 = Math.max(i5, this.g.getMeasuredHeight() + d((View) this.g));
            i4 = eu.a(i4, bh.l(this.g));
        }
        int childCount = getChildCount();
        int i10 = 0;
        int i11 = i4;
        int i12 = i5;
        while (i10 < childCount) {
            View childAt = getChildAt(i10);
            if (((LayoutParams) childAt.getLayoutParams()).a != 0 || !b(childAt)) {
                i6 = i11;
                i7 = i12;
            } else {
                max3 += a(childAt, i2, max3, i3, 0, iArr);
                int max4 = Math.max(i12, childAt.getMeasuredHeight() + d(childAt));
                i6 = eu.a(i11, bh.l(childAt));
                i7 = max4;
            }
            i10++;
            i11 = i6;
            i12 = i7;
        }
        int i13 = 0;
        int i14 = 0;
        int i15 = this.s + this.t;
        int i16 = this.q + this.r;
        if (b((View) this.b)) {
            a(this.b, i2, max3 + i16, i3, i15, iArr);
            i13 = c((View) this.b) + this.b.getMeasuredWidth();
            i14 = this.b.getMeasuredHeight() + d((View) this.b);
            i11 = eu.a(i11, bh.l(this.b));
        }
        if (b((View) this.e)) {
            i13 = Math.max(i13, a(this.e, i2, max3 + i16, i3, i15 + i14, iArr));
            i14 += this.e.getMeasuredHeight() + d((View) this.e);
            i11 = eu.a(i11, bh.l(this.e));
        }
        int max5 = Math.max(i12, i14);
        int paddingLeft = i13 + max3 + getPaddingLeft() + getPaddingRight();
        int paddingTop = max5 + getPaddingTop() + getPaddingBottom();
        int a2 = bh.a(Math.max(paddingLeft, getSuggestedMinimumWidth()), i2, -16777216 & i11);
        int a3 = bh.a(Math.max(paddingTop, getSuggestedMinimumHeight()), i3, i11 << 16);
        if (this.K) {
            int childCount2 = getChildCount();
            int i17 = 0;
            while (true) {
                if (i17 >= childCount2) {
                    z2 = true;
                    break;
                }
                View childAt2 = getChildAt(i17);
                if (b(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                    z2 = false;
                    break;
                }
                i17++;
            }
        } else {
            z2 = false;
        }
        if (z2) {
            a3 = 0;
        }
        setMeasuredDimension(a2, a3);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ds dsVar = this.a != null ? this.a.a : null;
        if (!(savedState.a == 0 || this.d == null || dsVar == null || (findItem = dsVar.findItem(savedState.a)) == null)) {
            aw.b(findItem);
        }
        if (savedState.b) {
            removeCallbacks(this.L);
            post(this.L);
        }
    }

    public void onRtlPropertiesChanged(int i2) {
        boolean z2 = true;
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i2);
        }
        en enVar = this.u;
        if (i2 != 1) {
            z2 = false;
        }
        if (z2 != enVar.g) {
            enVar.g = z2;
            if (!enVar.h) {
                enVar.a = enVar.e;
                enVar.b = enVar.f;
            } else if (z2) {
                enVar.a = enVar.d != Integer.MIN_VALUE ? enVar.d : enVar.e;
                enVar.b = enVar.c != Integer.MIN_VALUE ? enVar.c : enVar.f;
            } else {
                enVar.a = enVar.c != Integer.MIN_VALUE ? enVar.c : enVar.e;
                enVar.b = enVar.d != Integer.MIN_VALUE ? enVar.d : enVar.f;
            }
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (!(this.d == null || this.d.b == null)) {
            savedState.a = this.d.b.getItemId();
        }
        savedState.b = a();
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int a2 = ax.a(motionEvent);
        if (a2 == 0) {
            this.A = false;
        }
        if (!this.A) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (a2 == 0 && !onTouchEvent) {
                this.A = true;
            }
        }
        if (a2 == 1 || a2 == 3) {
            this.A = false;
        }
        return true;
    }

    public void setCollapsible(boolean z2) {
        this.K = z2;
        requestLayout();
    }

    public void setContentInsetsAbsolute(int i2, int i3) {
        this.u.b(i2, i3);
    }

    public void setContentInsetsRelative(int i2, int i3) {
        this.u.a(i2, i3);
    }

    public void setLogo(int i2) {
        setLogo(this.M.a(i2, false));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            e();
            if (this.g.getParent() == null) {
                a((View) this.g);
                e(this.g);
            }
        } else if (!(this.g == null || this.g.getParent() == null)) {
            removeView(this.g);
        }
        if (this.g != null) {
            this.g.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            e();
        }
        if (this.g != null) {
            this.g.setContentDescription(charSequence);
        }
    }

    public void setMenu(ds dsVar, ActionMenuPresenter actionMenuPresenter) {
        if (dsVar != null || this.a != null) {
            f();
            ds dsVar2 = this.a.a;
            if (dsVar2 != dsVar) {
                if (dsVar2 != null) {
                    dsVar2.b((dy) this.H);
                    dsVar2.b((dy) this.d);
                }
                if (this.d == null) {
                    this.d = new a(this, (byte) 0);
                }
                actionMenuPresenter.j = true;
                if (dsVar != null) {
                    dsVar.a((dy) actionMenuPresenter, this.k);
                    dsVar.a((dy) this.d, this.k);
                } else {
                    actionMenuPresenter.initForMenu(this.k, (ds) null);
                    this.d.initForMenu(this.k, (ds) null);
                    actionMenuPresenter.updateMenuView(true);
                    this.d.updateMenuView(true);
                }
                this.a.setPopupTheme(this.l);
                this.a.setPresenter(actionMenuPresenter);
                this.H = actionMenuPresenter;
            }
        }
    }

    public void setMenuCallbacks(dy.a aVar, ds.a aVar2) {
        this.I = aVar;
        this.J = aVar2;
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        if (this.f != null) {
            this.f.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(this.M.a(i2, false));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (this.f.getParent() == null) {
                a((View) this.f);
                e(this.f);
            }
        } else if (!(this.f == null || this.f.getParent() == null)) {
            removeView(this.f);
        }
        if (this.f != null) {
            this.f.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(b bVar) {
        this.E = bVar;
    }

    public void setPopupTheme(int i2) {
        if (this.l != i2) {
            this.l = i2;
            if (i2 == 0) {
                this.k = getContext();
            } else {
                this.k = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.e == null) {
                Context context = getContext();
                this.e = new TextView(context);
                this.e.setSingleLine();
                this.e.setEllipsize(TextUtils.TruncateAt.END);
                if (this.n != 0) {
                    this.e.setTextAppearance(context, this.n);
                }
                if (this.z != 0) {
                    this.e.setTextColor(this.z);
                }
            }
            if (this.e.getParent() == null) {
                a((View) this.e);
                e(this.e);
            }
        } else if (!(this.e == null || this.e.getParent() == null)) {
            removeView(this.e);
        }
        if (this.e != null) {
            this.e.setText(charSequence);
        }
        this.x = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, int i2) {
        this.n = i2;
        if (this.e != null) {
            this.e.setTextAppearance(context, i2);
        }
    }

    public void setSubtitleTextColor(int i2) {
        this.z = i2;
        if (this.e != null) {
            this.e.setTextColor(i2);
        }
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.b == null) {
                Context context = getContext();
                this.b = new TextView(context);
                this.b.setSingleLine();
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                if (this.m != 0) {
                    this.b.setTextAppearance(context, this.m);
                }
                if (this.y != 0) {
                    this.b.setTextColor(this.y);
                }
            }
            if (this.b.getParent() == null) {
                a((View) this.b);
                e(this.b);
            }
        } else if (!(this.b == null || this.b.getParent() == null)) {
            removeView(this.b);
        }
        if (this.b != null) {
            this.b.setText(charSequence);
        }
        this.w = charSequence;
    }

    public void setTitleTextAppearance(Context context, int i2) {
        this.m = i2;
        if (this.b != null) {
            this.b.setTextAppearance(context, i2);
        }
    }

    public void setTitleTextColor(int i2) {
        this.y = i2;
        if (this.b != null) {
            this.b.setTextColor(i2);
        }
    }
}
