// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

public abstract class acs
{

    protected aev a;

    protected acs(aev aev1)
    {
        a = aev1;
    }

    public final int a()
    {
        if (a != null)
        {
            return a.a;
        } else
        {
            return -1;
        }
    }

    public abstract List a(adc adc);

    public final void a(Activity activity)
    {
        add add1 = act.b().a(b());
        if (add1 != null)
        {
            add1.a(activity, a());
        }
    }

    public abstract boolean a(String s, String s1, acy acy);

    public abstract String b();

    public abstract String c();

    public abstract int d();

    public abstract String e();

    public abstract boolean f();

    public abstract String g();

    public final String h()
    {
        StringBuilder stringbuilder = new StringBuilder();
        act.b();
        return stringbuilder.append(agp.b(act.a(), g())).append("/").toString();
    }

    public void i()
    {
        act.b().d(a.a);
        aew aew1 = aei.a().g;
        int i1 = a.a;
        if (aei.a().a.delete("services", (new StringBuilder("id=")).append(i1).toString(), null) > 0)
        {
            aev aev1 = aew1.a(i1);
            if (aev1 != null)
            {
                aew1.b.remove(aev1);
            }
        }
    }

    public abstract adc j();

    public final String k()
    {
        String s1 = c();
        String s = s1;
        if (a != null)
        {
            s = s1;
            if (a.c != null)
            {
                s = s1;
                if (a.c.length() > 0)
                {
                    s = (new StringBuilder()).append(s1).append(" - ").append(a.c).toString();
                }
            }
        }
        return s;
    }

    public boolean l()
    {
        return false;
    }

    public String m()
    {
        return aei.a().d.b("download-newly-added-files");
    }

    public boolean n()
    {
        return false;
    }
}
