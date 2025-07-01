// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class mw
{

    public mw()
    {
    }

    public abstract void a();

    public abstract void a(double d1);

    public abstract void a(float f1);

    public abstract void a(int i);

    public abstract void a(long l);

    public abstract void a(String s);

    public abstract void a(BigDecimal bigdecimal);

    public abstract void a(BigInteger biginteger);

    public abstract void a(boolean flag);

    public final void a(boolean flag, Object obj)
    {
        boolean flag2 = true;
        if (obj == null)
        {
            return;
        }
        Object obj1 = obj.getClass();
        if (ns.a(obj))
        {
            f();
            return;
        }
        if (obj instanceof String)
        {
            b((String)obj);
            return;
        }
        if (obj instanceof Number)
        {
            if (flag)
            {
                b(obj.toString());
                return;
            }
            if (obj instanceof BigDecimal)
            {
                a((BigDecimal)obj);
                return;
            }
            if (obj instanceof BigInteger)
            {
                a((BigInteger)obj);
                return;
            }
            if (obj instanceof Long)
            {
                a(((Long)obj).longValue());
                return;
            }
            if (obj instanceof Float)
            {
                float f1 = ((Number)obj).floatValue();
                if (!Float.isInfinite(f1) && !Float.isNaN(f1))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                ni.a(flag);
                a(f1);
                return;
            }
            if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte))
            {
                a(((Number)obj).intValue());
                return;
            }
            double d1 = ((Number)obj).doubleValue();
            if (!Double.isInfinite(d1) && !Double.isNaN(d1))
            {
                flag = flag2;
            } else
            {
                flag = false;
            }
            ni.a(flag);
            a(d1);
            return;
        }
        if (obj instanceof Boolean)
        {
            a(((Boolean)obj).booleanValue());
            return;
        }
        if (obj instanceof nu)
        {
            b(((nu)obj).a());
            return;
        }
        if ((obj instanceof Iterable) || ((Class) (obj1)).isArray())
        {
            b();
            for (obj = on.a(obj).iterator(); ((Iterator) (obj)).hasNext(); a(flag, ((Iterator) (obj)).next())) { }
            c();
            return;
        }
        if (((Class) (obj1)).isEnum())
        {
            obj = nv.a((Enum)obj).c;
            if (obj == null)
            {
                f();
                return;
            } else
            {
                b(((String) (obj)));
                return;
            }
        }
        d();
        Iterator iterator;
        boolean flag1;
        if ((obj instanceof Map) && !(obj instanceof nw))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            obj1 = null;
        } else
        {
            obj1 = nq.a(((Class) (obj1)));
        }
        iterator = ns.b(obj).entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            obj = (java.util.Map.Entry)iterator.next();
            Object obj2 = ((java.util.Map.Entry) (obj)).getValue();
            if (obj2 != null)
            {
                String s = (String)((java.util.Map.Entry) (obj)).getKey();
                boolean flag3;
                if (flag1)
                {
                    flag3 = flag;
                } else
                {
                    obj = ((nq) (obj1)).a(s);
                    if (obj == null)
                    {
                        obj = null;
                    } else
                    {
                        obj = ((nv) (obj)).b;
                    }
                    if (obj != null && ((Field) (obj)).getAnnotation(na) != null)
                    {
                        flag3 = true;
                    } else
                    {
                        flag3 = false;
                    }
                }
                a(s);
                a(flag3, obj2);
            }
        } while (true);
        e();
    }

    public abstract void b();

    public abstract void b(String s);

    public abstract void c();

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public void g()
    {
    }
}
