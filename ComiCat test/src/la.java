// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.util.Collections;

public final class la extends md
{

    private final transient kz a;

    private la(md.a a1, kz kz1)
    {
        super(a1);
        a = kz1;
    }

    public static la a(mv mv1, mc mc1)
    {
        Object obj;
        Object obj1;
        Object obj2;
        md.a a1;
        obj1 = null;
        obj = null;
        obj2 = null;
        a1 = new md.a(mc1.c, mc1.d, mc1.e.c);
        ni.a(mv1);
        if (mc1.a() || !ly.b("application/json; charset=UTF-8", mc1.a)) goto _L2; else goto _L1
_L1:
        Object obj3 = mc1.b();
        if (obj3 == null) goto _L2; else goto _L3
_L3:
        obj1 = mv1.a(mc1.b());
        Exception exception;
        try
        {
            obj = ((my) (obj1)).d();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj3)
        {
            mv1 = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            mv1 = null;
            obj = obj1;
            continue; /* Loop/switch isn't completed */
        }
        mv1 = ((mv) (obj));
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        mv1 = ((my) (obj1)).c();
        if (mv1 == null) goto _L5; else goto _L4
_L4:
        ((my) (obj1)).a(Collections.singleton("error"));
        if (((my) (obj1)).d() == nb.d) goto _L5; else goto _L6
_L6:
        mv1 = (kz)((my) (obj1)).a(kz);
        obj2 = mv1;
        obj = obj1;
        obj3 = mv1.c();
        obj2 = mv1;
_L18:
        mv1 = ((mv) (obj3));
        obj = obj2;
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        ((my) (obj1)).b();
        obj = obj2;
        mv1 = ((mv) (obj3));
_L16:
        mc1 = md.a(mc1);
        if (!ol.a(mv1))
        {
            mc1.append(ok.a).append(mv1);
            a1.d = mv1;
        }
        a1.e = mc1.toString();
        return new la(a1, ((kz) (obj)));
        obj3;
        obj1 = null;
        mv1 = null;
_L15:
        obj2 = mv1;
        obj = obj1;
        ((IOException) (obj3)).printStackTrace();
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_241;
        }
        mc1.c();
        obj = mv1;
        mv1 = null;
        continue; /* Loop/switch isn't completed */
        if (mv1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        ((my) (obj1)).b();
        obj = mv1;
        mv1 = null;
        continue; /* Loop/switch isn't completed */
        obj2;
        obj = null;
        mv1 = null;
_L13:
        if (obj != null) goto _L8; else goto _L7
_L7:
        mc1.c();
_L10:
        throw obj2;
        obj1;
        obj2 = null;
        obj = mv1;
        mv1 = ((mv) (obj2));
_L11:
        ((IOException) (obj1)).printStackTrace();
        continue; /* Loop/switch isn't completed */
_L8:
        if (mv1 != null) goto _L10; else goto _L9
_L9:
        ((my) (obj)).b();
          goto _L10
_L2:
        mv1 = mc1.e();
        obj = obj1;
        continue; /* Loop/switch isn't completed */
        obj1;
        mv1 = null;
          goto _L11
        obj1;
        mv1 = ((mv) (obj3));
        obj = obj2;
          goto _L11
        obj1;
        obj = mv1;
        mv1 = null;
          goto _L11
        exception;
        mv1 = ((mv) (obj2));
        obj2 = exception;
        if (true) goto _L13; else goto _L12
        obj3;
        if (true) goto _L15; else goto _L14
_L14:
        obj = mv1;
        mv1 = null;
        if (true) goto _L16; else goto _L5
_L5:
        obj3 = null;
        if (true) goto _L18; else goto _L17
_L17:
    }
}
