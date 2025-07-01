// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.WeakHashMap;

public final class nq
{

    private static final Map e = new WeakHashMap();
    private static final Map f = new WeakHashMap();
    final Class a;
    final boolean b;
    public final IdentityHashMap c = new IdentityHashMap();
    final List d;

    private nq(Class class1, boolean flag)
    {
        a = class1;
        b = flag;
        TreeSet treeset;
        java.lang.reflect.Field afield[];
        int i;
        int j;
        boolean flag1;
        if (!flag || !class1.isEnum())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        oh.a(flag1, (new StringBuilder("cannot ignore case on an enum: ")).append(class1).toString());
        treeset = new TreeSet(new Comparator() {

            final nq a;

            public final int compare(Object obj1, Object obj2)
            {
                obj1 = (String)obj1;
                obj2 = (String)obj2;
                if (obj1 == obj2)
                {
                    return 0;
                }
                if (obj1 == null)
                {
                    return -1;
                }
                if (obj2 == null)
                {
                    return 1;
                } else
                {
                    return ((String) (obj1)).compareTo(((String) (obj2)));
                }
            }

            
            {
                a = nq.this;
                super();
            }
        });
        afield = class1.getDeclaredFields();
        j = afield.length;
        i = 0;
        while (i < j) 
        {
            java.lang.reflect.Field field = afield[i];
            nv nv1 = nv.a(field);
            if (nv1 != null)
            {
                String s = nv1.c;
                if (flag)
                {
                    s = s.toLowerCase().intern();
                }
                Object obj = (nv)c.get(s);
                String s1;
                if (obj == null)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (flag)
                {
                    s1 = "case-insensitive ";
                } else
                {
                    s1 = "";
                }
                if (obj == null)
                {
                    obj = null;
                } else
                {
                    obj = ((nv) (obj)).b;
                }
                oh.a(flag1, "two fields have the same %sname <%s>: %s and %s", new Object[] {
                    s1, s, field, obj
                });
                c.put(s, nv1);
                treeset.add(s);
            }
            i++;
        }
        class1 = class1.getSuperclass();
        if (class1 != null)
        {
            class1 = a(class1, flag);
            treeset.addAll(((nq) (class1)).d);
            class1 = ((nq) (class1)).c.entrySet().iterator();
            do
            {
                if (!class1.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)class1.next();
                String s2 = (String)entry.getKey();
                if (!c.containsKey(s2))
                {
                    c.put(s2, entry.getValue());
                }
            } while (true);
        }
        if (treeset.isEmpty())
        {
            class1 = Collections.emptyList();
        } else
        {
            class1 = Collections.unmodifiableList(new ArrayList(treeset));
        }
        d = class1;
    }

    public static nq a(Class class1)
    {
        return a(class1, false);
    }

    public static nq a(Class class1, boolean flag)
    {
        if (class1 == null)
        {
            return null;
        }
        Map map;
        nq nq1;
        nq nq2;
        if (flag)
        {
            map = f;
        } else
        {
            map = e;
        }
        map;
        JVM INSTR monitorenter ;
        nq2 = (nq)map.get(class1);
        nq1 = nq2;
        if (nq2 != null)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        nq1 = new nq(class1, flag);
        map.put(class1, nq1);
        map;
        JVM INSTR monitorexit ;
        return nq1;
        class1;
        map;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public final nv a(String s)
    {
        String s1 = s;
        if (s != null)
        {
            s1 = s;
            if (b)
            {
                s1 = s.toLowerCase();
            }
            s1 = s1.intern();
        }
        return (nv)c.get(s1);
    }

}
