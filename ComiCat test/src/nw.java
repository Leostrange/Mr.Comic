// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class nw extends AbstractMap
    implements Cloneable
{
    final class a
        implements Iterator
    {

        final nw a;
        private boolean b;
        private final Iterator c;
        private final Iterator d;

        public final boolean hasNext()
        {
            return c.hasNext() || d.hasNext();
        }

        public final Object next()
        {
            if (!b)
            {
                if (c.hasNext())
                {
                    return (java.util.Map.Entry)c.next();
                }
                b = true;
            }
            return (java.util.Map.Entry)d.next();
        }

        public final void remove()
        {
            if (b)
            {
                d.remove();
            }
            c.remove();
        }

        a(nt.c c1)
        {
            a = nw.this;
            super();
            c = c1.a();
            d = e.entrySet().iterator();
        }
    }

    final class b extends AbstractSet
    {

        final nw a;
        private final nt.c b;

        public final void clear()
        {
            a.e.clear();
            b.clear();
        }

        public final Iterator iterator()
        {
            return a. new a(b);
        }

        public final int size()
        {
            return a.e.size() + b.size();
        }

        b()
        {
            a = nw.this;
            super();
            b = (new nt(nw.this, f.b)).a();
        }
    }

    public static final class c extends Enum
    {

        public static final c a;
        private static final c b[];

        public static c valueOf(String s)
        {
            return (c)Enum.valueOf(nw$c, s);
        }

        public static c[] values()
        {
            return (c[])b.clone();
        }

        static 
        {
            a = new c("IGNORE_CASE");
            b = (new c[] {
                a
            });
        }

        private c(String s)
        {
            super(s, 0);
        }
    }


    Map e;
    protected final nq f;

    public nw()
    {
        this(EnumSet.noneOf(nw$c));
    }

    public nw(EnumSet enumset)
    {
        e = nl.a();
        f = nq.a(getClass(), enumset.contains(c.a));
    }

    public Object clone()
    {
        return d();
    }

    public nw d()
    {
        nw nw1;
        try
        {
            nw1 = (nw)super.clone();
            ns.a(this, nw1);
            nw1.e = (Map)ns.c(e);
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new IllegalStateException(clonenotsupportedexception);
        }
        return nw1;
    }

    public nw d(String s, Object obj)
    {
        Object obj1 = f.a(s);
        if (obj1 != null)
        {
            ((nv) (obj1)).a(this, obj);
            return this;
        }
        obj1 = s;
        if (f.b)
        {
            obj1 = s.toLowerCase();
        }
        e.put(obj1, obj);
        return this;
    }

    public final Object e(String s, Object obj)
    {
        Object obj1 = f.a(s);
        if (obj1 != null)
        {
            s = ((String) (((nv) (obj1)).a(this)));
            ((nv) (obj1)).a(this, obj);
            return s;
        }
        obj1 = s;
        if (f.b)
        {
            obj1 = s.toLowerCase();
        }
        return e.put(obj1, obj);
    }

    public Set entrySet()
    {
        return new b();
    }

    public final Object get(Object obj)
    {
        if (!(obj instanceof String))
        {
            return null;
        }
        String s = (String)obj;
        obj = f.a(s);
        if (obj != null)
        {
            return ((nv) (obj)).a(this);
        }
        obj = s;
        if (f.b)
        {
            obj = s.toLowerCase();
        }
        return e.get(obj);
    }

    public Object put(Object obj, Object obj1)
    {
        return e((String)obj, obj1);
    }

    public final void putAll(Map map)
    {
        java.util.Map.Entry entry;
        for (map = map.entrySet().iterator(); map.hasNext(); d((String)entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)map.next();
        }

    }

    public final Object remove(Object obj)
    {
        if (!(obj instanceof String))
        {
            return null;
        }
        String s = (String)obj;
        if (f.a(s) != null)
        {
            throw new UnsupportedOperationException();
        }
        obj = s;
        if (f.b)
        {
            obj = s.toLowerCase();
        }
        return e.remove(obj);
    }
}
