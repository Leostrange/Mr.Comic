// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.InputStream;
import java.io.InputStreamReader;

public final class aip
{

    protected final ajc a;
    protected final InputStream b;
    protected final byte c[];
    protected int d;
    protected boolean e;
    protected int f;
    private int g;
    private int h;
    private final boolean i = true;

    public aip(ajc ajc1, InputStream inputstream)
    {
        e = true;
        f = 0;
        a = ajc1;
        b = inputstream;
        c = ajc1.e();
        g = 0;
        h = 0;
        d = 0;
    }

    private static void a(String s)
    {
        throw new CharConversionException((new StringBuilder("Unsupported UCS-4 endianness (")).append(s).append(") detected").toString());
    }

    private boolean a(int j)
    {
        boolean flag = false;
        if ((0xff00 & j) != 0) goto _L2; else goto _L1
_L1:
        e = true;
_L6:
        f = 2;
        flag = true;
_L4:
        return flag;
_L2:
        if ((j & 0xff) != 0) goto _L4; else goto _L3
_L3:
        e = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private boolean b(int j)
    {
        int l;
        for (int k = h - g; k < j; k = l + k)
        {
            if (b == null)
            {
                l = -1;
            } else
            {
                l = b.read(c, h, c.length - h);
            }
            if (l <= 0)
            {
                return false;
            }
            h = h + l;
        }

        return true;
    }

    public final aii a(int j, aim aim, ajk ajk1, ajl ajl1)
    {
        boolean flag1 = true;
        if (!b(4)) goto _L2; else goto _L1
_L1:
        int l;
        byte byte0 = c[g];
        byte byte1 = c[g + 1];
        l = c[g + 2];
        l = c[g + 3] & 0xff | (byte0 << 24 | (byte1 & 0xff) << 16 | (l & 0xff) << 8);
        l;
        JVM INSTR lookupswitch 4: default 136
    //                   -16842752: 331
    //                   -131072: 300
    //                   65279: 274
    //                   65534: 326;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        Object obj;
        int k;
        boolean flag2;
        boolean flag3;
        k = l >>> 16;
        if (k == 65279)
        {
            g = g + 2;
            f = 2;
            e = true;
            k = 1;
        } else
        if (k == 65534)
        {
            g = g + 2;
            f = 2;
            e = false;
            k = 1;
        } else
        if (l >>> 8 == 0xefbbbf)
        {
            g = g + 3;
            f = 1;
            e = true;
            k = 1;
        } else
        {
            k = 0;
        }
_L13:
        if (k == 0) goto _L9; else goto _L8
_L8:
        k = ((flag1) ? 1 : 0);
_L17:
        if (k != 0) goto _L11; else goto _L10
_L10:
        obj = aic.a;
          goto _L12
_L6:
        e = true;
        g = g + 4;
        f = 4;
        k = 1;
          goto _L13
_L5:
        g = g + 4;
        f = 4;
        e = false;
        k = 1;
          goto _L13
_L7:
        a("2143");
_L4:
        a("3412");
          goto _L3
_L9:
        if (l >> 8 != 0) goto _L15; else goto _L14
_L14:
        e = true;
_L21:
        f = 4;
        flag = true;
_L26:
        k = ((flag1) ? 1 : 0);
        if (flag) goto _L17; else goto _L16
_L16:
        k = ((flag1) ? 1 : 0);
        if (a(l >>> 16)) goto _L17; else goto _L18
_L18:
        k = 0;
          goto _L17
_L15:
        if ((0xffffff & l) != 0) goto _L20; else goto _L19
_L19:
        e = false;
          goto _L21
_L20:
        if ((0xff00ffff & l) != 0) goto _L23; else goto _L22
_L22:
        a("3412");
          goto _L21
_L23:
        if ((0xffff00ff & l) != 0) goto _L25; else goto _L24
_L24:
        a("2143");
          goto _L21
_L25:
        flag = false;
          goto _L26
_L2:
        if (!b(2) || !a((c[g] & 0xff) << 8 | c[g + 1] & 0xff)) goto _L18; else goto _L27
_L27:
        k = ((flag1) ? 1 : 0);
          goto _L17
_L11:
        switch (f)
        {
        case 3: // '\003'
        default:
            throw new RuntimeException("Internal error");

        case 1: // '\001'
            obj = aic.a;
            break;

        case 2: // '\002'
            if (e)
            {
                obj = aic.b;
            } else
            {
                obj = aic.c;
            }
            break;

        case 4: // '\004'
            if (e)
            {
                obj = aic.d;
            } else
            {
                obj = aic.e;
            }
            break;
        }
        continue; /* Loop/switch isn't completed */
_L12:
        aic aic1;
        a.a(((aic) (obj)));
        flag2 = aii.a.j.a(j);
        flag3 = aii.a.i.a(j);
        boolean flag;
        if (obj == aic.a && flag2)
        {
            ajk1 = ajk1.a(flag3);
            return new aiy(a, j, b, aim, ajk1, c, g, h, i);
        }
        obj = a;
        aic1 = a.b();
        static final class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[aic.values().length];
                try
                {
                    a[aic.d.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[aic.e.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[aic.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[aic.c.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[aic.a.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[aic1.ordinal()];
        JVM INSTR tableswitch 1 5: default 732
    //                   1 742
    //                   2 742
    //                   3 802
    //                   4 802
    //                   5 802;
           goto _L28 _L29 _L29 _L30 _L30 _L30
_L28:
        throw new RuntimeException("Internal error");
_L29:
        ajk1 = new aji(a, b, c, g, h, a.b().b());
_L32:
        return new aiw(((ajc) (obj)), j, ajk1, aim, ajl1.a(flag2, flag3));
_L30:
        ajk1 = b;
        if (ajk1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        ajk1 = new ByteArrayInputStream(c, g, h);
_L34:
        ajk1 = new InputStreamReader(ajk1, aic1.a());
        if (true) goto _L32; else goto _L31
_L31:
        if (g >= h) goto _L34; else goto _L33
_L33:
        ajk1 = new aje(a, ajk1, c, g, h);
          goto _L34
        if (true) goto _L12; else goto _L35
_L35:
          goto _L13
    }
}
