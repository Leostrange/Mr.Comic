// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static abstract class m
{
    static interface a
    {

        public abstract void a(RecyclerView.s s);

        public abstract void b(RecyclerView.s s);

        public abstract void c(RecyclerView.s s);

        public abstract void d(RecyclerView.s s);
    }


    private ArrayList a;
    a h;
    public long i;
    protected long j;
    public long k;
    public long l;
    boolean m;

    public abstract void a();

    public abstract boolean a(a a1);

    public abstract boolean a(a a1, int i1, int j1, int k1, int l1);

    public abstract boolean a(a a1, a a2, int i1, int j1, int k1, int l1);

    public abstract boolean b();

    public abstract boolean b(a a1);

    public abstract void c(a a1);

    public abstract void d();

    public final void d(a a1)
    {
        if (h != null)
        {
            h.a(a1);
        }
    }

    public final void e()
    {
        int j1 = a.size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            a.get(i1);
        }

        a.clear();
    }

    public final void e(a a1)
    {
        if (h != null)
        {
            h.c(a1);
        }
    }

    public final void f(a.c c1)
    {
        if (h != null)
        {
            h.b(c1);
        }
    }

    public final void g(a.b b1)
    {
        if (h != null)
        {
            h.d(b1);
        }
    }

    public a()
    {
        h = null;
        a = new ArrayList();
        i = 120L;
        j = 120L;
        k = 250L;
        l = 250L;
        m = true;
    }
}
