// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class d extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    private static final c e[];
    private final int d;

    static int a(um um)
    {
        return um.d;
    }

    public static ang.String valueOf(String s)
    {
        return (f)Enum.valueOf(ajr$a, s);
    }

    public static ang.String[] values()
    {
        return ([])e.clone();
    }

    static 
    {
        a = new <init>("READ_IO_BUFFER", 0, 4000);
        b = new <init>("WRITE_ENCODING_BUFFER", 1, 4000);
        c = new <init>("WRITE_CONCAT_BUFFER", 2, 2000);
        e = (new e[] {
            a, b, c
        });
    }

    private (String s, int i, int j)
    {
        super(s, i);
        d = j;
    }
}
