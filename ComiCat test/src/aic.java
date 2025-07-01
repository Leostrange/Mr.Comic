// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class aic extends Enum
{

    public static final aic a;
    public static final aic b;
    public static final aic c;
    public static final aic d;
    public static final aic e;
    private static final aic h[];
    protected final String f;
    protected final boolean g;

    private aic(String s, int i, String s1, boolean flag)
    {
        super(s, i);
        f = s1;
        g = flag;
    }

    public static aic valueOf(String s)
    {
        return (aic)Enum.valueOf(aic, s);
    }

    public static aic[] values()
    {
        return (aic[])h.clone();
    }

    public final String a()
    {
        return f;
    }

    public final boolean b()
    {
        return g;
    }

    static 
    {
        a = new aic("UTF8", 0, "UTF-8", false);
        b = new aic("UTF16_BE", 1, "UTF-16BE", true);
        c = new aic("UTF16_LE", 2, "UTF-16LE", false);
        d = new aic("UTF32_BE", 3, "UTF-32BE", true);
        e = new aic("UTF32_LE", 4, "UTF-32LE", false);
        h = (new aic[] {
            a, b, c, d, e
        });
    }
}
