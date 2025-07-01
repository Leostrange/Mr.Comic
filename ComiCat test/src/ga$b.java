// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class i extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    public static final h e;
    public static final h f;
    public static final h g;
    public static final h h;
    private static final h j[];
    public final int i;

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(ga$b, s);
    }

    public static lang.String[] values()
    {
        return (s[])j.clone();
    }

    static 
    {
        a = new <init>("ID", 0, 0);
        b = new <init>("APP_ID", 1, 1);
        c = new <init>("TOKEN", 2, 2);
        d = new <init>("CREATION_TIME", 3, 3);
        e = new <init>("EXPIRATION_TIME", 4, 4);
        f = new <init>("MISC_DATA", 5, 5);
        g = new <init>("TYPE", 6, 6);
        h = new <init>("DIRECTED_ID", 7, 7);
        j = (new j[] {
            a, b, c, d, e, f, g, h
        });
    }

    private >(String s, int k, int l)
    {
        super(s, k);
        i = l;
    }
}
