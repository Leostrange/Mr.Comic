package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.AdapterViewCompat;
import android.support.v7.internal.widget.ScrollingTabContainerView;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.SpinnerAdapter;
import defpackage.cv;
import defpackage.ds;
import defpackage.ew;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* renamed from: de  reason: default package */
/* compiled from: WindowDecorActionBar */
public class de extends ActionBar implements ActionBarOverlayLayout.a {
    static final /* synthetic */ boolean j = (!de.class.desiredAssertionStatus());
    private static final boolean k;
    private ArrayList<ActionBar.OnMenuVisibilityListener> A = new ArrayList<>();
    /* access modifiers changed from: private */
    public int B;
    private boolean C;
    private int D = 0;
    /* access modifiers changed from: private */
    public boolean E = true;
    /* access modifiers changed from: private */
    public boolean F;
    /* access modifiers changed from: private */
    public boolean G;
    private boolean H;
    private boolean I = true;
    /* access modifiers changed from: private */
    public dl J;
    private boolean K;
    /* access modifiers changed from: package-private */
    public Context a;
    a b;
    ew c;
    ew.a d;
    boolean e;
    er f;
    final bt g = new bu() {
        public final void onAnimationEnd(View view) {
            if (de.this.E && de.this.t != null) {
                bh.b(de.this.t, 0.0f);
                bh.b((View) de.this.p, 0.0f);
            }
            if (de.this.s != null && de.this.B == 1) {
                de.this.s.setVisibility(8);
            }
            de.this.p.setVisibility(8);
            de.this.p.setTransitioning(false);
            dl unused = de.this.J = null;
            de deVar = de.this;
            if (deVar.d != null) {
                deVar.d.onDestroyActionMode(deVar.c);
                deVar.c = null;
                deVar.d = null;
            }
            if (de.this.o != null) {
                bh.w(de.this.o);
            }
        }
    };
    final bt h = new bu() {
        public final void onAnimationEnd(View view) {
            dl unused = de.this.J = null;
            de.this.p.requestLayout();
        }
    };
    final bv i = new bv() {
        public final void a() {
            ((View) de.this.p.getParent()).invalidate();
        }
    };
    private Context l;
    private Activity m;
    private Dialog n;
    /* access modifiers changed from: private */
    public ActionBarOverlayLayout o;
    /* access modifiers changed from: private */
    public ActionBarContainer p;
    /* access modifiers changed from: private */
    public ej q;
    /* access modifiers changed from: private */
    public ActionBarContextView r;
    /* access modifiers changed from: private */
    public ActionBarContainer s;
    /* access modifiers changed from: private */
    public View t;
    /* access modifiers changed from: private */
    public ScrollingTabContainerView u;
    private ArrayList<b> v = new ArrayList<>();
    private b w;
    private int x = -1;
    private boolean y;
    private boolean z;

    /* renamed from: de$a */
    /* compiled from: WindowDecorActionBar */
    public class a extends ew implements ds.a {
        private final Context d;
        private final ds e;
        private ew.a f;
        private WeakReference<View> g;

        public a(Context context, ew.a aVar) {
            this.d = context;
            this.f = aVar;
            ds dsVar = new ds(context);
            dsVar.e = 1;
            this.e = dsVar;
            this.e.a((ds.a) this);
        }

        public final MenuInflater a() {
            return new dk(this.d);
        }

        public final void a(int i) {
            b((CharSequence) de.this.a.getResources().getString(i));
        }

        public final void a(View view) {
            de.this.r.setCustomView(view);
            this.g = new WeakReference<>(view);
        }

        public final void a(CharSequence charSequence) {
            de.this.r.setSubtitle(charSequence);
        }

        public final void a(boolean z) {
            super.a(z);
            de.this.r.setTitleOptional(z);
        }

        public final Menu b() {
            return this.e;
        }

        public final void b(int i) {
            a((CharSequence) de.this.a.getResources().getString(i));
        }

        public final void b(CharSequence charSequence) {
            de.this.r.setTitle(charSequence);
        }

        public final void c() {
            if (de.this.b == this) {
                if (!de.a(de.this.F, de.this.G, false)) {
                    de.this.c = this;
                    de.this.d = this.f;
                } else {
                    this.f.onDestroyActionMode(this);
                }
                this.f = null;
                de.this.b(false);
                ActionBarContextView j = de.this.r;
                if (j.m != 2) {
                    if (j.j == null) {
                        j.c();
                    } else {
                        j.b();
                        j.m = 2;
                        j.l = j.d();
                        j.l.a();
                    }
                }
                de.this.q.a().sendAccessibilityEvent(32);
                de.this.o.setHideOnContentScrollEnabled(de.this.e);
                de.this.b = null;
            }
        }

        public final void d() {
            if (de.this.b == this) {
                this.e.d();
                try {
                    this.f.onPrepareActionMode(this, this.e);
                } finally {
                    this.e.e();
                }
            }
        }

        public final boolean e() {
            this.e.d();
            try {
                return this.f.onCreateActionMode(this, this.e);
            } finally {
                this.e.e();
            }
        }

        public final CharSequence f() {
            return de.this.r.getTitle();
        }

        public final CharSequence g() {
            return de.this.r.getSubtitle();
        }

        public final boolean h() {
            return de.this.r.k;
        }

        public final View i() {
            if (this.g != null) {
                return (View) this.g.get();
            }
            return null;
        }

        public final boolean onMenuItemSelected(ds dsVar, MenuItem menuItem) {
            if (this.f != null) {
                return this.f.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        public final void onMenuModeChange(ds dsVar) {
            if (this.f != null) {
                d();
                de.this.r.a();
            }
        }
    }

    /* renamed from: de$b */
    /* compiled from: WindowDecorActionBar */
    public class b extends ActionBar.Tab {
        ActionBar.TabListener a;
        int b = -1;
        private Object d;
        private Drawable e;
        private CharSequence f;
        private CharSequence g;
        private View h;

        public b() {
        }

        public final CharSequence getContentDescription() {
            return this.g;
        }

        public final View getCustomView() {
            return this.h;
        }

        public final Drawable getIcon() {
            return this.e;
        }

        public final int getPosition() {
            return this.b;
        }

        public final Object getTag() {
            return this.d;
        }

        public final CharSequence getText() {
            return this.f;
        }

        public final void select() {
            de.this.selectTab(this);
        }

        public final ActionBar.Tab setContentDescription(int i) {
            return setContentDescription(de.this.a.getResources().getText(i));
        }

        public final ActionBar.Tab setContentDescription(CharSequence charSequence) {
            this.g = charSequence;
            if (this.b >= 0) {
                de.this.u.b(this.b);
            }
            return this;
        }

        public final ActionBar.Tab setCustomView(int i) {
            return setCustomView(LayoutInflater.from(de.this.getThemedContext()).inflate(i, (ViewGroup) null));
        }

        public final ActionBar.Tab setCustomView(View view) {
            this.h = view;
            if (this.b >= 0) {
                de.this.u.b(this.b);
            }
            return this;
        }

        public final ActionBar.Tab setIcon(int i) {
            de deVar = de.this;
            if (deVar.f == null) {
                deVar.f = er.a(deVar.a);
            }
            return setIcon(deVar.f.a(i, false));
        }

        public final ActionBar.Tab setIcon(Drawable drawable) {
            this.e = drawable;
            if (this.b >= 0) {
                de.this.u.b(this.b);
            }
            return this;
        }

        public final ActionBar.Tab setTabListener(ActionBar.TabListener tabListener) {
            this.a = tabListener;
            return this;
        }

        public final ActionBar.Tab setTag(Object obj) {
            this.d = obj;
            return this;
        }

        public final ActionBar.Tab setText(int i) {
            return setText(de.this.a.getResources().getText(i));
        }

        public final ActionBar.Tab setText(CharSequence charSequence) {
            this.f = charSequence;
            if (this.b >= 0) {
                de.this.u.b(this.b);
            }
            return this;
        }
    }

    static {
        boolean z2 = true;
        if (Build.VERSION.SDK_INT < 14) {
            z2 = false;
        }
        k = z2;
    }

    public de(Activity activity, boolean z2) {
        this.m = activity;
        View decorView = activity.getWindow().getDecorView();
        a(decorView);
        if (!z2) {
            this.t = decorView.findViewById(16908290);
        }
    }

    public de(Dialog dialog) {
        this.n = dialog;
        a(dialog.getWindow().getDecorView());
    }

    private void a(ActionBar.Tab tab, int i2) {
        b bVar = (b) tab;
        if (bVar.a == null) {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        bVar.b = i2;
        this.v.add(i2, bVar);
        int size = this.v.size();
        for (int i3 = i2 + 1; i3 < size; i3++) {
            this.v.get(i3).b = i3;
        }
    }

    private void a(View view) {
        ej wrapper;
        this.o = (ActionBarOverlayLayout) view.findViewById(cv.f.decor_content_parent);
        if (this.o != null) {
            this.o.setActionBarVisibilityCallback(this);
        }
        View findViewById = view.findViewById(cv.f.action_bar);
        if (findViewById instanceof ej) {
            wrapper = (ej) findViewById;
        } else if (findViewById instanceof Toolbar) {
            wrapper = ((Toolbar) findViewById).getWrapper();
        } else {
            throw new IllegalStateException(new StringBuilder("Can't make a decor toolbar out of ").append(findViewById).toString() != null ? findViewById.getClass().getSimpleName() : "null");
        }
        this.q = wrapper;
        this.r = (ActionBarContextView) view.findViewById(cv.f.action_context_bar);
        this.p = (ActionBarContainer) view.findViewById(cv.f.action_bar_container);
        this.s = (ActionBarContainer) view.findViewById(cv.f.split_action_bar);
        if (this.q == null || this.r == null || this.p == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.a = this.q.b();
        this.B = 0;
        boolean z2 = (this.q.p() & 4) != 0;
        if (z2) {
            this.y = true;
        }
        dg a2 = dg.a(this.a);
        setHomeButtonEnabled((a2.a.getApplicationInfo().targetSdkVersion < 14) || z2);
        c(a2.a());
        TypedArray obtainStyledAttributes = this.a.obtainStyledAttributes((AttributeSet) null, cv.k.ActionBar, cv.a.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(cv.k.ActionBar_hideOnContentScroll, false)) {
            setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(cv.k.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            setElevation((float) dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* access modifiers changed from: private */
    public static boolean a(boolean z2, boolean z3, boolean z4) {
        if (z4) {
            return true;
        }
        return !z2 && !z3;
    }

    private void c(boolean z2) {
        boolean z3 = true;
        this.C = z2;
        if (!this.C) {
            this.q.a((ScrollingTabContainerView) null);
            this.p.setTabContainer(this.u);
        } else {
            this.p.setTabContainer((ScrollingTabContainerView) null);
            this.q.a(this.u);
        }
        boolean z4 = getNavigationMode() == 2;
        if (this.u != null) {
            if (z4) {
                this.u.setVisibility(0);
                if (this.o != null) {
                    bh.w(this.o);
                }
            } else {
                this.u.setVisibility(8);
            }
        }
        this.q.a(!this.C && z4);
        ActionBarOverlayLayout actionBarOverlayLayout = this.o;
        if (this.C || !z4) {
            z3 = false;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z3);
    }

    private void d() {
        if (this.u == null) {
            ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.a);
            if (this.C) {
                scrollingTabContainerView.setVisibility(0);
                this.q.a(scrollingTabContainerView);
            } else {
                if (getNavigationMode() == 2) {
                    scrollingTabContainerView.setVisibility(0);
                    if (this.o != null) {
                        bh.w(this.o);
                    }
                } else {
                    scrollingTabContainerView.setVisibility(8);
                }
                this.p.setTabContainer(scrollingTabContainerView);
            }
            this.u = scrollingTabContainerView;
        }
    }

    private void d(boolean z2) {
        if (a(this.F, this.G, this.H)) {
            if (!this.I) {
                this.I = true;
                if (this.J != null) {
                    this.J.b();
                }
                this.p.setVisibility(0);
                if (this.D != 0 || !k || (!this.K && !z2)) {
                    bh.c((View) this.p, 1.0f);
                    bh.b((View) this.p, 0.0f);
                    if (this.E && this.t != null) {
                        bh.b(this.t, 0.0f);
                    }
                    if (this.s != null && this.B == 1) {
                        bh.c((View) this.s, 1.0f);
                        bh.b((View) this.s, 0.0f);
                        this.s.setVisibility(0);
                    }
                    this.h.onAnimationEnd((View) null);
                } else {
                    bh.b((View) this.p, 0.0f);
                    float f2 = (float) (-this.p.getHeight());
                    if (z2) {
                        int[] iArr = {0, 0};
                        this.p.getLocationInWindow(iArr);
                        f2 -= (float) iArr[1];
                    }
                    bh.b((View) this.p, f2);
                    dl dlVar = new dl();
                    bp c2 = bh.s(this.p).c(0.0f);
                    c2.a(this.i);
                    dlVar.a(c2);
                    if (this.E && this.t != null) {
                        bh.b(this.t, f2);
                        dlVar.a(bh.s(this.t).c(0.0f));
                    }
                    if (this.s != null && this.B == 1) {
                        bh.b((View) this.s, (float) this.s.getHeight());
                        this.s.setVisibility(0);
                        dlVar.a(bh.s(this.s).c(0.0f));
                    }
                    dlVar.a(AnimationUtils.loadInterpolator(this.a, 17432582));
                    dlVar.c();
                    dlVar.a(this.h);
                    this.J = dlVar;
                    dlVar.a();
                }
                if (this.o != null) {
                    bh.w(this.o);
                }
            }
        } else if (this.I) {
            this.I = false;
            if (this.J != null) {
                this.J.b();
            }
            if (this.D != 0 || !k || (!this.K && !z2)) {
                this.g.onAnimationEnd((View) null);
                return;
            }
            bh.c((View) this.p, 1.0f);
            this.p.setTransitioning(true);
            dl dlVar2 = new dl();
            float f3 = (float) (-this.p.getHeight());
            if (z2) {
                int[] iArr2 = {0, 0};
                this.p.getLocationInWindow(iArr2);
                f3 -= (float) iArr2[1];
            }
            bp c3 = bh.s(this.p).c(f3);
            c3.a(this.i);
            dlVar2.a(c3);
            if (this.E && this.t != null) {
                dlVar2.a(bh.s(this.t).c(f3));
            }
            if (this.s != null && this.s.getVisibility() == 0) {
                bh.c((View) this.s, 1.0f);
                dlVar2.a(bh.s(this.s).c((float) this.s.getHeight()));
            }
            dlVar2.a(AnimationUtils.loadInterpolator(this.a, 17432581));
            dlVar2.c();
            dlVar2.a(this.g);
            this.J = dlVar2;
            dlVar2.a();
        }
    }

    public final void a() {
        if (this.G) {
            this.G = false;
            d(true);
        }
    }

    public final void a(int i2) {
        this.D = i2;
    }

    public final void a(boolean z2) {
        this.E = z2;
    }

    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.A.add(onMenuVisibilityListener);
    }

    public void addTab(ActionBar.Tab tab) {
        addTab(tab, this.v.isEmpty());
    }

    public void addTab(ActionBar.Tab tab, int i2) {
        addTab(tab, i2, this.v.isEmpty());
    }

    public void addTab(ActionBar.Tab tab, int i2, boolean z2) {
        d();
        ScrollingTabContainerView scrollingTabContainerView = this.u;
        ScrollingTabContainerView.TabView a2 = scrollingTabContainerView.a(tab, false);
        scrollingTabContainerView.b.addView(a2, i2, new LinearLayoutCompat.LayoutParams());
        if (scrollingTabContainerView.c != null) {
            ((ScrollingTabContainerView.a) scrollingTabContainerView.c.a).notifyDataSetChanged();
        }
        if (z2) {
            a2.setSelected(true);
        }
        if (scrollingTabContainerView.d) {
            scrollingTabContainerView.requestLayout();
        }
        a(tab, i2);
        if (z2) {
            selectTab(tab);
        }
    }

    public void addTab(ActionBar.Tab tab, boolean z2) {
        d();
        ScrollingTabContainerView scrollingTabContainerView = this.u;
        ScrollingTabContainerView.TabView a2 = scrollingTabContainerView.a(tab, false);
        scrollingTabContainerView.b.addView(a2, new LinearLayoutCompat.LayoutParams());
        if (scrollingTabContainerView.c != null) {
            ((ScrollingTabContainerView.a) scrollingTabContainerView.c.a).notifyDataSetChanged();
        }
        if (z2) {
            a2.setSelected(true);
        }
        if (scrollingTabContainerView.d) {
            scrollingTabContainerView.requestLayout();
        }
        a(tab, this.v.size());
        if (z2) {
            selectTab(tab);
        }
    }

    public final void b() {
        if (!this.G) {
            this.G = true;
            d(true);
        }
    }

    public final void b(boolean z2) {
        int i2 = 0;
        if (z2) {
            if (!this.H) {
                this.H = true;
                if (this.o != null) {
                    this.o.setShowingForActionMode(true);
                }
                d(false);
            }
        } else if (this.H) {
            this.H = false;
            if (this.o != null) {
                this.o.setShowingForActionMode(false);
            }
            d(false);
        }
        this.q.f(z2 ? 8 : 0);
        ActionBarContextView actionBarContextView = this.r;
        if (!z2) {
            i2 = 8;
        }
        actionBarContextView.a(i2);
    }

    public final void c() {
        if (this.J != null) {
            this.J.b();
            this.J = null;
        }
    }

    public boolean collapseActionView() {
        if (this.q == null || !this.q.c()) {
            return false;
        }
        this.q.d();
        return true;
    }

    public void dispatchMenuVisibilityChanged(boolean z2) {
        if (z2 != this.z) {
            this.z = z2;
            int size = this.A.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A.get(i2).onMenuVisibilityChanged(z2);
            }
        }
    }

    public View getCustomView() {
        return this.q.u();
    }

    public int getDisplayOptions() {
        return this.q.p();
    }

    public float getElevation() {
        return bh.u(this.p);
    }

    public int getHeight() {
        return this.p.getHeight();
    }

    public int getHideOffset() {
        return this.o.getActionBarHideOffset();
    }

    public int getNavigationItemCount() {
        switch (this.q.r()) {
            case 1:
                return this.q.t();
            case 2:
                return this.v.size();
            default:
                return 0;
        }
    }

    public int getNavigationMode() {
        return this.q.r();
    }

    public int getSelectedNavigationIndex() {
        switch (this.q.r()) {
            case 1:
                return this.q.s();
            case 2:
                if (this.w != null) {
                    return this.w.getPosition();
                }
                return -1;
            default:
                return -1;
        }
    }

    public ActionBar.Tab getSelectedTab() {
        return this.w;
    }

    public CharSequence getSubtitle() {
        return this.q.f();
    }

    public ActionBar.Tab getTabAt(int i2) {
        return this.v.get(i2);
    }

    public int getTabCount() {
        return this.v.size();
    }

    public Context getThemedContext() {
        if (this.l == null) {
            TypedValue typedValue = new TypedValue();
            this.a.getTheme().resolveAttribute(cv.a.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.l = new ContextThemeWrapper(this.a, i2);
            } else {
                this.l = this.a;
            }
        }
        return this.l;
    }

    public CharSequence getTitle() {
        return this.q.e();
    }

    public void hide() {
        if (!this.F) {
            this.F = true;
            d(false);
        }
    }

    public boolean isHideOnContentScrollEnabled() {
        return this.o.b;
    }

    public boolean isShowing() {
        int height = getHeight();
        return this.I && (height == 0 || getHideOffset() < height);
    }

    public boolean isTitleTruncated() {
        return this.q != null && this.q.q();
    }

    public ActionBar.Tab newTab() {
        return new b();
    }

    public void onConfigurationChanged(Configuration configuration) {
        c(dg.a(this.a).a());
    }

    public void removeAllTabs() {
        if (this.w != null) {
            selectTab((ActionBar.Tab) null);
        }
        this.v.clear();
        if (this.u != null) {
            ScrollingTabContainerView scrollingTabContainerView = this.u;
            scrollingTabContainerView.b.removeAllViews();
            if (scrollingTabContainerView.c != null) {
                ((ScrollingTabContainerView.a) scrollingTabContainerView.c.a).notifyDataSetChanged();
            }
            if (scrollingTabContainerView.d) {
                scrollingTabContainerView.requestLayout();
            }
        }
        this.x = -1;
    }

    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.A.remove(onMenuVisibilityListener);
    }

    public void removeTab(ActionBar.Tab tab) {
        removeTabAt(tab.getPosition());
    }

    public void removeTabAt(int i2) {
        if (this.u != null) {
            int position = this.w != null ? this.w.getPosition() : this.x;
            ScrollingTabContainerView scrollingTabContainerView = this.u;
            scrollingTabContainerView.b.removeViewAt(i2);
            if (scrollingTabContainerView.c != null) {
                ((ScrollingTabContainerView.a) scrollingTabContainerView.c.a).notifyDataSetChanged();
            }
            if (scrollingTabContainerView.d) {
                scrollingTabContainerView.requestLayout();
            }
            b remove = this.v.remove(i2);
            if (remove != null) {
                remove.b = -1;
            }
            int size = this.v.size();
            for (int i3 = i2; i3 < size; i3++) {
                this.v.get(i3).b = i3;
            }
            if (position == i2) {
                selectTab(this.v.isEmpty() ? null : this.v.get(Math.max(0, i2 - 1)));
            }
        }
    }

    public void selectTab(ActionBar.Tab tab) {
        int i2 = -1;
        if (getNavigationMode() != 2) {
            this.x = tab != null ? tab.getPosition() : -1;
            return;
        }
        FragmentTransaction disallowAddToBackStack = (!(this.m instanceof FragmentActivity) || this.q.a().isInEditMode()) ? null : ((FragmentActivity) this.m).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        if (this.w != tab) {
            ScrollingTabContainerView scrollingTabContainerView = this.u;
            if (tab != null) {
                i2 = tab.getPosition();
            }
            scrollingTabContainerView.setTabSelected(i2);
            if (this.w != null) {
                this.w.a.onTabUnselected(this.w, disallowAddToBackStack);
            }
            this.w = (b) tab;
            if (this.w != null) {
                this.w.a.onTabSelected(this.w, disallowAddToBackStack);
            }
        } else if (this.w != null) {
            this.w.a.onTabReselected(this.w, disallowAddToBackStack);
            this.u.a(tab.getPosition());
        }
        if (disallowAddToBackStack != null && !disallowAddToBackStack.isEmpty()) {
            disallowAddToBackStack.commit();
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.p.setPrimaryBackground(drawable);
    }

    public void setCustomView(int i2) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i2, this.q.a(), false));
    }

    public void setCustomView(View view) {
        this.q.a(view);
    }

    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.q.a(view);
    }

    public void setDefaultDisplayHomeAsUpEnabled(boolean z2) {
        if (!this.y) {
            setDisplayHomeAsUpEnabled(z2);
        }
    }

    public void setDisplayHomeAsUpEnabled(boolean z2) {
        setDisplayOptions(z2 ? 4 : 0, 4);
    }

    public void setDisplayOptions(int i2) {
        if ((i2 & 4) != 0) {
            this.y = true;
        }
        this.q.c(i2);
    }

    public void setDisplayOptions(int i2, int i3) {
        int p2 = this.q.p();
        if ((i3 & 4) != 0) {
            this.y = true;
        }
        this.q.c((p2 & (i3 ^ -1)) | (i2 & i3));
    }

    public void setDisplayShowCustomEnabled(boolean z2) {
        setDisplayOptions(z2 ? 16 : 0, 16);
    }

    public void setDisplayShowHomeEnabled(boolean z2) {
        setDisplayOptions(z2 ? 2 : 0, 2);
    }

    public void setDisplayShowTitleEnabled(boolean z2) {
        setDisplayOptions(z2 ? 8 : 0, 8);
    }

    public void setDisplayUseLogoEnabled(boolean z2) {
        setDisplayOptions(z2 ? 1 : 0, 1);
    }

    public void setElevation(float f2) {
        bh.f(this.p, f2);
        if (this.s != null) {
            bh.f(this.s, f2);
        }
    }

    public void setHideOffset(int i2) {
        if (i2 == 0 || this.o.a) {
            this.o.setActionBarHideOffset(i2);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
    }

    public void setHideOnContentScrollEnabled(boolean z2) {
        if (!z2 || this.o.a) {
            this.e = z2;
            this.o.setHideOnContentScrollEnabled(z2);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    public void setHomeActionContentDescription(int i2) {
        this.q.h(i2);
    }

    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.q.d(charSequence);
    }

    public void setHomeAsUpIndicator(int i2) {
        this.q.g(i2);
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        this.q.c(drawable);
    }

    public void setHomeButtonEnabled(boolean z2) {
    }

    public void setIcon(int i2) {
        this.q.a(i2);
    }

    public void setIcon(Drawable drawable) {
        this.q.a(drawable);
    }

    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.q.a(spinnerAdapter, (AdapterViewCompat.d) new db(onNavigationListener));
    }

    public void setLogo(int i2) {
        this.q.b(i2);
    }

    public void setLogo(Drawable drawable) {
        this.q.b(drawable);
    }

    public void setNavigationMode(int i2) {
        boolean z2 = true;
        int r2 = this.q.r();
        switch (r2) {
            case 2:
                this.x = getSelectedNavigationIndex();
                selectTab((ActionBar.Tab) null);
                this.u.setVisibility(8);
                break;
        }
        if (!(r2 == i2 || this.C || this.o == null)) {
            bh.w(this.o);
        }
        this.q.d(i2);
        switch (i2) {
            case 2:
                d();
                this.u.setVisibility(0);
                if (this.x != -1) {
                    setSelectedNavigationItem(this.x);
                    this.x = -1;
                    break;
                }
                break;
        }
        this.q.a(i2 == 2 && !this.C);
        ActionBarOverlayLayout actionBarOverlayLayout = this.o;
        if (i2 != 2 || this.C) {
            z2 = false;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z2);
    }

    public void setSelectedNavigationItem(int i2) {
        switch (this.q.r()) {
            case 1:
                this.q.e(i2);
                return;
            case 2:
                selectTab(this.v.get(i2));
                return;
            default:
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    public void setShowHideAnimationEnabled(boolean z2) {
        this.K = z2;
        if (!z2 && this.J != null) {
            this.J.b();
        }
    }

    public void setSplitBackgroundDrawable(Drawable drawable) {
        if (this.s != null) {
            this.s.setSplitBackground(drawable);
        }
    }

    public void setStackedBackgroundDrawable(Drawable drawable) {
        this.p.setStackedBackground(drawable);
    }

    public void setSubtitle(int i2) {
        setSubtitle((CharSequence) this.a.getString(i2));
    }

    public void setSubtitle(CharSequence charSequence) {
        this.q.c(charSequence);
    }

    public void setTitle(int i2) {
        setTitle((CharSequence) this.a.getString(i2));
    }

    public void setTitle(CharSequence charSequence) {
        this.q.b(charSequence);
    }

    public void setWindowTitle(CharSequence charSequence) {
        this.q.a(charSequence);
    }

    public void show() {
        if (this.F) {
            this.F = false;
            d(false);
        }
    }

    public ew startActionMode(ew.a aVar) {
        if (this.b != null) {
            this.b.c();
        }
        this.o.setHideOnContentScrollEnabled(false);
        this.r.c();
        a aVar2 = new a(this.r.getContext(), aVar);
        if (!aVar2.e()) {
            return null;
        }
        aVar2.d();
        this.r.a((ew) aVar2);
        b(true);
        if (!(this.s == null || this.B != 1 || this.s.getVisibility() == 0)) {
            this.s.setVisibility(0);
            if (this.o != null) {
                bh.w(this.o);
            }
        }
        this.r.sendAccessibilityEvent(32);
        this.b = aVar2;
        return aVar2;
    }
}
