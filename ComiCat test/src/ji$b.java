// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class lang.String extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    public static final g g;
    private static final g h[];

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(ji$b, s);
    }

    public static lang.String[] values()
    {
        return (s[])h.clone();
    }

    static 
    {
        a = new <init>("MALFORMED_PATH", 0);
        b = new <init>("NOT_FOUND", 1);
        c = new <init>("NOT_FILE", 2);
        d = new <init>("NOT_FOLDER", 3);
        e = new <init>("RESTRICTED_CONTENT", 4);
        f = new <init>("INVALID_PATH_ROOT", 5);
        g = new <init>("OTHER", 6);
        h = (new h[] {
            a, b, c, d, e, f, g
        });
    }

    private >(String s, int i)
    {
        super(s, i);
    }
}
