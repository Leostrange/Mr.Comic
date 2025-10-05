package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;

/* renamed from: fd  reason: default package */
/* compiled from: OrientationHelper */
public abstract class fd {
    protected final RecyclerView.h a;
    public int b;

    private fd(RecyclerView.h hVar) {
        this.b = Integer.MIN_VALUE;
        this.a = hVar;
    }

    /* synthetic */ fd(RecyclerView.h hVar, byte b2) {
        this(hVar);
    }

    public static fd a(RecyclerView.h hVar, int i) {
        switch (i) {
            case 0:
                return new fd(hVar) {
                    public final int a(View view) {
                        return (view.getLeft() - RecyclerView.h.f(view)) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
                    }

                    public final void a(int i) {
                        this.a.d(i);
                    }

                    public final int b() {
                        return this.a.n();
                    }

                    public final int b(View view) {
                        return ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin + view.getRight() + RecyclerView.h.g(view);
                    }

                    public final int c() {
                        return this.a.l() - this.a.p();
                    }

                    public final int c(View view) {
                        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                        return layoutParams.rightMargin + RecyclerView.h.b(view) + layoutParams.leftMargin;
                    }

                    public final int d() {
                        return this.a.l();
                    }

                    public final int d(View view) {
                        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                        return layoutParams.bottomMargin + RecyclerView.h.c(view) + layoutParams.topMargin;
                    }

                    public final int e() {
                        return (this.a.l() - this.a.n()) - this.a.p();
                    }

                    public final int f() {
                        return this.a.p();
                    }
                };
            case 1:
                return new fd(hVar) {
                    public final int a(View view) {
                        return (view.getTop() - RecyclerView.h.d(view)) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
                    }

                    public final void a(int i) {
                        this.a.e(i);
                    }

                    public final int b() {
                        return this.a.o();
                    }

                    public final int b(View view) {
                        return ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin + view.getBottom() + RecyclerView.h.e(view);
                    }

                    public final int c() {
                        return this.a.m() - this.a.q();
                    }

                    public final int c(View view) {
                        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                        return layoutParams.bottomMargin + RecyclerView.h.c(view) + layoutParams.topMargin;
                    }

                    public final int d() {
                        return this.a.m();
                    }

                    public final int d(View view) {
                        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                        return layoutParams.rightMargin + RecyclerView.h.b(view) + layoutParams.leftMargin;
                    }

                    public final int e() {
                        return (this.a.m() - this.a.o()) - this.a.q();
                    }

                    public final int f() {
                        return this.a.q();
                    }
                };
            default:
                throw new IllegalArgumentException("invalid orientation");
        }
    }

    public final int a() {
        if (Integer.MIN_VALUE == this.b) {
            return 0;
        }
        return e() - this.b;
    }

    public abstract int a(View view);

    public abstract void a(int i);

    public abstract int b();

    public abstract int b(View view);

    public abstract int c();

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int f();
}
