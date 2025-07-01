// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ab extends aj
    implements Map
{

    ag a;

    public ab()
    {
    }

    private ag a()
    {
        if (a == null)
        {
            a = new ag() {

                final ab a;

                protected final int a()
                {
                    return a.h;
                }

                protected final int a(Object obj)
                {
                    return a.a(obj);
                }

                protected final Object a(int i, int j)
                {
                    return a.g[(i << 1) + j];
                }

                protected final Object a(int i, Object obj)
                {
                    return a.a(i, obj);
                }

                protected final void a(int i)
                {
                    a.d(i);
                }

                protected final void a(Object obj, Object obj1)
                {
                    a.put(obj, obj1);
                }

                protected final int b(Object obj)
                {
                    return a.b(obj);
                }

                protected final Map b()
                {
                    return a;
                }

                protected final void c()
                {
                    a.clear();
                }

            
            {
                a = ab.this;
                super();
            }
            };
        }
        return a;
    }

    public Set entrySet()
    {
        ag ag1 = a();
        if (ag1.b == null)
        {
            ag1.b = new ag.b(ag1);
        }
        return ag1.b;
    }

    public Set keySet()
    {
        ag ag1 = a();
        if (ag1.c == null)
        {
            ag1.c = new ag.c(ag1);
        }
        return ag1.c;
    }

    public void putAll(Map map)
    {
        int i = h + map.size();
        if (super.f.length < i)
        {
            int ai[] = super.f;
            Object aobj[] = super.g;
            super.a(i);
            if (super.h > 0)
            {
                System.arraycopy(ai, 0, super.f, 0, super.h);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (super.g)), 0, super.h << 1);
            }
            aj.a(ai, aobj, super.h);
        }
        java.util.Map.Entry entry;
        for (map = map.entrySet().iterator(); map.hasNext(); put(entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)map.next();
        }

    }

    public Collection values()
    {
        ag ag1 = a();
        if (ag1.d == null)
        {
            ag1.d = new ag.e(ag1);
        }
        return ag1.d;
    }
}
