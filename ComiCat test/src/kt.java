// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class kt
    implements lv, mb
{

    private final boolean a;

    public kt()
    {
        this((byte)0);
    }

    private kt(byte byte0)
    {
        a = false;
    }

    public final void a(lz lz1)
    {
        lz1.a = this;
    }

    public final void b(lz lz1)
    {
        String s;
        boolean flag1;
        flag1 = true;
        s = lz1.h;
        if (s.equals("POST")) goto _L2; else goto _L1
_L1:
        if (!s.equals("GET")) goto _L4; else goto _L3
_L3:
        if (lz1.i.e().length() <= 2048) goto _L6; else goto _L5
_L5:
        boolean flag = flag1;
_L13:
        if (!flag) goto _L8; else goto _L7
_L7:
        s = lz1.h;
        lz1.a("POST");
        lz1.b.a("X-HTTP-Method-Override", s);
        if (!s.equals("GET")) goto _L10; else goto _L9
_L9:
        lz1.f = new mm(lz1.i.c());
        lz1.i.clear();
_L8:
        return;
_L4:
        flag = flag1;
        if (a)
        {
            continue; /* Loop/switch isn't completed */
        }
_L6:
        flag = flag1;
        if (!lz1.g.a(s))
        {
            continue; /* Loop/switch isn't completed */
        }
_L2:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L10:
        if (lz1.f != null) goto _L8; else goto _L11
_L11:
        lz1.f = new lp();
        return;
        if (true) goto _L13; else goto _L12
_L12:
    }
}
