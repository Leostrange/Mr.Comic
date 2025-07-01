// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public final class aem
    implements aft
{

    public int a;
    public String b;
    public int c;
    public int d;
    public int e;
    public aet f;
    public int g;
    public int h;
    public long i;
    public String j;
    private String k;

    public aem()
    {
        a = -1;
        c = -1;
        d = 0;
        e = 0;
        g = 0;
        h = 0;
        i = 0L;
    }

    public static aem a(String s)
    {
        aem aem1 = new aem();
        String s1;
        if (s.length() > 1)
        {
            s1 = agp.a(s);
        } else
        {
            s1 = s;
        }
        aem1.j = s1;
        aem1.b = (new File(s)).getName();
        aem1.c = -1;
        aem1.d = 0;
        aem1.e = 0;
        aem1.g = 0;
        aem1.i = 0L;
        aem1.h = 0;
        aem1.f = new aet(0);
        return aem1;
    }

    public final String a()
    {
        Object obj = j;
        if (d())
        {
            if (k == null)
            {
                obj = act.b().a(c);
                if (obj != null)
                {
                    k = agp.a(agp.b(((acs) (obj)).h(), j));
                }
                if (k != null)
                {
                    obj = k;
                } else
                {
                    obj = j;
                }
                k = ((String) (obj));
            }
            obj = k;
        }
        return ((String) (obj));
    }

    public final boolean a(boolean flag)
    {
        boolean flag2 = true;
        boolean flag1;
        if (flag && e != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (d != 0 || flag1)
        {
            if (h == d)
            {
                flag = flag2;
            } else
            {
                flag = false;
            }
            if (flag && flag1)
            {
                Iterator iterator = ael.a(this).iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    boolean flag3 = ((aem)iterator.next()).a(false);
                    flag = flag3;
                    if (flag3)
                    {
                        continue;
                    }
                    flag = flag3;
                    break;
                } while (true);
                return flag;
            } else
            {
                return flag;
            }
        } else
        {
            return false;
        }
    }

    final String b()
    {
        if (c != -1)
        {
            return (new StringBuilder()).append(String.valueOf(c)).append("?").append(j).toString();
        } else
        {
            return j;
        }
    }

    public final void b(boolean flag)
    {
        f.a(1, flag);
    }

    public final void c(boolean flag)
    {
        f.a(8, flag);
    }

    public final boolean c()
    {
        return f.c(1);
    }

    public final boolean d()
    {
        return f.c(2);
    }

    public final int e()
    {
        return c;
    }

    public final boolean f()
    {
        return f.c(16);
    }

    public final boolean g()
    {
        return false;
    }

    public final void h()
    {
        g = 0;
        aen aen1 = aei.a().c;
        aen.c(this);
    }

    public final void i()
    {
        Object obj = ael.a(this, false);
        int j1;
        if (obj != null && ((List) (obj)).size() > 0)
        {
            obj = ((List) (obj)).iterator();
            int i1 = 0;
            do
            {
                j1 = i1;
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                if (((aeq)((Iterator) (obj)).next()).p())
                {
                    i1++;
                }
            } while (true);
        } else
        {
            j1 = 0;
        }
        if (h != j1)
        {
            h = j1;
            if (h == d)
            {
                g = 0;
            }
            aen aen1 = aei.a().c;
            aen.c(this);
        }
    }

    public final int j()
    {
        return a;
    }

    public final int k()
    {
        return aft.a.c;
    }

    public final String l()
    {
        return b;
    }

    public final Bitmap m()
    {
        return ahd.c(a, false);
    }

    public final afu n()
    {
        return new afr(this);
    }

    public final boolean o()
    {
        return g != 0;
    }

    public final boolean p()
    {
        return d != 0 && d == h;
    }

    public final long q()
    {
        return i;
    }
}
