// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ail extends Enum
{

    public static final ail a;
    public static final ail b;
    public static final ail c;
    public static final ail d;
    public static final ail e;
    public static final ail f;
    public static final ail g;
    public static final ail h;
    public static final ail i;
    public static final ail j;
    public static final ail k;
    public static final ail l;
    public static final ail m;
    private static final ail q[];
    public final String n;
    final char o[];
    final byte p[];

    private ail(String s, int i1, String s1)
    {
        super(s, i1);
        if (s1 == null)
        {
            n = null;
            o = null;
            p = null;
        } else
        {
            n = s1;
            o = s1.toCharArray();
            int j1 = o.length;
            p = new byte[j1];
            i1 = 0;
            while (i1 < j1) 
            {
                p[i1] = (byte)o[i1];
                i1++;
            }
        }
    }

    public static ail valueOf(String s)
    {
        return (ail)Enum.valueOf(ail, s);
    }

    public static ail[] values()
    {
        return (ail[])q.clone();
    }

    static 
    {
        a = new ail("NOT_AVAILABLE", 0, null);
        b = new ail("START_OBJECT", 1, "{");
        c = new ail("END_OBJECT", 2, "}");
        d = new ail("START_ARRAY", 3, "[");
        e = new ail("END_ARRAY", 4, "]");
        f = new ail("FIELD_NAME", 5, null);
        g = new ail("VALUE_EMBEDDED_OBJECT", 6, null);
        h = new ail("VALUE_STRING", 7, null);
        i = new ail("VALUE_NUMBER_INT", 8, null);
        j = new ail("VALUE_NUMBER_FLOAT", 9, null);
        k = new ail("VALUE_TRUE", 10, "true");
        l = new ail("VALUE_FALSE", 11, "false");
        m = new ail("VALUE_NULL", 12, "null");
        q = (new ail[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l, m
        });
    }
}
