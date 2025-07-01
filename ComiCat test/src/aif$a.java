// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class h extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    public static final g g;
    private static final g j[];
    final boolean h;
    public final int i = 1 << ordinal();

    public static int a()
    {
        int l = 0;
        ang.Enum aenum[] = values();
        int j1 = aenum.length;
        for (int k = 0; k < j1;)
        {
            um um = aenum[k];
            int i1 = l;
            if (um.h)
            {
                i1 = l | um.i;
            }
            k++;
            l = i1;
        }

        return l;
    }

    public static ang.String valueOf(String s)
    {
        return (f)Enum.valueOf(aif$a, s);
    }

    public static ang.String[] values()
    {
        return ([])j.clone();
    }

    static 
    {
        a = new <init>("AUTO_CLOSE_TARGET", 0, true);
        b = new <init>("AUTO_CLOSE_JSON_CONTENT", 1, true);
        c = new <init>("QUOTE_FIELD_NAMES", 2, true);
        d = new <init>("QUOTE_NON_NUMERIC_NUMBERS", 3, true);
        e = new <init>("WRITE_NUMBERS_AS_STRINGS", 4, false);
        f = new <init>("FLUSH_PASSED_TO_STREAM", 5, true);
        g = new <init>("ESCAPE_NON_ASCII", 6, false);
        j = (new j[] {
            a, b, c, d, e, f, g
        });
    }

    private (String s, int k, boolean flag)
    {
        super(s, k);
        h = flag;
    }
}
