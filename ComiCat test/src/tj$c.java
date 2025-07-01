// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class lang.String extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    private static final d e[];

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(tj$c, s);
    }

    public static lang.String[] values()
    {
        return (s[])e.clone();
    }

    static 
    {
        a = new <init>("AUTHORIZATION_CODE", 0);
        b = new <init>("CLIENT_CREDENTIALS", 1);
        c = new <init>("PASSWORD", 2);
        d = new <init>("REFRESH_TOKEN", 3);
        e = (new e[] {
            a, b, c, d
        });
    }

    private >(String s, int i)
    {
        super(s, i);
    }
}
