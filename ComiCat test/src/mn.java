// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public final class mn
    implements of
{

    public static final String a;

    private static Object a(Type type, List list, String s)
    {
        return ns.a(ns.a(list, type), s);
    }

    private static void a(Reader reader, Object obj)
    {
        nw nw1;
        Object obj1;
        Object obj2;
        Object obj4;
        nq nq1;
        List list;
        nm nm1;
        boolean flag;
        int i;
        obj1 = obj.getClass();
        nq1 = nq.a(((Class) (obj1)));
        list = Arrays.asList(new Type[] {
            obj1
        });
        StringWriter stringwriter;
        if (nw.isAssignableFrom(((Class) (obj1))))
        {
            nw1 = (nw)obj;
        } else
        {
            nw1 = null;
        }
        if (java/util/Map.isAssignableFrom(((Class) (obj1))))
        {
            obj1 = (Map)obj;
        } else
        {
            obj1 = null;
        }
        nm1 = new nm(obj);
        obj2 = new StringWriter();
        stringwriter = new StringWriter();
        flag = true;
        obj4 = obj2;
        obj2 = stringwriter;
_L10:
        i = reader.read();
        i;
        JVM INSTR lookupswitch 3: default 132
    //                   -1: 157
    //                   38: 157
    //                   61: 466;
           goto _L1 _L2 _L2 _L3
_L1:
        Object obj3;
        nv nv1;
        Object obj5;
        if (flag)
        {
            ((StringWriter) (obj4)).write(i);
        } else
        {
            ((StringWriter) (obj2)).write(i);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        obj5 = op.b(((StringWriter) (obj4)).toString());
        if (((String) (obj5)).length() == 0) goto _L5; else goto _L4
_L4:
        obj4 = op.b(((StringWriter) (obj2)).toString());
        nv1 = nq1.a(((String) (obj5)));
        if (nv1 == null) goto _L7; else goto _L6
_L6:
        obj5 = ns.a(list, nv1.b.getGenericType());
        if (on.a(((Type) (obj5))))
        {
            obj2 = on.a(list, on.b(((Type) (obj5))));
            nm1.a(nv1.b, ((Class) (obj2)), a(((Type) (obj2)), list, ((String) (obj4))));
        } else
        if (on.a(on.a(list, ((Type) (obj5))), java/lang/Iterable))
        {
            obj3 = (Collection)nv1.a(obj);
            obj2 = obj3;
            if (obj3 == null)
            {
                obj2 = ns.b(((Type) (obj5)));
                nv1.a(obj, obj2);
            }
            if (obj5 == java/lang/Object)
            {
                obj3 = null;
            } else
            {
                obj3 = on.c(((Type) (obj5)));
            }
            ((Collection) (obj2)).add(a(((Type) (obj3)), list, ((String) (obj4))));
        } else
        {
            nv1.a(obj, a(((Type) (obj5)), list, ((String) (obj4))));
        }
_L5:
        obj4 = new StringWriter();
        obj2 = new StringWriter();
        if (i == -1)
        {
            nm1.a();
            return;
        }
        break; /* Loop/switch isn't completed */
_L7:
        if (obj1 != null)
        {
            obj3 = (ArrayList)((Map) (obj1)).get(obj5);
            obj2 = obj3;
            if (obj3 == null)
            {
                obj2 = new ArrayList();
                if (nw1 != null)
                {
                    nw1.d(((String) (obj5)), obj2);
                } else
                {
                    ((Map) (obj1)).put(obj5, obj2);
                }
            }
            ((ArrayList) (obj2)).add(obj4);
        }
        if (true) goto _L5; else goto _L8
_L3:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L8:
        flag = true;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static void a(String s, Object obj)
    {
        if (s == null)
        {
            return;
        }
        try
        {
            a(((Reader) (new StringReader(s))), obj);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw om.a(s);
        }
    }

    public final Object a(InputStream inputstream, Charset charset, Class class1)
    {
        inputstream = new InputStreamReader(inputstream, charset);
        oh.a(class1 instanceof Class, "dataType has to be of type Class<?>");
        charset = ((Charset) (on.a((Class)class1)));
        a(((Reader) (new BufferedReader(inputstream))), charset);
        return charset;
    }

    static 
    {
        ly ly1 = new ly("application/x-www-form-urlencoded");
        Object obj = np.a;
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = ((Charset) (obj)).name();
        }
        ly1.a("charset", ((String) (obj)));
        a = ly1.a();
    }
}
