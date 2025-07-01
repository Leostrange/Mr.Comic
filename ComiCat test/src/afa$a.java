// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class f extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    public static final e e;
    private static final e g[];
    String f;

    public static ang.String valueOf(String s)
    {
        return (f)Enum.valueOf(afa$a, s);
    }

    public static ang.String[] values()
    {
        return ([])g.clone();
    }

    public final String toString()
    {
        return f;
    }

    static 
    {
        a = new <init>("CBR", 0, "CBR");
        b = new <init>("CBZ", 1, "CBZ");
        c = new <init>("SEQUENTIALZIP", 2, "SZIP");
        d = new <init>("LIB7ZIP", 3, "7ZIP");
        e = new <init>("PDF", 4, "PDF");
        g = (new g[] {
            a, b, c, d, e
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        f = s1;
    }
}
