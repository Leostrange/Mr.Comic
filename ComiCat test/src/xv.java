// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class xv extends xx.f
{

    public xv(String s)
    {
        super(s, new xx.c(), new yb());
        l.a = c;
        l.b = new xx.b();
        f = 0;
        g = 3;
    }

    public final za[] d()
    {
        xx.b b = (xx.b)l.b;
        aaw aaaw[] = new aaw[b.a];
        for (int i = 0; i < b.a; i++)
        {
            aaaw[i] = new aaw(b.b[i].a);
        }

        return aaaw;
    }
}
