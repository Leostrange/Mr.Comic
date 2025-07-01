// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


abstract class rp
{

    boolean a;
    private ry b;
    private qb c;

    rp()
    {
        a = false;
        b = null;
        c = null;
    }

    final void a(rl rl)
    {
        if (a)
        {
            c.r = -1;
        }
        b.a(rl);
        if (a)
        {
            long l = System.currentTimeMillis();
            long l1 = c.s;
            while (c.g() && c.r == -1) 
            {
                try
                {
                    Thread.sleep(10L);
                }
                // Misplaced declaration of an exception variable
                catch (rl rl) { }
                if (l1 > 0L && System.currentTimeMillis() - l > l1)
                {
                    c.r = 0;
                    throw new qy("channel request: timeout");
                }
            }
            if (c.r == 0)
            {
                throw new qy("failed to send channel request");
            }
        }
    }

    void a(ry ry1, qb qb1)
    {
        b = ry1;
        c = qb1;
        if (qb1.s > 0)
        {
            a = true;
        }
    }
}
