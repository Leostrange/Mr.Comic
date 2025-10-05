package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: ao  reason: default package */
/* compiled from: ActionProvider */
public abstract class ao {
    public a a;
    private final Context b;
    private b c;

    /* renamed from: ao$a */
    /* compiled from: ActionProvider */
    public interface a {
        void a(boolean z);
    }

    /* renamed from: ao$b */
    /* compiled from: ActionProvider */
    public interface b {
        void a();
    }

    public ao(Context context) {
        this.b = context;
    }

    public abstract View a();

    public View a(MenuItem menuItem) {
        return a();
    }

    public void a(SubMenu subMenu) {
    }

    public void a(b bVar) {
        if (!(this.c == null || bVar == null)) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.c = bVar;
    }

    public final void a(boolean z) {
        if (this.a != null) {
            this.a.a(z);
        }
    }

    public boolean b() {
        return false;
    }

    public boolean c() {
        return true;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return false;
    }
}
