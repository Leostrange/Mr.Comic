// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public final class kr extends md
{

    final transient ko a;

    private kr(md.a a1, ko ko1)
    {
        super(a1);
        a = ko1;
    }

    public static kr a(mv mv, mc mc1)
    {
        Object obj;
        String s;
        md.a a1;
        obj = null;
        a1 = new md.a(mc1.c, mc1.d, mc1.e.c);
        ni.a(mv);
        s = mc1.a;
        if (mc1.a() || s == null) goto _L2; else goto _L1
_L1:
        if (mc1.b() == null || !ly.b("application/json; charset=UTF-8", s)) goto _L2; else goto _L3
_L3:
        mv = (ko)(new mx(mv)).a(mc1.b(), mc1.f(), ko);
        s = mv.c();
        obj = mv;
        mv = s;
_L5:
        mc1 = md.a(mc1);
        if (!ol.a(mv))
        {
            mc1.append(ok.a).append(mv);
            a1.d = mv;
        }
        a1.e = mc1.toString();
        return new kr(a1, ((ko) (obj)));
_L2:
        IOException ioexception;
        try
        {
            mv = mc1.e();
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            mv = null;
        }
_L6:
        ioexception.printStackTrace();
        ioexception = mv;
        mv = null;
        if (true) goto _L5; else goto _L4
_L4:
        ioexception;
          goto _L6
    }
}
