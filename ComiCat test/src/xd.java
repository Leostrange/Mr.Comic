// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public final class xd
    implements Map, wt, wv, xi
{
    public static final class a
        implements java.util.Map.Entry, wt, xa.a
    {

        public static final a a = new a();
        private a b;
        private a c;
        private Object d;
        private Object e;
        private int f;

        static int a(a a1, int i1)
        {
            a1.f = i1;
            return i1;
        }

        static Object a(a a1, Object obj)
        {
            a1.e = obj;
            return obj;
        }

        static a a(a a1)
        {
            return a1.b;
        }

        static a a(a a1, a a2)
        {
            a1.b = a2;
            return a2;
        }

        static Object b(a a1)
        {
            return a1.e;
        }

        static Object b(a a1, Object obj)
        {
            a1.d = obj;
            return obj;
        }

        static a b(a a1, a a2)
        {
            a1.c = a2;
            return a2;
        }

        static Object c(a a1)
        {
            return a1.d;
        }

        static int d(a a1)
        {
            return a1.f;
        }

        static a e(a a1)
        {
            return a1.c;
        }

        public final volatile xa.a a()
        {
            return c;
        }

        public final ww b()
        {
            return ww.a(d).a("=").b(e);
        }

        public final volatile xa.a c()
        {
            return b;
        }

        public final boolean equals(Object obj)
        {
            boolean flag1 = false;
            boolean flag = flag1;
            if (obj instanceof java.util.Map.Entry)
            {
                obj = (java.util.Map.Entry)obj;
                flag = flag1;
                if (xb.c.a(d, ((java.util.Map.Entry) (obj)).getKey()))
                {
                    flag = flag1;
                    if (xb.c.a(e, ((java.util.Map.Entry) (obj)).getValue()))
                    {
                        flag = true;
                    }
                }
            }
            return flag;
        }

        public final Object getKey()
        {
            return d;
        }

        public final Object getValue()
        {
            return e;
        }

        public final int hashCode()
        {
            int j1 = 0;
            int i1;
            if (d != null)
            {
                i1 = d.hashCode();
            } else
            {
                i1 = 0;
            }
            if (e != null)
            {
                j1 = e.hashCode();
            }
            return i1 ^ j1;
        }

        public final Object setValue(Object obj)
        {
            Object obj1 = e;
            e = obj;
            return obj1;
        }


        protected a()
        {
        }
    }

    static final class b
        implements Iterator
    {

        private static final wp a = new wp() {

            protected final Object a()
            {
                return new b((byte)0);
            }

            protected final void b(Object obj)
            {
                obj = (b)obj;
                b.a(((b) (obj)));
                b.b(((b) (obj)));
                b.c(((b) (obj)));
                b.d(((b) (obj)));
            }

        };
        private xd b;
        private a c;
        private a d;
        private a e;

        public static b a(xd xd1)
        {
            b b1 = (b)a.b();
            b1.b = xd1;
            b1.d = a.a(xd.j(xd1));
            b1.e = xd.a(xd1);
            return b1;
        }

        static xd a(b b1)
        {
            b1.b = null;
            return null;
        }

        static a b(b b1)
        {
            b1.c = null;
            return null;
        }

        static a c(b b1)
        {
            b1.d = null;
            return null;
        }

        static a d(b b1)
        {
            b1.e = null;
            return null;
        }

        public final boolean hasNext()
        {
            return d != e;
        }

        public final Object next()
        {
            if (d == e)
            {
                throw new NoSuchElementException();
            } else
            {
                c = d;
                d = a.a(d);
                return c;
            }
        }

        public final void remove()
        {
            if (c != null)
            {
                d = a.a(c);
                b.remove(a.c(c));
                c = null;
                return;
            } else
            {
                throw new IllegalStateException();
            }
        }


        private b()
        {
        }

        b(byte byte0)
        {
            this();
        }
    }

    final class c extends xa
        implements Set
    {

        final xd a;
        private final xb b;

        public final Object a(xa.a a1)
        {
            return (java.util.Map.Entry)a1;
        }

        public final void b(xa.a a1)
        {
            a.remove(((a)a1).getKey());
        }

        public final xa.a c()
        {
            return xd.j(a);
        }

        public final void clear()
        {
            a.clear();
        }

        public final boolean contains(Object obj)
        {
            a a1;
label0:
            {
                if (obj instanceof java.util.Map.Entry)
                {
                    obj = (java.util.Map.Entry)obj;
                    a1 = a.a(((java.util.Map.Entry) (obj)).getKey());
                    if (a1 != null)
                    {
                        break label0;
                    }
                }
                return false;
            }
            return xd.k(a).a(a1.getValue(), ((java.util.Map.Entry) (obj)).getValue());
        }

        public final xa.a d()
        {
            return xd.a(a);
        }

        public final xb e()
        {
            return b;
        }

        public final Iterator iterator()
        {
            return b.a(a);
        }

        public final int size()
        {
            return a.size();
        }

        private c()
        {
            a = xd.this;
            super();
            b = new _cls1(this);
        }

        c(byte byte0)
        {
            this();
        }
    }

    static final class d
        implements Iterator
    {

        private static final wp a = new wp() {

            protected final Object a()
            {
                return new d((byte)0);
            }

            protected final void b(Object obj)
            {
                obj = (d)obj;
                d.a(((d) (obj)));
                d.b(((d) (obj)));
                d.c(((d) (obj)));
                d.d(((d) (obj)));
            }

        };
        private xd b;
        private a c;
        private a d;
        private a e;

        public static d a(xd xd1)
        {
            d d1 = (d)a.b();
            d1.b = xd1;
            d1.d = a.a(xd.j(xd1));
            d1.e = xd.a(xd1);
            return d1;
        }

        static xd a(d d1)
        {
            d1.b = null;
            return null;
        }

        static a b(d d1)
        {
            d1.c = null;
            return null;
        }

        static a c(d d1)
        {
            d1.d = null;
            return null;
        }

        static a d(d d1)
        {
            d1.e = null;
            return null;
        }

        public final boolean hasNext()
        {
            return d != e;
        }

        public final Object next()
        {
            if (d == e)
            {
                throw new NoSuchElementException();
            } else
            {
                c = d;
                d = a.a(d);
                return a.c(c);
            }
        }

        public final void remove()
        {
            if (c != null)
            {
                d = a.a(c);
                b.remove(a.c(c));
                c = null;
                return;
            } else
            {
                throw new IllegalStateException();
            }
        }


        private d()
        {
        }

        d(byte byte0)
        {
            this();
        }
    }

    final class e extends xa
        implements Set
    {

        final xd a;

        public final Object a(xa.a a1)
        {
            return a.c((a)a1);
        }

        public final void b(xa.a a1)
        {
            a.remove(((a)a1).getKey());
        }

        public final xa.a c()
        {
            return xd.j(a);
        }

        public final void clear()
        {
            a.clear();
        }

        public final boolean contains(Object obj)
        {
            return a.containsKey(obj);
        }

        public final xa.a d()
        {
            return xd.a(a);
        }

        public final xb e()
        {
            return xd.l(a);
        }

        public final Iterator iterator()
        {
            return d.a(a);
        }

        public final boolean remove(Object obj)
        {
            return a.remove(obj) != null;
        }

        public final int size()
        {
            return a.size();
        }

        private e()
        {
            a = xd.this;
            super();
        }

        e(byte byte0)
        {
            this();
        }
    }

    static final class f
        implements Iterator
    {

        private static final wp a = new wp() {

            protected final Object a()
            {
                return new f((byte)0);
            }

            protected final void b(Object obj)
            {
                obj = (f)obj;
                f.a(((f) (obj)));
                f.b(((f) (obj)));
                f.c(((f) (obj)));
                f.d(((f) (obj)));
            }

        };
        private xd b;
        private a c;
        private a d;
        private a e;

        public static f a(xd xd1)
        {
            f f1 = (f)a.b();
            f1.b = xd1;
            f1.d = a.a(xd.j(xd1));
            f1.e = xd.a(xd1);
            return f1;
        }

        static xd a(f f1)
        {
            f1.b = null;
            return null;
        }

        static a b(f f1)
        {
            f1.c = null;
            return null;
        }

        static a c(f f1)
        {
            f1.d = null;
            return null;
        }

        static a d(f f1)
        {
            f1.e = null;
            return null;
        }

        public final boolean hasNext()
        {
            return d != e;
        }

        public final Object next()
        {
            if (d == e)
            {
                throw new NoSuchElementException();
            } else
            {
                c = d;
                d = a.a(d);
                return a.b(c);
            }
        }

        public final void remove()
        {
            if (c != null)
            {
                d = a.a(c);
                b.remove(a.c(c));
                c = null;
                return;
            } else
            {
                throw new IllegalStateException();
            }
        }


        private f()
        {
        }

        f(byte byte0)
        {
            this();
        }
    }

    final class g extends xa
    {

        final xd a;

        public final Object a(xa.a a1)
        {
            return a.b((a)a1);
        }

        public final void b(xa.a a1)
        {
            a.remove(((a)a1).getKey());
        }

        public final xa.a c()
        {
            return xd.j(a);
        }

        public final void clear()
        {
            a.clear();
        }

        public final xa.a d()
        {
            return xd.a(a);
        }

        public final xb e()
        {
            return xd.k(a);
        }

        public final Iterator iterator()
        {
            return f.a(a);
        }

        public final int size()
        {
            return a.size();
        }

        private g()
        {
            a = xd.this;
            super();
        }

        g(byte byte0)
        {
            this();
        }
    }


    static volatile int e = 1;
    private static final wp q = new wp() {

        public final Object a()
        {
            return new xd();
        }

    };
    private static final a r[] = new a[1024];
    transient a a;
    transient a b;
    transient xb c;
    public transient boolean d;
    private transient a f[];
    private transient int g;
    private transient int h;
    private transient xd i[];
    private transient boolean j;
    private transient int k;
    private transient g l;
    private transient e m;
    private transient c n;
    private transient boolean o;
    private transient xb p;

    public xd()
    {
        this((byte)0);
    }

    private xd(byte byte0)
    {
        a(xb.c);
        p = xb.c;
        d();
    }

    private xd(a aa[])
    {
        f = aa;
    }

    private final Object a(Object obj, int i1, boolean flag)
    {
        Object obj1;
        a aa[];
        int j1;
        int k1;
        obj1 = a(i1);
        aa = ((xd) (obj1)).f;
        k1 = aa.length - 1;
        j1 = i1 >> ((xd) (obj1)).k;
_L7:
        a a1 = aa[j1 & k1];
        if (a1 != null) goto _L2; else goto _L1
_L1:
        obj = null;
_L4:
        return obj;
_L2:
        if (obj == a.c(a1) || i1 == a.d(a1) && (o ? obj.equals(a.c(a1)) : c.a(obj, a.c(a1))))
        {
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_134;
            }
        } else
        {
            break MISSING_BLOCK_LABEL_125;
        }
        this;
        JVM INSTR monitorenter ;
        obj = a(obj, i1, false);
        this;
        JVM INSTR monitorexit ;
        return obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        j1++;
        continue; /* Loop/switch isn't completed */
        a.a(a.e(a1), a.a(a1));
        a.b(a.a(a1), a.e(a1));
        aa[j1 & k1] = a.a;
        obj1.h = ((xd) (obj1)).h + 1;
        obj1.g = ((xd) (obj1)).g - 1;
        obj1 = a.b(a1);
        obj = obj1;
        if (d) goto _L4; else goto _L3
_L3:
        a a2;
        a.b(a1, null);
        a.a(a1, null);
        a2 = a.a(b);
        a.b(a1, b);
        a.a(a1, a2);
        a.a(b, a1);
        obj = obj1;
        if (a2 == null) goto _L4; else goto _L5
_L5:
        a.b(a2, a1);
        return obj1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private final Object a(Object obj, Object obj1, int i1, boolean flag, boolean flag1, boolean flag2)
    {
        xd xd1;
        a aa[];
        int j1;
        int k1;
        int i2;
        xd1 = a(i1);
        aa = xd1.f;
        i2 = aa.length - 1;
        j1 = -1;
        k1 = i1 >> xd1.k;
_L16:
        a a1 = aa[k1 & i2];
        if (a1 != null) goto _L2; else goto _L1
_L1:
        int l1;
        l1 = j1;
        if (j1 < 0)
        {
            l1 = k1 & i2;
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorenter ;
        obj = a(obj, obj1, i1, false, flag1, flag2);
        this;
        JVM INSTR monitorexit ;
_L13:
        return obj;
_L2:
        if (a1 != a.a) goto _L6; else goto _L5
_L5:
        l1 = j1;
        if (j1 < 0)
        {
            l1 = k1 & i2;
        }
_L8:
        k1++;
        j1 = l1;
        continue; /* Loop/switch isn't completed */
_L6:
        if (obj == a.c(a1))
        {
            break; /* Loop/switch isn't completed */
        }
        l1 = j1;
        if (i1 != a.d(a1)) goto _L8; else goto _L7
_L7:
        if (!o) goto _L10; else goto _L9
_L9:
        l1 = j1;
        if (!obj.equals(a.c(a1))) goto _L8; else goto _L11
_L10:
        l1 = j1;
        if (!c.a(obj, a.c(a1))) goto _L8; else goto _L11
_L11:
        if (flag1)
        {
            if (flag2)
            {
                return a1;
            } else
            {
                return a.b(a1);
            }
        }
        obj = a.b(a1);
        a.a(a1, obj1);
        if (!flag2) goto _L13; else goto _L12
_L12:
        return a1;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
_L4:
        if (!d)
        {
            a a2 = b;
            a.b(a2, obj);
            a.a(a2, obj1);
            a.a(a2, i1);
            if (a.a(a2) == null)
            {
                e();
            }
            aa[l1] = a2;
            xd1.g = xd1.g + e;
            b = a.a(b);
            obj = a2;
        } else
        {
            if (a.a(b) == null)
            {
                e();
            }
            a a3 = a.a(b);
            a.a(b, a.a(a3));
            a.b(a3, obj);
            a.a(a3, obj1);
            a.a(a3, i1);
            a.a(a3, b);
            a.b(a3, a.e(b));
            aa[l1] = a3;
            xd1.g = xd1.g + e;
            a.b(a.a(a3), a3);
            a.a(a.e(a3), a3);
            obj = a3;
        }
        if (xd1.g + xd1.h > aa.length >> 1)
        {
            flag = d;
            wh.a();
            wh.a(xd1. new Runnable(flag) {

                final boolean a;
                final xd b;

                public final void run()
                {
                    boolean flag3 = false;
                    int j2 = xd.b(b);
                    xd.c(b);
                    if (j2 > xd.d(b))
                    {
                        if (a)
                        {
                            a aa1[] = new a[xd.e(b).length];
                            xd.a(b, xd.e(b), aa1, xd.e(b).length);
                            xd.a(b, aa1);
                            return;
                        } else
                        {
                            Object aobj[] = (Object[])(Object[])wk.i.a(xd.e(b).length);
                            System.arraycopy(xd.e(b), 0, ((Object) (aobj)), 0, xd.e(b).length);
                            xd.a(xd.e(b));
                            xd.a(b, aobj, xd.e(b), xd.e(b).length);
                            xd.a(aobj);
                            wk.i.a(((Object) (aobj)));
                            return;
                        }
                    }
                    int i3 = xd.e(b).length << 1;
                    if (i3 <= 1024)
                    {
                        a aa2[] = new a[i3];
                        xd.a(b, xd.e(b), aa2, xd.e(b).length);
                        xd.a(b, aa2);
                        return;
                    }
                    if (xd.f(b) == null)
                    {
                        xd.a(b, xd.a(b, i3 >> 5));
                    }
                    for (int k2 = 0; k2 < xd.e(b).length;)
                    {
                        a aa3[] = xd.e(b);
                        int l2 = k2 + 1;
                        Object obj2 = aa3[k2];
                        if (obj2 != null && obj2 != a.a)
                        {
                            xd xd2 = xd.f(b)[a.d(((a) (obj2))) >> xd.g(b) & 0x3f];
                            xd.a(xd2, ((a) (obj2)));
                            if (xd.d(xd2) + xd.b(xd2) << 1 >= xd.e(xd2).length)
                            {
                                wo.a("Unevenly distributed hash code - Degraded Performance");
                                a aa4[] = new a[i3];
                                xd.a(b, xd.e(b), aa4, xd.e(b).length);
                                xd.a(b, aa4);
                                xd.a(b, null);
                                return;
                            }
                            k2 = l2;
                        } else
                        {
                            k2 = l2;
                        }
                    }

                    if (a)
                    {
                        xd.a(xd.e(b));
                        xd.c(b);
                        xd.h(b);
                    }
                    aa4 = b;
                    if (xd.e == 1)
                    {
                        flag3 = true;
                    }
                    xd.a(aa4, flag3);
                }

            
            {
                b = xd.this;
                a = flag;
                super();
            }
            });
        }
        if (flag2) goto _L13; else goto _L14
_L14:
        return null;
        if (true) goto _L16; else goto _L15
_L15:
    }

    static a a(xd xd1)
    {
        return xd1.b;
    }

    static c a(xd xd1, c c1)
    {
        xd1.n = c1;
        return c1;
    }

    static e a(xd xd1, e e1)
    {
        xd1.m = e1;
        return e1;
    }

    static g a(xd xd1, g g1)
    {
        xd1.l = g1;
        return g1;
    }

    private final xd a(int i1)
    {
        xd xd1;
        for (xd1 = this; xd1.j;)
        {
            xd1 = xd1.i[i1 & 0x3f];
            i1 >>= 6;
        }

        return xd1;
    }

    static void a(xd xd1, a a1)
    {
        int j1 = xd1.f.length - 1;
        int i1 = a.d(a1) >> xd1.k;
        do
        {
            if (xd1.f[i1 & j1] == null)
            {
                xd1.f[i1 & j1] = a1;
                xd1.g = xd1.g + 1;
                return;
            }
            i1++;
        } while (true);
    }

    static void a(xd xd1, Object aobj[], a aa[], int i1)
    {
        int l1 = aa.length - 1;
        int j1 = 0;
label0:
        do
        {
            int k1;
            if (j1 < i1)
            {
                k1 = j1 + 1;
                a a1 = (a)aobj[j1];
                if (a1 != null && a1 != a.a)
                {
                    j1 = a.d(a1) >> xd1.k;
                    do
                    {
                        if (aa[j1 & l1] == null)
                        {
                            aa[j1 & l1] = a1;
                            j1 = k1;
                            continue label0;
                        }
                        j1++;
                    } while (true);
                }
            } else
            {
                return;
            }
            j1 = k1;
        } while (true);
    }

    static void a(Object aobj[])
    {
        b(aobj);
    }

    static boolean a(xd xd1, boolean flag)
    {
        xd1.j = flag;
        return flag;
    }

    static a[] a(xd xd1, a aa[])
    {
        xd1.f = aa;
        return aa;
    }

    static xd[] a(xd xd1, int i1)
    {
        xd axd[] = new xd[64];
        for (int j1 = 0; j1 < 64; j1++)
        {
            xd xd2 = new xd(new a[i1]);
            xd2.k = xd1.k + 6;
            axd[j1] = xd2;
        }

        return axd;
    }

    static xd[] a(xd xd1, xd axd[])
    {
        xd1.i = axd;
        return axd;
    }

    static int b(xd xd1)
    {
        return xd1.h;
    }

    private static void b(Object aobj[])
    {
        int j1;
        for (int i1 = 0; i1 < aobj.length; i1 += j1)
        {
            j1 = ws.a(aobj.length - i1, 1024);
            System.arraycopy(r, 0, ((Object) (aobj)), i1, j1);
        }

    }

    static int c(xd xd1)
    {
        xd1.h = 0;
        return 0;
    }

    protected static a c()
    {
        return new a();
    }

    static int d(xd xd1)
    {
        return xd1.g;
    }

    private void d()
    {
        f = (a[])new a[32];
        a = new a();
        b = new a();
        a.a(a, b);
        a.b(b, a);
        a a1 = b;
        for (int i1 = 0; i1 < 4; i1++)
        {
            a a2 = new a();
            a.b(a2, a1);
            a.a(a1, a2);
            a1 = a2;
        }

    }

    private void e()
    {
        wh.a();
        wh.a(new Runnable() {

            final xd a;

            public final void run()
            {
                a a1 = xd.a(a);
                for (int i1 = 0; i1 < 8;)
                {
                    a a2 = xd.c();
                    a.b(a2, a1);
                    a.a(a1, a2);
                    i1++;
                    a1 = a2;
                }

            }

            
            {
                a = xd.this;
                super();
            }
        });
    }

    static a[] e(xd xd1)
    {
        return xd1.f;
    }

    private void f()
    {
        if (j)
        {
            for (int i1 = 0; i1 < 64; i1++)
            {
                i[i1].f();
            }

            j = false;
        }
        b(f);
        h = 0;
        g = 0;
    }

    static xd[] f(xd xd1)
    {
        return xd1.i;
    }

    static int g(xd xd1)
    {
        return xd1.k;
    }

    private void g()
    {
        this;
        JVM INSTR monitorenter ;
        a.a(a, b);
        a.b(b, a);
        wh.a();
        wh.a(new Runnable() {

            final xd a;

            public final void run()
            {
                xd.a(a, (a[])new a[16]);
                if (xd.i(a))
                {
                    xd.a(a, false);
                    xd.a(a, xd.a(a, 16));
                }
                xd.h(a);
                xd.c(a);
            }

            
            {
                a = xd.this;
                super();
            }
        });
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static int h(xd xd1)
    {
        xd1.g = 0;
        return 0;
    }

    static boolean i(xd xd1)
    {
        return xd1.j;
    }

    static a j(xd xd1)
    {
        return xd1.a;
    }

    static xb k(xd xd1)
    {
        return xd1.p;
    }

    static xb l(xd xd1)
    {
        return xd1.c;
    }

    public final a a(Object obj)
    {
        a aa[];
        xd xd1;
        int i1;
        int j1;
        int k1;
        if (o)
        {
            i1 = obj.hashCode();
        } else
        {
            i1 = c.a(obj);
        }
        xd1 = a(i1);
        aa = xd1.f;
        k1 = aa.length;
        j1 = i1 >> xd1.k;
        do
        {
            a a1 = aa[j1 & k1 - 1];
            if (a1 == null)
            {
                return null;
            }
            if (obj == a.c(a1) || i1 == a.d(a1) && (o ? obj.equals(a.c(a1)) : c.a(obj, a.c(a1))))
            {
                return a1;
            }
            j1++;
        } while (true);
    }

    public final xd a(xb xb1)
    {
        c = xb1;
        boolean flag;
        if (xb1 == xb.d || c == xb.c && !((Boolean)xb.a.a).booleanValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        o = flag;
        return this;
    }

    public final void a()
    {
        d = false;
        clear();
        a(xb.c);
        p = xb.c;
    }

    public final ww b()
    {
        return ww.a(entrySet());
    }

    public final void clear()
    {
        if (d)
        {
            g();
            return;
        }
        a a1 = a;
        a a2 = b;
        do
        {
            a1 = a.a(a1);
            if (a1 != a2)
            {
                a.b(a1, null);
                a.a(a1, null);
            } else
            {
                b = a.a(a);
                f();
                return;
            }
        } while (true);
    }

    public final boolean containsKey(Object obj)
    {
        return a(obj) != null;
    }

    public final boolean containsValue(Object obj)
    {
        return values().contains(obj);
    }

    public final Set entrySet()
    {
        if (n == null)
        {
            wh.a();
            wh.a(new Runnable() {

                final xd a;

                public final void run()
                {
                    xd.a(a, a. new c((byte)0));
                }

            
            {
                a = xd.this;
                super();
            }
            });
        }
        return n;
    }

    public final boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (obj instanceof Map)
        {
            obj = (Map)obj;
            return entrySet().equals(((Map) (obj)).entrySet());
        } else
        {
            return false;
        }
    }

    public final Object get(Object obj)
    {
        obj = a(obj);
        if (obj != null)
        {
            return a.b(((a) (obj)));
        } else
        {
            return null;
        }
    }

    public final int hashCode()
    {
        int i1 = 0;
        a a1 = a;
        a a2 = b;
        do
        {
            a1 = a.a(a1);
            if (a1 != a2)
            {
                i1 += a1.hashCode();
            } else
            {
                return i1;
            }
        } while (true);
    }

    public final boolean isEmpty()
    {
        return a.a(a) == b;
    }

    public final Set keySet()
    {
        if (m == null)
        {
            wh.a();
            wh.a(new Runnable() {

                final xd a;

                public final void run()
                {
                    xd.a(a, a. new e((byte)0));
                }

            
            {
                a = xd.this;
                super();
            }
            });
        }
        return m;
    }

    public final Object put(Object obj, Object obj1)
    {
        int i1;
        if (o)
        {
            i1 = obj.hashCode();
        } else
        {
            i1 = c.a(obj);
        }
        return a(obj, obj1, i1, d, false, false);
    }

    public final void putAll(Map map)
    {
        java.util.Map.Entry entry;
        for (map = map.entrySet().iterator(); map.hasNext(); put(entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)map.next();
        }

    }

    public final Object remove(Object obj)
    {
        int i1;
        if (o)
        {
            i1 = obj.hashCode();
        } else
        {
            i1 = c.a(obj);
        }
        return a(obj, i1, d);
    }

    public final int size()
    {
        int j1 = 0;
        if (j) goto _L2; else goto _L1
_L1:
        int k1 = g;
_L4:
        return k1;
_L2:
        int i1 = 0;
        do
        {
            k1 = i1;
            if (j1 >= i.length)
            {
                continue;
            }
            i1 = i[j1].size() + i1;
            j1++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final String toString()
    {
        return ww.a(entrySet()).toString();
    }

    public final Collection values()
    {
        if (l == null)
        {
            wh.a();
            wh.a(new Runnable() {

                final xd a;

                public final void run()
                {
                    xd.a(a, a. new g((byte)0));
                }

            
            {
                a = xd.this;
                super();
            }
            });
        }
        return l;
    }


    // Unreferenced inner class xd$c$1

/* anonymous class */
    final class c._cls1 extends xb
    {

        final c i;

        public final int a(Object obj)
        {
            obj = (java.util.Map.Entry)obj;
            return xd.l(i.a).a(((java.util.Map.Entry) (obj)).getKey()) + xd.k(i.a).a(((java.util.Map.Entry) (obj)).getValue());
        }

        public final boolean a(Object obj, Object obj1)
        {
            if (!(obj instanceof java.util.Map.Entry) || !(obj1 instanceof java.util.Map.Entry)) goto _L2; else goto _L1
_L1:
            obj = (java.util.Map.Entry)obj;
            obj1 = (java.util.Map.Entry)obj1;
            if (!xd.l(i.a).a(((java.util.Map.Entry) (obj)).getKey(), ((java.util.Map.Entry) (obj1)).getKey()) || !xd.k(i.a).a(((java.util.Map.Entry) (obj)).getValue(), ((java.util.Map.Entry) (obj1)).getValue())) goto _L4; else goto _L3
_L3:
            return true;
_L4:
            return false;
_L2:
            if (obj != null || obj1 != null)
            {
                return false;
            }
            if (true) goto _L3; else goto _L5
_L5:
        }

        public final int compare(Object obj, Object obj1)
        {
            return xd.l(i.a).compare(obj, obj1);
        }

            
            {
                i = c1;
                super();
            }
    }

}
