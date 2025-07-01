// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class ang.String extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    private static final d e[];

    public static ang.String valueOf(String s)
    {
        return (f)Enum.valueOf(acy$a, s);
    }

    public static ang.String[] values()
    {
        return ([])e.clone();
    }

    static 
    {
        a = new <init>("NONE", 0);
        b = new <init>("SUCCESS", 1);
        c = new <init>("FAIL", 2);
        d = new <init>("CANCELED", 3);
        e = (new e[] {
            a, b, c, d
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
