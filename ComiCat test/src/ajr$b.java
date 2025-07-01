// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class e extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    private static final d f[];
    private final int e;

    static int a(um um)
    {
        return um.e;
    }

    public static ang.String valueOf(String s)
    {
        return (f)Enum.valueOf(ajr$b, s);
    }

    public static ang.String[] values()
    {
        return ([])f.clone();
    }

    static 
    {
        a = new <init>("TOKEN_BUFFER", 0, 2000);
        b = new <init>("CONCAT_BUFFER", 1, 2000);
        c = new <init>("TEXT_BUFFER", 2, 200);
        d = new <init>("NAME_COPY_BUFFER", 3, 200);
        f = (new f[] {
            a, b, c, d
        });
    }

    private (String s, int i, int j)
    {
        super(s, i);
        e = j;
    }
}
