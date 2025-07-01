// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class xa
    implements Collection, wt, xi
{
    public static interface a
    {

        public abstract a a();

        public abstract a c();
    }

    public final class b
        implements Serializable, Collection
    {

        final xa a;

        public final boolean add(Object obj)
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = a.add(obj);
            this;
            JVM INSTR monitorexit ;
            return flag;
            obj;
            throw obj;
        }

        public final boolean addAll(Collection collection)
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = a.addAll(collection);
            this;
            JVM INSTR monitorexit ;
            return flag;
            collection;
            throw collection;
        }

        public final void clear()
        {
            this;
            JVM INSTR monitorenter ;
            a.clear();
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        public final boolean contains(Object obj)
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = a.contains(obj);
            this;
            JVM INSTR monitorexit ;
            return flag;
            obj;
            throw obj;
        }

        public final boolean containsAll(Collection collection)
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = a.containsAll(collection);
            this;
            JVM INSTR monitorexit ;
            return flag;
            collection;
            throw collection;
        }

        public final boolean isEmpty()
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = a.isEmpty();
            this;
            JVM INSTR monitorexit ;
            return flag;
            Exception exception;
            exception;
            throw exception;
        }

        public final Iterator iterator()
        {
            this;
            JVM INSTR monitorenter ;
            if (!(a instanceof List)) goto _L2; else goto _L1
_L1:
            Object obj = new b(this, a.toArray());
_L4:
            this;
            JVM INSTR monitorexit ;
            return ((Iterator) (obj));
_L2:
            obj = new a(this, a.toArray());
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            throw exception;
        }

        public final boolean remove(Object obj)
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = a.remove(obj);
            this;
            JVM INSTR monitorexit ;
            return flag;
            obj;
            throw obj;
        }

        public final boolean removeAll(Collection collection)
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = a.removeAll(collection);
            this;
            JVM INSTR monitorexit ;
            return flag;
            collection;
            throw collection;
        }

        public final boolean retainAll(Collection collection)
        {
            this;
            JVM INSTR monitorenter ;
            boolean flag = a.retainAll(collection);
            this;
            JVM INSTR monitorexit ;
            return flag;
            collection;
            throw collection;
        }

        public final int size()
        {
            this;
            JVM INSTR monitorenter ;
            int i = a.size();
            this;
            JVM INSTR monitorexit ;
            return i;
            Exception exception;
            exception;
            throw exception;
        }

        public final Object[] toArray()
        {
            this;
            JVM INSTR monitorenter ;
            Object aobj[] = a.toArray();
            this;
            JVM INSTR monitorexit ;
            return aobj;
            Exception exception;
            exception;
            throw exception;
        }

        public final Object[] toArray(Object aobj[])
        {
            this;
            JVM INSTR monitorenter ;
            aobj = a.toArray(aobj);
            this;
            JVM INSTR monitorexit ;
            return aobj;
            aobj;
            throw aobj;
        }

        public final String toString()
        {
            this;
            JVM INSTR monitorenter ;
            String s = a.toString();
            this;
            JVM INSTR monitorexit ;
            return s;
            Exception exception;
            exception;
            throw exception;
        }

        private b()
        {
            a = xa.this;
            super();
        }

        public b(byte byte0)
        {
            this();
        }
    }

    final class b.a
        implements Iterator
    {

        final b a;
        private final Object b[];
        private int c;
        private Object d;

        public final boolean hasNext()
        {
            return c < b.length;
        }

        public final Object next()
        {
            Object aobj[] = b;
            int i = c;
            c = i + 1;
            Object obj = aobj[i];
            d = obj;
            return obj;
        }

        public final void remove()
        {
            if (d == null)
            {
                throw new IllegalStateException();
            } else
            {
                a.remove(d);
                d = null;
                return;
            }
        }

        public b.a(b b1, Object aobj[])
        {
            a = b1;
            super();
            b = aobj;
        }
    }

    final class b.b
        implements Iterator
    {

        final b a;
        private final Object b[];
        private int c;
        private int d;

        public final boolean hasNext()
        {
            return c < b.length;
        }

        public final Object next()
        {
            Object aobj[] = b;
            int i = c;
            c = i + 1;
            return aobj[i];
        }

        public final void remove()
        {
            if (c == 0)
            {
                throw new IllegalStateException();
            }
            if (b[c - 1] == xa.f())
            {
                throw new IllegalStateException();
            }
            b[c - 1] = xa.f();
            d = d + 1;
            synchronized (a)
            {
                ((List)a.a).remove(c - d);
            }
            return;
            exception;
            b1;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public b.b(b b1, Object aobj[])
        {
            a = b1;
            super();
            b = aobj;
        }
    }


    private static final Object a = new Object();

    protected xa()
    {
    }

    private static boolean a(Collection collection, Object obj, xb xb1)
    {
        if ((collection instanceof xa) && ((xa)collection).e().equals(xb1))
        {
            return collection.contains(obj);
        }
        for (collection = collection.iterator(); collection.hasNext();)
        {
            if (xb1.a(obj, collection.next()))
            {
                return true;
            }
        }

        return false;
    }

    static Object f()
    {
        return a;
    }

    public abstract Object a(a a1);

    public boolean add(Object obj)
    {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection collection)
    {
        boolean flag = false;
        collection = collection.iterator();
        do
        {
            if (!collection.hasNext())
            {
                break;
            }
            if (add(collection.next()))
            {
                flag = true;
            }
        } while (true);
        return flag;
    }

    public final ww b()
    {
        ww ww1 = ww.a("{");
        a a1 = c();
        a a3 = d();
        do
        {
            a a2 = a1.c();
            if (a2 == a3)
            {
                break;
            }
            ww ww2 = ww1.b(a(a2));
            a1 = a2;
            ww1 = ww2;
            if (a2.c() != a3)
            {
                ww1 = ww2.a(", ");
                a1 = a2;
            }
        } while (true);
        return ww1.a("}");
    }

    public abstract void b(a a1);

    public abstract a c();

    public void clear()
    {
        a a2 = c();
        for (a a1 = d().a(); a1 != a2; a1 = a1.a())
        {
            b(a1);
        }

    }

    public boolean contains(Object obj)
    {
        xb xb1 = e();
        a a1 = c();
        a a3 = d();
        do
        {
            a a2 = a1.c();
            if (a2 != a3)
            {
                a1 = a2;
                if (xb1.a(obj, a(a2)))
                {
                    return true;
                }
            } else
            {
                return false;
            }
        } while (true);
    }

    public boolean containsAll(Collection collection)
    {
        for (collection = collection.iterator(); collection.hasNext();)
        {
            if (!contains(collection.next()))
            {
                return false;
            }
        }

        return true;
    }

    public abstract a d();

    public xb e()
    {
        return xb.c;
    }

    public boolean equals(Object obj)
    {
label0:
        {
label1:
            {
                if (!(this instanceof List))
                {
                    break label0;
                }
                if (obj instanceof List)
                {
                    obj = (List)obj;
                    if (obj == this)
                    {
                        break label1;
                    }
                    if (size() == ((List) (obj)).size())
                    {
                        Iterator iterator1 = ((List) (obj)).iterator();
                        xb xb1 = e();
                        obj = c();
                        a a2 = d();
                        a a1;
                        do
                        {
                            a1 = ((a) (obj)).c();
                            if (a1 == a2)
                            {
                                break label1;
                            }
                            obj = a1;
                        } while (xb1.a(a(a1), iterator1.next()));
                    }
                }
                return false;
            }
            return true;
        }
        if (obj instanceof List)
        {
            return false;
        }
        if (!(obj instanceof Collection))
        {
            return false;
        }
        obj = (Collection)obj;
        return this == obj || size() == ((Collection) (obj)).size() && containsAll(((Collection) (obj)));
    }

    public int hashCode()
    {
        int k;
        if (this instanceof List)
        {
            xb xb1 = e();
            int i = 1;
            a a1 = c();
            a a3 = d();
            do
            {
                a1 = a1.c();
                k = i;
                if (a1 == a3)
                {
                    break;
                }
                i = i * 31 + xb1.a(a(a1));
            } while (true);
        } else
        {
            xb xb2 = e();
            int j = 0;
            a a2 = c();
            a a4 = d();
            do
            {
                a2 = a2.c();
                k = j;
                if (a2 == a4)
                {
                    break;
                }
                j += xb2.a(a(a2));
            } while (true);
        }
        return k;
    }

    public final boolean isEmpty()
    {
        return size() == 0;
    }

    public Iterator iterator()
    {
        return xc.a(this);
    }

    public boolean remove(Object obj)
    {
        xb xb1 = e();
        a a1 = c();
        a a3 = d();
        do
        {
            a a2 = a1.c();
            if (a2 != a3)
            {
                a1 = a2;
                if (xb1.a(obj, a(a2)))
                {
                    b(a2);
                    return true;
                }
            } else
            {
                return false;
            }
        } while (true);
    }

    public boolean removeAll(Collection collection)
    {
        a a3 = c();
        a a1 = d().a();
        boolean flag = false;
        a a2;
        for (; a1 != a3; a1 = a2)
        {
            a2 = a1.a();
            if (a(collection, a(a1), e()))
            {
                b(a1);
                flag = true;
            }
        }

        return flag;
    }

    public boolean retainAll(Collection collection)
    {
        a a3 = c();
        a a1 = d().a();
        boolean flag = false;
        a a2;
        for (; a1 != a3; a1 = a2)
        {
            a2 = a1.a();
            if (!a(collection, a(a1), e()))
            {
                b(a1);
                flag = true;
            }
        }

        return flag;
    }

    public abstract int size();

    public Object[] toArray()
    {
        return toArray(new Object[size()]);
    }

    public Object[] toArray(Object aobj[])
    {
        int i = size();
        if (aobj.length < i)
        {
            throw new UnsupportedOperationException("Destination array too small");
        }
        if (aobj.length > i)
        {
            aobj[i] = null;
        }
        i = 0;
        a a1 = c();
        a a2 = d();
        do
        {
            a1 = a1.c();
            if (a1 != a2)
            {
                aobj[i] = a(a1);
                i++;
            } else
            {
                return aobj;
            }
        } while (true);
    }

    public final String toString()
    {
        return b().toString();
    }

}
