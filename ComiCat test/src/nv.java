// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Map;
import java.util.WeakHashMap;

public final class nv
{

    private static final Map d = new WeakHashMap();
    public final boolean a;
    public final Field b;
    public final String c;

    private nv(Field field, String s)
    {
        b = field;
        if (s == null)
        {
            field = null;
        } else
        {
            field = s.intern();
        }
        c = field;
        a = ns.a(b.getType());
    }

    private static Object a(Field field, Object obj)
    {
        try
        {
            field = ((Field) (field.get(obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Field field)
        {
            throw new IllegalArgumentException(field);
        }
        return field;
    }

    public static nv a(Enum enum)
    {
        boolean flag = true;
        nv nv1;
        try
        {
            nv1 = a(enum.getClass().getField(enum.name()));
        }
        // Misplaced declaration of an exception variable
        catch (Enum enum)
        {
            throw new RuntimeException(enum);
        }
        if (nv1 == null)
        {
            flag = false;
        }
        oh.a(flag, "enum constant missing @Value or @NullValue annotation: %s", new Object[] {
            enum
        });
        return nv1;
    }

    public static nv a(Field field)
    {
        if (field == null)
        {
            return null;
        }
        Map map = d;
        map;
        JVM INSTR monitorenter ;
        nv nv1;
        boolean flag;
        nv1 = (nv)d.get(field);
        flag = field.isEnumConstant();
        Object obj = nv1;
        if (nv1 != null) goto _L2; else goto _L1
_L1:
        if (flag) goto _L4; else goto _L3
_L3:
        obj = nv1;
        if (Modifier.isStatic(field.getModifiers())) goto _L2; else goto _L4
_L4:
        if (!flag) goto _L6; else goto _L5
_L5:
        obj = (oo)field.getAnnotation(oo);
        if (obj == null) goto _L8; else goto _L7
_L7:
        obj = ((oo) (obj)).a();
_L9:
        if ("##default".equals(obj))
        {
            obj = field.getName();
        }
        obj = new nv(field, ((String) (obj)));
        d.put(field, obj);
_L2:
        map;
        JVM INSTR monitorexit ;
        return ((nv) (obj));
        field;
        map;
        JVM INSTR monitorexit ;
        throw field;
_L8:
        if ((oe)field.getAnnotation(oe) == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        obj = null;
          goto _L9
        map;
        JVM INSTR monitorexit ;
        return null;
_L6:
        obj = (nz)field.getAnnotation(nz);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_163;
        }
        map;
        JVM INSTR monitorexit ;
        return null;
        obj = ((nz) (obj)).a();
        field.setAccessible(true);
          goto _L9
    }

    public static void a(Field field, Object obj, Object obj1)
    {
        if (Modifier.isFinal(field.getModifiers()))
        {
            Object obj2 = a(field, obj);
            if (obj1 != null ? !obj1.equals(obj2) : obj2 != null)
            {
                throw new IllegalArgumentException((new StringBuilder("expected final value <")).append(obj2).append("> but was <").append(obj1).append("> on ").append(field.getName()).append(" field in ").append(obj.getClass().getName()).toString());
            } else
            {
                return;
            }
        }
        try
        {
            field.set(obj, obj1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Field field)
        {
            throw new IllegalArgumentException(field);
        }
        // Misplaced declaration of an exception variable
        catch (Field field)
        {
            throw new IllegalArgumentException(field);
        }
    }

    public final Object a(Object obj)
    {
        return a(b, obj);
    }

    public final void a(Object obj, Object obj1)
    {
        a(b, obj, obj1);
    }

    public final boolean a()
    {
        return Modifier.isFinal(b.getModifiers());
    }

    public final Enum b()
    {
        return Enum.valueOf(b.getDeclaringClass(), b.getName());
    }

}
