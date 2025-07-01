// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public final class vx extends vw
{

    public byte a[];
    public int b[];
    public int c;
    public int d;
    public int e;
    public int f;

    public vx()
    {
        b = new int[8];
        d = 0x17d7840;
        a = null;
    }

    public static int a(vw vw1)
    {
        int i = vw1.g();
        switch (0xc000 & i)
        {
        default:
            vw1.b(2);
            i = vw1.g();
            vw1.b(16);
            int k = vw1.g();
            vw1.b(16);
            return i << 16 | k;

        case 0: // '\0'
            vw1.b(6);
            return i >> 10 & 0xf;

        case 16384: 
            if ((i & 0x3c00) == 0)
            {
                vw1.b(14);
                return i >> 2 & 0xff | 0xffffff00;
            } else
            {
                vw1.b(10);
                return i >> 6 & 0xff;
            }

        case 32768: 
            vw1.b(2);
            int j = vw1.g();
            vw1.b(16);
            return j;
        }
    }

    public static void a(Vector vector, int i, int j)
    {
        vector.set(i + 0, Byte.valueOf((byte)(j & 0xff)));
        vector.set(i + 1, Byte.valueOf((byte)(j >>> 8 & 0xff)));
        vector.set(i + 2, Byte.valueOf((byte)(j >>> 16 & 0xff)));
        vector.set(i + 3, Byte.valueOf((byte)(j >>> 24 & 0xff)));
    }

    private void a(wd wd1, boolean flag)
    {
        int i = g();
        if ((0x8000 & i) != 0)
        {
            wd1.a = wb.a;
            wd1.b = i >> 12 & 7;
            wd1.d = wd1.b;
            b(4);
            return;
        }
        if ((0xc000 & i) == 0)
        {
            wd1.a = wb.b;
            if (flag)
            {
                wd1.b = i >> 6 & 0xff;
                b(10);
                return;
            } else
            {
                b(2);
                wd1.b = a(((vw) (this)));
                return;
            }
        }
        wd1.a = wb.c;
        if ((i & 0x2000) == 0)
        {
            wd1.b = i >> 10 & 7;
            wd1.d = wd1.b;
            wd1.c = 0;
            b(6);
            return;
        }
        if ((i & 0x1000) == 0)
        {
            wd1.b = i >> 9 & 7;
            wd1.d = wd1.b;
            b(7);
        } else
        {
            wd1.b = 0;
            b(4);
        }
        wd1.c = a(((vw) (this)));
    }

    private boolean a(byte abyte0[])
    {
        return a == abyte0;
    }

    public final int a(int i, int j, int k)
    {
        int i1 = j / 8;
        byte abyte0[] = a;
        int l = i1 + 1;
        i1 = abyte0[i1 + i];
        abyte0 = a;
        int j1 = l + 1;
        return (i1 & 0xff | (abyte0[l + i] & 0xff) << 8 | (a[j1 + i] & 0xff) << 16 | (a[j1 + 1 + i] & 0xff) << 24) >>> (j & 7) & -1 >>> 32 - k;
    }

    public final int a(wd wd1)
    {
        if (wd1.a == wb.c)
        {
            int i = wd1.d;
            int k = wd1.c;
            return ug.b(a, i + k & 0x3ffff);
        } else
        {
            int j = wd1.d;
            return ug.b(a, j);
        }
    }

    public final int a(boolean flag, byte abyte0[], int i)
    {
        if (flag)
        {
            if (a(abyte0))
            {
                return abyte0[i];
            } else
            {
                return abyte0[i] & 0xff;
            }
        }
        if (a(abyte0))
        {
            return ug.b(abyte0, i);
        } else
        {
            return (((abyte0[i] & 0xff | 0) << 8 | abyte0[i + 1] & 0xff) << 8 | abyte0[i + 2] & 0xff) << 8 | abyte0[i + 3] & 0xff;
        }
    }

    public final void a(int i, byte abyte0[], int j, int k)
    {
        if (i < 0x40000)
        {
            System.arraycopy(abyte0, j, a, i, Math.min(0x40000 - i, k));
        }
    }

    public final void a(boolean flag, byte abyte0[], int i, int j)
    {
        if (flag)
        {
            if (a(abyte0))
            {
                abyte0[i] = (byte)j;
                return;
            } else
            {
                abyte0[i] = (byte)(abyte0[i] & 0 | (byte)(j & 0xff));
                return;
            }
        }
        if (a(abyte0))
        {
            ug.a(abyte0, i, j);
            return;
        } else
        {
            abyte0[i] = (byte)(j >>> 24 & 0xff);
            abyte0[i + 1] = (byte)(j >>> 16 & 0xff);
            abyte0[i + 2] = (byte)(j >>> 8 & 0xff);
            abyte0[i + 3] = (byte)(j & 0xff);
            return;
        }
    }

    public final void a(byte abyte0[], int i, we we1)
    {
        int k;
        int l;
        e();
        l = Math.min(32768, i);
        for (int j = 0; j < l; j++)
        {
            byte abyte1[] = an;
            abyte1[j] = (byte)(abyte1[j] | abyte0[j]);
        }

        k = 0;
        for (l = 1; l < i; l++)
        {
            k ^= abyte0[l];
        }

        b(8);
        we1.c = 0;
        l = i;
        if (k != abyte0[0]) goto _L2; else goto _L1
_L1:
        wf awf[];
        awf = new wf[7];
        awf[0] = new wf(53, 0xad576887, wg.b);
        awf[1] = new wf(57, 0x3cd7e57e, wg.c);
        awf[2] = new wf(120, 0x3769893f, wg.d);
        awf[3] = new wf(29, 0xe06077d, wg.g);
        awf[4] = new wf(149, 0x1c2c5dc8, wg.e);
        awf[5] = new wf(216, 0xbc85e701, wg.f);
        awf[6] = new wf(40, 0x46b9c560, wg.h);
        l = ud.a(-1, abyte0, 0, abyte0.length);
        k = 0;
_L26:
        if (k >= 7) goto _L4; else goto _L3
_L3:
        if (awf[k].b != ~l || awf[k].a != abyte0.length) goto _L6; else goto _L5
_L5:
        abyte0 = awf[k].c;
_L8:
        k = i;
        if (abyte0 != wg.a)
        {
            wc wc1 = new wc();
            wc1.a = vz.ac;
            wc1.c.b = ((wg) (abyte0)).i;
            wc1.c.a = wb.d;
            wc1.d.a = wb.d;
            we1.a.add(wc1);
            we1.c = we1.c + 1;
            k = 0;
        }
        i = g();
        b(1);
        if ((i & 0x8000) != 0)
        {
            long l1 = a(((vw) (this)));
            for (i = 0; al < k && (long)i < (0L & l1); i++)
            {
                we1.e.add(Byte.valueOf((byte)(g() >> 8)));
                b(8);
            }

        }
        break; /* Loop/switch isn't completed */
_L6:
        k++;
        continue; /* Loop/switch isn't completed */
_L4:
        abyte0 = wg.a;
        if (true) goto _L8; else goto _L7
_L7:
        do
        {
            l = k;
            if (al >= k)
            {
                break;
            }
            abyte0 = new wc();
            i = g();
            if ((i & 0x8000) == 0)
            {
                abyte0.a = vz.a(i >> 12);
                b(4);
            } else
            {
                abyte0.a = vz.a((i >> 10) - 24);
                b(6);
            }
            if ((vy.a[((wc) (abyte0)).a.ad] & 4) != 0)
            {
                boolean flag;
                if (g() >> 15 == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                abyte0.b = flag;
                b(1);
            } else
            {
                abyte0.b = false;
            }
            ((wc) (abyte0)).c.a = wb.d;
            ((wc) (abyte0)).d.a = wb.d;
            i = vy.a[((wc) (abyte0)).a.ad] & 3;
            if (i > 0)
            {
                a(((wc) (abyte0)).c, ((wc) (abyte0)).b);
                if (i == 2)
                {
                    a(((wc) (abyte0)).d, ((wc) (abyte0)).b);
                } else
                if (((wc) (abyte0)).c.a == wb.b && (vy.a[((wc) (abyte0)).a.ad] & 0x18) != 0)
                {
                    l = ((wc) (abyte0)).c.b;
                    if (l >= 256)
                    {
                        i = l - 256;
                    } else
                    {
                        if (l >= 136)
                        {
                            i = l - 264;
                        } else
                        if (l >= 16)
                        {
                            i = l - 8;
                        } else
                        {
                            i = l;
                            if (l >= 8)
                            {
                                i = l - 16;
                            }
                        }
                        i += we1.c;
                    }
                    ((wc) (abyte0)).c.b = i;
                }
            }
            we1.c = we1.c + 1;
            we1.a.add(abyte0);
        } while (true);
_L2:
        abyte0 = new wc();
        abyte0.a = vz.w;
        ((wc) (abyte0)).c.a = wb.d;
        ((wc) (abyte0)).d.a = wb.d;
        we1.a.add(abyte0);
        we1.c = we1.c + 1;
        if (l == 0) goto _L10; else goto _L9
_L9:
        Iterator iterator;
        we1 = we1.a;
        iterator = we1.iterator();
_L16:
        if (!iterator.hasNext()) goto _L10; else goto _L11
_L11:
        wc wc2 = (wc)iterator.next();
        public static final class _cls1
        {

            public static final int a[];
            public static final int b[];

            static 
            {
                b = new int[wg.values().length];
                try
                {
                    b[wg.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror61) { }
                try
                {
                    b[wg.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror60) { }
                try
                {
                    b[wg.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror59) { }
                try
                {
                    b[wg.g.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror58) { }
                try
                {
                    b[wg.e.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror57) { }
                try
                {
                    b[wg.f.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror56) { }
                try
                {
                    b[wg.h.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror55) { }
                a = new int[vz.values().length];
                try
                {
                    a[vz.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror54) { }
                try
                {
                    a[vz.O.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror53) { }
                try
                {
                    a[vz.P.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror52) { }
                try
                {
                    a[vz.b.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror51) { }
                try
                {
                    a[vz.Q.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror50) { }
                try
                {
                    a[vz.R.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror49) { }
                try
                {
                    a[vz.c.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror48) { }
                try
                {
                    a[vz.S.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror47) { }
                try
                {
                    a[vz.T.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror46) { }
                try
                {
                    a[vz.d.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror45) { }
                try
                {
                    a[vz.U.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror44) { }
                try
                {
                    a[vz.V.ordinal()] = 12;
                }
                catch (NoSuchFieldError nosuchfielderror43) { }
                try
                {
                    a[vz.e.ordinal()] = 13;
                }
                catch (NoSuchFieldError nosuchfielderror42) { }
                try
                {
                    a[vz.f.ordinal()] = 14;
                }
                catch (NoSuchFieldError nosuchfielderror41) { }
                try
                {
                    a[vz.g.ordinal()] = 15;
                }
                catch (NoSuchFieldError nosuchfielderror40) { }
                try
                {
                    a[vz.W.ordinal()] = 16;
                }
                catch (NoSuchFieldError nosuchfielderror39) { }
                try
                {
                    a[vz.X.ordinal()] = 17;
                }
                catch (NoSuchFieldError nosuchfielderror38) { }
                try
                {
                    a[vz.h.ordinal()] = 18;
                }
                catch (NoSuchFieldError nosuchfielderror37) { }
                try
                {
                    a[vz.Y.ordinal()] = 19;
                }
                catch (NoSuchFieldError nosuchfielderror36) { }
                try
                {
                    a[vz.Z.ordinal()] = 20;
                }
                catch (NoSuchFieldError nosuchfielderror35) { }
                try
                {
                    a[vz.i.ordinal()] = 21;
                }
                catch (NoSuchFieldError nosuchfielderror34) { }
                try
                {
                    a[vz.j.ordinal()] = 22;
                }
                catch (NoSuchFieldError nosuchfielderror33) { }
                try
                {
                    a[vz.k.ordinal()] = 23;
                }
                catch (NoSuchFieldError nosuchfielderror32) { }
                try
                {
                    a[vz.l.ordinal()] = 24;
                }
                catch (NoSuchFieldError nosuchfielderror31) { }
                try
                {
                    a[vz.m.ordinal()] = 25;
                }
                catch (NoSuchFieldError nosuchfielderror30) { }
                try
                {
                    a[vz.n.ordinal()] = 26;
                }
                catch (NoSuchFieldError nosuchfielderror29) { }
                try
                {
                    a[vz.o.ordinal()] = 27;
                }
                catch (NoSuchFieldError nosuchfielderror28) { }
                try
                {
                    a[vz.p.ordinal()] = 28;
                }
                catch (NoSuchFieldError nosuchfielderror27) { }
                try
                {
                    a[vz.q.ordinal()] = 29;
                }
                catch (NoSuchFieldError nosuchfielderror26) { }
                try
                {
                    a[vz.r.ordinal()] = 30;
                }
                catch (NoSuchFieldError nosuchfielderror25) { }
                try
                {
                    a[vz.s.ordinal()] = 31;
                }
                catch (NoSuchFieldError nosuchfielderror24) { }
                try
                {
                    a[vz.t.ordinal()] = 32;
                }
                catch (NoSuchFieldError nosuchfielderror23) { }
                try
                {
                    a[vz.u.ordinal()] = 33;
                }
                catch (NoSuchFieldError nosuchfielderror22) { }
                try
                {
                    a[vz.v.ordinal()] = 34;
                }
                catch (NoSuchFieldError nosuchfielderror21) { }
                try
                {
                    a[vz.x.ordinal()] = 35;
                }
                catch (NoSuchFieldError nosuchfielderror20) { }
                try
                {
                    a[vz.y.ordinal()] = 36;
                }
                catch (NoSuchFieldError nosuchfielderror19) { }
                try
                {
                    a[vz.z.ordinal()] = 37;
                }
                catch (NoSuchFieldError nosuchfielderror18) { }
                try
                {
                    a[vz.A.ordinal()] = 38;
                }
                catch (NoSuchFieldError nosuchfielderror17) { }
                try
                {
                    a[vz.B.ordinal()] = 39;
                }
                catch (NoSuchFieldError nosuchfielderror16) { }
                try
                {
                    a[vz.aa.ordinal()] = 40;
                }
                catch (NoSuchFieldError nosuchfielderror15) { }
                try
                {
                    a[vz.ab.ordinal()] = 41;
                }
                catch (NoSuchFieldError nosuchfielderror14) { }
                try
                {
                    a[vz.C.ordinal()] = 42;
                }
                catch (NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    a[vz.D.ordinal()] = 43;
                }
                catch (NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    a[vz.E.ordinal()] = 44;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    a[vz.F.ordinal()] = 45;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    a[vz.G.ordinal()] = 46;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[vz.H.ordinal()] = 47;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[vz.I.ordinal()] = 48;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[vz.J.ordinal()] = 49;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[vz.K.ordinal()] = 50;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[vz.L.ordinal()] = 51;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[vz.M.ordinal()] = 52;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[vz.w.ordinal()] = 53;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[vz.ac.ordinal()] = 54;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[vz.N.ordinal()] = 55;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[wc2.a.ordinal()];
        JVM INSTR tableswitch 1 4: default 960
    //                   1 1120
    //                   2 960
    //                   3 960
    //                   4 1148;
           goto _L12 _L13 _L12 _L12 _L14
_L12:
        if ((vy.a[wc2.a.ad] & 0x40) == 0) goto _L16; else goto _L15
_L15:
        i = we1.indexOf(wc2) + 1;
_L22:
        if (i >= we1.size()) goto _L18; else goto _L17
_L17:
        k = vy.a[((wc)we1.get(i)).a.ad];
        if ((k & 0x38) == 0) goto _L20; else goto _L19
_L19:
        i = 1;
_L23:
        if (i == 0)
        {
            switch (_cls1.a[wc2.a.ordinal()])
            {
            case 7: // '\007'
                if (wc2.b)
                {
                    abyte0 = vz.S;
                } else
                {
                    abyte0 = vz.T;
                }
                wc2.a = abyte0;
                break;

            case 10: // '\n'
                if (wc2.b)
                {
                    abyte0 = vz.U;
                } else
                {
                    abyte0 = vz.V;
                }
                wc2.a = abyte0;
                break;

            case 15: // '\017'
                if (wc2.b)
                {
                    abyte0 = vz.W;
                } else
                {
                    abyte0 = vz.X;
                }
                wc2.a = abyte0;
                break;

            case 18: // '\022'
                if (wc2.b)
                {
                    abyte0 = vz.Y;
                } else
                {
                    abyte0 = vz.Z;
                }
                wc2.a = abyte0;
                break;

            case 39: // '\''
                if (wc2.b)
                {
                    abyte0 = vz.aa;
                } else
                {
                    abyte0 = vz.ab;
                }
                wc2.a = abyte0;
                break;
            }
            continue; /* Loop/switch isn't completed */
        }
          goto _L16
_L13:
        if (wc2.b)
        {
            abyte0 = vz.O;
        } else
        {
            abyte0 = vz.P;
        }
        wc2.a = abyte0;
        continue; /* Loop/switch isn't completed */
_L14:
        if (wc2.b)
        {
            abyte0 = vz.Q;
        } else
        {
            abyte0 = vz.R;
        }
        wc2.a = abyte0;
        continue; /* Loop/switch isn't completed */
_L20:
        if ((k & 0x40) != 0) goto _L18; else goto _L21
_L21:
        i++;
          goto _L22
_L10:
        return;
_L18:
        i = 0;
          goto _L23
        if (true) goto _L16; else goto _L24
_L24:
        if (true) goto _L26; else goto _L25
_L25:
    }

    public final boolean c(int i)
    {
        if (i >= e)
        {
            return true;
        }
        int j = d - 1;
        d = j;
        if (j <= 0)
        {
            return false;
        } else
        {
            f = i;
            return true;
        }
    }
}
