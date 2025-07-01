// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class zj
{

    private static zj a;
    private String b;
    private zo c;

    public static zl a(String s, zo zo)
    {
        if (a == null)
        {
            return null;
        }
        synchronized (a)
        {
            a.b = s;
            a.c = zo;
        }
        return null;
        s;
        zj1;
        JVM INSTR monitorexit ;
        throw s;
    }
}
