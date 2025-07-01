// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


static abstract class lang.String extends Enum
    implements pd
{

    public static final b a;
    public static final b b;
    private static final b c[];

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(pt$a, s);
    }

    public static lang.String[] values()
    {
        return (s[])c.clone();
    }

    static 
    {
        a = new pt.a("KEY") {

            public final Object a(Object obj)
            {
                return ((java.util.Map.Entry)obj).getKey();
            }

        };
        b = new pt.a("VALUE") {

            public final Object a(Object obj)
            {
                return ((java.util.Map.Entry)obj).getValue();
            }

        };
        c = (new c[] {
            a, b
        });
    }

    private >(String s, int i)
    {
        super(s, i);
    }

    >(String s, int i, byte byte0)
    {
        this(s, i);
    }
}
