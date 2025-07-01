// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class rx extends rp
{

    rx()
    {
    }

    public final void a(ry ry1, qb qb1)
    {
        super.a(ry1, qb1);
        qa qa1 = new qa();
        rl rl1 = new rl(qa1);
        rl1.a();
        qa1.a((byte)98);
        qa1.a(qb1.c);
        qa1.b(si.a("x11-req"));
        int i;
        if (super.a)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        qa1.a((byte)i);
        qa1.a((byte)0);
        qa1.b(si.a("MIT-MAGIC-COOKIE-1"));
        qa1.b(qk.b(ry1));
        qa1.a(0);
        a(rl1);
        ry1.c = true;
    }
}
