package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import defpackage.ew;
import java.util.ArrayList;

@TargetApi(11)
/* renamed from: dj  reason: default package */
/* compiled from: SupportActionModeWrapper */
public final class dj extends ActionMode {
    final Context a;
    final ew b;

    /* renamed from: dj$a */
    /* compiled from: SupportActionModeWrapper */
    public static class a implements ew.a {
        final ActionMode.Callback a;
        final Context b;
        final ArrayList<dj> c = new ArrayList<>();
        final aj<Menu, Menu> d = new aj<>();

        public a(Context context, ActionMode.Callback callback) {
            this.b = context;
            this.a = callback;
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            Menu a2 = ea.a(this.b, (p) menu);
            this.d.put(menu, a2);
            return a2;
        }

        public final ActionMode a(ew ewVar) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                dj djVar = this.c.get(i);
                if (djVar != null && djVar.b == ewVar) {
                    return djVar;
                }
            }
            dj djVar2 = new dj(this.b, ewVar);
            this.c.add(djVar2);
            return djVar2;
        }

        public final boolean onActionItemClicked(ew ewVar, MenuItem menuItem) {
            return this.a.onActionItemClicked(a(ewVar), ea.a(this.b, (q) menuItem));
        }

        public final boolean onCreateActionMode(ew ewVar, Menu menu) {
            return this.a.onCreateActionMode(a(ewVar), a(menu));
        }

        public final void onDestroyActionMode(ew ewVar) {
            this.a.onDestroyActionMode(a(ewVar));
        }

        public final boolean onPrepareActionMode(ew ewVar, Menu menu) {
            return this.a.onPrepareActionMode(a(ewVar), a(menu));
        }
    }

    public dj(Context context, ew ewVar) {
        this.a = context;
        this.b = ewVar;
    }

    public final void finish() {
        this.b.c();
    }

    public final View getCustomView() {
        return this.b.i();
    }

    public final Menu getMenu() {
        return ea.a(this.a, (p) this.b.b());
    }

    public final MenuInflater getMenuInflater() {
        return this.b.a();
    }

    public final CharSequence getSubtitle() {
        return this.b.g();
    }

    public final Object getTag() {
        return this.b.b;
    }

    public final CharSequence getTitle() {
        return this.b.f();
    }

    public final boolean getTitleOptionalHint() {
        return this.b.c;
    }

    public final void invalidate() {
        this.b.d();
    }

    public final boolean isTitleOptional() {
        return this.b.h();
    }

    public final void setCustomView(View view) {
        this.b.a(view);
    }

    public final void setSubtitle(int i) {
        this.b.b(i);
    }

    public final void setSubtitle(CharSequence charSequence) {
        this.b.a(charSequence);
    }

    public final void setTag(Object obj) {
        this.b.b = obj;
    }

    public final void setTitle(int i) {
        this.b.a(i);
    }

    public final void setTitle(CharSequence charSequence) {
        this.b.b(charSequence);
    }

    public final void setTitleOptionalHint(boolean z) {
        this.b.a(z);
    }
}
