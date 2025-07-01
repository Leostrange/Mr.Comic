// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;
import java.util.Map;
import java.util.Set;

abstract class pm
    implements pu
{

    private transient Set a;
    private transient Map b;

    pm()
    {
    }

    public boolean a(Object obj, Object obj1)
    {
        return b(obj).add(obj1);
    }

    public Map b()
    {
        Map map1 = b;
        Map map = map1;
        if (map1 == null)
        {
            map = f();
            b = map;
        }
        return map;
    }

    Set e()
    {
        return new pt.d(b());
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (obj instanceof pu)
        {
            obj = (pu)obj;
            return b().equals(((pu) (obj)).b());
        } else
        {
            return false;
        }
    }

    abstract Map f();

    public Set g()
    {
        Set set1 = a;
        Set set = set1;
        if (set1 == null)
        {
            set = e();
            a = set;
        }
        return set;
    }

    public int hashCode()
    {
        return b().hashCode();
    }

    public String toString()
    {
        return b().toString();
    }
}
