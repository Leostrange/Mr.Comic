// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ho extends Exception
{

    public final Object a;
    public final String b;
    public final hq c;

    private ho(Object obj, String s, hq hq)
    {
        a = obj;
        b = s;
        c = hq;
    }

    public static ho a(ie ie, hy.b b1)
    {
        String s = hm.b(b1);
        ie = (hd)(new hd.a(ie)).a(b1.b);
        return new ho(((hd) (ie)).a, s, ((hd) (ie)).b);
    }
}
