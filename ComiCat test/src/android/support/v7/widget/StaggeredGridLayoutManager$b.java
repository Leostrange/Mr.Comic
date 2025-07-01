// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;
import fd;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            StaggeredGridLayoutManager

final class zySpanLookup.FullSpanItem
{

    ArrayList a;
    int b;
    int c;
    int d;
    final int e;
    final StaggeredGridLayoutManager f;

    private void f()
    {
        View view = (View)a.get(0);
        youtParams youtparams = (youtParams)view.getLayoutParams();
        b = f.a.a(view);
        if (youtparams.b)
        {
            zySpanLookup.FullSpanItem fullspanitem = f.f.d(((zySpanLookup.d) (youtparams)).d.d());
            if (fullspanitem != null && fullspanitem.b == -1)
            {
                b = b - fullspanitem.a(e);
            }
        }
    }

    private void g()
    {
        View view = (View)a.get(a.size() - 1);
        youtParams youtparams = (youtParams)view.getLayoutParams();
        c = f.a.b(view);
        if (youtparams.b)
        {
            zySpanLookup.FullSpanItem fullspanitem = f.f.d(((zySpanLookup.d) (youtparams)).d.d());
            if (fullspanitem != null && fullspanitem.b == 1)
            {
                int i = c;
                c = fullspanitem.a(e) + i;
            }
        }
    }

    final int a()
    {
        if (b != 0x80000000)
        {
            return b;
        } else
        {
            f();
            return b;
        }
    }

    final int a(int i)
    {
        if (b != 0x80000000)
        {
            i = b;
        } else
        if (a.size() != 0)
        {
            f();
            return b;
        }
        return i;
    }

    final void a(View view)
    {
        youtParams youtparams = (youtParams)view.getLayoutParams();
        youtparams.a = this;
        a.add(0, view);
        b = 0x80000000;
        if (a.size() == 1)
        {
            c = 0x80000000;
        }
        if (((c) (youtparams)).c.c() || ((c) (youtparams)).c.c())
        {
            d = d + f.a.c(view);
        }
    }

    final int b()
    {
        if (c != 0x80000000)
        {
            return c;
        } else
        {
            g();
            return c;
        }
    }

    final int b(int i)
    {
        if (c != 0x80000000)
        {
            i = c;
        } else
        if (a.size() != 0)
        {
            g();
            return c;
        }
        return i;
    }

    final void b(View view)
    {
        youtParams youtparams = (youtParams)view.getLayoutParams();
        youtparams.a = this;
        a.add(view);
        c = 0x80000000;
        if (a.size() == 1)
        {
            b = 0x80000000;
        }
        if (((b) (youtparams)).b.b() || ((b) (youtparams)).b.b())
        {
            d = d + f.a.c(view);
        }
    }

    final void c()
    {
        a.clear();
        b = 0x80000000;
        c = 0x80000000;
        d = 0;
    }

    final void c(int i)
    {
        b = i;
        c = i;
    }

    final void d()
    {
        int i = a.size();
        View view = (View)a.remove(i - 1);
        youtParams youtparams = (youtParams)view.getLayoutParams();
        youtparams.a = null;
        if (((youtParams.a) (youtparams)).a.a() || ((youtParams.a) (youtparams)).a.a())
        {
            d = d - f.a.c(view);
        }
        if (i == 1)
        {
            b = 0x80000000;
        }
        c = 0x80000000;
    }

    final void d(int i)
    {
        if (b != 0x80000000)
        {
            b = b + i;
        }
        if (c != 0x80000000)
        {
            c = c + i;
        }
    }

    final void e()
    {
        View view = (View)a.remove(0);
        youtParams youtparams = (youtParams)view.getLayoutParams();
        youtparams.a = null;
        if (a.size() == 0)
        {
            c = 0x80000000;
        }
        if (((c) (youtparams)).c.c() || ((c) (youtparams)).c.c())
        {
            d = d - f.a.c(view);
        }
        b = 0x80000000;
    }
}
