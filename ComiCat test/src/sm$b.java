// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static abstract class lang.String extends Enum
{

    public static final b a;
    public static final b b;
    private static final b c[];

    static void a(tt tt1, Boolean boolean1)
    {
        tt1.b("suppress_redirects");
        tt1.a("suppress_redirects", boolean1.toString());
    }

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(sm$b, s);
    }

    public static lang.String[] values()
    {
        return (s[])c.clone();
    }

    protected abstract void a(tt tt1);

    static 
    {
        a = new sm.b("SUPPRESS") {

            protected final void a(tt tt1)
            {
                sm.b.a(tt1, Boolean.TRUE);
            }

        };
        b = new sm.b("UNSUPPRESSED") {

            protected final void a(tt tt1)
            {
                sm.b.a(tt1, Boolean.FALSE);
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
