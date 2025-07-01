// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class qe extends qg
{

    byte v[];

    public qe()
    {
        v = new byte[0];
    }

    final void a()
    {
        j.a = h().e;
        j.b = h().f;
    }

    public final void b()
    {
        ry ry1 = h();
        try
        {
            m();
            (new rs(v)).a(ry1, this);
        }
        catch (Exception exception)
        {
            if (exception instanceof qy)
            {
                throw (qy)exception;
            } else
            {
                throw new qy("ChannelExec", exception);
            }
        }
        if (j.a != null)
        {
            k = new Thread(this);
            k.setName((new StringBuilder("Exec thread ")).append(ry1.p).toString());
            if (ry1.m)
            {
                k.setDaemon(ry1.m);
            }
            k.start();
        }
    }

    public final volatile void run()
    {
        super.run();
    }
}
