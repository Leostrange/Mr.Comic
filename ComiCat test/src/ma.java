// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ma
{

    public final mf a;
    public final mb b;

    ma(mf mf, mb mb1)
    {
        a = mf;
        b = mb1;
    }

    public final lz a(String s, lr lr, ls ls)
    {
        lz lz1 = new lz(a);
        if (b != null)
        {
            b.a(lz1);
        }
        lz1.a(s);
        if (lr != null)
        {
            lz1.a(lr);
        }
        if (ls != null)
        {
            lz1.f = ls;
        }
        return lz1;
    }
}
