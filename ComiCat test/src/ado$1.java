// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class ang.Object
    implements Runnable
{

    final ado a;

    public final void run()
    {
        ip ip1 = ((in) (a.a)).b;
        try
        {
            ip1.a.a(ip1.a.a.b, "2/auth/token/revoke", null, , , );
            return;
        }
        catch (ho ho1)
        {
            try
            {
                throw new hh(ho1.b, ho1.c, (new StringBuilder("Unexpected error response for \"token/revoke\":")).append(ho1.a).toString());
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        return;
    }

    (ado ado1)
    {
        a = ado1;
        super();
    }
}
