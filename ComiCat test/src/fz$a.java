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
        return (Of)Enum.valueOf(fz$a, s);
    }

    public static lang.String[] values()
    {
        return (s[])j.clone();
    }

    static 
    {
        a = new <init>("ROW_ID", 0, 0);
        b = new <init>("APP_FAMILY_ID", 1, 1);
        c = new <init>("PACKAGE_NAME", 2, 2);
        d = new <init>("ALLOWED_SCOPES", 3, 3);
        e = new <init>("GRANTED_PERMISSIONS", 4, 4);
        f = new <init>("CLIENT_ID", 5, 5);
        g = new <init>("APP_VARIANT_ID", 6, 6);
        h = new <init>("PAYLOAD", 7, 7);
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
