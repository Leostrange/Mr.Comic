// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import java.lang.ref.SoftReference;
import java.util.Date;

public final class aeq
    implements aft
{

    public int a;
    public int b;
    public String c;
    public String d;
    public String e;
    public String f;
    public int g;
    public aet h;
    public int i;
    public int j;
    public String k;
    public long l;
    public Date m;
    SoftReference n;

    public aeq()
    {
        a = -1;
        e = "";
        f = "";
        g = -1;
        h = new aet(0);
        i = -1;
        j = -1;
        k = "";
        l = 0L;
        n = new SoftReference(null);
    }

    public final void a(boolean flag)
    {
        h.a(32, flag);
    }

    public final boolean a()
    {
        return (j != -1 || i != -1) && !h.c(1);
    }

    public final void b(boolean flag)
    {
        h.a(1, flag);
        if (h.c(1))
        {
            h.b(2);
            j = -1;
            l = ahc.b();
            if (aei.a().d.c("clear-bookmark-on-read"))
            {
                i = -1;
            }
        }
        Object obj = ael.b(this);
        if (obj != null)
        {
            ((aem) (obj)).i();
        }
        obj = aei.a().b;
        aek.a(this);
    }

    public final boolean b()
    {
        return i != -1;
    }

    public final boolean c()
    {
        return h.c(32) || h.c(128);
    }

    public final boolean d()
    {
        return h.c(8);
    }

    public final int e()
    {
        return g;
    }

    public final boolean g()
    {
        return h.c(16);
    }

    public final int j()
    {
        return a;
    }

    public final int k()
    {
        return aft.a.b;
    }

    public final String l()
    {
        return c;
    }

    public final Bitmap m()
    {
        if (n == null || n.get() == null)
        {
            n = new SoftReference(ahd.a(a, false));
        }
        if (n != null)
        {
            return (Bitmap)n.get();
        } else
        {
            return null;
        }
    }

    public final afu n()
    {
        return new afn(this);
    }

    public final boolean o()
    {
        return a();
    }

    public final boolean p()
    {
        return h.c(1);
    }

    public final long q()
    {
        return l;
    }
}
