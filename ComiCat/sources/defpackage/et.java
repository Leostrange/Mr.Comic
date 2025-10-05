package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.AdapterViewCompat;
import android.support.v7.internal.widget.ScrollingTabContainerView;
import android.support.v7.internal.widget.SpinnerCompat;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.Toolbar;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.SpinnerAdapter;
import defpackage.cv;
import defpackage.ds;
import defpackage.dy;

/* renamed from: et  reason: default package */
/* compiled from: ToolbarWidgetWrapper */
public final class et implements ej {
    Toolbar a;
    CharSequence b;
    Window.Callback c;
    boolean d;
    private int e;
    private View f;
    private SpinnerCompat g;
    private View h;
    private Drawable i;
    private Drawable j;
    private Drawable k;
    private boolean l;
    private CharSequence m;
    private CharSequence n;
    private ActionMenuPresenter o;
    private int p;
    private final er q;
    private int r;
    private Drawable s;

    public et(Toolbar toolbar, boolean z) {
        this(toolbar, z, cv.i.abc_action_bar_up_description, cv.e.abc_ic_ab_back_mtrl_am_alpha);
    }

    private et(Toolbar toolbar, boolean z, int i2, int i3) {
        this.p = 0;
        this.r = 0;
        this.a = toolbar;
        this.b = toolbar.getTitle();
        this.m = toolbar.getSubtitle();
        this.l = this.b != null;
        this.k = toolbar.getNavigationIcon();
        if (z) {
            es a2 = es.a(toolbar.getContext(), (AttributeSet) null, cv.k.ActionBar, cv.a.actionBarStyle);
            CharSequence c2 = a2.c(cv.k.ActionBar_title);
            if (!TextUtils.isEmpty(c2)) {
                b(c2);
            }
            CharSequence c3 = a2.c(cv.k.ActionBar_subtitle);
            if (!TextUtils.isEmpty(c3)) {
                c(c3);
            }
            Drawable a3 = a2.a(cv.k.ActionBar_logo);
            if (a3 != null) {
                b(a3);
            }
            Drawable a4 = a2.a(cv.k.ActionBar_icon);
            if (this.k == null && a4 != null) {
                a(a4);
            }
            Drawable a5 = a2.a(cv.k.ActionBar_homeAsUpIndicator);
            if (a5 != null) {
                c(a5);
            }
            c(a2.a(cv.k.ActionBar_displayOptions, 0));
            int e2 = a2.e(cv.k.ActionBar_customNavigationLayout, 0);
            if (e2 != 0) {
                a(LayoutInflater.from(this.a.getContext()).inflate(e2, this.a, false));
                c(this.e | 16);
            }
            int d2 = a2.d(cv.k.ActionBar_height, 0);
            if (d2 > 0) {
                ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
                layoutParams.height = d2;
                this.a.setLayoutParams(layoutParams);
            }
            int b2 = a2.b(cv.k.ActionBar_contentInsetStart, -1);
            int b3 = a2.b(cv.k.ActionBar_contentInsetEnd, -1);
            if (b2 >= 0 || b3 >= 0) {
                this.a.setContentInsetsRelative(Math.max(b2, 0), Math.max(b3, 0));
            }
            int e3 = a2.e(cv.k.ActionBar_titleTextStyle, 0);
            if (e3 != 0) {
                this.a.setTitleTextAppearance(this.a.getContext(), e3);
            }
            int e4 = a2.e(cv.k.ActionBar_subtitleTextStyle, 0);
            if (e4 != 0) {
                this.a.setSubtitleTextAppearance(this.a.getContext(), e4);
            }
            int e5 = a2.e(cv.k.ActionBar_popupTheme, 0);
            if (e5 != 0) {
                this.a.setPopupTheme(e5);
            }
            a2.a.recycle();
            this.q = a2.a();
        } else {
            this.e = this.a.getNavigationIcon() != null ? 15 : 11;
            this.q = er.a(toolbar.getContext());
        }
        if (i2 != this.r) {
            this.r = i2;
            if (TextUtils.isEmpty(this.a.getNavigationContentDescription())) {
                h(this.r);
            }
        }
        this.n = this.a.getNavigationContentDescription();
        Drawable a6 = this.q.a(i3, false);
        if (this.s != a6) {
            this.s = a6;
            B();
        }
        this.a.setNavigationOnClickListener(new View.OnClickListener() {
            final dn a = new dn(et.this.a.getContext(), et.this.b);

            public final void onClick(View view) {
                if (et.this.c != null && et.this.d) {
                    et.this.c.onMenuItemSelected(0, this.a);
                }
            }
        });
    }

    private void A() {
        if ((this.e & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.n)) {
            this.a.setNavigationContentDescription(this.r);
        } else {
            this.a.setNavigationContentDescription(this.n);
        }
    }

    private void B() {
        if ((this.e & 4) != 0) {
            this.a.setNavigationIcon(this.k != null ? this.k : this.s);
        }
    }

    private void e(CharSequence charSequence) {
        this.b = charSequence;
        if ((this.e & 8) != 0) {
            this.a.setTitle(charSequence);
        }
    }

    private void y() {
        Drawable drawable = null;
        if ((this.e & 2) != 0) {
            drawable = (this.e & 1) != 0 ? this.j != null ? this.j : this.i : this.i;
        }
        this.a.setLogo(drawable);
    }

    private void z() {
        if (this.g == null) {
            this.g = new SpinnerCompat(this.a.getContext(), cv.a.actionDropDownStyle);
            this.g.setLayoutParams(new Toolbar.LayoutParams((byte) 0));
        }
    }

    public final ViewGroup a() {
        return this.a;
    }

    public final void a(int i2) {
        a(i2 != 0 ? this.q.a(i2, false) : null);
    }

    public final void a(Drawable drawable) {
        this.i = drawable;
        y();
    }

    public final void a(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.f != null && this.f.getParent() == this.a) {
            this.a.removeView(this.f);
        }
        this.f = scrollingTabContainerView;
        if (scrollingTabContainerView != null && this.p == 2) {
            this.a.addView(this.f, 0);
            Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.gravity = 8388691;
            scrollingTabContainerView.setAllowCollapse(true);
        }
    }

    public final void a(Menu menu, dy.a aVar) {
        if (this.o == null) {
            this.o = new ActionMenuPresenter(this.a.getContext());
            this.o.h = cv.f.action_menu_presenter;
        }
        this.o.f = aVar;
        this.a.setMenu((ds) menu, this.o);
    }

    public final void a(View view) {
        if (!(this.h == null || (this.e & 16) == 0)) {
            this.a.removeView(this.h);
        }
        this.h = view;
        if (view != null && (this.e & 16) != 0) {
            this.a.addView(this.h);
        }
    }

    public final void a(Window.Callback callback) {
        this.c = callback;
    }

    public final void a(SpinnerAdapter spinnerAdapter, AdapterViewCompat.d dVar) {
        z();
        this.g.setAdapter(spinnerAdapter);
        this.g.setOnItemSelectedListener(dVar);
    }

    public final void a(dy.a aVar, ds.a aVar2) {
        this.a.setMenuCallbacks(aVar, aVar2);
    }

    public final void a(CharSequence charSequence) {
        if (!this.l) {
            e(charSequence);
        }
    }

    public final void a(boolean z) {
        this.a.setCollapsible(z);
    }

    public final Context b() {
        return this.a.getContext();
    }

    public final void b(int i2) {
        b(i2 != 0 ? this.q.a(i2, false) : null);
    }

    public final void b(Drawable drawable) {
        this.j = drawable;
        y();
    }

    public final void b(CharSequence charSequence) {
        this.l = true;
        e(charSequence);
    }

    public final void c(int i2) {
        int i3 = this.e ^ i2;
        this.e = i2;
        if (i3 != 0) {
            if ((i3 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    B();
                    A();
                } else {
                    this.a.setNavigationIcon((Drawable) null);
                }
            }
            if ((i3 & 3) != 0) {
                y();
            }
            if ((i3 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    this.a.setTitle(this.b);
                    this.a.setSubtitle(this.m);
                } else {
                    this.a.setTitle((CharSequence) null);
                    this.a.setSubtitle((CharSequence) null);
                }
            }
            if ((i3 & 16) != 0 && this.h != null) {
                if ((i2 & 16) != 0) {
                    this.a.addView(this.h);
                } else {
                    this.a.removeView(this.h);
                }
            }
        }
    }

    public final void c(Drawable drawable) {
        this.k = drawable;
        B();
    }

    public final void c(CharSequence charSequence) {
        this.m = charSequence;
        if ((this.e & 8) != 0) {
            this.a.setSubtitle(charSequence);
        }
    }

    public final boolean c() {
        Toolbar toolbar = this.a;
        return (toolbar.d == null || toolbar.d.b == null) ? false : true;
    }

    public final void d() {
        this.a.c();
    }

    public final void d(int i2) {
        int i3 = this.p;
        if (i2 != i3) {
            switch (i3) {
                case 1:
                    if (this.g != null && this.g.getParent() == this.a) {
                        this.a.removeView(this.g);
                        break;
                    }
                case 2:
                    if (this.f != null && this.f.getParent() == this.a) {
                        this.a.removeView(this.f);
                        break;
                    }
            }
            this.p = i2;
            switch (i2) {
                case 0:
                    return;
                case 1:
                    z();
                    this.a.addView(this.g, 0);
                    return;
                case 2:
                    if (this.f != null) {
                        this.a.addView(this.f, 0);
                        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f.getLayoutParams();
                        layoutParams.width = -2;
                        layoutParams.height = -2;
                        layoutParams.gravity = 8388691;
                        return;
                    }
                    return;
                default:
                    throw new IllegalArgumentException("Invalid navigation mode " + i2);
            }
        }
    }

    public final void d(Drawable drawable) {
        this.a.setBackgroundDrawable(drawable);
    }

    public final void d(CharSequence charSequence) {
        this.n = charSequence;
        A();
    }

    public final CharSequence e() {
        return this.a.getTitle();
    }

    public final void e(int i2) {
        if (this.g == null) {
            throw new IllegalStateException("Can't set dropdown selected position without an adapter");
        }
        this.g.setSelection(i2);
    }

    public final CharSequence f() {
        return this.a.getSubtitle();
    }

    public final void f(int i2) {
        if (i2 == 8) {
            bh.s(this.a).a(0.0f).a((bt) new bu() {
                private boolean b = false;

                public final void onAnimationCancel(View view) {
                    this.b = true;
                }

                public final void onAnimationEnd(View view) {
                    if (!this.b) {
                        et.this.a.setVisibility(8);
                    }
                }
            });
        } else if (i2 == 0) {
            bh.s(this.a).a(1.0f).a((bt) new bu() {
                public final void onAnimationStart(View view) {
                    et.this.a.setVisibility(0);
                }
            });
        }
    }

    public final void g() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public final void g(int i2) {
        c(i2 != 0 ? this.q.a(i2, false) : null);
    }

    public final void h() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public final void h(int i2) {
        d((CharSequence) i2 == 0 ? null : this.a.getContext().getString(i2));
    }

    public final void i(int i2) {
        this.a.setVisibility(i2);
    }

    public final boolean i() {
        Toolbar toolbar = this.a;
        return toolbar.getVisibility() == 0 && toolbar.a != null && toolbar.a.b;
    }

    public final boolean j() {
        return this.a.a();
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean k() {
        /*
            r4 = this;
            r0 = 1
            r1 = 0
            android.support.v7.widget.Toolbar r2 = r4.a
            android.support.v7.widget.ActionMenuView r3 = r2.a
            if (r3 == 0) goto L_0x0025
            android.support.v7.widget.ActionMenuView r2 = r2.a
            android.support.v7.widget.ActionMenuPresenter r3 = r2.c
            if (r3 == 0) goto L_0x0023
            android.support.v7.widget.ActionMenuPresenter r2 = r2.c
            android.support.v7.widget.ActionMenuPresenter$c r3 = r2.m
            if (r3 != 0) goto L_0x001a
            boolean r2 = r2.h()
            if (r2 == 0) goto L_0x0021
        L_0x001a:
            r2 = r0
        L_0x001b:
            if (r2 == 0) goto L_0x0023
            r2 = r0
        L_0x001e:
            if (r2 == 0) goto L_0x0025
        L_0x0020:
            return r0
        L_0x0021:
            r2 = r1
            goto L_0x001b
        L_0x0023:
            r2 = r1
            goto L_0x001e
        L_0x0025:
            r0 = r1
            goto L_0x0020
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.et.k():boolean");
    }

    public final boolean l() {
        return this.a.b();
    }

    public final boolean m() {
        Toolbar toolbar = this.a;
        if (toolbar.a != null) {
            ActionMenuView actionMenuView = toolbar.a;
            if (actionMenuView.c != null && actionMenuView.c.e()) {
                return true;
            }
        }
        return false;
    }

    public final void n() {
        this.d = true;
    }

    public final void o() {
        Toolbar toolbar = this.a;
        if (toolbar.a != null) {
            toolbar.a.b();
        }
    }

    public final int p() {
        return this.e;
    }

    public final boolean q() {
        Layout layout;
        Toolbar toolbar = this.a;
        if (toolbar.b == null || (layout = toolbar.b.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i2 = 0; i2 < lineCount; i2++) {
            if (layout.getEllipsisCount(i2) > 0) {
                return true;
            }
        }
        return false;
    }

    public final int r() {
        return this.p;
    }

    public final int s() {
        if (this.g != null) {
            return this.g.getSelectedItemPosition();
        }
        return 0;
    }

    public final int t() {
        if (this.g != null) {
            return this.g.getCount();
        }
        return 0;
    }

    public final View u() {
        return this.h;
    }

    public final int v() {
        return this.a.getHeight();
    }

    public final int w() {
        return this.a.getVisibility();
    }

    public final Menu x() {
        return this.a.getMenu();
    }
}
