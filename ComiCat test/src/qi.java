// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class qi extends qg
{

    qi()
    {
        z = true;
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
            (new rv()).a(ry1, this);
        }
        catch (Exception exception)
        {
            if (exception instanceof qy)
            {
                throw (qy)exception;
            } else
            {
                throw new qy("ChannelShell", exception);
            }
        }
        if (j.a != null)
        {
            k = new Thread(this);
            k.setName((new StringBuilder("Shell for ")).append(ry1.p).toString());
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
