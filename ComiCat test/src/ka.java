// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ka
{

    private final io a;

    public ka(io io1)
    {
        a = io1;
    }

    public final kb a()
    {
        kb kb1;
        try
        {
            kb1 = (kb)a.a(a.a.b, "2/users/get_current_account", null, if.h.a, kb.a.a, if.h.a);
        }
        catch (ho ho1)
        {
            throw new hh(ho1.b, ho1.c, (new StringBuilder("Unexpected error response for \"get_current_account\":")).append(ho1.a).toString());
        }
        return kb1;
    }
}
