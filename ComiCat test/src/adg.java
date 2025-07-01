// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class adg
{

    public String a;
    public long b;
    public String c;

    public adg()
    {
    }

    public adg(adc adc1)
    {
        a = adc1.c();
        b = adc1.f();
        c = null;
    }

    public static adg a(String s)
    {
        Object obj = null;
        adg adg1 = obj;
        if (s != null)
        {
            adg1 = obj;
            if (s.length() > 0)
            {
                s = s.split("-###-");
                adg1 = obj;
                if (s.length == 2)
                {
                    adg1 = new adg();
                    adg1.a = s[0];
                    adg1.b = Long.valueOf(s[1]).longValue();
                }
            }
        }
        return adg1;
    }

    public static String a(String s, long l)
    {
        return (new StringBuilder()).append(s).append("-###-").append(String.valueOf(l)).toString();
    }

    public final String toString()
    {
        String s;
        if (c != null)
        {
            s = c;
        } else
        {
            s = a(a, b);
        }
        c = s;
        return c;
    }
}
