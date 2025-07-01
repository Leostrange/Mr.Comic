// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class wl
    implements xi
{
    static final class a extends wl
    {

        private a()
        {
        }

        a(byte byte0)
        {
            this();
        }
    }


    private static final ThreadLocal a = new ThreadLocal() {

        protected final Object initialValue()
        {
            return wl.b;
        }

    };
    public static final wl b = new a((byte)0);
    wl c;
    wj d;

    protected wl()
    {
    }

    public static wl b()
    {
        return (wl)a.get();
    }

    public String toString()
    {
        return (new StringBuilder("Instance of ")).append(getClass().getName()).toString();
    }

}
