// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class lang.String extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    public static final f f;
    private static final f g[];

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(tj$b, s);
    }

    public static lang.String[] values()
    {
        return (s[])g.clone();
    }

    static 
    {
        a = new <init>("INVALID_CLIENT", 0);
        b = new <init>("INVALID_GRANT", 1);
        c = new <init>("INVALID_REQUEST", 2);
        d = new <init>("INVALID_SCOPE", 3);
        e = new <init>("UNAUTHORIZED_CLIENT", 4);
        f = new <init>("UNSUPPORTED_GRANT_TYPE", 5);
        g = (new g[] {
            a, b, c, d, e, f
        });
    }

    private >(String s, int i)
    {
        super(s, i);
    }
}
