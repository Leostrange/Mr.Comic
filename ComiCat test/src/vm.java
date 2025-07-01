// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Array;
import java.util.Arrays;

public final class vm
{

    private static int w[] = {
        15581, 7999, 22975, 18675, 25761, 23228, 26162, 24657
    };
    private final vt A = new vt(null);
    private final vu B = new vu();
    private final vu C = new vu();
    private final vn D = new vn(null);
    private final vn E = new vn(null);
    private final vn F = new vn(null);
    private final vn G = new vn(null);
    private final int H[] = new int[64];
    public vs a[][];
    public vs b;
    public vn c;
    public vn d;
    public vn e;
    public vt f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int l[];
    int m[];
    int n[];
    int o[];
    int p;
    int q;
    int r;
    int s[][];
    public vp t;
    public vv u;
    private int v;
    private final vt x = new vt(null);
    private final vt y = new vt(null);
    private final vt z = new vt(null);

    public vm()
    {
        a = (vs[][])Array.newInstance(vs, new int[] {
            25, 16
        });
        l = new int[256];
        m = new int[256];
        n = new int[256];
        o = new int[256];
        s = (int[][])Array.newInstance(Integer.TYPE, new int[] {
            128, 64
        });
        t = new vp();
        u = new vv();
        c = null;
        e = null;
        d = null;
    }

    private int a(boolean flag, vt vt1)
    {
label0:
        {
            {
                boolean flag1 = false;
                vu vu1 = C;
                vt vt2 = x.a(u.n);
                vn vn1 = D.a(u.n);
                vn1.c(c.c());
                vn vn2 = E.a(u.n);
                vn2.c(f.d());
                vt vt3 = y.a(u.n);
                int j1;
                int k1;
                if (!flag)
                {
                    H[0] = f.c();
                    int i1;
                    if (vn1.b() == 0)
                    {
                        k1 = 1;
                        j1 = 1;
                    } else
                    {
                        k1 = 0;
                        j1 = 1;
                    }
                } else
                {
                    k1 = 0;
                    j1 = 0;
                }
                i1 = j1;
                if (k1 != 0)
                {
                    break label0;
                }
                if (vt1.c() != 0)
                {
                    vt3.c(vt1.c());
                    vn1.c(vn1.b());
                    i1 = 1;
                } else
                {
                    i1 = 0;
                }
            }
            if (i1 == 0)
            {
                vn1.c(vn1.b());
                if (vn1.a() != 1)
                {
                    vt3.c(vn1.b.b());
                    if (vt3.a() != f.a())
                    {
                        do
                        {
                            vt3.f();
                        } while (vt3.a() != f.a());
                    }
                } else
                {
                    vt3.c(vn1.c.c());
                }
            }
            if (vt3.d() != vn2.c())
            {
                vn1.c(vt3.d());
                i1 = j1;
            } else
            {
                vt1 = H;
                i1 = j1 + 1;
                vt1[j1] = vt3.c();
                if (vn1.b() != 0)
                {
                    break MISSING_BLOCK_LABEL_637;
                }
            }
        }
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        j1 = vn1.c();
_L4:
        return j1;
_L2:
        vu1.a(u.n[vn2.c()]);
        vu1.c = vn2.c() + 1;
        if (vn1.a() == 1)
        {
            break MISSING_BLOCK_LABEL_622;
        }
        j1 = ((flag1) ? 1 : 0);
        if (vn1.c() <= u.j) goto _L4; else goto _L3
_L3:
        vt3.c(vn1.b.b());
        if (vt3.a() != vu1.a)
        {
            do
            {
                vt3.f();
            } while (vt3.a() != vu1.a);
        }
        j1 = vt3.b() - 1;
        k1 = vn1.b.a() - vn1.a() - j1;
        if (j1 * 2 <= k1)
        {
            if (j1 * 5 > k1)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
        } else
        {
            j1 = ((j1 * 2 + k1 * 3) - 1) / (k1 * 2);
        }
        vu1.b(j1 + 1);
_L6:
        vt1 = H;
        k1 = i1 - 1;
        vt2.c(vt1[k1]);
        vt1 = vn1.b(u.n);
        vt1.c(u.b());
        if (vt1 != null)
        {
            vt1.a(1);
            ((vn) (vt1)).c.a(vu1);
            vt1.b(vn1.c());
            vt2.a(vt1);
        }
        vn1.c(vt1.c());
        j1 = ((flag1) ? 1 : 0);
        if (vn1.c() == 0) goto _L4; else goto _L5
_L5:
        i1 = k1;
        if (k1 == 0)
        {
            return vn1.c();
        } else
        {
            break MISSING_BLOCK_LABEL_483;
        }
        vu1.b(vn1.c.b());
          goto _L6
        j1 = i1;
        i1 = 0;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_165;
        }
    }

    private void b()
    {
        Arrays.fill(l, 0);
        Object obj = u;
        Arrays.fill(((vv) (obj)).n, ((vv) (obj)).o, ((vv) (obj)).o + ((vv) (obj)).i.length * 4, (byte)0);
        obj.j = ((vv) (obj)).f;
        int k2 = (((vv) (obj)).b / 8 / 12) * 7 * 12;
        int i1 = k2 / 12;
        int l1 = vv.a;
        k2 = ((vv) (obj)).b - k2;
        int j3 = k2 / 12;
        int k3 = vv.a;
        obj.h = ((vv) (obj)).f + ((vv) (obj)).b;
        j3 = j3 * k3 + k2 % 12 + ((vv) (obj)).f;
        obj.k = j3;
        obj.g = j3;
        obj.m = k2 + ((vv) (obj)).f;
        obj.h = ((vv) (obj)).g + i1 * l1;
        i1 = 0;
        for (l1 = 1; i1 < 4; l1++)
        {
            ((vv) (obj)).c[i1] = l1 & 0xff;
            i1++;
        }

        for (l1++; i1 < 8; l1 += 2)
        {
            ((vv) (obj)).c[i1] = l1 & 0xff;
            i1++;
        }

        for (l1++; i1 < 12; l1 += 3)
        {
            ((vv) (obj)).c[i1] = l1 & 0xff;
            i1++;
        }

        for (l1++; i1 < 38; l1 += 4)
        {
            ((vv) (obj)).c[i1] = l1 & 0xff;
            i1++;
        }

        obj.e = 0;
        l1 = 0;
        i1 = 0;
        while (i1 < 128) 
        {
            int l2;
            if (((vv) (obj)).c[l1] < i1 + 1)
            {
                l2 = 1;
            } else
            {
                l2 = 0;
            }
            l1 = l2 + l1;
            ((vv) (obj)).d[i1] = l1 & 0xff;
            i1++;
        }
        if (v < 12)
        {
            i1 = v;
        } else
        {
            i1 = 12;
        }
        k = -i1 - 1;
        i1 = u.b();
        c.c(i1);
        e.c(i1);
        c.b(0);
        i = v;
        c.a(256);
        c.b.a(c.a() + 1);
        i1 = u.c(128);
        f.c(i1);
        c.b.a_(i1);
        obj = new vt(u.n);
        l1 = c.b.b();
        j = k;
        q = 0;
        for (i1 = 0; i1 < 256; i1++)
        {
            ((vt) (obj)).c(i1 * 6 + l1);
            ((vt) (obj)).a(i1);
            ((vt) (obj)).b(1);
            ((vt) (obj)).e(0);
        }

        for (int j1 = 0; j1 < 128; j1++)
        {
            for (int i2 = 0; i2 < 8; i2++)
            {
                for (int i3 = 0; i3 < 64; i3 += 8)
                {
                    s[j1][i2 + i3] = 16384 - w[i2] / (j1 + 2);
                }

            }

        }

        for (int k1 = 0; k1 < 25; k1++)
        {
            for (int j2 = 0; j2 < 16; j2++)
            {
                vs vs1 = a[k1][j2];
                vs1.b = 3;
                vs1.a = k1 * 5 + 10 << vs1.b & 0xffff;
                vs1.c = 4;
            }

        }

    }

    private void b(int i1)
    {
        q = i1 & 0xff;
    }

    private void c()
    {
        b();
        p = 0;
    }

    private void c(int i1)
    {
        j = j + i1;
    }

    private void d(int i1)
    {
        r = i1 & 0xff;
    }

    public final int a()
    {
        Object obj;
        Object obj1;
        Object obj2;
        long l5;
        if (c.c() <= u.j || c.c() > u.l)
        {
            return -1;
        }
        if (c.a() == 1)
        {
            break MISSING_BLOCK_LABEL_619;
        }
        if (c.b.b() <= u.j || c.b.b() > u.l)
        {
            return -1;
        }
        obj = c;
        obj1 = t;
        ((vp) (obj1)).d.c(((vn) (obj)).b.a());
        obj2 = new vt(u.n);
        ((vt) (obj2)).c(((vn) (obj)).b.b());
        l5 = ((vp) (obj1)).a();
        if (l5 < ((vp) (obj1)).d.b) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L5:
        if (i1 == 0)
        {
            return -1;
        }
        break MISSING_BLOCK_LABEL_904;
_L2:
        int j1 = ((vt) (obj2)).b();
        if (l5 >= (long)j1) goto _L4; else goto _L3
_L3:
        ((vp) (obj1)).d.a(j1);
        if ((long)(j1 * 2) > ((vp) (obj1)).d.b)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        b(i1);
        c(q);
        i1 = j1 + 4;
        f.c(((vt) (obj2)).c());
        f.b(i1);
        ((vn) (obj)).b.b(4);
        if (i1 > 124)
        {
            ((vn) (obj)).a(this);
        }
        ((vp) (obj1)).d.b(0L);
_L6:
        i1 = 1;
          goto _L5
_L4:
label0:
        {
            if (f.c() != 0)
            {
                break label0;
            }
            i1 = 0;
        }
          goto _L5
        int l1;
label1:
        {
            b(0);
            int i3 = ((vn) (obj)).a();
            i1 = i3 - 1;
            int i2;
            do
            {
                l1 = j1 + ((vt) (obj2)).f().b();
                if ((long)l1 > l5)
                {
                    break label1;
                }
                i2 = i1 - 1;
                j1 = l1;
                i1 = i2;
            } while (i2 != 0);
            d(o[f.a()]);
            ((vp) (obj1)).d.b(l1);
            l[((vt) (obj2)).a()] = p;
            g = i3;
            i1 = i3 - 1;
            f.c(0);
            do
            {
                l[((vt) (obj2)).e().a()] = p;
                j1 = i1 - 1;
                i1 = j1;
            } while (j1 != 0);
            ((vp) (obj1)).d.a(((vp) (obj1)).d.b);
        }
          goto _L6
        ((vp) (obj1)).d.b(l1 - ((vt) (obj2)).b());
        ((vp) (obj1)).d.a(l1);
        i1 = ((vt) (obj2)).c();
        f.c(i1);
        f.d(4);
        ((vn) (obj)).b.b(4);
        obj1 = ((vn) (obj)).g.a(u.n);
        obj2 = ((vn) (obj)).h.a(u.n);
        ((vt) (obj1)).c(i1);
        ((vt) (obj2)).c(i1 - 6);
        if (((vt) (obj1)).b() > ((vt) (obj2)).b())
        {
            vt.a(((vt) (obj1)), ((vt) (obj2)));
            f.c(((vt) (obj2)).c());
            if (((vt) (obj2)).b() > 124)
            {
                ((vn) (obj)).a(this);
            }
        }
          goto _L6
        obj1 = c;
        obj = ((vn) (obj1)).e.a(u.n);
        ((vt) (obj)).c(((vn) (obj1)).c.c());
        d(o[f.a()]);
        j1 = ((vt) (obj)).b() - 1;
        obj2 = ((vn) (obj1)).b(u.n);
        ((vn) (obj2)).c(((vn) (obj1)).b());
        i1 = q;
        l1 = n[((vn) (obj2)).a() - 1];
        int j2 = r;
        int j3 = o[((vt) (obj)).a()];
        l1 = (j >>> 26 & 0x20) + (i1 + 0 + l1 + (j2 + j3 * 2));
        j2 = s[j1][l1];
        obj1 = t;
        obj1.c = ((vp) (obj1)).c >>> 14;
        if (((((vp) (obj1)).b - ((vp) (obj1)).a) / ((vp) (obj1)).c & 0xffffffffL) < (long)j2)
        {
            f.c(((vt) (obj)).c());
            if (((vt) (obj)).b() < 128)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            ((vt) (obj)).d(i1);
            t.d.b(0L);
            t.d.a(j2);
            i1 = vn.d(j2);
            s[j1][l1] = (j2 + 128) - i1 & 0xffff;
            b(1);
            c(1);
        } else
        {
            t.d.b(j2);
            i1 = j2 - vn.d(j2) & 0xffff;
            s[j1][l1] = i1;
            t.d.a(16384L);
            h = vn.d[i1 >>> 10];
            g = 1;
            l[((vt) (obj)).a()] = p;
            b(0);
            f.c(0);
        }
        t.b();
_L15:
        if (f.c() != 0) goto _L8; else goto _L7
_L7:
        Object obj3;
        Object obj4;
        t.c();
        do
        {
            i = i + 1;
            c.c(c.b());
            if (c.c() <= u.j || c.c() > u.l)
            {
                return -1;
            }
        } while (c.a() == g);
        obj1 = c;
        int k2 = ((vn) (obj1)).a() - g;
        j1 = ((vn) (obj1)).a();
        if (j1 != 256)
        {
            obj = ((vn) (obj1)).b(u.n);
            ((vn) (obj)).c(((vn) (obj1)).b());
            int k3 = m[k2 - 1];
            vp.a a1;
            int i4;
            if (k2 < ((vn) (obj)).a() - j1)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (((vn) (obj1)).b.a() < j1 * 11)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            if (g > k2)
            {
                l1 = 1;
            } else
            {
                l1 = 0;
            }
            i4 = r;
            obj = a[k3][l1 * 4 + (i1 + 0 + j1 * 2) + i4];
            obj2 = t.d;
            j1 = ((vs) (obj)).a >>> ((vs) (obj)).b;
            obj.a = ((vs) (obj)).a - j1;
            if (j1 == 0)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            ((vp.a) (obj2)).c(i1 + j1);
        } else
        {
            obj = b;
            t.d.c(1L);
        }
        obj2 = t;
        obj3 = ((vn) (obj1)).e.a(u.n);
        obj4 = ((vn) (obj1)).f.a(u.n);
        ((vt) (obj3)).c(((vn) (obj1)).b.b() - 6);
        i1 = 0;
        l1 = 0;
        j1 = k2;
_L31:
        do
        {
            ((vt) (obj3)).f();
        } while (l[((vt) (obj3)).a()] == p);
        l1 = ((vt) (obj3)).b() + l1;
        ((vn) (obj1)).j[i1] = ((vt) (obj3)).c();
        j1--;
        if (j1 != 0)
        {
            break MISSING_BLOCK_LABEL_3185;
        }
        a1 = ((vp) (obj2)).d;
        a1.c(a1.b + (long)l1);
        l5 = ((vp) (obj2)).a();
        if (l5 < ((vp) (obj2)).d.b) goto _L10; else goto _L9
_L9:
        i1 = 0;
_L12:
        if (i1 == 0)
        {
            return -1;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        i1 = 0;
        ((vt) (obj3)).c(((vn) (obj1)).j[0]);
        if (l5 >= (long)l1)
        {
            break; /* Loop/switch isn't completed */
        }
        j1 = 0;
        do
        {
            j1 += ((vt) (obj3)).b();
            if ((long)j1 > l5)
            {
                break;
            }
            obj4 = ((vn) (obj1)).j;
            i1++;
            ((vt) (obj3)).c(obj4[i1]);
        } while (true);
        ((vp) (obj2)).d.a(j1);
        ((vp) (obj2)).d.b(j1 - ((vt) (obj3)).b());
        if (((vs) (obj)).b < 7)
        {
            i1 = ((vs) (obj)).c - 1;
            obj.c = i1;
            if (i1 == 0)
            {
                obj.a = ((vs) (obj)).a + ((vs) (obj)).a;
                i1 = ((vs) (obj)).b;
                obj.b = i1 + 1;
                obj.c = 3 << i1;
            }
        }
        obj.a = ((vs) (obj)).a & 0xffff;
        obj.c = ((vs) (obj)).c & 0xff;
        obj.b = ((vs) (obj)).b & 0xff;
        i1 = ((vt) (obj3)).c();
        obj = ((vn) (obj1)).i.a(u.n);
        ((vt) (obj)).c(i1);
        f.c(i1);
        f.d(4);
        ((vn) (obj1)).b.b(4);
        if (((vt) (obj)).b() > 124)
        {
            ((vn) (obj1)).a(this);
        }
        p = p + 1 & 0xff;
        j = k;
_L13:
        i1 = 1;
        if (true) goto _L12; else goto _L11
_L11:
        ((vp) (obj2)).d.b(l1);
        ((vp) (obj2)).d.a(((vp) (obj2)).d.b);
        i1 = ((vn) (obj1)).a() - g;
        j1 = -1;
        do
        {
            int ai[] = ((vn) (obj1)).j;
            j1++;
            ((vt) (obj4)).c(ai[j1]);
            l[((vt) (obj4)).a()] = p;
            l1 = i1 - 1;
            i1 = l1;
        } while (l1 != 0);
        obj.a = (int)((vp) (obj2)).d.b + ((vs) (obj)).a & 0xffff;
        g = ((vn) (obj1)).a();
          goto _L13
        if (true) goto _L12; else goto _L14
_L14:
        t.b();
          goto _L15
_L8:
        int l2 = f.a();
        if (i != 0 || f.d() <= u.j) goto _L17; else goto _L16
_L16:
        i1 = f.d();
        c.c(i1);
        e.c(i1);
_L19:
        t.c();
        return l2;
_L17:
        obj = B;
        ((vu) (obj)).a(f);
        obj1 = z.a(u.n);
        vt vt1 = A.a(u.n);
        obj2 = F.a(u.n);
        ai = G.a(u.n);
        ((vn) (obj2)).c(c.b());
        if (((vu) (obj)).b < 31 && ((vn) (obj2)).c() != 0)
        {
            if (((vn) (obj2)).a() != 1)
            {
                ((vt) (obj1)).c(((vn) (obj2)).b.b());
                if (((vt) (obj1)).a() != ((vu) (obj)).a)
                {
                    do
                    {
                        ((vt) (obj1)).f();
                    } while (((vt) (obj1)).a() != ((vu) (obj)).a);
                    vt1.c(((vt) (obj1)).c() - 6);
                    if (((vt) (obj1)).b() >= vt1.b())
                    {
                        vt.a(((vt) (obj1)), vt1);
                        ((vt) (obj1)).e();
                    }
                }
                if (((vt) (obj1)).b() < 115)
                {
                    ((vt) (obj1)).d(2);
                    ((vn) (obj2)).b.b(2);
                }
            } else
            {
                ((vt) (obj1)).c(((vn) (obj2)).c.c());
                if (((vt) (obj1)).b() < 32)
                {
                    ((vt) (obj1)).d(1);
                }
            }
        }
        if (i != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        f.e(a(true, ((vt) (obj1))));
        c.c(f.d());
        e.c(f.d());
        if (c.c() == 0)
        {
            c();
        }
_L20:
        if (p == 0)
        {
            p = 1;
            Arrays.fill(l, 0);
        }
        if (true) goto _L19; else goto _L18
_L18:
label2:
        {
            u.n[u.j] = (byte)((vu) (obj)).a;
            vv vv1 = u;
            vv1.j = vv1.j + 1;
            ai.c(u.j);
            if (u.j < u.m)
            {
                break label2;
            }
            c();
        }
          goto _L20
        if (((vu) (obj)).c == 0) goto _L22; else goto _L21
_L21:
label3:
        {
            if (((vu) (obj)).c > u.j)
            {
                break label3;
            }
            obj.c = a(false, ((vt) (obj1)));
            if (((vu) (obj)).c != 0)
            {
                break label3;
            }
            c();
        }
          goto _L20
        i1 = i - 1;
        i = i1;
        if (i1 == 0)
        {
            ai.c(((vu) (obj)).c);
            if (e.c() != c.c())
            {
                vv vv2 = u;
                vv2.j = vv2.j - 1;
            }
        }
_L28:
        int l3;
        int j4;
        int k4;
        l3 = c.a();
        j4 = c.b.a();
        k4 = ((vu) (obj)).b;
        ((vn) (obj2)).c(e.c());
_L29:
        int l4;
        if (((vn) (obj2)).c() == c.c())
        {
            break MISSING_BLOCK_LABEL_3158;
        }
        l4 = ((vn) (obj2)).a();
        if (l4 == 1) goto _L24; else goto _L23
_L23:
        if ((l4 & 1) != 0) goto _L26; else goto _L25
_L25:
        vl vl1 = ((vn) (obj2)).b;
        vv vv3 = u;
        i1 = ((vn) (obj2)).b.b();
        l1 = l4 >>> 1;
        int i5 = vv3.d[l1 - 1];
        if (i5 != vv3.d[(l1 - 1) + 1])
        {
            j1 = vv3.c(l1 + 1);
            if (j1 != 0)
            {
                System.arraycopy(vv3.n, i1, vv3.n, j1, vv.b(l1));
                vv3.a(i1, i5);
            }
            i1 = j1;
        }
        vl1.a_(i1);
        if (((vn) (obj2)).b.b() != 0) goto _L26; else goto _L27
_L27:
        c();
          goto _L20
_L22:
        f.e(ai.c());
        obj.c = c.c();
          goto _L28
_L26:
        int j5;
        if (l4 * 2 < l3)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (l4 * 4 <= l3)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        if (((vn) (obj2)).b.a() <= l4 * 8)
        {
            l1 = 1;
        } else
        {
            l1 = 0;
        }
        ((vn) (obj2)).b.b(((j1 & l1) != 0) * 2 + i1);
_L30:
        i1 = ((vu) (obj)).b;
        l1 = (((vn) (obj2)).b.a() + 6) * (i1 * 2);
        j5 = (j4 - l3 - (k4 - 1)) + ((vn) (obj2)).b.a();
        if (l1 < j5 * 6)
        {
            vl vl2;
            if (l1 > j5)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (l1 >= j5 * 4)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            i1 = j1 + (i1 + 1);
            ((vn) (obj2)).b.b(3);
        } else
        {
            int k1;
            if (l1 >= j5 * 9)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (l1 >= j5 * 12)
            {
                k1 = 1;
            } else
            {
                k1 = 0;
            }
            if (l1 >= j5 * 15)
            {
                l1 = 1;
            } else
            {
                l1 = 0;
            }
            i1 = l1 + (i1 + 4 + k1);
            ((vn) (obj2)).b.b(i1);
        }
        ((vt) (obj1)).c(((vn) (obj2)).b.b() + l4 * 6);
        ((vt) (obj1)).a(ai);
        ((vt) (obj1)).a(((vu) (obj)).a);
        ((vt) (obj1)).b(i1);
        ((vn) (obj2)).a(l4 + 1);
        ((vn) (obj2)).c(((vn) (obj2)).b());
          goto _L29
_L24:
label4:
        {
            ((vt) (obj1)).c(u.c(1));
            if (((vt) (obj1)).c() != 0)
            {
                break label4;
            }
            c();
        }
          goto _L20
        ((vt) (obj1)).a(((vn) (obj2)).c);
        ((vn) (obj2)).b.a(((vt) (obj1)));
        if (((vt) (obj1)).b() < 30)
        {
            ((vt) (obj1)).d(((vt) (obj1)).b());
        } else
        {
            ((vt) (obj1)).b(120);
        }
        vl2 = ((vn) (obj2)).b;
        j1 = ((vt) (obj1)).b();
        l1 = h;
        if (l3 > 3)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        vl2.a(i1 + (l1 + j1));
          goto _L30
        i1 = ((vu) (obj)).c;
        e.c(i1);
        c.c(i1);
          goto _L20
        i1++;
          goto _L31
    }

    public final void a(int i1)
    {
        int k1 = 3;
        int l1 = 1;
        p = 1;
        v = i1;
        b();
        n[0] = 0;
        n[1] = 2;
        for (i1 = 0; i1 < 9; i1++)
        {
            n[i1 + 2] = 4;
        }

        for (i1 = 0; i1 < 245; i1++)
        {
            n[i1 + 11] = 6;
        }

        for (i1 = 0; i1 < 3; i1++)
        {
            m[i1] = i1;
        }

        boolean flag = true;
        int j1 = i1;
        i1 = ((flag) ? 1 : 0);
        while (j1 < 256) 
        {
            m[j1] = k1;
            int k2 = i1 - 1;
            int j2 = l1;
            int i2 = k1;
            i1 = k2;
            if (k2 == 0)
            {
                j2 = l1 + 1;
                i2 = k1 + 1;
                i1 = j2;
            }
            j1++;
            l1 = j2;
            k1 = i2;
        }
        for (i1 = 0; i1 < 64; i1++)
        {
            o[i1] = 0;
        }

        for (i1 = 0; i1 < 192; i1++)
        {
            o[i1 + 64] = 8;
        }

        b.b = 7;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ModelPPM[");
        stringbuilder.append("\n  numMasked=");
        stringbuilder.append(g);
        stringbuilder.append("\n  initEsc=");
        stringbuilder.append(h);
        stringbuilder.append("\n  orderFall=");
        stringbuilder.append(i);
        stringbuilder.append("\n  maxOrder=");
        stringbuilder.append(v);
        stringbuilder.append("\n  runLength=");
        stringbuilder.append(j);
        stringbuilder.append("\n  initRL=");
        stringbuilder.append(k);
        stringbuilder.append("\n  escCount=");
        stringbuilder.append(p);
        stringbuilder.append("\n  prevSuccess=");
        stringbuilder.append(q);
        stringbuilder.append("\n  foundState=");
        stringbuilder.append(f);
        stringbuilder.append("\n  coder=");
        stringbuilder.append(t);
        stringbuilder.append("\n  subAlloc=");
        stringbuilder.append(u);
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }

}
