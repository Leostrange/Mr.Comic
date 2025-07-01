// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class rq extends rp
{

    rq()
    {
    }

    public final void a(ry ry1, qb qb1)
    {
        int i = 0;
        super.a(ry1, qb1);
        super.a = false;
        qa qa1 = new qa();
        rl rl1 = new rl(qa1);
        rl1.a();
        qa1.a((byte)98);
        qa1.a(qb1.c);
        qa1.b(si.a("auth-agent-req@openssh.com"));
        if (super.a)
        {
            i = 1;
        }
        qa1.a((byte)i);
        a(rl1);
        ry1.d = true;
    }
}
