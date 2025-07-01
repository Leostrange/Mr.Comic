// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class k extends Enum
{

    public static final j a;
    public static final j b;
    public static final j c;
    public static final j d;
    public static final j e;
    public static final j f;
    public static final j g;
    public static final j h;
    public static final j i;
    public static final j j;
    private static final j l[];
    final boolean k;

    public static int a()
    {
        int j1 = 0;
        ang.Enum aenum[] = values();
        int l1 = aenum.length;
        for (int i1 = 0; i1 < l1;)
        {
            um um = aenum[i1];
            int k1 = j1;
            if (um.k)
            {
                k1 = j1 | 1 << um.ordinal();
            }
            i1++;
            j1 = k1;
        }

        return j1;
    }

    public static ang.String valueOf(String s)
    {
        return (f)Enum.valueOf(aii$a, s);
    }

    public static ang.String[] values()
    {
        return ([])l.clone();
    }

    public final boolean a(int i1)
    {
        return (1 << ordinal() & i1) != 0;
    }

    static 
    {
        a = new <init>("AUTO_CLOSE_SOURCE", 0, true);
        b = new <init>("ALLOW_COMMENTS", 1, false);
        c = new <init>("ALLOW_UNQUOTED_FIELD_NAMES", 2, false);
        d = new <init>("ALLOW_SINGLE_QUOTES", 3, false);
        e = new <init>("ALLOW_UNQUOTED_CONTROL_CHARS", 4, false);
        f = new <init>("ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER", 5, false);
        g = new <init>("ALLOW_NUMERIC_LEADING_ZEROS", 6, false);
        h = new <init>("ALLOW_NON_NUMERIC_NUMBERS", 7, false);
        i = new <init>("INTERN_FIELD_NAMES", 8, true);
        j = new <init>("CANONICALIZE_FIELD_NAMES", 9, true);
        l = (new l[] {
            a, b, c, d, e, f, g, h, i, j
        });
    }

    private (String s, int i1, boolean flag)
    {
        super(s, i1);
        k = flag;
    }
}
