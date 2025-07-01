// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ny
{

    private final nh a;

    private ny(nh nh1)
    {
        a = nh1;
    }

    public static ny a()
    {
        return new ny(new nh(" "));
    }

    public final String a(Iterable iterable)
    {
        nh nh1 = a;
        iterable = iterable.iterator();
        return nh1.a(new StringBuilder(), iterable).toString();
    }
}
