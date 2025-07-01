// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;

public final class ff
{

    public static int a(android.support.v7.widget.RecyclerView.p p, fd fd1, View view, View view1, android.support.v7.widget.RecyclerView.h h, boolean flag)
    {
        if (h.k() == 0 || p.a() == 0 || view == null || view1 == null)
        {
            return 0;
        }
        if (!flag)
        {
            return Math.abs(android.support.v7.widget.RecyclerView.h.a(view) - android.support.v7.widget.RecyclerView.h.a(view1)) + 1;
        } else
        {
            int i = fd1.b(view1);
            int j = fd1.a(view);
            return Math.min(fd1.e(), i - j);
        }
    }

    public static int a(android.support.v7.widget.RecyclerView.p p, fd fd1, View view, View view1, android.support.v7.widget.RecyclerView.h h, boolean flag, boolean flag1)
    {
        boolean flag2 = false;
        int j = ((flag2) ? 1 : 0);
        if (h.k() != 0)
        {
            j = ((flag2) ? 1 : 0);
            if (p.a() != 0)
            {
                j = ((flag2) ? 1 : 0);
                if (view != null)
                {
                    if (view1 == null)
                    {
                        j = ((flag2) ? 1 : 0);
                    } else
                    {
                        int i = Math.min(android.support.v7.widget.RecyclerView.h.a(view), android.support.v7.widget.RecyclerView.h.a(view1));
                        j = Math.max(android.support.v7.widget.RecyclerView.h.a(view), android.support.v7.widget.RecyclerView.h.a(view1));
                        if (flag1)
                        {
                            i = Math.max(0, p.a() - j - 1);
                        } else
                        {
                            i = Math.max(0, i);
                        }
                        j = i;
                        if (flag)
                        {
                            int k = Math.abs(fd1.b(view1) - fd1.a(view));
                            int l = Math.abs(android.support.v7.widget.RecyclerView.h.a(view) - android.support.v7.widget.RecyclerView.h.a(view1));
                            float f = (float)k / (float)(l + 1);
                            return Math.round((float)i * f + (float)(fd1.b() - fd1.a(view)));
                        }
                    }
                }
            }
        }
        return j;
    }

    public static int b(android.support.v7.widget.RecyclerView.p p, fd fd1, View view, View view1, android.support.v7.widget.RecyclerView.h h, boolean flag)
    {
        if (h.k() == 0 || p.a() == 0 || view == null || view1 == null)
        {
            return 0;
        }
        if (!flag)
        {
            return p.a();
        } else
        {
            int i = fd1.b(view1);
            int j = fd1.a(view);
            int k = Math.abs(android.support.v7.widget.RecyclerView.h.a(view) - android.support.v7.widget.RecyclerView.h.a(view1));
            return (int)(((float)(i - j) / (float)(k + 1)) * (float)p.a());
        }
    }
}
