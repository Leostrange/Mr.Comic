// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.locks.Lock;

public final class aey
    implements aff
{

    uo a;
    ua b;

    public aey(uo uo1, ua ua1)
    {
        a = uo1;
        b = ua1;
    }

    private ags b()
    {
        Object obj;
        boolean flag;
        ags ags1 = new ags((int)a.n);
        ua ua1;
        uo uo1;
        try
        {
            ua1 = b;
            uo1 = a;
            if (!ua1.c.contains(uo1))
            {
                throw new ue(ue.a.f);
            }
        }
        catch (ue ue1)
        {
            ue1.toString();
            ub ub1;
            long l;
            try
            {
                ags1.close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
            return null;
        }
        obj = ua1.b;
        obj.f = ags1;
        obj.b = 0L;
        obj.c = false;
        obj.d = false;
        obj.h = false;
        obj.i = false;
        obj.j = false;
        obj.u = 0;
        obj.v = 0;
        obj.k = 0L;
        obj.o = 0L;
        obj.n = 0L;
        obj.m = 0L;
        obj.l = 0L;
        obj.t = -1L;
        obj.s = -1L;
        obj.r = -1L;
        obj.w = -1;
        obj.g = null;
        obj.x = '\0';
        obj.q = 0L;
        obj.p = 0L;
        obj = ua1.b;
        l = uo1.e();
        l = (long)uo1.f() + l;
        obj.b = uo1.m;
        obj.e = new ui(((ux) (obj)).a.a, l, ((ux) (obj)).b + l);
        obj.g = uo1;
        obj.n = 0L;
        obj.m = 0L;
        obj.t = -1L;
        obj = ua1.b;
        if (ua1.d.g)
        {
            l = 0L;
        } else
        {
            l = -1L;
        }
        obj.s = l;
        if (ua1.f == null)
        {
            ua1.f = new uy(ua1.b);
        }
        flag = false;
        if (uo1.i()) goto _L2; else goto _L1
_L1:
        ub1 = ua.h;
        if (!ub1.b.tryLock()) goto _L4; else goto _L3
_L3:
        obj = null;
        if (ub1.a.a == null)
        {
            ub1.a.a = new byte[0x400000];
        }
        if (ub1.a.b)
        {
            ub1.a.b = false;
            obj = ub1.a.a;
        }
        ub1.b.unlock();
          goto _L5
_L16:
        ua1.f.a(((byte []) (obj)));
_L2:
        ua1.f.a(uo1.n);
        ua1.f.a(uo1.j, uo1.i());
        obj = ua1.b.g;
        if (!((uo) (obj)).h()) goto _L7; else goto _L6
_L6:
        l = ~ua1.b.t;
_L11:
        if (l != (long)((uo) (obj)).i)
        {
            throw new ue(ue.a.b);
        }
          goto _L8
        obj;
        ua1.f.b();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_515;
        }
        ua.h.a();
        if (obj instanceof ue)
        {
            throw (ue)obj;
        }
          goto _L9
_L12:
        if (obj instanceof ue)
        {
            throw (ue)obj;
        }
          goto _L10
_L4:
        obj = null;
          goto _L5
_L14:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L7:
        l = ~ua1.b.s;
          goto _L11
_L8:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_586;
        }
        ua.h.a();
        return ags1;
_L9:
        try
        {
            throw new ue(((Exception) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
          goto _L12
_L10:
        throw new ue(((Exception) (obj)));
_L5:
        if (obj == null) goto _L14; else goto _L13
_L13:
        flag = true;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public final InputStream a()
    {
        return b();
    }
}
