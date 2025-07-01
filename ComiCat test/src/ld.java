// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

class ld
    implements lx, mg
{

    static final Logger a = Logger.getLogger(ld.getName());
    private final lc b;
    private final lx c;
    private final mg d;

    public ld(lc lc1, lz lz1)
    {
        b = (lc)ni.a(lc1);
        c = lz1.k;
        d = lz1.j;
        lz1.k = this;
        lz1.j = this;
    }

    public final boolean a(lz lz1, mc mc1, boolean flag)
    {
        boolean flag1;
        if (d != null && d.a(lz1, mc1, flag))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1 && flag && mc1.c / 100 == 5)
        {
            try
            {
                b.a();
            }
            // Misplaced declaration of an exception variable
            catch (lz lz1)
            {
                a.log(Level.WARNING, "exception thrown while calling server callback", lz1);
                return flag1;
            }
        }
        return flag1;
    }

    public final boolean a(lz lz1, boolean flag)
    {
        if (c != null && c.a(lz1, flag))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            try
            {
                b.a();
            }
            // Misplaced declaration of an exception variable
            catch (lz lz1)
            {
                a.log(Level.WARNING, "exception thrown while calling server callback", lz1);
                return flag;
            }
        }
        return flag;
    }

}
