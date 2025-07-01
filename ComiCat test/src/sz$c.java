// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static abstract class lang.String extends Enum
{

    public static final b a;
    public static final b b;
    private static final b c[];

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(sz$c, s);
    }

    public static lang.String[] values()
    {
        return (s[])c.clone();
    }

    public abstract void a();

    static 
    {
        a = new sz.c("LOGGED_IN") {

            public final void a()
            {
            }

        };
        b = new sz.c("LOGGED_OUT") {

            public final void a()
            {
                throw new IllegalStateException("The user has is logged out.");
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
