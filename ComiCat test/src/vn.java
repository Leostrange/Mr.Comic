// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vn extends vo
{

    public static final int a;
    public static final int d[] = {
        25, 14, 9, 7, 5, 5, 4, 4, 4, 3, 
        3, 3, 2, 2, 2, 2
    };
    private static final int n;
    final vl b;
    final vt c;
    final vt e = new vt(null);
    final vt f = new vt(null);
    final vt g = new vt(null);
    final vt h = new vt(null);
    final vt i = new vt(null);
    final int j[] = new int[256];
    private int o;
    private int p;
    private vn q;

    public vn(byte abyte0[])
    {
        super(abyte0);
        q = null;
        c = new vt(abyte0);
        b = new vl(abyte0);
    }

    public static int d(int k)
    {
        return k + 32 >>> 7;
    }

    public final int a()
    {
        if (k != null)
        {
            o = ug.a(k, l) & 0xffff;
        }
        return o;
    }

    public final vn a(byte abyte0[])
    {
        k = abyte0;
        l = 0;
        c.a(abyte0);
        b.a(abyte0);
        return this;
    }

    public final void a(int k)
    {
        o = 0xffff & k;
        if (this.k != null)
        {
            ug.a(this.k, l, (short)k);
        }
    }

    public final void a(vm vm1)
    {
        int j2 = a();
        int j1 = a() - 1;
        vt vt1 = new vt(vm1.u.n);
        vt vt2 = new vt(vm1.u.n);
        Object obj = new vt(vm1.u.n);
        vt2.c(vm1.f.c());
        for (; vt2.c() != b.b(); vt2.e())
        {
            ((vt) (obj)).c(vt2.c() - 6);
            vt.a(vt2, ((vt) (obj)));
        }

        ((vt) (obj)).c(b.b());
        ((vt) (obj)).d(4);
        b.b(4);
        int k1 = b.a() - vt2.b();
        int k;
        int i1;
        int i2;
        if (vm1.i != 0)
        {
            k = 1;
        } else
        {
            k = 0;
        }
        vt2.b(vt2.b() + k >>> 1);
        b.a(vt2.b());
        do
        {
            vt2.f();
            i1 = k1 - vt2.b();
            vt2.b(vt2.b() + k >>> 1);
            b.b(vt2.b());
            ((vt) (obj)).c(vt2.c() - 6);
            if (vt2.b() > ((vt) (obj)).b())
            {
                vt1.c(vt2.c());
                vu vu2 = new vu();
                vu2.a(vt1);
                vt vt3 = new vt(vm1.u.n);
                vt vt4 = new vt(vm1.u.n);
                do
                {
                    vt3.c(vt1.c() - 6);
                    vt1.a(vt3);
                    vt1.e();
                    vt4.c(vt1.c() - 6);
                } while (vt1.c() != b.b() && vu2.b > vt4.b());
                vt1.a(vu2);
            }
            i2 = j1 - 1;
            k1 = i1;
            j1 = i2;
        } while (i2 != 0);
        if (vt2.b() == 0)
        {
            do
            {
                j1 = i2 + 1;
                vt2.e();
                i2 = j1;
            } while (vt2.b() == 0);
            k = i1 + j1;
            a(a() - j1);
            i1 = k;
            if (a() == 1)
            {
                vu vu1 = new vu();
                ((vt) (obj)).c(b.b());
                vu1.a(((vt) (obj)));
                do
                {
                    i1 = vu1.b;
                    vu1.b = vu1.b - (i1 >>> 1) & 0xff;
                    i1 = k >>> 1;
                    k = i1;
                } while (i1 > 1);
                obj = vm1.u;
                ((vv) (obj)).a(b.b(), ((vv) (obj)).d[(j2 + 1 >>> 1) - 1]);
                c.a(vu1);
                vm1.f.c(c.c());
                return;
            }
        }
        b.b(i1 - (i1 >>> 1));
        i1 = j2 + 1 >>> 1;
        j1 = a() + 1 >>> 1;
        if (i1 != j1)
        {
            vl vl1 = b;
            vv vv1 = vm1.u;
            int l = b.b();
            int l1 = vv1.d[i1 - 1];
            i1 = vv1.d[j1 - 1];
            if (l1 != i1)
            {
                if (vv1.i[i1].a() != 0)
                {
                    i1 = vv1.a(i1);
                    System.arraycopy(vv1.n, l, vv1.n, i1, vv.b(j1));
                    vv1.a(l, l1);
                    l = i1;
                } else
                {
                    vv1.a(l, l1, i1);
                }
            }
            vl1.a_(l);
        }
        vm1.f.c(b.b());
    }

    public final int b()
    {
        if (k != null)
        {
            p = ug.b(k, l + 8);
        }
        return p;
    }

    final vn b(byte abyte0[])
    {
        if (q == null)
        {
            q = new vn(null);
        }
        return q.a(abyte0);
    }

    public final void b(int k)
    {
        p = k;
        if (this.k != null)
        {
            ug.a(this.k, l + 8, k);
        }
    }

    public final void c(int k)
    {
        super.c(k);
        c.c(k + 2);
        b.c(k + 2);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("PPMContext[");
        stringbuilder.append("\n  pos=");
        stringbuilder.append(l);
        stringbuilder.append("\n  size=");
        stringbuilder.append(a);
        stringbuilder.append("\n  numStats=");
        stringbuilder.append(a());
        stringbuilder.append("\n  Suffix=");
        stringbuilder.append(b());
        stringbuilder.append("\n  freqData=");
        stringbuilder.append(b);
        stringbuilder.append("\n  oneState=");
        stringbuilder.append(c);
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }

    static 
    {
        n = Math.max(6, 6);
        a = n + 2 + 4;
    }
}
