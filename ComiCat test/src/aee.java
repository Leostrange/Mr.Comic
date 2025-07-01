// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;

public final class aee
    implements adc
{

    aar a;
    String b;

    public aee(aar aar1, String s)
    {
        a = aar1;
        b = s;
    }

    public final String a()
    {
        String s1 = a.d();
        String s = s1;
        if (s1.endsWith(File.separator))
        {
            s = s1.substring(0, s1.length() - 1);
        }
        return s;
    }

    public final String b()
    {
        String s1 = a.e();
        String s = s1;
        if (s1.startsWith("smb://"))
        {
            s = s1.substring(b.length());
        }
        s1 = s;
        if (s.endsWith(File.separator))
        {
            s1 = s.substring(0, s.length() - 1);
        }
        return s1;
    }

    public final String c()
    {
        return a.e();
    }

    public final boolean d()
    {
        boolean flag1 = false;
        boolean flag = flag1;
        long l;
        try
        {
            if (!a.g())
            {
                break MISSING_BLOCK_LABEL_52;
            }
        }
        catch (aaq aaq1)
        {
            aaq1.printStackTrace();
            return false;
        }
        flag = flag1;
        if (a.i())
        {
            break MISSING_BLOCK_LABEL_52;
        }
        l = a.j();
        flag = flag1;
        if (l > 0L)
        {
            flag = true;
        }
        return flag;
    }

    public final boolean e()
    {
        boolean flag;
        try
        {
            flag = a.h();
        }
        catch (aaq aaq1)
        {
            aaq1.printStackTrace();
            return false;
        }
        return flag;
    }

    public final long f()
    {
        long l;
        try
        {
            l = a.j();
        }
        catch (aaq aaq1)
        {
            aaq1.printStackTrace();
            return 0L;
        }
        return l;
    }

    public final String g()
    {
        return null;
    }
}
