// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;

public final class uy extends va
{

    public static int b[] = {
        4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 
        2, 2, 2, 2, 2, 2, 14, 0, 12
    };
    public int a;
    private long aA;
    private boolean aB;
    private boolean aC;
    private int aD;
    private int aE;
    private final vm ao = new vm();
    private vx ap;
    private List aq;
    private List ar;
    private List as;
    private int at;
    private boolean au;
    private byte av[];
    private int aw[];
    private byte ax[];
    private vk ay;
    private boolean az;

    public uy(ux ux1)
    {
        ap = new vx();
        aq = new ArrayList();
        ar = new ArrayList();
        as = new ArrayList();
        av = new byte[404];
        aw = new int[60];
        ax = new byte[60];
        f = ux1;
        j = null;
        az = false;
        d = false;
        e = false;
        g = false;
    }

    private void a(int i, int i1)
    {
        if (i1 != i)
        {
            g = true;
        }
        if (i1 < i)
        {
            a(j, i, -i & 0x3fffff);
            a(j, 0, i1);
            e = true;
            return;
        } else
        {
            a(j, i, i1 - i);
            return;
        }
    }

    private void a(we we1)
    {
        if (we1.d.size() <= 0) goto _L2; else goto _L1
_L1:
        vx vx1;
        Object obj;
        int k1;
        int k8;
        we1.f[6] = (int)aA;
        vx.a(we1.d, 36, (int)aA);
        vx.a(we1.d, 40, (int)(aA >>> 32));
        vx1 = ap;
        for (int i = 0; i < we1.f.length; i++)
        {
            vx1.b[i] = we1.f[i];
        }

        long l18 = Math.min(we1.d.size(), 8192) & -1;
        if (l18 != 0L)
        {
            for (int i1 = 0; (long)i1 < l18; i1++)
            {
                vx1.a[0x3c000 + i1] = ((Byte)we1.d.get(i1)).byteValue();
            }

        }
        long l20 = -1L & Math.min(we1.e.size(), 8192L - l18);
        if (l20 != 0L)
        {
            for (int j1 = 0; (long)j1 < l20; j1++)
            {
                vx1.a[0x3c000 + (int)l18 + j1] = ((Byte)we1.e.get(j1)).byteValue();
            }

        }
        vx1.b[7] = 0x40000;
        vx1.c = 0;
        List list;
        if (we1.b.size() != 0)
        {
            list = we1.b;
        } else
        {
            list = we1.a;
        }
        k1 = we1.c;
        vx1.d = 0x17d7840;
        vx1.e = k1;
        vx1.f = 0;
_L82:
        obj = (wc)list.get(vx1.f);
        k8 = vx1.a(((wc) (obj)).c);
        k1 = vx1.a(((wc) (obj)).d);
        vx._cls1.a[((wc) (obj)).a.ordinal()];
        JVM INSTR tableswitch 1 54: default 592
    //                   1 628
    //                   2 665
    //                   3 694
    //                   4 723
    //                   5 816
    //                   6 901
    //                   7 986
    //                   8 1201
    //                   9 1255
    //                   10 1309
    //                   11 1432
    //                   12 1486
    //                   13 1540
    //                   14 1577
    //                   15 1614
    //                   16 1713
    //                   17 1746
    //                   18 1779
    //                   19 1860
    //                   20 1895
    //                   21 1930
    //                   22 1952
    //                   23 2045
    //                   24 2138
    //                   25 2231
    //                   26 2309
    //                   27 2346
    //                   28 2383
    //                   29 2420
    //                   30 2464
    //                   31 2508
    //                   32 2545
    //                   33 2602
    //                   34 2659
    //                   35 2729
    //                   36 2768
    //                   37 2899
    //                   38 3015
    //                   39 3131
    //                   40 3214
    //                   41 3244
    //                   42 3274
    //                   43 3358
    //                   44 3420
    //                   45 3469
    //                   46 3518
    //                   47 3547
    //                   48 3577
    //                   49 3652
    //                   50 3726
    //                   51 3794
    //                   52 3975
    //                   53 4156
    //                   54 4219;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30 _L31 _L32 _L33 _L34 _L35 _L36 _L37 _L38 _L39 _L40 _L41 _L42 _L43 _L44 _L45 _L46 _L47 _L48 _L49 _L50 _L51 _L52 _L53 _L54 _L55 _L56 _L57
_L3:
        vx1.f = vx1.f + 1;
        vx1.d = vx1.d - 1;
        continue; /* Loop/switch isn't completed */
_L4:
        vx1.a(((wc) (obj)).b, vx1.a, k8, vx1.a(((wc) (obj)).b, vx1.a, k1));
          goto _L58
_L5:
        vx1.a(true, vx1.a, k8, vx1.a(true, vx1.a, k1));
          goto _L58
_L6:
        vx1.a(false, vx1.a, k8, vx1.a(false, vx1.a, k1));
          goto _L58
_L7:
        int i2 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        k1 = i2 - vx1.a(((wc) (obj)).b, vx1.a, k1);
        if (k1 == 0)
        {
            k1 = wa.b.d;
        } else
        if (k1 > i2)
        {
            k1 = 1;
        } else
        {
            k1 = k1 & wa.c.d | 0;
        }
        vx1.c = k1;
          goto _L58
_L8:
        int j2 = vx1.a(true, vx1.a, k8);
        k1 = j2 - vx1.a(true, vx1.a, k1);
        if (k1 == 0)
        {
            k1 = wa.b.d;
        } else
        if (k1 > j2)
        {
            k1 = 1;
        } else
        {
            k1 = wa.c.d & k1 | 0;
        }
        vx1.c = k1;
          goto _L58
_L9:
        int k2 = vx1.a(false, vx1.a, k8);
        k1 = k2 - vx1.a(false, vx1.a, k1);
        if (k1 == 0)
        {
            k1 = wa.b.d;
        } else
        if (k1 > k2)
        {
            k1 = 1;
        } else
        {
            k1 = wa.c.d & k1 | 0;
        }
        vx1.c = k1;
          goto _L58
_L10:
        int i9 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        int l2 = (int)((long)i9 + (long)vx1.a(((wc) (obj)).b, vx1.a, k1) & -1L);
        if (((wc) (obj)).b)
        {
            l2 &= 0xff;
            if (l2 < i9)
            {
                k1 = 1;
            } else
            {
                if (l2 == 0)
                {
                    k1 = wa.b.d;
                } else
                if ((l2 & 0x80) != 0)
                {
                    k1 = wa.c.d;
                } else
                {
                    k1 = 0;
                }
                k1 |= 0;
            }
            vx1.c = k1;
            k1 = l2;
        } else
        {
            if (l2 < i9)
            {
                k1 = 1;
            } else
            {
                if (l2 == 0)
                {
                    k1 = wa.b.d;
                } else
                {
                    k1 = wa.c.d & l2;
                }
                k1 |= 0;
            }
            vx1.c = k1;
            k1 = l2;
        }
        vx1.a(((wc) (obj)).b, vx1.a, k8, k1);
          goto _L58
_L11:
        vx1.a(true, vx1.a, k8, (int)((long)vx1.a(true, vx1.a, k8) & -1L + (long)vx1.a(true, vx1.a, k1) & -1L));
          goto _L58
_L12:
        vx1.a(false, vx1.a, k8, (int)((long)vx1.a(false, vx1.a, k8) & -1L + (long)vx1.a(false, vx1.a, k1) & -1L));
          goto _L58
_L13:
        int j9 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        int i3 = (int)((long)j9 & -1L - (long)vx1.a(((wc) (obj)).b, vx1.a, k1) & -1L);
        if (i3 == 0)
        {
            k1 = wa.b.d;
        } else
        if (i3 > j9)
        {
            k1 = 1;
        } else
        {
            k1 = wa.c.d & i3 | 0;
        }
        vx1.c = k1;
        vx1.a(((wc) (obj)).b, vx1.a, k8, i3);
          goto _L58
_L14:
        vx1.a(true, vx1.a, k8, (int)((long)vx1.a(true, vx1.a, k8) & -1L - (long)vx1.a(true, vx1.a, k1) & -1L));
          goto _L58
_L15:
        vx1.a(false, vx1.a, k8, (int)((long)vx1.a(false, vx1.a, k8) & -1L - (long)vx1.a(false, vx1.a, k1) & -1L));
          goto _L58
_L16:
        if ((vx1.c & wa.b.d) != 0)
        {
            vx1.c(vx1.a(false, vx1.a, k8));
            continue; /* Loop/switch isn't completed */
        }
          goto _L58
_L17:
        if ((vx1.c & wa.b.d) == 0)
        {
            vx1.c(vx1.a(false, vx1.a, k8));
            continue; /* Loop/switch isn't completed */
        }
          goto _L58
_L18:
        int j3 = (int)((long)vx1.a(((wc) (obj)).b, vx1.a, k8) & 0L);
        k1 = j3;
        if (((wc) (obj)).b)
        {
            k1 = j3 & 0xff;
        }
        vx1.a(((wc) (obj)).b, vx1.a, k8, k1);
        if (k1 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 = wa.c.d & k1;
        }
        vx1.c = k1;
          goto _L58
_L19:
        vx1.a(true, vx1.a, k8, (int)((long)vx1.a(true, vx1.a, k8) & 0L));
          goto _L58
_L20:
        vx1.a(false, vx1.a, k8, (int)((long)vx1.a(false, vx1.a, k8) & 0L));
          goto _L58
_L21:
        k1 = (int)((long)vx1.a(((wc) (obj)).b, vx1.a, k8) & -2L);
        vx1.a(((wc) (obj)).b, vx1.a, k8, k1);
        if (k1 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 = wa.c.d & k1;
        }
        vx1.c = k1;
          goto _L58
_L22:
        vx1.a(true, vx1.a, k8, (int)((long)vx1.a(true, vx1.a, k8) & -2L));
          goto _L58
_L23:
        vx1.a(false, vx1.a, k8, (int)((long)vx1.a(false, vx1.a, k8) & -2L));
          goto _L58
_L24:
        vx1.c(vx1.a(false, vx1.a, k8));
        continue; /* Loop/switch isn't completed */
_L25:
        int k3 = vx1.a(((wc) (obj)).b, vx1.a, k8) ^ vx1.a(((wc) (obj)).b, vx1.a, k1);
        if (k3 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 = wa.c.d & k3;
        }
        vx1.c = k1;
        vx1.a(((wc) (obj)).b, vx1.a, k8, k3);
          goto _L58
_L26:
        int l3 = vx1.a(((wc) (obj)).b, vx1.a, k8) & vx1.a(((wc) (obj)).b, vx1.a, k1);
        if (l3 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 = wa.c.d & l3;
        }
        vx1.c = k1;
        vx1.a(((wc) (obj)).b, vx1.a, k8, l3);
          goto _L58
_L27:
        int i4 = vx1.a(((wc) (obj)).b, vx1.a, k8) | vx1.a(((wc) (obj)).b, vx1.a, k1);
        if (i4 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 = wa.c.d & i4;
        }
        vx1.c = k1;
        vx1.a(((wc) (obj)).b, vx1.a, k8, i4);
          goto _L58
_L28:
        int j4 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        k1 = vx1.a(((wc) (obj)).b, vx1.a, k1) & j4;
        if (k1 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 &= wa.c.d;
        }
        vx1.c = k1;
          goto _L58
_L29:
        if ((vx1.c & wa.c.d) != 0)
        {
            vx1.c(vx1.a(false, vx1.a, k8));
            continue; /* Loop/switch isn't completed */
        }
          goto _L58
_L30:
        if ((vx1.c & wa.c.d) == 0)
        {
            vx1.c(vx1.a(false, vx1.a, k8));
            continue; /* Loop/switch isn't completed */
        }
          goto _L58
_L31:
        if ((vx1.c & wa.a.d) != 0)
        {
            vx1.c(vx1.a(false, vx1.a, k8));
            continue; /* Loop/switch isn't completed */
        }
          goto _L58
_L32:
        if ((vx1.c & (wa.a.d | wa.b.d)) != 0)
        {
            vx1.c(vx1.a(false, vx1.a, k8));
            continue; /* Loop/switch isn't completed */
        }
          goto _L58
_L33:
        if ((vx1.c & (wa.a.d | wa.b.d)) == 0)
        {
            vx1.c(vx1.a(false, vx1.a, k8));
            continue; /* Loop/switch isn't completed */
        }
          goto _L58
_L34:
        if ((vx1.c & wa.a.d) == 0)
        {
            vx1.c(vx1.a(false, vx1.a, k8));
            continue; /* Loop/switch isn't completed */
        }
          goto _L58
_L35:
        obj = vx1.b;
        obj[7] = obj[7] - 4;
        vx1.a(false, vx1.a, vx1.b[7] & 0x3ffff, vx1.a(false, vx1.a, k8));
          goto _L58
_L36:
        vx1.a(false, vx1.a, k8, vx1.a(false, vx1.a, vx1.b[7] & 0x3ffff));
        obj = vx1.b;
        obj[7] = obj[7] + 4;
          goto _L58
_L37:
        obj = vx1.b;
        obj[7] = obj[7] - 4;
        vx1.a(false, vx1.a, vx1.b[7] & 0x3ffff, vx1.f + 1);
        vx1.c(vx1.a(false, vx1.a, k8));
        continue; /* Loop/switch isn't completed */
_L38:
        vx1.a(((wc) (obj)).b, vx1.a, k8, ~vx1.a(((wc) (obj)).b, vx1.a, k8));
          goto _L58
_L39:
        int k4 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        int i12 = vx1.a(((wc) (obj)).b, vx1.a, k1);
        int k9 = k4 << i12;
        if (k9 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 = wa.c.d & k9;
        }
        if ((k4 << i12 - 1 & 0x80000000) != 0)
        {
            k4 = wa.a.d;
        } else
        {
            k4 = 0;
        }
        vx1.c = k4 | k1;
        vx1.a(((wc) (obj)).b, vx1.a, k8, k9);
          goto _L58
_L40:
        int l4 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        int l9 = vx1.a(((wc) (obj)).b, vx1.a, k1);
        int j12 = l4 >>> l9;
        if (j12 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 = wa.c.d & j12;
        }
        vx1.c = k1 | l4 >>> l9 - 1 & wa.a.d;
        vx1.a(((wc) (obj)).b, vx1.a, k8, j12);
          goto _L58
_L41:
        int i5 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        int i10 = vx1.a(((wc) (obj)).b, vx1.a, k1);
        int k12 = i5 >> i10;
        if (k12 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 = wa.c.d & k12;
        }
        vx1.c = k1 | i5 >> i10 - 1 & wa.a.d;
        vx1.a(((wc) (obj)).b, vx1.a, k8, k12);
          goto _L58
_L42:
        int j5 = -vx1.a(((wc) (obj)).b, vx1.a, k8);
        if (j5 == 0)
        {
            k1 = wa.b.d;
        } else
        {
            k1 = wa.a.d | wa.c.d & j5;
        }
        vx1.c = k1;
        vx1.a(((wc) (obj)).b, vx1.a, k8, j5);
          goto _L58
_L43:
        vx1.a(true, vx1.a, k8, -vx1.a(true, vx1.a, k8));
          goto _L58
_L44:
        vx1.a(false, vx1.a, k8, -vx1.a(false, vx1.a, k8));
          goto _L58
_L45:
        int k5 = 0;
        for (k1 = vx1.b[7] - 4; k5 < 8; k1 -= 4)
        {
            vx1.a(false, vx1.a, 0x3ffff & k1, vx1.b[k5]);
            k5++;
        }

        obj = vx1.b;
        obj[7] = obj[7] - 32;
          goto _L58
_L46:
        int l5 = 0;
        k1 = vx1.b[7];
        while (l5 < 8) 
        {
            vx1.b[7 - l5] = vx1.a(false, vx1.a, 0x3ffff & k1);
            l5++;
            k1 += 4;
        }
          goto _L58
_L47:
        obj = vx1.b;
        obj[7] = obj[7] - 4;
        vx1.a(false, vx1.a, vx1.b[7] & 0x3ffff, vx1.c);
          goto _L58
_L48:
        vx1.c = vx1.a(false, vx1.a, vx1.b[7] & 0x3ffff);
        obj = vx1.b;
        obj[7] = obj[7] + 4;
          goto _L58
_L49:
        vx1.a(false, vx1.a, k8, vx1.a(true, vx1.a, k1));
          goto _L58
_L50:
        vx1.a(false, vx1.a, k8, (byte)vx1.a(true, vx1.a, k1));
          goto _L58
_L51:
        int i6 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        vx1.a(((wc) (obj)).b, vx1.a, k8, vx1.a(((wc) (obj)).b, vx1.a, k1));
        vx1.a(((wc) (obj)).b, vx1.a, k1, i6);
          goto _L58
_L52:
        k1 = (int)((long)vx1.a(((wc) (obj)).b, vx1.a, k8) & -1L * (long)vx1.a(((wc) (obj)).b, vx1.a, k1) & -1L & -1L);
        vx1.a(((wc) (obj)).b, vx1.a, k8, k1);
          goto _L58
_L53:
        k1 = vx1.a(((wc) (obj)).b, vx1.a, k1);
        if (k1 != 0)
        {
            k1 = vx1.a(((wc) (obj)).b, vx1.a, k8) / k1;
            vx1.a(((wc) (obj)).b, vx1.a, k8, k1);
        }
          goto _L58
_L54:
        int j6 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        int j10 = vx1.c;
        j10 = wa.a.d & j10;
        k1 = (int)((long)j6 & -1L + (long)vx1.a(((wc) (obj)).b, vx1.a, k1) & -1L + (long)j10 & -1L);
        if (((wc) (obj)).b)
        {
            k1 &= 0xff;
        }
        if (k1 < j6 || k1 == j6 && j10 != 0)
        {
            j6 = 1;
        } else
        {
            if (k1 == 0)
            {
                j6 = wa.b.d;
            } else
            {
                j6 = wa.c.d & k1;
            }
            j6 |= 0;
        }
        vx1.c = j6;
        vx1.a(((wc) (obj)).b, vx1.a, k8, k1);
          goto _L58
_L55:
        int k6 = vx1.a(((wc) (obj)).b, vx1.a, k8);
        int k10 = vx1.c;
        k10 = wa.a.d & k10;
        k1 = (int)((long)k6 & -1L - (long)vx1.a(((wc) (obj)).b, vx1.a, k1) & -1L - (long)k10 & -1L);
        if (((wc) (obj)).b)
        {
            k1 &= 0xff;
        }
        if (k1 > k6 || k1 == k6 && k10 != 0)
        {
            k6 = 1;
        } else
        {
            if (k1 == 0)
            {
                k6 = wa.b.d;
            } else
            {
                k6 = wa.c.d & k1;
            }
            k6 |= 0;
        }
        vx1.c = k6;
        vx1.a(((wc) (obj)).b, vx1.a, k8, k1);
          goto _L58
_L56:
        if (vx1.b[7] < 0x40000)
        {
            vx1.c(vx1.a(false, vx1.a, vx1.b[7] & 0x3ffff));
            obj = vx1.b;
            obj[7] = obj[7] + 4;
            continue; /* Loop/switch isn't completed */
        }
          goto _L59
_L57:
        obj = wg.a(((wc) (obj)).c.b);
        vx._cls1.b[((wg) (obj)).ordinal()];
        JVM INSTR tableswitch 1 7: default 4284
    //                   1 4287
    //                   2 4287
    //                   3 4507
    //                   4 4908
    //                   5 5040
    //                   6 5421
    //                   7 6027;
           goto _L58 _L60 _L60 _L61 _L62 _L63 _L64 _L65
_L60:
        long l19;
        k8 = vx1.b[4];
        l19 = vx1.b[6] & -1;
        if (k8 >= 0x3c000) goto _L58; else goto _L66
_L66:
        byte abyte0[];
        byte byte4;
        byte byte5;
        if (obj == wg.c)
        {
            k1 = 233;
        } else
        {
            k1 = 232;
        }
        byte4 = (byte)k1;
        k1 = 0;
        while (k1 < k8 - 4) 
        {
            abyte0 = vx1.a;
            int l6 = k1 + 1;
            byte5 = abyte0[k1];
            if (byte5 != 232)
            {
                k1 = l6;
                if (byte5 != byte4)
                {
                    break MISSING_BLOCK_LABEL_4337;
                }
            }
            long l21 = (long)l6 + l19;
            long l24 = vx1.a(false, vx1.a, l6);
            if ((0xffffffff80000000L & l24) != 0L)
            {
                if ((l21 + l24 & 0xffffffff80000000L) == 0L)
                {
                    vx1.a(false, vx1.a, l6, (int)l24 + 0x1000000);
                }
            } else
            if ((l24 - 0x1000000L & 0xffffffff80000000L) != 0L)
            {
                vx1.a(false, vx1.a, l6, (int)(l24 - l21));
            }
            k1 = l6 + 4;
        }
          goto _L58
_L61:
        int i14 = vx1.b[4];
        l19 = vx1.b[6] & -1;
        if (i14 < 0x3c000)
        {
            l19 >>>= 4;
            k1 = 0;
            while (k1 < i14 - 21) 
            {
                int i7 = (vx1.a[k1] & 0x1f) - 16;
                if (i7 >= 0)
                {
                    byte byte6 = (new byte[] {
                        4, 4, 6, 6, 0, 0, 7, 7, 4, 4, 
                        0, 0, 4, 4, 0, 0
                    })[i7];
                    if (byte6 != 0)
                    {
                        for (int j7 = 0; j7 <= 2; j7++)
                        {
                            if ((1 << j7 & byte6) == 0)
                            {
                                continue;
                            }
                            int l10 = j7 * 41 + 5;
                            if (vx1.a(k1, l10 + 37, 4) != 5)
                            {
                                continue;
                            }
                            k8 = (int)((long)vx1.a(k1, l10 + 13, 20) - l19);
                            l10 += 13;
                            int k15 = l10 / 8;
                            l10 &= 7;
                            int l12 = ~(0xfffff << l10);
                            l10 = (k8 & 0xfffff) << l10;
                            for (k8 = 0; k8 < 4; k8++)
                            {
                                byte abyte1[] = vx1.a;
                                int j16 = k1 + k15 + k8;
                                abyte1[j16] = (byte)(abyte1[j16] & l12);
                                abyte1 = vx1.a;
                                j16 = k1 + k15 + k8;
                                abyte1[j16] = (byte)(abyte1[j16] | l10);
                                l12 = l12 >>> 8 | 0xff000000;
                                l10 >>>= 8;
                            }

                        }

                    }
                }
                l19 = 1L + l19;
                k1 += 16;
            }
        }
          goto _L58
_L62:
        int i13 = vx1.b[4] & -1;
        int j14 = vx1.b[0] & -1;
        int k7 = 0;
        vx1.a(false, vx1.a, 0x3c020, i13);
        if (i13 < 0x1e000)
        {
            k1 = 0;
            while (k1 < j14) 
            {
                int i11 = 0;
                for (k8 = i13 + k1; k8 < (i13 * 2 & -1);)
                {
                    byte abyte2[] = vx1.a;
                    byte byte0 = (byte)(i11 - vx1.a[k7]);
                    abyte2[k8] = byte0;
                    k8 += j14;
                    k7++;
                    i11 = byte0;
                }

                k1++;
            }
        }
          goto _L58
_L63:
        int j13 = vx1.b[4];
        int k14 = vx1.b[0];
        int j11 = vx1.b[1];
        int l7 = 0;
        vx1.a(false, vx1.a, 0x3c020, j13);
        if (j13 < 0x1e000 && j11 >= 0)
        {
            k1 = 0;
            do
            {
                if (k1 >= 3)
                {
                    break;
                }
                k8 = k1;
                l19 = 0L;
                while (k8 < j13) 
                {
label0:
                    {
                        int i15 = k8 - (k14 - 3);
                        long l22 = l19;
                        if (i15 < 3)
                        {
                            break label0;
                        }
                        int l15 = i15 + j13;
                        i15 = vx1.a[l15] & 0xff;
                        l15 = vx1.a[l15 - 3] & 0xff;
                        l22 = ((long)i15 + l19) - (long)l15;
                        int k16 = Math.abs((int)(l22 - l19));
                        int i17 = Math.abs((int)(l22 - (long)i15));
                        int k17 = Math.abs((int)(l22 - (long)l15));
                        if (k16 <= i17)
                        {
                            l22 = l19;
                            if (k16 <= k17)
                            {
                                break label0;
                            }
                        }
                        if (i17 <= k17)
                        {
                            l22 = i15;
                        } else
                        {
                            l22 = l15;
                        }
                    }
                    l19 = 255L & (l22 - (long)vx1.a[l7] & 255L);
                    vx1.a[j13 + k8] = (byte)(int)(255L & l19);
                    k8 += 3;
                    l7++;
                }
                k1++;
            } while (true);
            k1 = j11;
            while (k1 < j13 - 2) 
            {
                byte byte3 = vx1.a[j13 + k1 + 1];
                byte abyte3[] = vx1.a;
                k8 = j13 + k1;
                abyte3[k8] = (byte)(abyte3[k8] + byte3);
                abyte3 = vx1.a;
                k8 = j13 + k1 + 2;
                abyte3[k8] = (byte)(byte3 + abyte3[k8]);
                k1 += 3;
            }
        }
          goto _L58
_L64:
        int l17;
        int i18;
        l17 = vx1.b[4];
        i18 = vx1.b[0];
        k1 = 0;
        vx1.a(false, vx1.a, 0x3c020, l17);
        if (l17 >= 0x1e000) goto _L58; else goto _L67
_L67:
        int i8 = 0;
_L80:
        if (i8 >= i18) goto _L58; else goto _L68
_L68:
        long al[];
        int k11;
        int k13;
        int l14;
        int j15;
        int i16;
        int l16;
        long l23;
        al = new long[7];
        l19 = 0L;
        j15 = 0;
        l14 = i8;
        i16 = 0;
        k13 = 0;
        k8 = k1;
        k11 = 0;
        k1 = 0;
        l23 = 0L;
        l16 = 0;
_L79:
        if (l14 >= l17) goto _L70; else goto _L69
_L69:
        int j17;
        long l27;
        long l28;
        j17 = (int)l23 - l16;
        l16 = (int)l23;
        long l25 = k1 * l16;
        l27 = k13 * j17;
        l28 = k11 * i16;
        l23 = vx1.a[k8] & 0xff;
        l27 = (8L * l19 + l25 + l27 + l28 >>> 3 & 255L) - l23 & -1L;
        vx1.a[l17 + l14] = (byte)(int)l27;
        l28 = (byte)(int)(l27 - l19);
        int j18 = (byte)(int)l23 << 3;
        al[0] = al[0] + (long)Math.abs(j18);
        al[1] = al[1] + (long)Math.abs(j18 - l16);
        al[2] = al[2] + (long)Math.abs(j18 + l16);
        al[3] = al[3] + (long)Math.abs(j18 - j17);
        al[4] = al[4] + (long)Math.abs(j18 + j17);
        al[5] = al[5] + (long)Math.abs(j18 - i16);
        l19 = al[6];
        al[6] = (long)Math.abs(j18 + i16) + l19;
        if ((j15 & 0x1f) != 0) goto _L72; else goto _L71
_L71:
        long l26;
        l19 = al[0];
        l26 = 0L;
        al[0] = 0L;
        for (i16 = 1; i16 < 7;)
        {
            l23 = l19;
            if (al[i16] < l19)
            {
                l23 = al[i16];
                l26 = i16;
            }
            al[i16] = 0L;
            i16++;
            l19 = l23;
        }

        (int)l26;
        JVM INSTR tableswitch 1 6: default 5884
    //                   1 5918
    //                   2 5934
    //                   3 5950
    //                   4 5966
    //                   5 5982
    //                   6 5998;
           goto _L72 _L73 _L74 _L75 _L76 _L77 _L78
_L72:
        l19 = l27;
        j15++;
        l14 += i18;
        i16 = j17;
        k8++;
        l23 = l28;
          goto _L79
_L73:
        if (k1 >= -16)
        {
            k1--;
        }
          goto _L72
_L74:
        if (k1 < 16)
        {
            k1++;
        }
          goto _L72
_L75:
        if (k13 >= -16)
        {
            k13--;
        }
          goto _L72
_L76:
        if (k13 < 16)
        {
            k13++;
        }
          goto _L72
_L77:
        if (k11 >= -16)
        {
            k11--;
        }
          goto _L72
_L78:
        if (k11 < 16)
        {
            k11++;
        }
          goto _L72
_L70:
        i8++;
        k1 = k8;
          goto _L80
_L65:
        int l8 = vx1.b[4];
        int l1 = 0;
        if (l8 < 0x1e000)
        {
            int j8 = l8;
            while (l1 < l8) 
            {
                byte abyte4[] = vx1.a;
                int l11 = l1 + 1;
                byte byte1 = abyte4[l1];
                if (byte1 == 2)
                {
                    byte abyte5[] = vx1.a;
                    int l13 = l11 + 1;
                    byte byte2 = abyte5[l11];
                    l1 = l13;
                    byte1 = byte2;
                    if (byte2 != 2)
                    {
                        byte1 = (byte)(byte2 - 32);
                        l1 = l13;
                    }
                } else
                {
                    l1 = l11;
                }
                vx1.a[j8] = byte1;
                j8++;
            }
            vx1.a(false, vx1.a, 0x3c01c, j8 - l8);
            vx1.a(false, vx1.a, 0x3c020, l8);
        }
_L58:
        if (true) goto _L3; else goto _L59
_L59:
        l8 = 0x3ffff & vx1.a(false, vx1.a, 0x3c020);
        l11 = vx1.a(false, vx1.a, 0x3c01c) & 0x3ffff;
        j8 = l11;
        l1 = l8;
        if (l8 + l11 >= 0x40000)
        {
            l1 = 0;
            j8 = 0;
        }
        we1.g = l1;
        we1.h = j8;
        we1.d.clear();
        j8 = Math.min(vx1.a(false, vx1.a, 0x3c030), 8128);
        if (j8 != 0)
        {
            we1.d.setSize(j8 + 64);
            for (l1 = 0; l1 < j8 + 64; l1++)
            {
                we1.d.set(l1, Byte.valueOf(vx1.a[0x3c000 + l1]));
            }

        }
_L2:
        return;
        if (true) goto _L82; else goto _L81
_L81:
    }

    private void a(byte abyte0[], int i, int i1)
    {
        if (aA >= this.i)
        {
            return;
        }
        long l1 = this.i - aA;
        int j1;
        if ((long)i1 > l1)
        {
            j1 = (int)l1;
        } else
        {
            j1 = i1;
        }
        f.b(abyte0, i, j1);
        aA = aA + (long)i1;
    }

    private boolean a(int i, List list)
    {
        vw vw1;
        int j1;
        vw1 = new vw();
        vw1.e();
        for (int i1 = 0; i1 < Math.min(32768, list.size()); i1++)
        {
            vw1.i()[i1] = ((Byte)list.get(i1)).byteValue();
        }

        list = ap;
        if (((vx) (list)).a == null)
        {
            list.a = new byte[0x40004];
        }
        if ((i & 0x80) != 0)
        {
            j1 = vx.a(vw1);
            if (j1 == 0)
            {
                k();
            } else
            {
                j1--;
            }
        } else
        {
            j1 = at;
        }
        if (j1 <= aq.size() && j1 <= as.size()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        at = j1;
        vb vb1;
        int l2;
        boolean flag;
        int j3;
        boolean flag1;
        if (j1 == aq.size())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        vb1 = new vb();
        if (flag)
        {
            if (j1 > 1024)
            {
                continue; /* Loop/switch isn't completed */
            }
            list = new vb();
            aq.add(list);
            vb1.e = aq.size() - 1;
            as.add(Integer.valueOf(0));
            list.c = 0;
        } else
        {
            list = (vb)aq.get(j1);
            vb1.e = j1;
            list.c = ((vb) (list)).c + 1;
        }
        ar.add(vb1);
        vb1.c = ((vb) (list)).c;
        j3 = vx.a(vw1);
        if ((i & 0x40) != 0)
        {
            j3 += 258;
        }
        vb1.a = l + j3 & 0x3fffff;
        if ((i & 0x20) != 0)
        {
            l2 = vx.a(vw1);
        } else
        if (j1 < as.size())
        {
            l2 = ((Integer)as.get(j1)).intValue();
        } else
        {
            l2 = 0;
        }
        vb1.b = l2;
        if (m != l && (m - l & 0x3fffff) <= j3)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        vb1.d = flag1;
        as.set(j1, Integer.valueOf(vb1.b));
        Arrays.fill(vb1.f.f, 0);
        vb1.f.f[3] = 0x3c000;
        vb1.f.f[4] = vb1.b;
        vb1.f.f[5] = vb1.c;
        if ((i & 0x10) != 0)
        {
            l2 = vw1.g();
            vw1.b(7);
            for (j1 = 0; j1 < 7; j1++)
            {
                if ((1 << j1 & l2 >>> 9) != 0)
                {
                    vb1.f.f[j1] = vx.a(vw1);
                }
            }

        }
        if (flag)
        {
            int i3 = vx.a(vw1);
            if (i3 >= 0x10000 || i3 == 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            byte abyte0[] = new byte[i3];
            for (int k1 = 0; k1 < i3; k1++)
            {
                if (vw1.h())
                {
                    continue; /* Loop/switch isn't completed */
                }
                abyte0[k1] = (byte)(vw1.g() >> 8);
                vw1.b(8);
            }

            ap.a(abyte0, i3, ((vb) (list)).f);
        }
label0:
        {
            vb1.f.b = ((vb) (list)).f.a;
            vb1.f.c = ((vb) (list)).f.c;
            int l1 = ((vb) (list)).f.e.size();
            if (l1 > 0 && l1 < 8192)
            {
                vb1.f.e = ((vb) (list)).f.e;
            }
            if (vb1.f.d.size() < 64)
            {
                vb1.f.d.clear();
                vb1.f.d.setSize(64);
            }
            list = vb1.f.d;
            for (int i2 = 0; i2 < 7; i2++)
            {
                vx.a(list, i2 * 4, vb1.f.f[i2]);
            }

            vx.a(list, 28, vb1.b);
            vx.a(list, 32, 0);
            vx.a(list, 36, 0);
            vx.a(list, 40, 0);
            vx.a(list, 44, vb1.c);
            for (int j2 = 0; j2 < 16; j2++)
            {
                list.set(j2 + 48, Byte.valueOf((byte)0));
            }

            if ((i & 8) == 0)
            {
                break label0;
            }
            if (!vw1.h())
            {
                int k2 = vx.a(vw1);
                if (k2 <= 8128)
                {
                    i = vb1.f.d.size();
                    if (i < k2 + 64)
                    {
                        vb1.f.d.setSize((k2 + 64) - i);
                    }
                    list = vb1.f.d;
                    i = 0;
                    do
                    {
                        if (i >= k2)
                        {
                            break label0;
                        }
                        if (vw1.h())
                        {
                            break;
                        }
                        list.set(i + 64, Byte.valueOf((byte)(vw1.g() >>> 8)));
                        vw1.b(8);
                        i++;
                    } while (true);
                }
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    private void b(int i, int i1)
    {
        N = i1;
        O = i;
    }

    private void c(int i)
    {
        k[3] = k[2];
        k[2] = k[1];
        k[1] = k[0];
        k[0] = i;
    }

    private void c(int i, int i1)
    {
label0:
        {
            int k1 = l - i1;
            i1 = k1;
            int j1 = i;
            if (k1 >= 0)
            {
                i1 = k1;
                j1 = i;
                if (k1 < 0x3ffefc)
                {
                    i1 = k1;
                    j1 = i;
                    if (l < 0x3ffefc)
                    {
                        byte abyte0[] = j;
                        i1 = l;
                        l = i1 + 1;
                        abyte0[i1] = j[k1];
                        j1 = k1 + 1;
                        i1 = i;
                        i = j1;
                        do
                        {
                            i1--;
                            if (i1 <= 0)
                            {
                                break;
                            }
                            byte abyte1[] = j;
                            j1 = l;
                            l = j1 + 1;
                            abyte1[j1] = j[i];
                            i++;
                        } while (true);
                        break label0;
                    }
                }
            }
            for (; j1 != 0; j1--)
            {
                j[l] = j[i1 & 0x3fffff];
                l = l + 1 & 0x3fffff;
                i1++;
            }

        }
    }

    private void j()
    {
        int i;
        int i1;
        int j1;
        j1 = m;
        int k1 = l;
        i = 0;
        i1 = j1;
        j1 = k1 - j1 & 0x3fffff;
_L2:
        if (i >= ar.size())
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj = (vb)ar.get(i);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_1030;
        }
        int i2;
        if (((vb) (obj)).d)
        {
            obj.d = false;
            int l1 = i;
            i = i1;
            i1 = l1;
        } else
        {
            int i3 = ((vb) (obj)).a;
            int j3 = ((vb) (obj)).b;
            if ((i3 - i1 & 0x3fffff) >= j1)
            {
                break MISSING_BLOCK_LABEL_1030;
            }
            int j2 = j1;
            j1 = i1;
            if (i1 != i3)
            {
                a(i1, i3);
                j2 = l - i3 & 0x3fffff;
                j1 = i3;
            }
            i1 = i;
            if (j3 <= j2)
            {
                j1 = i3 + j3 & 0x3fffff;
                we we1;
                if (i3 < j1 || j1 == 0)
                {
                    ap.a(0, j, i3, j3);
                } else
                {
                    i1 = 0x400000 - i3;
                    ap.a(0, j, i3, i1);
                    ap.a(i1, j, 0, j1);
                }
                we1 = ((vb)aq.get(((vb) (obj)).e)).f;
                obj = ((vb) (obj)).f;
                if (we1.d.size() > 64)
                {
                    ((we) (obj)).d.setSize(we1.d.size());
                    for (i1 = 0; i1 < we1.d.size() - 64; i1++)
                    {
                        ((we) (obj)).d.set(i1 + 64, we1.d.get(i1 + 64));
                    }

                }
                a(((we) (obj)));
                if (((we) (obj)).d.size() > 64)
                {
                    if (we1.d.size() < ((we) (obj)).d.size())
                    {
                        we1.d.setSize(((we) (obj)).d.size());
                    }
                    for (i1 = 0; i1 < ((we) (obj)).d.size() - 64; i1++)
                    {
                        we1.d.set(i1 + 64, ((we) (obj)).d.get(i1 + 64));
                    }

                } else
                {
                    we1.d.clear();
                }
                int k2 = ((we) (obj)).g;
                i1 = ((we) (obj)).h;
                byte abyte0[] = (byte[])wk.b.a(i1);
                System.arraycopy(ap.a, k2, abyte0, 0, i1);
                ar.set(i, null);
                do
                {
                    if (i + 1 >= ar.size())
                    {
                        break;
                    }
                    Object obj1 = (vb)ar.get(i + 1);
                    if (obj1 == null || ((vb) (obj1)).a != i3 || ((vb) (obj1)).b != i1 || ((vb) (obj1)).d)
                    {
                        break;
                    }
                    ap.a(0, abyte0, 0, i1);
                    wk.b.a(abyte0);
                    abyte0 = ((vb)aq.get(((vb) (obj1)).e)).f;
                    obj1 = ((vb) (obj1)).f;
                    if (((we) (abyte0)).d.size() > 64)
                    {
                        ((we) (obj1)).d.setSize(((we) (abyte0)).d.size());
                        for (i1 = 0; i1 < ((we) (abyte0)).d.size() - 64; i1++)
                        {
                            ((we) (obj1)).d.set(i1 + 64, ((we) (abyte0)).d.get(i1 + 64));
                        }

                    }
                    a(((we) (obj1)));
                    if (((we) (obj1)).d.size() > 64)
                    {
                        if (((we) (abyte0)).d.size() < ((we) (obj1)).d.size())
                        {
                            ((we) (abyte0)).d.setSize(((we) (obj1)).d.size());
                        }
                        for (i1 = 0; i1 < ((we) (obj1)).d.size() - 64; i1++)
                        {
                            ((we) (abyte0)).d.set(i1 + 64, ((we) (obj1)).d.get(i1 + 64));
                        }

                    } else
                    {
                        ((we) (abyte0)).d.clear();
                    }
                    int k3 = ((we) (obj1)).g;
                    k2 = ((we) (obj1)).h;
                    abyte0 = (byte[])wk.b.a(k2);
                    for (i1 = 0; i1 < k2; i1++)
                    {
                        abyte0[i1] = ((Byte)((we) (obj1)).d.get(k3 + i1)).byteValue();
                    }

                    i++;
                    ar.set(i, null);
                    i1 = k2;
                } while (true);
                f.b(abyte0, 0, i1);
                wk.b.a(abyte0);
                g = true;
                aA = aA + (long)i1;
                k2 = l - j1 & 0x3fffff;
                i1 = i;
                i = j1;
                j1 = k2;
            } else
            {
                for (; i1 < ar.size(); i1++)
                {
                    vb vb1 = (vb)ar.get(i1);
                    if (vb1 != null && vb1.d)
                    {
                        vb1.d = false;
                    }
                }

                m = j1;
                return;
            }
        }
_L3:
        i2 = i;
        i = i1 + 1;
        i1 = i2;
        if (true) goto _L2; else goto _L1
_L1:
        a(i1, l);
        m = l;
        return;
        int l2 = i;
        i = i1;
        i1 = l2;
          goto _L3
    }

    private void k()
    {
        as.clear();
        at = 0;
        aq.clear();
        ar.clear();
    }

    private boolean l()
    {
        byte abyte0[];
        byte abyte1[];
        int k4;
        k4 = 0;
        abyte0 = (byte[])wk.b.a(20);
        abyte1 = (byte[])wk.b.a(404);
        if (al <= h - 25 || c()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        long l4;
        b(8 - am & 7);
        l4 = g() & -1;
        if ((32768L & l4) == 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        ay = vk.b;
        abyte0 = ao;
        k4 = a() & 0xff;
        boolean flag;
        int k1;
        if ((k4 & 0x20) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            k1 = a();
        } else
        {
            if (((vm) (abyte0)).u.b == 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            k1 = 0;
        }
        if ((k4 & 0x40) != 0)
        {
            a = a();
        }
        abyte1 = ((vm) (abyte0)).t;
        abyte1.e = this;
        abyte1.b = 0L;
        abyte1.a = 0L;
        abyte1.c = 0xffffffffL;
        for (int k2 = 0; k2 < 4; k2++)
        {
            abyte1.b = (((vp) (abyte1)).b << 8 | (long)((vp) (abyte1)).e.a()) & 0xffffffffL;
        }

        if (flag)
        {
            int i = (k4 & 0x1f) + 1;
            if (i > 16)
            {
                i = (i - 16) * 3 + 16;
            }
            if (i == 1)
            {
                ((vm) (abyte0)).u.a();
                return false;
            }
            abyte1 = ((vm) (abyte0)).u;
            int l2 = k1 + 1;
            k1 = l2;
            if (l2 > 2)
            {
                k1 = 2;
            }
            k1 <<= 20;
            if (((vv) (abyte1)).b != k1)
            {
                abyte1.a();
                int i3 = k1 / 12;
                k4 = vv.a;
                i3 = vv.a + i3 * k4;
                k4 = i3 + 1 + 152;
                abyte1.p = k4;
                k4 += 12;
                abyte1.n = (byte[])wk.b.a(k4);
                abyte1.f = 1;
                abyte1.l = (((vv) (abyte1)).f + i3) - vv.a;
                abyte1.b = k1;
                abyte1.o = ((vv) (abyte1)).f + i3;
                if (!vv.u && k4 - ((vv) (abyte1)).p != 12)
                {
                    throw new AssertionError((new StringBuilder()).append(k4).append(" ").append(((vv) (abyte1)).p).append(" 12").toString());
                }
                k1 = ((vv) (abyte1)).o;
                for (int j3 = 0; j3 < ((vv) (abyte1)).i.length;)
                {
                    ((vv) (abyte1)).i[j3] = new vr(((vv) (abyte1)).n);
                    ((vv) (abyte1)).i[j3].c(k1);
                    j3++;
                    k1 += 4;
                }

                abyte1.q = new vr(((vv) (abyte1)).n);
                abyte1.r = new vq(((vv) (abyte1)).n);
                abyte1.s = new vq(((vv) (abyte1)).n);
                abyte1.t = new vq(((vv) (abyte1)).n);
            }
            abyte0.c = new vn(((vm) (abyte0)).u.n);
            abyte0.d = new vn(((vm) (abyte0)).u.n);
            abyte0.e = new vn(((vm) (abyte0)).u.n);
            abyte0.f = new vt(((vm) (abyte0)).u.n);
            abyte0.b = new vs();
            for (int l1 = 0; l1 < 25; l1++)
            {
                for (int k3 = 0; k3 < 16; k3++)
                {
                    ((vm) (abyte0)).a[l1][k3] = new vs();
                }

            }

            abyte0.a(i);
        }
        if (((vm) (abyte0)).c.c() != 0)
        {
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        int i1;
        ay = vk.a;
        aD = 0;
        aE = 0;
        if ((l4 & 16384L) == 0L)
        {
            Arrays.fill(av, (byte)0);
        }
        b(2);
        i1 = 0;
        while (i1 < 20) 
        {
            int i2 = g() >>> 12 & 0xff;
            b(4);
            if (i2 == 15)
            {
                i2 = g() >>> 12 & 0xff;
                b(4);
                if (i2 == 0)
                {
                    abyte0[i1] = 15;
                } else
                {
                    int l3 = i2 + 2;
                    i2 = i1;
                    for (i1 = l3; i1 > 0 && i2 < abyte0.length; i1--)
                    {
                        abyte0[i2] = 0;
                        i2++;
                    }

                    i1 = i2 - 1;
                }
            } else
            {
                abyte0[i1] = (byte)i2;
            }
            i1++;
        }
        a(abyte0, 0, ae, 20);
        i1 = 0;
_L5:
        int j2;
        do
        {
            if (i1 >= 404)
            {
                break MISSING_BLOCK_LABEL_1193;
            }
            if (al > h - 5 && !c())
            {
                continue; /* Loop/switch isn't completed */
            }
            j2 = a(ae);
            if (j2 >= 16)
            {
                break;
            }
            abyte1[i1] = (byte)(j2 + av[i1] & 0xf);
            i1++;
        } while (true);
        if (j2 >= 18)
        {
            break MISSING_BLOCK_LABEL_1104;
        }
        int i4;
        if (j2 == 16)
        {
            j2 = (g() >>> 13) + 3;
            b(3);
            i4 = i1;
        } else
        {
            j2 = (g() >>> 9) + 11;
            b(7);
            i4 = i1;
        }
_L7:
        i1 = i4;
        if (j2 <= 0) goto _L5; else goto _L4
_L4:
        i1 = i4;
        if (i4 >= 404) goto _L5; else goto _L6
_L6:
        abyte1[i4] = abyte1[i4 - 1];
        i4++;
        j2--;
          goto _L7
        int j4;
        if (j2 == 18)
        {
            j2 = (g() >>> 13) + 3;
            b(3);
            j4 = i1;
        } else
        {
            j2 = (g() >>> 9) + 11;
            b(7);
            j4 = i1;
        }
        i1 = j4;
        if (j2 <= 0) goto _L5; else goto _L8
_L8:
        i1 = j4;
        if (j4 >= 404) goto _L5; else goto _L9
_L9:
        abyte1[j4] = 0;
        j4++;
        j2--;
        break MISSING_BLOCK_LABEL_1130;
        au = true;
        if (al <= h)
        {
            a(abyte1, 0, aa, 299);
            a(abyte1, 299, ab, 60);
            a(abyte1, 359, ac, 17);
            a(abyte1, 376, ad, 28);
            for (int j1 = k4; j1 < av.length; j1++)
            {
                av[j1] = abyte1[j1];
            }

            wk.b.a(abyte1);
            wk.b.a(abyte0);
            return true;
        }
        if (true) goto _L1; else goto _L10
_L10:
    }

    private boolean m()
    {
        int i1;
        int j1;
        j1 = f() >> 8;
        a(8);
        i1 = (j1 & 7) + 1;
        if (i1 != 7) goto _L2; else goto _L1
_L1:
        int i;
        i = (f() >> 8) + 7;
        a(8);
_L6:
        ArrayList arraylist;
        arraylist = new ArrayList();
        i1 = 0;
_L4:
        if (i1 >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        if (al >= h - 1 && !c() && i1 < i - 1)
        {
            return false;
        }
        arraylist.add(Byte.valueOf((byte)(f() >> 8)));
        a(8);
        i1++;
        continue; /* Loop/switch isn't completed */
_L2:
        i = i1;
        if (i1 == 8)
        {
            i = f();
            a(16);
        }
        continue; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        return a(j1, arraylist);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final int a()
    {
        if (al > 32738)
        {
            c();
        }
        byte abyte0[] = an;
        int i = al;
        al = i + 1;
        return abyte0[i] & 0xff;
    }

    public final void a(int i, boolean flag)
    {
        if (f.g.k == 48)
        {
            byte abyte0[] = new byte[0x10000];
            do
            {
                int i1 = f.a(abyte0, 0, (int)Math.min(0x10000L, this.i));
                if (i1 == 0 || i1 == -1)
                {
                    break;
                }
                if ((long)i1 >= this.i)
                {
                    i1 = (int)this.i;
                }
                f.b(abyte0, 0, i1);
                if (this.i >= 0L)
                {
                    this.i = this.i - (long)i1;
                }
            } while (true);
        }
        i;
        JVM INSTR lookupswitch 5: default 160
    //                   15: 161
    //                   20: 167
    //                   26: 167
    //                   29: 173
    //                   36: 173;
           goto _L1 _L2 _L3 _L3 _L4 _L4
_L1:
        return;
_L2:
        b(flag);
        return;
_L3:
        c(flag);
        return;
_L4:
        if (aw[1] == 0)
        {
            int j1 = 0;
            int k4 = 0;
            i = 0;
            int i3 = 0;
            while (j1 < b.length) 
            {
                int l5 = b[j1];
                for (int i5 = 0; i5 < l5;)
                {
                    aw[k4] = i3;
                    ax[k4] = (byte)i;
                    i5++;
                    k4++;
                    i3 += 1 << i;
                }

                j1++;
                i++;
            }
        }
        aB = true;
        if (d)
        {
            break; /* Loop/switch isn't completed */
        }
        a(flag);
        if (!c() || (!flag || !au) && !l()) goto _L1; else goto _L5
_L5:
        if (aC) goto _L1; else goto _L6
_L6:
        l = l & 0x3fffff;
        if (al > c && !c()) goto _L8; else goto _L7
_L7:
        if ((m - l & 0x3fffff) >= 260 || m == l) goto _L10; else goto _L9
_L9:
        j();
        if (aA > this.i) goto _L1; else goto _L11
_L11:
        if (d)
        {
            aB = false;
            return;
        }
_L10:
        if (ay != vk.b) goto _L13; else goto _L12
_L12:
        i = ao.a();
        if (i != -1) goto _L15; else goto _L14
_L14:
        aC = true;
_L8:
        j();
        return;
_L15:
        int k1;
        if (i != a)
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = ao.a();
        if (k1 != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (l())
        {
            break; /* Loop/switch isn't completed */
        }
        continue; /* Loop/switch isn't completed */
        if (k1 == 2 || k1 == -1) goto _L8; else goto _L16
_L16:
        if (k1 != 3) goto _L18; else goto _L17
_L17:
        int j3 = ao.a();
        if (j3 != -1) goto _L20; else goto _L19
_L19:
        flag = false;
_L26:
        if (flag) goto _L21; else goto _L8
_L21:
        break; /* Loop/switch isn't completed */
_L20:
        k1 = (j3 & 7) + 1;
        if (k1 != 7) goto _L23; else goto _L22
_L22:
        i = ao.a();
        if (i != -1) goto _L25; else goto _L24
_L24:
        flag = false;
          goto _L26
_L25:
        i += 7;
_L32:
        ArrayList arraylist;
        arraylist = new ArrayList();
        k1 = 0;
_L37:
        if (k1 >= i) goto _L28; else goto _L27
_L27:
        int l4 = ao.a();
        if (l4 != -1) goto _L30; else goto _L29
_L29:
        flag = false;
          goto _L26
_L23:
        i = k1;
        if (k1 != 8) goto _L32; else goto _L31
_L31:
        i = ao.a();
        if (i != -1) goto _L34; else goto _L33
_L33:
        flag = false;
          goto _L26
_L34:
        k1 = ao.a();
        if (k1 != -1) goto _L36; else goto _L35
_L35:
        flag = false;
          goto _L26
_L36:
        i = i * 256 + k1;
          goto _L32
_L30:
        arraylist.add(Byte.valueOf((byte)l4));
        k1++;
          goto _L37
_L28:
        flag = a(j3, ((List) (arraylist)));
          goto _L26
_L18:
        if (k1 == 4)
        {
            boolean flag2 = false;
            int k3 = 0;
            k1 = 0;
            i = 0;
            while (i < 4 && !flag2) 
            {
                int j5 = ao.a();
                if (j5 == -1)
                {
                    flag2 = true;
                } else
                if (i == 3)
                {
                    k3 = j5 & 0xff;
                } else
                {
                    k1 = (k1 << 8) + (j5 & 0xff);
                }
                i++;
            }
            if (!flag2)
            {
                c(k3 + 32, k1 + 2);
                break; /* Loop/switch isn't completed */
            }
            continue; /* Loop/switch isn't completed */
        }
        if (k1 != 5)
        {
            break; /* Loop/switch isn't completed */
        }
        i = ao.a();
        if (i != -1)
        {
            c(i + 4, 1);
            break; /* Loop/switch isn't completed */
        }
        if (true) goto _L8; else goto _L38
_L38:
        byte abyte1[] = j;
        int l1 = l;
        l = l1 + 1;
        abyte1[l1] = (byte)i;
        break; /* Loop/switch isn't completed */
_L13:
        i = a(((ve) (aa)));
        if (i < 256)
        {
            byte abyte2[] = j;
            int i2 = l;
            l = i2 + 1;
            abyte2[i2] = (byte)i;
            break; /* Loop/switch isn't completed */
        }
        if (i >= 271)
        {
            int ai[] = af;
            int j2 = i - 271;
            i = ai[j2] + 3;
            int l3 = ag[j2];
            j2 = i;
            if (l3 > 0)
            {
                j2 = i + (f() >>> 16 - l3);
                a(l3);
            }
            int k5 = a(((ve) (ab)));
            l3 = aw[k5] + 1;
            byte byte0 = ax[k5];
            i = l3;
            if (byte0 > 0)
            {
                if (k5 > 9)
                {
                    i = l3;
                    if (byte0 > 4)
                    {
                        i = l3 + ((f() >>> 20 - byte0) << 4);
                        a(byte0 - 4);
                    }
                    if (aE > 0)
                    {
                        aE = aE - 1;
                        i += aD;
                    } else
                    {
                        l3 = a(((ve) (ac)));
                        if (l3 == 16)
                        {
                            aE = 15;
                            i += aD;
                        } else
                        {
                            i += l3;
                            aD = l3;
                        }
                    }
                } else
                {
                    i = l3 + (f() >>> 16 - byte0);
                    a(byte0);
                }
            }
            l3 = j2;
            if (i >= 8192)
            {
                j2++;
                l3 = j2;
                if ((long)i >= 0x40000L)
                {
                    l3 = j2 + 1;
                }
            }
            c(i);
            b(l3, i);
            c(l3, i);
            break; /* Loop/switch isn't completed */
        }
        if (i != 256) goto _L40; else goto _L39
_L39:
        i = f();
        boolean flag1;
        if ((0x8000 & i) != 0)
        {
            a(1);
            flag1 = false;
            i = 1;
        } else
        {
            if ((i & 0x4000) != 0)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            a(2);
            flag1 = true;
        }
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        au = flag;
        if (!flag1 && l())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i != 0) goto _L41; else goto _L8
_L41:
        break; /* Loop/switch isn't completed */
_L40:
        if (i != 257) goto _L43; else goto _L42
_L42:
        if (m()) goto _L6; else goto _L8
_L43:
        if (i == 258)
        {
            if (O != 0)
            {
                c(O, N);
            }
        } else
        if (i < 263)
        {
            i -= 259;
            int i4 = k[i];
            for (; i > 0; i--)
            {
                k[i] = k[i - 1];
            }

            k[0] = i4;
            i = a(((ve) (ad)));
            int k2 = af[i] + 2;
            byte byte1 = ag[i];
            i = k2;
            if (byte1 > 0)
            {
                i = k2 + (f() >>> 16 - byte1);
                a(byte1);
            }
            b(i, i4);
            c(i, i4);
        } else
        if (i < 272)
        {
            int ai1[] = aj;
            i -= 263;
            int l2 = ai1[i] + 1;
            int j4 = ak[i];
            i = l2;
            if (j4 > 0)
            {
                i = l2 + (f() >>> 16 - j4);
                a(j4);
            }
            c(i);
            b(2, i);
            c(2, i);
        }
          goto _L6
    }

    public final void a(long l1)
    {
        i = l1;
        aB = false;
    }

    protected final void a(boolean flag)
    {
        if (!flag)
        {
            au = false;
            Arrays.fill(k, 0);
            n = 0;
            N = 0;
            O = 0;
            Arrays.fill(av, (byte)0);
            l = 0;
            m = 0;
            a = 2;
            k();
        }
        e();
        aC = false;
        aA = 0L;
        h = 0;
        c = 0;
        d(flag);
    }

    public final void a(byte abyte0[])
    {
        if (abyte0 == null)
        {
            j = new byte[0x400000];
        } else
        {
            j = abyte0;
            az = true;
        }
        al = 0;
        a(false);
    }

    public final void b()
    {
        if (ao != null)
        {
            vv vv1 = ao.u;
            if (vv1 != null)
            {
                vv1.a();
            }
        }
    }

}
