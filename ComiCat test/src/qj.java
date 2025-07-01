// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class qj extends qg
{

    boolean G;
    boolean H;
    String I;
    boolean v;

    public qj()
    {
        v = false;
        G = false;
        H = true;
        I = "";
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
            if (v)
            {
                (new rx()).a(ry1, this);
            }
            if (G)
            {
                (new rt()).a(ry1, this);
            }
            rw rw1 = (rw)new rw();
            String s = I;
            rw1.a = H;
            rw1.b = s;
            rw1.a(ry1, this);
        }
        catch (Exception exception)
        {
            if (exception instanceof qy)
            {
                throw (qy)exception;
            } else
            {
                throw new qy("ChannelSubsystem", exception);
            }
        }
        if (j.a != null)
        {
            k = new Thread(this);
            k.setName((new StringBuilder("Subsystem for ")).append(ry1.p).toString());
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
