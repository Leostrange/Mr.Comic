// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

public abstract class fd
{

    protected final android.support.v7.widget.RecyclerView.h a;
    public int b;

    private fd(android.support.v7.widget.RecyclerView.h h)
    {
        b = 0x80000000;
        a = h;
    }

    fd(android.support.v7.widget.RecyclerView.h h, byte byte0)
    {
        this(h);
    }

    public static fd a(android.support.v7.widget.RecyclerView.h h, int i)
    {
        switch (i)
        {
        default:
            throw new IllegalArgumentException("invalid orientation");

        case 0: // '\0'
            return new fd(h) {

                public final int a(View view)
                {
                    android.support.v7.widget.RecyclerView.LayoutParams layoutparams = (android.support.v7.widget.RecyclerView.LayoutParams)view.getLayoutParams();
                    return view.getLeft() - android.support.v7.widget.RecyclerView.h.f(view) - layoutparams.leftMargin;
                }

                public final void a(int j)
                {
                    a.d(j);
                }

                public final int b()
                {
                    return a.n();
                }

                public final int b(View view)
                {
                    android.support.v7.widget.RecyclerView.LayoutParams layoutparams = (android.support.v7.widget.RecyclerView.LayoutParams)view.getLayoutParams();
                    int j = view.getRight();
                    int k = android.support.v7.widget.RecyclerView.h.g(view);
                    return layoutparams.rightMargin + (j + k);
                }

                public final int c()
                {
                    return a.l() - a.p();
                }

                public final int c(View view)
                {
                    android.support.v7.widget.RecyclerView.LayoutParams layoutparams = (android.support.v7.widget.RecyclerView.LayoutParams)view.getLayoutParams();
                    int j = android.support.v7.widget.RecyclerView.h.b(view);
                    int k = layoutparams.leftMargin;
                    return layoutparams.rightMargin + (j + k);
                }

                public final int d()
                {
                    return a.l();
                }

                public final int d(View view)
                {
                    android.support.v7.widget.RecyclerView.LayoutParams layoutparams = (android.support.v7.widget.RecyclerView.LayoutParams)view.getLayoutParams();
                    int j = android.support.v7.widget.RecyclerView.h.c(view);
                    int k = layoutparams.topMargin;
                    return layoutparams.bottomMargin + (j + k);
                }

                public final int e()
                {
                    return a.l() - a.n() - a.p();
                }

                public final int f()
                {
                    return a.p();
                }

            };

        case 1: // '\001'
            return new fd(h) {

                public final int a(View view)
                {
                    android.support.v7.widget.RecyclerView.LayoutParams layoutparams = (android.support.v7.widget.RecyclerView.LayoutParams)view.getLayoutParams();
                    return view.getTop() - android.support.v7.widget.RecyclerView.h.d(view) - layoutparams.topMargin;
                }

                public final void a(int j)
                {
                    a.e(j);
                }

                public final int b()
                {
                    return a.o();
                }

                public final int b(View view)
                {
                    android.support.v7.widget.RecyclerView.LayoutParams layoutparams = (android.support.v7.widget.RecyclerView.LayoutParams)view.getLayoutParams();
                    int j = view.getBottom();
                    int k = android.support.v7.widget.RecyclerView.h.e(view);
                    return layoutparams.bottomMargin + (j + k);
                }

                public final int c()
                {
                    return a.m() - a.q();
                }

                public final int c(View view)
                {
                    android.support.v7.widget.RecyclerView.LayoutParams layoutparams = (android.support.v7.widget.RecyclerView.LayoutParams)view.getLayoutParams();
                    int j = android.support.v7.widget.RecyclerView.h.c(view);
                    int k = layoutparams.topMargin;
                    return layoutparams.bottomMargin + (j + k);
                }

                public final int d()
                {
                    return a.m();
                }

                public final int d(View view)
                {
                    android.support.v7.widget.RecyclerView.LayoutParams layoutparams = (android.support.v7.widget.RecyclerView.LayoutParams)view.getLayoutParams();
                    int j = android.support.v7.widget.RecyclerView.h.b(view);
                    int k = layoutparams.leftMargin;
                    return layoutparams.rightMargin + (j + k);
                }

                public final int e()
                {
                    return a.m() - a.o() - a.q();
                }

                public final int f()
                {
                    return a.q();
                }

            };
        }
    }

    public final int a()
    {
        if (0x80000000 == b)
        {
            return 0;
        } else
        {
            return e() - b;
        }
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
