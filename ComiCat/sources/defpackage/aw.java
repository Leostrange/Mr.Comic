package defpackage;

import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

/* renamed from: aw  reason: default package */
/* compiled from: MenuItemCompat */
public final class aw {
    static final d a;

    /* renamed from: aw$a */
    /* compiled from: MenuItemCompat */
    static class a implements d {
        a() {
        }

        public final MenuItem a(MenuItem menuItem, View view) {
            return menuItem;
        }

        public final View a(MenuItem menuItem) {
            return null;
        }

        public final void a(MenuItem menuItem, int i) {
        }

        public final MenuItem b(MenuItem menuItem, int i) {
            return menuItem;
        }

        public final boolean b(MenuItem menuItem) {
            return false;
        }

        public final boolean c(MenuItem menuItem) {
            return false;
        }
    }

    /* renamed from: aw$b */
    /* compiled from: MenuItemCompat */
    static class b implements d {
        b() {
        }

        public final MenuItem a(MenuItem menuItem, View view) {
            return menuItem.setActionView(view);
        }

        public final View a(MenuItem menuItem) {
            return menuItem.getActionView();
        }

        public final void a(MenuItem menuItem, int i) {
            menuItem.setShowAsAction(i);
        }

        public final MenuItem b(MenuItem menuItem, int i) {
            return menuItem.setActionView(i);
        }

        public boolean b(MenuItem menuItem) {
            return false;
        }

        public boolean c(MenuItem menuItem) {
            return false;
        }
    }

    /* renamed from: aw$c */
    /* compiled from: MenuItemCompat */
    static class c extends b {
        c() {
        }

        public final boolean b(MenuItem menuItem) {
            return menuItem.expandActionView();
        }

        public final boolean c(MenuItem menuItem) {
            return menuItem.isActionViewExpanded();
        }
    }

    /* renamed from: aw$d */
    /* compiled from: MenuItemCompat */
    interface d {
        MenuItem a(MenuItem menuItem, View view);

        View a(MenuItem menuItem);

        void a(MenuItem menuItem, int i);

        MenuItem b(MenuItem menuItem, int i);

        boolean b(MenuItem menuItem);

        boolean c(MenuItem menuItem);
    }

    /* renamed from: aw$e */
    /* compiled from: MenuItemCompat */
    public interface e {
        boolean a(MenuItem menuItem);

        boolean b(MenuItem menuItem);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 14) {
            a = new c();
        } else if (i >= 11) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static MenuItem a(MenuItem menuItem, View view) {
        return menuItem instanceof q ? ((q) menuItem).setActionView(view) : a.a(menuItem, view);
    }

    public static MenuItem a(MenuItem menuItem, ao aoVar) {
        if (menuItem instanceof q) {
            return ((q) menuItem).a(aoVar);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static View a(MenuItem menuItem) {
        return menuItem instanceof q ? ((q) menuItem).getActionView() : a.a(menuItem);
    }

    public static void a(MenuItem menuItem, int i) {
        if (menuItem instanceof q) {
            ((q) menuItem).setShowAsAction(i);
        } else {
            a.a(menuItem, i);
        }
    }

    public static MenuItem b(MenuItem menuItem, int i) {
        return menuItem instanceof q ? ((q) menuItem).setActionView(i) : a.b(menuItem, i);
    }

    public static boolean b(MenuItem menuItem) {
        return menuItem instanceof q ? ((q) menuItem).expandActionView() : a.b(menuItem);
    }

    public static boolean c(MenuItem menuItem) {
        return menuItem instanceof q ? ((q) menuItem).isActionViewExpanded() : a.c(menuItem);
    }
}
