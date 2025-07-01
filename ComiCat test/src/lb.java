// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class lb
{
    public static final class a extends Enum
    {

        public static final int a;
        public static final int b;
        public static final int c;
        private static final int d[];

        static 
        {
            a = 1;
            b = 2;
            c = 3;
            d = (new int[] {
                a, b, c
            });
        }
    }


    private final ma a;
    private final mf b;
    private boolean c;
    private int d;
    private int e;
    private long f;

    public lb(mf mf1, mb mb)
    {
        c = false;
        d = 0x2000000;
        e = a.a;
        f = -1L;
        b = (mf)ni.a(mf1);
        if (mb == null)
        {
            mf1 = mf1.a(null);
        } else
        {
            mf1 = mf1.a(mb);
        }
        a = mf1;
    }
}
