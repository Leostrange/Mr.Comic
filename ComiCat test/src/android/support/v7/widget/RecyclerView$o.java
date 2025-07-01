// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static abstract class a
{
    public static final class a
    {

        int a;
        private int b;
        private int c;
        private int d;
        private Interpolator e;
        private boolean f;
        private int g;

        static void a(a a1, RecyclerView recyclerview)
        {
            if (a1.a >= 0)
            {
                int i = a1.a;
                a1.a = -1;
                RecyclerView.c(recyclerview, i);
                a1.f = false;
                return;
            }
            if (a1.f)
            {
                if (a1.e != null && a1.d <= 0)
                {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (a1.d <= 0)
                {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
                if (a1.e == null)
                {
                    if (a1.d == 0x80000000)
                    {
                        RecyclerView.q(recyclerview).a(a1.b, a1.c);
                    } else
                    {
                        RecyclerView.q(recyclerview).a(a1.b, a1.c, a1.d);
                    }
                } else
                {
                    RecyclerView.q(recyclerview).a(a1.b, a1.c, a1.d, a1.e);
                }
                a1.g = a1.g + 1;
                if (a1.g > 10)
                {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                a1.f = false;
                return;
            } else
            {
                a1.g = 0;
                return;
            }
        }
    }


    int a;
    boolean b;
    boolean c;
    View d;
    private RecyclerView e;
    private e f;
    private final a g;

    static void a(a.g g1)
    {
label0:
        {
            boolean flag = false;
            RecyclerView recyclerview = g1.e;
            if (!g1.c || g1.a == -1 || recyclerview == null)
            {
                g1.a();
            }
            g1.b = false;
            if (g1.d != null)
            {
                if (RecyclerView.c(g1.d) == g1.a)
                {
                    a a1 = recyclerview.n;
                    a.a(g1.g, recyclerview);
                    g1.a();
                } else
                {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    g1.d = null;
                }
            }
            if (g1.c)
            {
                a a2 = recyclerview.n;
                if (g1.g.a >= 0)
                {
                    flag = true;
                }
                a.a(g1.g, recyclerview);
                if (flag)
                {
                    if (!g1.c)
                    {
                        break label0;
                    }
                    g1.b = true;
                    RecyclerView.q(recyclerview).a();
                }
            }
            return;
        }
        g1.a();
    }

    protected final void a()
    {
        if (!c)
        {
            return;
        } else
        {
            e.n.a = -1;
            d = null;
            a = -1;
            b = false;
            c = false;
            a(f, this);
            f = null;
            e = null;
            return;
        }
    }
}
