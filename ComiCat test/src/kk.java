// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashMap;
import java.util.Map;

public final class kk
    implements lv, mb
{

    private final String a;
    private final String b;

    public kk(String s, String s1)
    {
        a = (String)ni.a(s);
        b = s1;
    }

    public final void a(lz lz1)
    {
        lz1.a = this;
    }

    public final void b(lz lz1)
    {
        ls ls = lz1.f;
        if (ls != null)
        {
            lz1 = (mm)ls;
        } else
        {
            mm mm1 = new mm(new HashMap());
            lz1.f = mm1;
            lz1 = mm1;
        }
        lz1 = ns.b(((mm) (lz1)).b);
        lz1.put("client_id", a);
        if (b != null)
        {
            lz1.put("client_secret", b);
        }
    }
}
