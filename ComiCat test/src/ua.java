// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ua
    implements Closeable
{

    public static ub h = new ub();
    private static Logger i = Logger.getLogger(ua.getName());
    public uf a;
    public final ux b;
    public final List c;
    public us d;
    public ur e;
    public uy f;
    public long g;
    private final uc j;
    private un k;
    private long l;
    private int m;
    private boolean n;
    private int o;
    private long p;

    public ua(File file)
    {
        this(file, (byte)0);
    }

    private ua(File file, byte byte0)
    {
        c = new ArrayList();
        d = null;
        e = null;
        k = null;
        l = -1L;
        n = false;
        o = 0;
        p = 0L;
        g = 0L;
        a(new uh(file));
        j = null;
        b = new ux(this);
    }

    private void a(uf uf1)
    {
        p = 0L;
        g = 0L;
        close();
        a = uf1;
        long l2;
        d = null;
        e = null;
        k = null;
        c.clear();
        m = 0;
        l2 = a.length();
_L15:
        long l1;
        uf1 = new byte[7];
        l1 = a.a();
        if (l1 >= l2) goto _L2; else goto _L1
_L1:
        if (a.a(uf1, 7) == 0) goto _L2; else goto _L3
_L3:
        uf1 = new uk(uf1);
        uf1.a(l1);
        if (uf1.d())
        {
            byte abyte0[] = new byte[4];
            a.a(abyte0, 4);
            uf1.a(abyte0);
        }
        static final class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[uw.values().length];
                try
                {
                    a[uw.i.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[uw.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[uw.g.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[uw.f.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[uw.b.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[uw.a.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[uw.h.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[uw.e.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[uw.d.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[uw.j.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[uf1.g().ordinal()];
        JVM INSTR tableswitch 5 10: default 907
    //                   5 350
    //                   6 400
    //                   7 473
    //                   8 515
    //                   9 557
    //                   10 626;
           goto _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L4:
        byte abyte1[];
        abyte1 = new byte[4];
        a.a(abyte1, 4);
        abyte1 = new ul(uf1, abyte1);
        _cls1.a[abyte1.g().ordinal()];
        JVM INSTR tableswitch 1 4: default 910
    //                   1 717
    //                   2 717
    //                   3 810
    //                   4 886;
           goto _L11 _L12 _L12 _L13 _L14
_L11:
        i.warning("Unknown Header");
        throw new ue(ue.a.c);
        uf1;
        i.log(Level.WARNING, "exception in archive constructor maybe file is encrypted or currupt", uf1);
          goto _L2
_L5:
        d = new us(uf1);
        if (!d.h())
        {
            throw new ue(ue.a.d);
        }
        c.add(d);
          goto _L15
_L6:
        int i1;
        if (uf1.c())
        {
            i1 = 7;
        } else
        {
            i1 = 6;
        }
        abyte1 = new byte[i1];
        a.a(abyte1, i1);
        uf1 = new ur(uf1, abyte1);
        c.add(uf1);
        e = uf1;
        if (e.h())
        {
            throw new ue(ue.a.i);
        }
          goto _L15
_L7:
        abyte1 = new byte[8];
        a.a(abyte1, 8);
        uf1 = new uv(uf1, abyte1);
        c.add(uf1);
          goto _L15
_L8:
        abyte1 = new byte[7];
        a.a(abyte1, 7);
        uf1 = new uj(uf1, abyte1);
        c.add(uf1);
          goto _L15
_L9:
        abyte1 = new byte[6];
        a.a(abyte1, 6);
        uf1 = new um(uf1, abyte1);
        c.add(uf1);
        l1 = uf1.e();
        long l3 = uf1.f();
        a.a(l1 + l3);
          goto _L15
_L10:
        i1 = 0;
        if (uf1.a())
        {
            i1 = 4;
        }
        j1 = i1;
        if (uf1.b())
        {
            j1 = i1 + 2;
        }
        if (j1 <= 0) goto _L17; else goto _L16
_L16:
        abyte1 = new byte[j1];
        a.a(abyte1, j1);
        uf1 = new un(uf1, abyte1);
_L18:
        c.add(uf1);
        k = uf1;
          goto _L2
_L17:
        uf1 = new un(uf1, null);
          goto _L18
_L12:
        i1 = abyte1.f() - 7 - 4;
        uf1 = new byte[i1];
        a.a(uf1, i1);
        uf1 = new uo(abyte1, uf1);
        c.add(uf1);
        l4 = uf1.e();
        l6 = uf1.f();
        if (!uf1.j()) goto _L20; else goto _L19
_L19:
        l1 = ((uo) (uf1)).m;
_L21:
        a.a(l1 + (l4 + l6));
          goto _L15
_L13:
        i1 = abyte1.f() - 7 - 4;
        uf1 = new byte[i1];
        a.a(uf1, i1);
        uf1 = new uu(abyte1, uf1);
        l1 = uf1.e();
        long l5 = uf1.f();
        long l7 = ((ul) (uf1)).g;
        a.a(l7 + (l1 + l5));
          goto _L15
_L14:
        a.a(l1 + (long)uf1.f());
          goto _L15
_L2:
        uf1 = c.iterator();
        int j1;
        long l4;
        long l6;
        do
        {
            if (!uf1.hasNext())
            {
                break;
            }
            abyte1 = (uk)uf1.next();
            if (abyte1.g() == uw.c)
            {
                p = p + ((uo)abyte1).m;
            }
        } while (true);
        return;
_L20:
        l1 = 0L;
          goto _L21
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = c.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            uk uk1 = (uk)iterator.next();
            if (uk1.g().equals(uw.c))
            {
                arraylist.add((uo)uk1);
            }
        } while (true);
        return arraylist;
    }

    public void close()
    {
        if (a != null)
        {
            a.close();
            a = null;
        }
        if (f != null)
        {
            f.b();
        }
    }

}
