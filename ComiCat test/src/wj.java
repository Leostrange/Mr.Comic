// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class wj extends wl
{
    static class a extends wj
    {

        private wj e;

        protected final wi a(wp wp1)
        {
            return e.a(wp1);
        }

        private a()
        {
        }

        a(byte byte0)
        {
            this();
        }
    }


    public static final wr a = new wr(wm) {

    };
    private static volatile wj e = new wm();

    protected wj()
    {
    }

    public static wj a()
    {
        return e;
    }

    protected abstract wi a(wp wp1);

    static 
    {
        wp.a(new wp() {

            protected final Object a()
            {
                return new a((byte)0);
            }

        }, wj$a);
    }
}
