// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class lang.String extends Enum
{

    public static final a a;
    private static final a b[];

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(tj$e, s);
    }

    public static lang.String[] values()
    {
        return (s[])b.clone();
    }

    static 
    {
        a = new <init>("BEARER");
        b = (new b[] {
            a
        });
    }

    private >(String s)
    {
        super(s, 0);
    }
}
