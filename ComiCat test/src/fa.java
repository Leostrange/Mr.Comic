// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class fa extends android.support.v7.widget.RecyclerView.e
{
    static final class a
    {

        public android.support.v7.widget.RecyclerView.s a;
        public android.support.v7.widget.RecyclerView.s b;
        public int c;
        public int d;
        public int e;
        public int f;

        public final String toString()
        {
            return (new StringBuilder("ChangeInfo{oldHolder=")).append(a).append(", newHolder=").append(b).append(", fromX=").append(c).append(", fromY=").append(d).append(", toX=").append(e).append(", toY=").append(f).append('}').toString();
        }

        private a(android.support.v7.widget.RecyclerView.s s, android.support.v7.widget.RecyclerView.s s1)
        {
            a = s;
            b = s1;
        }

        private a(android.support.v7.widget.RecyclerView.s s, android.support.v7.widget.RecyclerView.s s1, int i, int j, int k, int l)
        {
            this(s, s1);
            c = i;
            d = j;
            e = k;
            f = l;
        }

        a(android.support.v7.widget.RecyclerView.s s, android.support.v7.widget.RecyclerView.s s1, int i, int j, int k, int l, byte byte0)
        {
            this(s, s1, i, j, k, l);
        }
    }

    static final class b
    {

        public android.support.v7.widget.RecyclerView.s a;
        public int b;
        public int c;
        public int d;
        public int e;

        private b(android.support.v7.widget.RecyclerView.s s, int i, int j, int k, int l)
        {
            a = s;
            b = i;
            c = j;
            d = k;
            e = l;
        }

        b(android.support.v7.widget.RecyclerView.s s, int i, int j, int k, int l, byte byte0)
        {
            this(s, i, j, k, l);
        }
    }

    static class c
        implements bt
    {

        public void onAnimationCancel(View view)
        {
        }

        public void onAnimationEnd(View view)
        {
        }

        public void onAnimationStart(View view)
        {
        }

        private c()
        {
        }

        c(byte byte0)
        {
            this();
        }
    }


    ArrayList a;
    ArrayList b;
    ArrayList c;
    ArrayList d;
    ArrayList e;
    ArrayList f;
    ArrayList g;
    private ArrayList n;
    private ArrayList o;
    private ArrayList p;
    private ArrayList q;

    public fa()
    {
        n = new ArrayList();
        o = new ArrayList();
        p = new ArrayList();
        q = new ArrayList();
        a = new ArrayList();
        b = new ArrayList();
        c = new ArrayList();
        d = new ArrayList();
        e = new ArrayList();
        f = new ArrayList();
        g = new ArrayList();
    }

    private void a(a a1)
    {
        if (a1.a != null)
        {
            a(a1, a1.a);
        }
        if (a1.b != null)
        {
            a(a1, a1.b);
        }
    }

    private static void a(List list)
    {
        for (int i = list.size() - 1; i >= 0; i--)
        {
            bh.s(((android.support.v7.widget.RecyclerView.s)list.get(i)).a).a();
        }

    }

    private void a(List list, android.support.v7.widget.RecyclerView.s s)
    {
        for (int i = list.size() - 1; i >= 0; i--)
        {
            a a1 = (a)list.get(i);
            if (a(a1, s) && a1.a == null && a1.b == null)
            {
                list.remove(a1);
            }
        }

    }

    private boolean a(a a1, android.support.v7.widget.RecyclerView.s s)
    {
        if (a1.b == s)
        {
            a1.b = null;
        } else
        if (a1.a == s)
        {
            a1.a = null;
        } else
        {
            return false;
        }
        bh.c(s.a, 1.0F);
        bh.a(s.a, 0.0F);
        bh.b(s.a, 0.0F);
        g(s);
        return true;
    }

    public final void a()
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (!n.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!p.isEmpty())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!q.isEmpty())
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (!o.isEmpty())
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (flag || flag1 || flag3 || flag2)
        {
            android.support.v7.widget.RecyclerView.s s;
            bp bp1;
            for (Iterator iterator = n.iterator(); iterator.hasNext(); bp1.a(super.j).a(0.0F).a(new c(s, bp1) {

        final android.support.v7.widget.RecyclerView.s a;
        final bp b;
        final fa c;

        public final void onAnimationEnd(View view)
        {
            b.a(null);
            bh.c(view, 1.0F);
            c.d(a);
            c.f.remove(a);
            c.c();
        }

        public final void onAnimationStart(View view)
        {
        }

            
            {
                c = fa.this;
                a = s;
                b = bp1;
                super((byte)0);
            }
    }).b())
            {
                s = (android.support.v7.widget.RecyclerView.s)iterator.next();
                bp1 = bh.s(s.a);
                f.add(s);
            }

            n.clear();
            Runnable runnable;
            if (flag1)
            {
                ArrayList arraylist = new ArrayList();
                arraylist.addAll(p);
                b.add(arraylist);
                p.clear();
                runnable = new Runnable(arraylist) {

                    final ArrayList a;
                    final fa b;

                    public final void run()
                    {
                        fa fa1;
                        android.support.v7.widget.RecyclerView.s s1;
                        Object obj;
                        int i;
                        int k;
                        for (Iterator iterator1 = a.iterator(); iterator1.hasNext(); ((bp) (obj)).a(((android.support.v7.widget.RecyclerView.e) (fa1)).k).a(fa1. new c(s1, k, i, ((bp) (obj))) {

                    final android.support.v7.widget.RecyclerView.s a;
                    final int b;
                    final int c;
                    final bp d;
                    final fa e;

                    public final void onAnimationCancel(View view)
                    {
                        if (b != 0)
                        {
                            bh.a(view, 0.0F);
                        }
                        if (c != 0)
                        {
                            bh.b(view, 0.0F);
                        }
                    }

                    public final void onAnimationEnd(View view)
                    {
                        d.a(null);
                        e.e(a);
                        e.e.remove(a);
                        e.c();
                    }

                    public final void onAnimationStart(View view)
                    {
                    }

            
            {
                e = fa.this;
                a = s;
                b = i;
                c = j;
                d = bp1;
                super((byte)0);
            }
                }).b())
                        {
                            obj = (b)iterator1.next();
                            fa1 = b;
                            s1 = ((b) (obj)).a;
                            k = ((b) (obj)).b;
                            i = ((b) (obj)).c;
                            int i1 = ((b) (obj)).d;
                            int j = ((b) (obj)).e;
                            obj = s1.a;
                            k = i1 - k;
                            i = j - i;
                            if (k != 0)
                            {
                                bh.s(((View) (obj))).b(0.0F);
                            }
                            if (i != 0)
                            {
                                bh.s(((View) (obj))).c(0.0F);
                            }
                            obj = bh.s(((View) (obj)));
                            fa1.e.add(s1);
                        }

                        a.clear();
                        b.b.remove(a);
                    }

            
            {
                b = fa.this;
                a = arraylist;
                super();
            }
                };
                if (flag)
                {
                    bh.a(((b)arraylist.get(0)).a.a, runnable, super.j);
                } else
                {
                    runnable.run();
                }
            }
            if (flag2)
            {
                arraylist = new ArrayList();
                arraylist.addAll(q);
                c.add(arraylist);
                q.clear();
                runnable = new Runnable(arraylist) {

                    final ArrayList a;
                    final fa b;

                    public final void run()
                    {
                        Iterator iterator1 = a.iterator();
                        do
                        {
                            if (!iterator1.hasNext())
                            {
                                break;
                            }
                            a a1 = (a)iterator1.next();
                            fa fa1 = b;
                            Object obj = a1.a;
                            Object obj1;
                            if (obj == null)
                            {
                                obj = null;
                            } else
                            {
                                obj = ((android.support.v7.widget.RecyclerView.s) (obj)).a;
                            }
                            obj1 = a1.b;
                            if (obj1 != null)
                            {
                                obj1 = ((android.support.v7.widget.RecyclerView.s) (obj1)).a;
                            } else
                            {
                                obj1 = null;
                            }
                            if (obj != null)
                            {
                                obj = bh.s(((View) (obj))).a(((android.support.v7.widget.RecyclerView.e) (fa1)).l);
                                fa1.g.add(a1.a);
                                ((bp) (obj)).b(a1.e - a1.c);
                                ((bp) (obj)).c(a1.f - a1.d);
                                ((bp) (obj)).a(0.0F).a(fa1. new c(a1, ((bp) (obj))) {

                                    final a a;
                                    final bp b;
                                    final fa c;

                                    public final void onAnimationEnd(View view)
                                    {
                                        b.a(null);
                                        bh.c(view, 1.0F);
                                        bh.a(view, 0.0F);
                                        bh.b(view, 0.0F);
                                        c.g(a.a);
                                        c.g.remove(a.a);
                                        c.c();
                                    }

                                    public final void onAnimationStart(View view)
                                    {
                                    }

            
            {
                c = fa.this;
                a = a1;
                b = bp1;
                super((byte)0);
            }
                                }).b();
                            }
                            if (obj1 != null)
                            {
                                obj = bh.s(((View) (obj1)));
                                fa1.g.add(a1.b);
                                ((bp) (obj)).b(0.0F).c(0.0F).a(((android.support.v7.widget.RecyclerView.e) (fa1)).l).a(1.0F).a(fa1. new c(a1, ((bp) (obj)), ((View) (obj1))) {

                                    final a a;
                                    final bp b;
                                    final View c;
                                    final fa d;

                                    public final void onAnimationEnd(View view)
                                    {
                                        b.a(null);
                                        bh.c(c, 1.0F);
                                        bh.a(c, 0.0F);
                                        bh.b(c, 0.0F);
                                        d.g(a.b);
                                        d.g.remove(a.b);
                                        d.c();
                                    }

                                    public final void onAnimationStart(View view)
                                    {
                                    }

            
            {
                d = fa.this;
                a = a1;
                b = bp1;
                c = view;
                super((byte)0);
            }
                                }).b();
                            }
                        } while (true);
                        a.clear();
                        b.c.remove(a);
                    }

            
            {
                b = fa.this;
                a = arraylist;
                super();
            }
                };
                if (flag)
                {
                    bh.a(((a)arraylist.get(0)).a.a, runnable, super.j);
                } else
                {
                    runnable.run();
                }
            }
            if (flag3)
            {
                arraylist = new ArrayList();
                arraylist.addAll(o);
                a.add(arraylist);
                o.clear();
                runnable = new Runnable(arraylist) {

                    final ArrayList a;
                    final fa b;

                    public final void run()
                    {
                        android.support.v7.widget.RecyclerView.s s1;
                        fa fa1;
                        bp bp2;
                        for (Iterator iterator1 = a.iterator(); iterator1.hasNext(); bp2.a(1.0F).a(((android.support.v7.widget.RecyclerView.e) (fa1)).i).a(fa1. new c(s1, bp2) {

                    final android.support.v7.widget.RecyclerView.s a;
                    final bp b;
                    final fa c;

                    public final void onAnimationCancel(View view)
                    {
                        bh.c(view, 1.0F);
                    }

                    public final void onAnimationEnd(View view)
                    {
                        b.a(null);
                        c.f(a);
                        c.d.remove(a);
                        c.c();
                    }

                    public final void onAnimationStart(View view)
                    {
                    }

            
            {
                c = fa.this;
                a = s;
                b = bp1;
                super((byte)0);
            }
                }).b())
                        {
                            s1 = (android.support.v7.widget.RecyclerView.s)iterator1.next();
                            fa1 = b;
                            bp2 = bh.s(s1.a);
                            fa1.d.add(s1);
                        }

                        a.clear();
                        b.a.remove(a);
                    }

            
            {
                b = fa.this;
                a = arraylist;
                super();
            }
                };
                if (flag || flag1 || flag2)
                {
                    long l;
                    long l1;
                    long l2;
                    if (flag)
                    {
                        l = super.j;
                    } else
                    {
                        l = 0L;
                    }
                    if (flag1)
                    {
                        l1 = super.k;
                    } else
                    {
                        l1 = 0L;
                    }
                    if (flag2)
                    {
                        l2 = super.l;
                    } else
                    {
                        l2 = 0L;
                    }
                    l1 = Math.max(l1, l2);
                    bh.a(((android.support.v7.widget.RecyclerView.s)arraylist.get(0)).a, runnable, l + l1);
                    return;
                } else
                {
                    runnable.run();
                    return;
                }
            }
        }
    }

    public final boolean a(android.support.v7.widget.RecyclerView.s s)
    {
        c(s);
        n.add(s);
        return true;
    }

    public final boolean a(android.support.v7.widget.RecyclerView.s s, int i, int j, int k, int l)
    {
        View view = s.a;
        i = (int)((float)i + bh.o(s.a));
        j = (int)((float)j + bh.p(s.a));
        c(s);
        int i1 = k - i;
        int j1 = l - j;
        if (i1 == 0 && j1 == 0)
        {
            e(s);
            return false;
        }
        if (i1 != 0)
        {
            bh.a(view, -i1);
        }
        if (j1 != 0)
        {
            bh.b(view, -j1);
        }
        p.add(new b(s, i, j, k, l, (byte)0));
        return true;
    }

    public final boolean a(android.support.v7.widget.RecyclerView.s s, android.support.v7.widget.RecyclerView.s s1, int i, int j, int k, int l)
    {
        float f1 = bh.o(s.a);
        float f2 = bh.p(s.a);
        float f3 = bh.f(s.a);
        c(s);
        int i1 = (int)((float)(k - i) - f1);
        int j1 = (int)((float)(l - j) - f2);
        bh.a(s.a, f1);
        bh.b(s.a, f2);
        bh.c(s.a, f3);
        if (s1 != null && s1.a != null)
        {
            c(s1);
            bh.a(s1.a, -i1);
            bh.b(s1.a, -j1);
            bh.c(s1.a, 0.0F);
        }
        q.add(new a(s, s1, i, j, k, l, (byte)0));
        return true;
    }

    public final boolean b()
    {
        return !o.isEmpty() || !q.isEmpty() || !p.isEmpty() || !n.isEmpty() || !e.isEmpty() || !f.isEmpty() || !d.isEmpty() || !g.isEmpty() || !b.isEmpty() || !a.isEmpty() || !c.isEmpty();
    }

    public final boolean b(android.support.v7.widget.RecyclerView.s s)
    {
        c(s);
        bh.c(s.a, 0.0F);
        o.add(s);
        return true;
    }

    final void c()
    {
        if (!b())
        {
            e();
        }
    }

    public final void c(android.support.v7.widget.RecyclerView.s s)
    {
        View view = s.a;
        bh.s(view).a();
        for (int i = p.size() - 1; i >= 0; i--)
        {
            if (((b)p.get(i)).a == s)
            {
                bh.b(view, 0.0F);
                bh.a(view, 0.0F);
                e(s);
                p.remove(i);
            }
        }

        a(q, s);
        if (n.remove(s))
        {
            bh.c(view, 1.0F);
            d(s);
        }
        if (o.remove(s))
        {
            bh.c(view, 1.0F);
            f(s);
        }
        for (int j = c.size() - 1; j >= 0; j--)
        {
            ArrayList arraylist = (ArrayList)c.get(j);
            a(arraylist, s);
            if (arraylist.isEmpty())
            {
                c.remove(j);
            }
        }

        int k = b.size() - 1;
label0:
        do
        {
            if (k >= 0)
            {
                ArrayList arraylist1 = (ArrayList)b.get(k);
                int i1 = arraylist1.size() - 1;
                do
                {
label1:
                    {
                        if (i1 >= 0)
                        {
                            if (((b)arraylist1.get(i1)).a != s)
                            {
                                break label1;
                            }
                            bh.b(view, 0.0F);
                            bh.a(view, 0.0F);
                            e(s);
                            arraylist1.remove(i1);
                            if (arraylist1.isEmpty())
                            {
                                b.remove(k);
                            }
                        }
                        k--;
                        continue label0;
                    }
                    i1--;
                } while (true);
            }
            for (int l = a.size() - 1; l >= 0; l--)
            {
                ArrayList arraylist2 = (ArrayList)a.get(l);
                if (!arraylist2.remove(s))
                {
                    continue;
                }
                bh.c(view, 1.0F);
                f(s);
                if (arraylist2.isEmpty())
                {
                    a.remove(l);
                }
            }

            f.remove(s);
            d.remove(s);
            g.remove(s);
            e.remove(s);
            c();
            return;
        } while (true);
    }

    public final void d()
    {
        for (int i = p.size() - 1; i >= 0; i--)
        {
            b b1 = (b)p.get(i);
            View view = b1.a.a;
            bh.b(view, 0.0F);
            bh.a(view, 0.0F);
            e(b1.a);
            p.remove(i);
        }

        for (int j = n.size() - 1; j >= 0; j--)
        {
            d((android.support.v7.widget.RecyclerView.s)n.get(j));
            n.remove(j);
        }

        for (int k = o.size() - 1; k >= 0; k--)
        {
            android.support.v7.widget.RecyclerView.s s = (android.support.v7.widget.RecyclerView.s)o.get(k);
            bh.c(s.a, 1.0F);
            f(s);
            o.remove(k);
        }

        for (int l = q.size() - 1; l >= 0; l--)
        {
            a((a)q.get(l));
        }

        q.clear();
        if (!b())
        {
            return;
        }
        for (int i1 = b.size() - 1; i1 >= 0; i1--)
        {
            ArrayList arraylist = (ArrayList)b.get(i1);
            for (int l1 = arraylist.size() - 1; l1 >= 0; l1--)
            {
                b b2 = (b)arraylist.get(l1);
                View view1 = b2.a.a;
                bh.b(view1, 0.0F);
                bh.a(view1, 0.0F);
                e(b2.a);
                arraylist.remove(l1);
                if (arraylist.isEmpty())
                {
                    b.remove(arraylist);
                }
            }

        }

        for (int j1 = a.size() - 1; j1 >= 0; j1--)
        {
            ArrayList arraylist1 = (ArrayList)a.get(j1);
            for (int i2 = arraylist1.size() - 1; i2 >= 0; i2--)
            {
                android.support.v7.widget.RecyclerView.s s1 = (android.support.v7.widget.RecyclerView.s)arraylist1.get(i2);
                bh.c(s1.a, 1.0F);
                f(s1);
                arraylist1.remove(i2);
                if (arraylist1.isEmpty())
                {
                    a.remove(arraylist1);
                }
            }

        }

        for (int k1 = c.size() - 1; k1 >= 0; k1--)
        {
            ArrayList arraylist2 = (ArrayList)c.get(k1);
            for (int j2 = arraylist2.size() - 1; j2 >= 0; j2--)
            {
                a((a)arraylist2.get(j2));
                if (arraylist2.isEmpty())
                {
                    c.remove(arraylist2);
                }
            }

        }

        a(f);
        a(e);
        a(d);
        a(g);
        e();
    }
}
