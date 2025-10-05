package defpackage;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* renamed from: ew  reason: default package */
/* compiled from: ActionMode */
public abstract class ew {
    public Object b;
    public boolean c;

    /* renamed from: ew$a */
    /* compiled from: ActionMode */
    public interface a {
        boolean onActionItemClicked(ew ewVar, MenuItem menuItem);

        boolean onCreateActionMode(ew ewVar, Menu menu);

        void onDestroyActionMode(ew ewVar);

        boolean onPrepareActionMode(ew ewVar, Menu menu);
    }

    public abstract MenuInflater a();

    public abstract void a(int i);

    public abstract void a(View view);

    public abstract void a(CharSequence charSequence);

    public void a(boolean z) {
        this.c = z;
    }

    public abstract Menu b();

    public abstract void b(int i);

    public abstract void b(CharSequence charSequence);

    public abstract void c();

    public abstract void d();

    public abstract CharSequence f();

    public abstract CharSequence g();

    public boolean h() {
        return false;
    }

    public abstract View i();
}
