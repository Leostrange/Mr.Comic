// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;

public abstract class wu
{
    static final class a extends wu
    {

        private final xd b;
        private final Collection c;
        private final xd d;

        private Object a(Class class1, Class class2, boolean flag)
        {
            Object obj;
            do
            {
                obj = (xd)b.get(class1);
                if (obj != null)
                {
                    obj = ((xd) (obj)).get(class2);
                    if (obj != null)
                    {
                        return obj;
                    }
                }
                if (!flag)
                {
                    return null;
                }
                Class aclass[] = class1.getInterfaces();
                for (int i = 0; i < aclass.length; i++)
                {
                    Object obj1 = a(aclass[i], class2, false);
                    if (obj1 != null)
                    {
                        return obj1;
                    }
                }

                aclass = class1.getSuperclass();
                class1 = aclass;
            } while (aclass != null);
            return null;
        }

        public final Object a(Class class1, Class class2)
        {
            try
            {
                Class.forName(class1.getName(), true, class1.getClassLoader());
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                wo.a(classnotfoundexception);
            }
            return a(class1, class2, true);
        }

        public final void a(Object obj, Class class1, Class class2)
        {
            class1;
            JVM INSTR monitorenter ;
            xd xd2 = (xd)b.get(class1);
            if (xd2 == null)
            {
                break MISSING_BLOCK_LABEL_67;
            }
            if (xd2.containsKey(class2))
            {
                throw new IllegalArgumentException((new StringBuilder("Field of type ")).append(class2).append(" already attached to class ").append(class1).toString());
            }
            break MISSING_BLOCK_LABEL_67;
            obj;
            class1;
            JVM INSTR monitorexit ;
            throw obj;
            xd xd1;
            xd1 = xd2;
            if (xd2 != null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            xd1 = new xd();
            b.put(class1, xd1);
            xd1.put(class2, obj);
            class1;
            JVM INSTR monitorexit ;
        }

        private a()
        {
            xd xd1 = new xd();
            xd1.d = true;
            b = xd1;
            c = new xa.b(new xe(), (byte)0);
            xd1 = new xd();
            xd1.d = true;
            d = xd1.a(xb.h);
        }

        a(byte byte0)
        {
            this();
        }
    }


    public static final wr a = new wr(wu$a) {

    };
    private static volatile wu b = new a((byte)0);
    private static final Object c[] = new Object[0];

    protected wu()
    {
    }

    public static final wu a()
    {
        return b;
    }

    public abstract Object a(Class class1, Class class2);

    public abstract void a(Object obj, Class class1, Class class2);

}
