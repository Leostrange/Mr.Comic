// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

final class nt extends AbstractMap
{
    final class a
        implements java.util.Map.Entry
    {

        final nt a;
        private Object b;
        private final nv c;

        private String a()
        {
            String s1 = c.c;
            String s = s1;
            if (a.b.b)
            {
                s = s1.toLowerCase();
            }
            return s;
        }

        public final boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (!(obj instanceof java.util.Map.Entry))
                {
                    return false;
                }
                obj = (java.util.Map.Entry)obj;
                if (!a().equals(((java.util.Map.Entry) (obj)).getKey()) || !getValue().equals(((java.util.Map.Entry) (obj)).getValue()))
                {
                    return false;
                }
            }
            return true;
        }

        public final Object getKey()
        {
            return a();
        }

        public final Object getValue()
        {
            return b;
        }

        public final int hashCode()
        {
            return a().hashCode() ^ getValue().hashCode();
        }

        public final Object setValue(Object obj)
        {
            Object obj1 = b;
            b = ni.a(obj);
            c.a(a.a, obj);
            return obj1;
        }

        a(nv nv1, Object obj)
        {
            a = nt.this;
            super();
            c = nv1;
            b = ni.a(obj);
        }
    }

    final class b
        implements Iterator
    {

        final nt a;
        private int b;
        private nv c;
        private Object d;
        private boolean e;
        private boolean f;
        private nv g;

        public final boolean hasNext()
        {
            if (!f)
            {
                f = true;
                d = null;
                do
                {
                    if (d != null)
                    {
                        break;
                    }
                    int i = b + 1;
                    b = i;
                    if (i >= a.b.d.size())
                    {
                        break;
                    }
                    c = a.b.a((String)a.b.d.get(b));
                    d = c.a(a.a);
                } while (true);
            }
            return d != null;
        }

        public final Object next()
        {
            if (!hasNext())
            {
                throw new NoSuchElementException();
            } else
            {
                g = c;
                Object obj = d;
                f = false;
                e = false;
                c = null;
                d = null;
                return a. new a(g, obj);
            }
        }

        public final void remove()
        {
            boolean flag;
            if (g != null && !e)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            ni.b(flag);
            e = true;
            g.a(a.a, null);
        }

        b()
        {
            a = nt.this;
            super();
            b = -1;
        }
    }

    final class c extends AbstractSet
    {

        final nt a;

        public final b a()
        {
            return a. new b();
        }

        public final void clear()
        {
            String s;
            for (Iterator iterator1 = a.b.d.iterator(); iterator1.hasNext(); a.b.a(s).a(a.a, null))
            {
                s = (String)iterator1.next();
            }

        }

        public final boolean isEmpty()
        {
            for (Iterator iterator1 = a.b.d.iterator(); iterator1.hasNext();)
            {
                String s = (String)iterator1.next();
                if (a.b.a(s).a(a.a) != null)
                {
                    return false;
                }
            }

            return true;
        }

        public final Iterator iterator()
        {
            return a();
        }

        public final int size()
        {
            Iterator iterator1 = a.b.d.iterator();
            int i = 0;
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                String s = (String)iterator1.next();
                if (a.b.a(s).a(a.a) != null)
                {
                    i++;
                }
            } while (true);
            return i;
        }

        c()
        {
            a = nt.this;
            super();
        }
    }


    final Object a;
    final nq b;

    nt(Object obj, boolean flag)
    {
        a = obj;
        b = nq.a(obj.getClass(), flag);
        if (!b.a.isEnum())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
    }

    public final c a()
    {
        return new c();
    }

    public final boolean containsKey(Object obj)
    {
        return get(obj) != null;
    }

    public final Set entrySet()
    {
        return a();
    }

    public final Object get(Object obj)
    {
        if (obj instanceof String)
        {
            if ((obj = b.a((String)obj)) != null)
            {
                return ((nv) (obj)).a(a);
            }
        }
        return null;
    }

    public final Object put(Object obj, Object obj1)
    {
        Object obj2 = (String)obj;
        obj = b.a(((String) (obj2)));
        oh.a(obj, (new StringBuilder("no field of key ")).append(((String) (obj2))).toString());
        obj2 = ((nv) (obj)).a(a);
        ((nv) (obj)).a(a, ni.a(obj1));
        return obj2;
    }
}
