package defpackage;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: dl  reason: default package */
/* compiled from: ViewPropertyAnimatorCompatSet */
public final class dl {
    final ArrayList<bp> a = new ArrayList<>();
    bt b;
    boolean c;
    private long d = -1;
    private Interpolator e;
    private final bu f = new bu() {
        private boolean b = false;
        private int c = 0;

        public final void onAnimationEnd(View view) {
            int i = this.c + 1;
            this.c = i;
            if (i == dl.this.a.size()) {
                if (dl.this.b != null) {
                    dl.this.b.onAnimationEnd((View) null);
                }
                this.c = 0;
                this.b = false;
                dl.this.c = false;
            }
        }

        public final void onAnimationStart(View view) {
            if (!this.b) {
                this.b = true;
                if (dl.this.b != null) {
                    dl.this.b.onAnimationStart((View) null);
                }
            }
        }
    };

    public final dl a(Interpolator interpolator) {
        if (!this.c) {
            this.e = interpolator;
        }
        return this;
    }

    public final dl a(bp bpVar) {
        if (!this.c) {
            this.a.add(bpVar);
        }
        return this;
    }

    public final dl a(bt btVar) {
        if (!this.c) {
            this.b = btVar;
        }
        return this;
    }

    public final void a() {
        if (!this.c) {
            Iterator<bp> it = this.a.iterator();
            while (it.hasNext()) {
                bp next = it.next();
                if (this.d >= 0) {
                    next.a(this.d);
                }
                if (this.e != null) {
                    next.a(this.e);
                }
                if (this.b != null) {
                    next.a((bt) this.f);
                }
                next.b();
            }
            this.c = true;
        }
    }

    public final void b() {
        if (this.c) {
            Iterator<bp> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.c = false;
        }
    }

    public final dl c() {
        if (!this.c) {
            this.d = 250;
        }
        return this;
    }
}
