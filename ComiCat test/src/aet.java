// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class aet
{

    public int a;

    public aet(int i)
    {
        a = 0;
        a = i;
    }

    public final void a(int i)
    {
        a = a | i;
    }

    public final void a(int i, boolean flag)
    {
        if (flag)
        {
            a(i);
            return;
        } else
        {
            b(i);
            return;
        }
    }

    public final void b(int i)
    {
        a = a & ~i;
    }

    public final boolean c(int i)
    {
        return (a & i) == i;
    }
}
