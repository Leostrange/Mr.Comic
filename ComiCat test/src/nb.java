// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class nb extends Enum
{

    public static final nb a;
    public static final nb b;
    public static final nb c;
    public static final nb d;
    public static final nb e;
    public static final nb f;
    public static final nb g;
    public static final nb h;
    public static final nb i;
    public static final nb j;
    public static final nb k;
    public static final nb l;
    private static final nb m[];

    private nb(String s, int i1)
    {
        super(s, i1);
    }

    public static nb valueOf(String s)
    {
        return (nb)Enum.valueOf(nb, s);
    }

    public static nb[] values()
    {
        return (nb[])m.clone();
    }

    static 
    {
        a = new nb("START_ARRAY", 0);
        b = new nb("END_ARRAY", 1);
        c = new nb("START_OBJECT", 2);
        d = new nb("END_OBJECT", 3);
        e = new nb("FIELD_NAME", 4);
        f = new nb("VALUE_STRING", 5);
        g = new nb("VALUE_NUMBER_INT", 6);
        h = new nb("VALUE_NUMBER_FLOAT", 7);
        i = new nb("VALUE_TRUE", 8);
        j = new nb("VALUE_FALSE", 9);
        k = new nb("VALUE_NULL", 10);
        l = new nb("NOT_AVAILABLE", 11);
        m = (new nb[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l
        });
    }
}
