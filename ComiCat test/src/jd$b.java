// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class lang.String extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    private static final c d[];

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(jd$b, s);
    }

    public static lang.String[] values()
    {
        return (s[])d.clone();
    }

    static 
    {
        a = new <init>("PATH", 0);
        b = new <init>("RESET", 1);
        c = new <init>("OTHER", 2);
        d = (new d[] {
            a, b, c
        });
    }

    private >(String s, int i)
    {
        super(s, i);
    }
}
