// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;

public final class ahm extends Enum
    implements Serializable
{

    public static final ahm a;
    public static final ahm b;
    public static final ahm c;
    private static final ahm f[];
    private final String d;
    private final transient boolean e;

    private ahm(String s, int i, String s1, boolean flag)
    {
        super(s, i);
        d = s1;
        e = flag;
    }

    public static ahm valueOf(String s)
    {
        return (ahm)Enum.valueOf(ahm, s);
    }

    public static ahm[] values()
    {
        return (ahm[])f.clone();
    }

    public final boolean a(String s, String s1)
    {
        if (s == null || s1 == null)
        {
            throw new NullPointerException("The strings must not be null");
        }
        if (e)
        {
            return s.equals(s1);
        } else
        {
            return s.equalsIgnoreCase(s1);
        }
    }

    public final String toString()
    {
        return d;
    }

    static 
    {
        a = new ahm("SENSITIVE", 0, "Sensitive", true);
        b = new ahm("INSENSITIVE", 1, "Insensitive", false);
        boolean flag;
        if (!ahl.a())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = new ahm("SYSTEM", 2, "System", flag);
        f = (new ahm[] {
            a, b, c
        });
    }
}
