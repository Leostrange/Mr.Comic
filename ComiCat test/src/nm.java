// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class nm
{
    static final class a
    {

        final Class a;
        final ArrayList b = new ArrayList();

        final Object a()
        {
            return on.a(b, a);
        }

        a(Class class1)
        {
            a = class1;
        }
    }


    private final Map a = nl.a();
    private final Map b = nl.a();
    private final Object c;

    public nm(Object obj)
    {
        c = obj;
    }

    public final void a()
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); ((Map)c).put(entry.getKey(), ((a)entry.getValue()).a()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        java.util.Map.Entry entry1;
        for (Iterator iterator1 = b.entrySet().iterator(); iterator1.hasNext(); nv.a((Field)entry1.getKey(), c, ((a)entry1.getValue()).a()))
        {
            entry1 = (java.util.Map.Entry)iterator1.next();
        }

    }

    public final void a(Field field, Class class1, Object obj)
    {
        a a2 = (a)b.get(field);
        a a1 = a2;
        if (a2 == null)
        {
            a1 = new a(class1);
            b.put(field, a1);
        }
        boolean flag;
        if (class1 == a1.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        a1.b.add(obj);
    }
}
