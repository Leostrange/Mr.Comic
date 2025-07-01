// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class rt extends rp
{

    String b;
    int c;
    int d;
    int e;
    int f;
    byte g[];

    rt()
    {
        b = "vt100";
        c = 80;
        d = 24;
        e = 640;
        f = 480;
        g = si.a;
    }

    public final void a(ry ry, qb qb1)
    {
        super.a(ry, qb1);
        ry = new qa();
        rl rl1 = new rl(ry);
        rl1.a();
        ry.a((byte)98);
        ry.a(qb1.c);
        ry.b(si.a("pty-req"));
        int i;
        if (super.a)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        ry.a((byte)i);
        ry.b(si.a(b));
        ry.a(c);
        ry.a(d);
        ry.a(e);
        ry.a(f);
        ry.b(g);
        a(rl1);
    }
}
