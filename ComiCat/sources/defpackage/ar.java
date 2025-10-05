package defpackage;

import android.os.Build;
import android.view.LayoutInflater;
import defpackage.as;
import defpackage.at;

/* renamed from: ar  reason: default package */
/* compiled from: LayoutInflaterCompat */
public final class ar {
    static final a a;

    /* renamed from: ar$a */
    /* compiled from: LayoutInflaterCompat */
    interface a {
        void a(LayoutInflater layoutInflater, au auVar);
    }

    /* renamed from: ar$b */
    /* compiled from: LayoutInflaterCompat */
    static class b implements a {
        b() {
        }

        public void a(LayoutInflater layoutInflater, au auVar) {
            layoutInflater.setFactory(auVar != null ? new as.a(auVar) : null);
        }
    }

    /* renamed from: ar$c */
    /* compiled from: LayoutInflaterCompat */
    static class c extends b {
        c() {
        }

        public void a(LayoutInflater layoutInflater, au auVar) {
            at.a aVar = auVar != null ? new at.a(auVar) : null;
            layoutInflater.setFactory2(aVar);
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                at.a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                at.a(layoutInflater, aVar);
            }
        }
    }

    /* renamed from: ar$d */
    /* compiled from: LayoutInflaterCompat */
    static class d extends c {
        d() {
        }

        public final void a(LayoutInflater layoutInflater, au auVar) {
            layoutInflater.setFactory2(auVar != null ? new at.a(auVar) : null);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new d();
        } else if (i >= 11) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static void a(LayoutInflater layoutInflater, au auVar) {
        a.a(layoutInflater, auVar);
    }
}
