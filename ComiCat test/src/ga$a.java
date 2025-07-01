// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class c extends Enum
{

    public static final b a;
    public static final b b;
    private static final b d[];
    private final String c;

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(ga$a, s);
    }

    public static lang.String[] values()
    {
        return (s[])d.clone();
    }

    public final String toString()
    {
        return c;
    }

    static 
    {
        a = new <init>("ACCESS", 0, "com.amazon.identity.token.accessToken");
        b = new <init>("REFRESH", 1, "com.amazon.identity.token.refreshToken");
        d = (new d[] {
            a, b
        });
    }

    private >(String s, int i, String s1)
    {
        super(s, i);
        c = s1;
    }
}
