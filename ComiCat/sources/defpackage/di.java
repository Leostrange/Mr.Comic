package defpackage;

import android.content.Context;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import defpackage.ds;
import defpackage.ew;
import java.lang.ref.WeakReference;

/* renamed from: di  reason: default package */
/* compiled from: StandaloneActionMode */
public final class di extends ew implements ds.a {
    private Context a;
    private ActionBarContextView d;
    private ew.a e;
    private WeakReference<View> f;
    private boolean g;
    private boolean h;
    private ds i;

    public di(Context context, ActionBarContextView actionBarContextView, ew.a aVar, boolean z) {
        this.a = context;
        this.d = actionBarContextView;
        this.e = aVar;
        ds dsVar = new ds(actionBarContextView.getContext());
        dsVar.e = 1;
        this.i = dsVar;
        this.i.a((ds.a) this);
        this.h = z;
    }

    public final MenuInflater a() {
        return new MenuInflater(this.d.getContext());
    }

    public final void a(int i2) {
        b((CharSequence) this.a.getString(i2));
    }

    public final void a(View view) {
        this.d.setCustomView(view);
        this.f = view != null ? new WeakReference<>(view) : null;
    }

    public final void a(CharSequence charSequence) {
        this.d.setSubtitle(charSequence);
    }

    public final void a(boolean z) {
        super.a(z);
        this.d.setTitleOptional(z);
    }

    public final Menu b() {
        return this.i;
    }

    public final void b(int i2) {
        a((CharSequence) this.a.getString(i2));
    }

    public final void b(CharSequence charSequence) {
        this.d.setTitle(charSequence);
    }

    public final void c() {
        if (!this.g) {
            this.g = true;
            this.d.sendAccessibilityEvent(32);
            this.e.onDestroyActionMode(this);
        }
    }

    public final void d() {
        this.e.onPrepareActionMode(this, this.i);
    }

    public final CharSequence f() {
        return this.d.getTitle();
    }

    public final CharSequence g() {
        return this.d.getSubtitle();
    }

    public final boolean h() {
        return this.d.k;
    }

    public final View i() {
        if (this.f != null) {
            return (View) this.f.get();
        }
        return null;
    }

    public final boolean onMenuItemSelected(ds dsVar, MenuItem menuItem) {
        return this.e.onActionItemClicked(this, menuItem);
    }

    public final void onMenuModeChange(ds dsVar) {
        d();
        this.d.a();
    }
}
