// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

public final class xf extends xa
    implements List, RandomAccess, wv
{
    static final class a
        implements ListIterator
    {

        private static final wp a = new wp() {

            protected final Object a()
            {
                return new a((byte)0);
            }

            protected final void b(Object obj)
            {
                obj = (a)obj;
                a.a(((a) (obj)));
                a.b(((a) (obj)));
                a.c(((a) (obj)));
            }

        };
        private xf b;
        private int c;
        private int d;
        private int e;
        private int f;
        private Object g[];
        private Object h[][];

        public static a a(xf xf1, int i, int j, int k)
        {
            a a1 = (a)a.b();
            a1.b = xf1;
            a1.d = j;
            a1.e = k;
            a1.f = i;
            a1.g = xf.b(xf1);
            a1.h = xf.d(xf1);
            a1.c = -1;
            return a1;
        }

        static xf a(a a1)
        {
            a1.b = null;
            return null;
        }

        static Object[] b(a a1)
        {
            a1.g = null;
            return null;
        }

        static Object[][] c(a a1)
        {
            a1.h = null;
            return null;
        }

        public final void add(Object obj)
        {
            xf xf1 = b;
            int i = f;
            f = i + 1;
            xf1.add(i, obj);
            e = e + 1;
            c = -1;
        }

        public final boolean hasNext()
        {
            return f != e;
        }

        public final boolean hasPrevious()
        {
            return f != d;
        }

        public final Object next()
        {
            if (f == e)
            {
                throw new NoSuchElementException();
            }
            int i = f;
            f = i + 1;
            c = i;
            if (i < 1024)
            {
                return g[i];
            } else
            {
                return h[i >> 10][i & 0x3ff];
            }
        }

        public final int nextIndex()
        {
            return f;
        }

        public final Object previous()
        {
            if (f == d)
            {
                throw new NoSuchElementException();
            }
            int i = f - 1;
            f = i;
            c = i;
            if (i < 1024)
            {
                return g[i];
            } else
            {
                return h[i >> 10][i & 0x3ff];
            }
        }

        public final int previousIndex()
        {
            return f - 1;
        }

        public final void remove()
        {
            if (c >= 0)
            {
                b.remove(c);
                e = e - 1;
                if (c < f)
                {
                    f = f - 1;
                }
                c = -1;
                return;
            } else
            {
                throw new IllegalStateException();
            }
        }

        public final void set(Object obj)
        {
            if (c >= 0)
            {
                b.set(c, obj);
                return;
            } else
            {
                throw new IllegalStateException();
            }
        }


        private a()
        {
        }

        a(byte byte0)
        {
            this();
        }
    }

    static final class b extends xa
        implements List, RandomAccess
    {

        private static final wp a = new wp() {

            protected final Object a()
            {
                return new b((byte)0);
            }

            protected final void b(Object obj)
            {
                b.a((b)obj);
            }

        };
        private xf b;
        private int c;
        private int d;

        public static b a(xf xf1, int i, int j)
        {
            b b1 = (b)a.b();
            b1.b = xf1;
            b1.c = i;
            b1.d = j;
            return b1;
        }

        static xf a(b b1)
        {
            b1.b = null;
            return null;
        }

        public final Object a(xa.a a1)
        {
            return b.get(((xg)a1).intValue() + c);
        }

        public final void add(int i, Object obj)
        {
            throw new UnsupportedOperationException("Insertion not supported, thread-safe collections.");
        }

        public final boolean addAll(int i, Collection collection)
        {
            throw new UnsupportedOperationException("Insertion not supported, thread-safe collections.");
        }

        public final void b(xa.a a1)
        {
            throw new UnsupportedOperationException("Deletion not supported, thread-safe collections.");
        }

        public final xa.a c()
        {
            return xg.a(-1);
        }

        public final xa.a d()
        {
            return xg.a(d);
        }

        public final Object get(int i)
        {
            if (i < 0 || i >= d)
            {
                throw new IndexOutOfBoundsException((new StringBuilder("index: ")).append(i).toString());
            } else
            {
                return b.get(c + i);
            }
        }

        public final int indexOf(Object obj)
        {
            xb xb1 = b.c;
            int i = -1;
            do
            {
                int j = i + 1;
                if (j < d)
                {
                    i = j;
                    if (xb1.a(obj, b.get(c + j)))
                    {
                        return j;
                    }
                } else
                {
                    return -1;
                }
            } while (true);
        }

        public final int lastIndexOf(Object obj)
        {
            xb xb1 = b.c;
            int i = d;
            do
            {
                int j = i - 1;
                if (j >= 0)
                {
                    i = j;
                    if (xb1.a(obj, b.get(c + j)))
                    {
                        return j;
                    }
                } else
                {
                    return -1;
                }
            } while (true);
        }

        public final ListIterator listIterator()
        {
            return listIterator(0);
        }

        public final ListIterator listIterator(int i)
        {
            if (i >= 0 && i <= d)
            {
                return a.a(b, c + i, c, c + d);
            } else
            {
                throw new IndexOutOfBoundsException((new StringBuilder("index: ")).append(i).append(" for table of size: ").append(d).toString());
            }
        }

        public final Object remove(int i)
        {
            throw new UnsupportedOperationException("Deletion not supported, thread-safe collections.");
        }

        public final Object set(int i, Object obj)
        {
            if (i < 0 || i >= d)
            {
                throw new IndexOutOfBoundsException((new StringBuilder("index: ")).append(i).toString());
            } else
            {
                return b.set(c + i, obj);
            }
        }

        public final int size()
        {
            return d;
        }

        public final List subList(int i, int j)
        {
            if (i < 0 || j > d || i > j)
            {
                throw new IndexOutOfBoundsException((new StringBuilder("fromIndex: ")).append(i).append(", toIndex: ").append(j).append(" for list of size: ").append(d).toString());
            } else
            {
                return a(b, c + i, j - i);
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


    private static final wp d = new wp() {

        public final Object a()
        {
            return new xf();
        }

    };
    private static final Object g[] = (Object[])new Object[1024];
    public transient Object a[][];
    public transient int b;
    transient xb c;
    private transient Object e[];
    private transient int f;

    public xf()
    {
        c = xb.c;
        f = 16;
        e = (Object[])new Object[16];
        a = (Object[][])new Object[1][];
        a[0] = e;
    }

    static int a(xf xf1)
    {
        return xf1.f;
    }

    static int a(xf xf1, int i)
    {
        xf1.f = i;
        return i;
    }

    private void a(int i, int j)
    {
        while (b + j >= f) 
        {
            g();
        }
        int k = b;
        do
        {
            k--;
            if (k >= i)
            {
                int l = k + j;
                a[l >> 10][l & 0x3ff] = a[k >> 10][k & 0x3ff];
            } else
            {
                return;
            }
        } while (true);
    }

    private static boolean a(Object obj, Object obj1)
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        if (obj1 != null) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (obj != obj1 && !obj.equals(obj1))
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    static Object[] a(xf xf1, Object aobj[])
    {
        xf1.e = aobj;
        return aobj;
    }

    static Object[][] a(xf xf1, Object aobj[][])
    {
        xf1.a = aobj;
        return aobj;
    }

    static Object[] b(xf xf1)
    {
        return xf1.e;
    }

    static int c(xf xf1)
    {
        return xf1.b;
    }

    static Object[][] d(xf xf1)
    {
        return xf1.a;
    }

    private void g()
    {
        wh.a();
        wh.a(new Runnable() {

            final xf a;

            public final void run()
            {
                if (xf.a(a) < 1024)
                {
                    xf.a(a, xf.a(a) << 1);
                    Object aobj[] = (Object[])new Object[xf.a(a)];
                    System.arraycopy(((Object) (xf.b(a))), 0, ((Object) (aobj)), 0, xf.c(a));
                    xf.a(a, aobj);
                    xf.d(a)[0] = aobj;
                    return;
                }
                int i = xf.a(a) >> 10;
                if (i >= xf.d(a).length)
                {
                    Object aobj1[][] = (Object[][])new Object[xf.d(a).length * 2][];
                    System.arraycopy(((Object) (xf.d(a))), 0, ((Object) (aobj1)), 0, xf.d(a).length);
                    xf.a(a, aobj1);
                }
                xf.d(a)[i] = (Object[])new Object[1024];
                xf.a(a, xf.a(a) + 1024);
            }

            
            {
                a = xf.this;
                super();
            }
        });
    }

    public final Object a(xa.a a1)
    {
        return get(((xg)a1).intValue());
    }

    public final void a()
    {
        clear();
        c = xb.c;
    }

    public final void add(int i, Object obj)
    {
        if (i < 0 || i > b)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("index: ")).append(i).toString());
        } else
        {
            a(i, 1);
            a[i >> 10][i & 0x3ff] = obj;
            b = b + 1;
            return;
        }
    }

    public final boolean add(Object obj)
    {
        if (b >= f)
        {
            g();
        }
        a[b >> 10][b & 0x3ff] = obj;
        b = b + 1;
        return true;
    }

    public final boolean addAll(int i, Collection collection)
    {
        if (i < 0 || i > b)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("index: ")).append(i).toString());
        }
        int k = collection.size();
        a(i, k);
        collection = collection.iterator();
        for (int j = i; j < i + k; j++)
        {
            a[j >> 10][j & 0x3ff] = collection.next();
        }

        b = b + k;
        return k != 0;
    }

    public final void b(xa.a a1)
    {
        remove(((xg)a1).intValue());
    }

    public final xa.a c()
    {
        return xg.a(-1);
    }

    public final void clear()
    {
        for (int i = 0; i < b; i += 1024)
        {
            int j = ws.a(b - i, 1024);
            Object aobj[] = a[i >> 10];
            System.arraycopy(((Object) (g)), 0, ((Object) (aobj)), 0, j);
        }

        b = 0;
    }

    public final boolean contains(Object obj)
    {
        return indexOf(obj) >= 0;
    }

    public final xa.a d()
    {
        return xg.a(b);
    }

    public final xb e()
    {
        return c;
    }

    public final Object get(int i)
    {
        if (i >= b)
        {
            throw new IndexOutOfBoundsException();
        }
        if (i < 1024)
        {
            return e[i];
        } else
        {
            return a[i >> 10][i & 0x3ff];
        }
    }

    public final int indexOf(Object obj)
    {
        xb xb1 = c;
        int k;
        for (int i = 0; i < b; i += k)
        {
            Object aobj[] = a[i >> 10];
            k = ws.a(aobj.length, b - i);
            for (int j = 0; j < k; j++)
            {
                if (xb1 != xb.c ? xb1.a(obj, aobj[j]) : a(obj, aobj[j]))
                {
                    return i + j;
                }
            }

        }

        return -1;
    }

    public final Iterator iterator()
    {
        return a.a(this, 0, 0, b);
    }

    public final int lastIndexOf(Object obj)
    {
        xb xb1;
        int i;
        xb1 = c;
        i = b - 1;
_L8:
        Object aobj[];
        int j;
        int k;
        if (i < 0)
        {
            break; /* Loop/switch isn't completed */
        }
        aobj = a[i >> 10];
        k = (i & 0x3ff) + 1;
        j = k;
_L6:
        int l = j - 1;
        if (l < 0) goto _L2; else goto _L1
_L1:
        if (xb1 != xb.c) goto _L4; else goto _L3
_L3:
        j = l;
        if (!a(obj, aobj[l])) goto _L6; else goto _L5
_L5:
        return ((l + i) - k) + 1;
_L4:
        j = l;
        if (!xb1.a(obj, aobj[l])) goto _L6; else goto _L5
_L2:
        i -= k;
        if (true) goto _L8; else goto _L7
_L7:
        return -1;
    }

    public final ListIterator listIterator()
    {
        return a.a(this, 0, 0, b);
    }

    public final ListIterator listIterator(int i)
    {
        if (i < 0 || i > b)
        {
            throw new IndexOutOfBoundsException();
        } else
        {
            return a.a(this, i, 0, b);
        }
    }

    public final Object remove(int i)
    {
        Object obj = get(i);
        for (i++; i < b; i++)
        {
            int j = i - 1;
            a[j >> 10][j & 0x3ff] = a[i >> 10][i & 0x3ff];
        }

        b = b - 1;
        a[b >> 10][b & 0x3ff] = null;
        return obj;
    }

    public final Object set(int i, Object obj)
    {
        if (i >= b)
        {
            throw new IndexOutOfBoundsException();
        } else
        {
            Object aobj[] = a[i >> 10];
            Object obj1 = aobj[i & 0x3ff];
            aobj[i & 0x3ff] = obj;
            return obj1;
        }
    }

    public final int size()
    {
        return b;
    }

    public final List subList(int i, int j)
    {
        if (i < 0 || j > b || i > j)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("fromIndex: ")).append(i).append(", toIndex: ").append(j).append(" for list of size: ").append(b).toString());
        } else
        {
            return b.a(this, i, j - i);
        }
    }

}
