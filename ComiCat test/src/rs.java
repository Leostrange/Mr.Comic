// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class rs extends rp
{

    private byte b[];

    rs(byte abyte0[])
    {
        b = new byte[0];
        b = abyte0;
    }

    public final void a(ry ry, qb qb1)
    {
        super.a(ry, qb1);
        ry = new qa();
        rl rl1 = new rl(ry);
        rl1.a();
        ry.a((byte)98);
        ry.a(qb1.c);
        ry.b(si.a("exec"));
        int i;
        if (super.a)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        ry.a((byte)i);
        ry.c(b.length + 4);
        ry.b(b);
        a(rl1);
    }
}
