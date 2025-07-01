// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class ang.Object
    implements Runnable
{

    final boolean a;
    final afb b;

    public final void run()
    {
        System.gc();
        b.b();
        if (a)
        {
            afb.a(b);
        }
    }

    (afb afb1, boolean flag)
    {
        b = afb1;
        a = flag;
        super();
    }
}
