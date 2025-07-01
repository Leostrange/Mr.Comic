// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class sr extends Enum
{

    public static final sr a;
    public static final sr b;
    private static final sr c[];

    private sr(String s, int i)
    {
        super(s, i);
    }

    sr(String s, int i, byte byte0)
    {
        this(s, i);
    }

    public static sr valueOf(String s)
    {
        return (sr)Enum.valueOf(sr, s);
    }

    public static sr[] values()
    {
        return (sr[])c.clone();
    }

    public abstract tj.a a();

    static 
    {
        a = new sr("PHONE") {

            public final tj.a a()
            {
                return tj.a.a;
            }

        };
        b = new sr("TABLET") {

            public final tj.a a()
            {
                return tj.a.b;
            }

        };
        c = (new sr[] {
            a, b
        });
    }
}
