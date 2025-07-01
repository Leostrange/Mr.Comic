// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public abstract class my
{

    private static WeakHashMap a = new WeakHashMap();
    private static final Lock b = new ReentrantLock();

    public my()
    {
    }

    private final Object a(Field field, Type type, ArrayList arraylist, mt mt, boolean flag)
    {
        Object obj1;
        Type type1;
        type1 = ns.a(arraylist, type);
        if (type1 instanceof Class)
        {
            type = (Class)type1;
        } else
        {
            type = null;
        }
        obj1 = type;
        if (type1 instanceof ParameterizedType)
        {
            obj1 = on.a((ParameterizedType)type1);
        }
        if (obj1 != java/lang/Void) goto _L2; else goto _L1
_L1:
        f();
        mt = null;
_L22:
        return mt;
_L2:
        type = d();
        static final class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[nb.values().length];
                try
                {
                    a[nb.c.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    a[nb.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[nb.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[nb.e.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[nb.d.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[nb.i.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[nb.j.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[nb.h.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[nb.g.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[nb.f.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[nb.k.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[d().ordinal()];
        JVM INSTR tableswitch 1 11: default 1513
    //                   1 396
    //                   2 236
    //                   3 236
    //                   4 396
    //                   5 396
    //                   6 991
    //                   7 991
    //                   8 1055
    //                   9 1055
    //                   10 1284
    //                   11 1411;
           goto _L3 _L4 _L5 _L5 _L4 _L4 _L6 _L6 _L7 _L7 _L8 _L9
_L3:
        throw new IllegalArgumentException((new StringBuilder("unexpected JSON node type: ")).append(type).toString());
_L5:
        boolean flag1;
        try
        {
            flag1 = on.a(type1);
        }
        // Misplaced declaration of an exception variable
        catch (Type type)
        {
            arraylist = new StringBuilder();
            mt = e();
            if (mt != null)
            {
                arraylist.append("key ").append(mt);
            }
            if (field != null)
            {
                if (mt != null)
                {
                    arraylist.append(", ");
                }
                arraylist.append("field ").append(field);
            }
            throw new IllegalArgumentException(arraylist.toString(), type);
        }
        if (type1 == null || flag1) goto _L11; else goto _L10
_L10:
        if (obj1 == null) goto _L13; else goto _L12
_L12:
        if (!on.a(((Class) (obj1)), java/util/Collection)) goto _L13; else goto _L11
_L103:
        Object obj;
        oh.a(flag, "expected collection or array type but got %s", new Object[] {
            type1
        });
        obj = ns.b(type1);
        if (!flag1) goto _L15; else goto _L14
_L14:
        type = on.b(type1);
_L20:
        obj1 = ns.a(arraylist, type);
        for (type = q(); type != nb.b; type = c())
        {
            ((Collection) (obj)).add(a(field, ((Type) (obj1)), arraylist, mt, true));
        }

          goto _L16
_L15:
        if (obj1 == null) goto _L18; else goto _L17
_L17:
        if (!java/lang/Iterable.isAssignableFrom(((Class) (obj1)))) goto _L18; else goto _L19
_L19:
        type = on.c(type1);
          goto _L20
_L16:
        mt = ((mt) (obj));
        if (!flag1) goto _L22; else goto _L21
_L21:
        return on.a(((Collection) (obj)), on.a(arraylist, ((Type) (obj1))));
_L4:
        Object obj2;
        mz.a aa[];
        nq nq1;
        Class class1;
        int i1;
        int j1;
        if (!on.a(type1))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        oh.a(flag1, "expected object or map type but got %s", new Object[] {
            type1
        });
        if (!flag) goto _L24; else goto _L23
_L23:
        obj = b(((Class) (obj1)));
_L104:
        if (obj1 == null) goto _L26; else goto _L25
_L25:
        if (!on.a(((Class) (obj1)), java/util/Map)) goto _L26; else goto _L27
_L27:
        i1 = 1;
_L105:
        if (obj == null) goto _L29; else goto _L28
_L28:
        type = new mu();
_L38:
        j1 = arraylist.size();
        if (type1 == null) goto _L31; else goto _L30
_L30:
        arraylist.add(type1);
_L31:
        if (i1 == 0) goto _L33; else goto _L32
_L32:
        if (nw.isAssignableFrom(((Class) (obj1)))) goto _L33; else goto _L34
_L34:
        if (!java/util/Map.isAssignableFrom(((Class) (obj1)))) goto _L36; else goto _L35
_L35:
        obj1 = on.d(type1);
_L108:
        if (obj1 == null) goto _L33; else goto _L37
_L37:
        a(field, (Map)type, ((Type) (obj1)), arraylist, mt);
        return type;
_L106:
        type = ns.b(((Class) (obj1)));
          goto _L38
_L107:
        type = ((Type) (on.a(((Class) (obj1)))));
          goto _L38
_L33:
        if (type instanceof mu)
        {
            ((mu)type).a = a();
        }
        obj2 = q();
        class1 = type.getClass();
        nq1 = nq.a(class1);
        flag = nw.isAssignableFrom(class1);
        obj1 = obj2;
        if (flag) goto _L40; else goto _L39
_L39:
        obj1 = obj2;
        if (!java/util/Map.isAssignableFrom(class1)) goto _L40; else goto _L41
_L41:
        a(null, (Map)type, on.d(class1), arraylist, mt);
_L50:
        if (type1 == null) goto _L43; else goto _L42
_L42:
        arraylist.remove(j1);
_L43:
        mt = type;
        if (obj == null) goto _L22; else goto _L44
_L44:
        mt = ((mt) (((mu)type).get(((Field) (obj)).getName())));
        if (mt != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oh.a(flag, "No value specified for @JsonPolymorphicTypeMap field");
        obj1 = mt.toString();
        mt = (mz)((Field) (obj)).getAnnotation(mz);
        obj = null;
        aa = mt.a();
        j1 = aa.length;
        i1 = 0;
_L110:
        mt = ((mt) (obj));
        if (i1 >= j1) goto _L46; else goto _L45
_L45:
        mt = aa[i1];
        if (!mt.a().equals(obj1)) goto _L48; else goto _L47
_L47:
        mt = mt.b();
          goto _L46
_L109:
        oh.a(flag, (new StringBuilder("No TypeDef annotation found with key: ")).append(((String) (obj1))).toString());
        obj = a();
        type = ((mv) (obj)).a(((mv) (obj)).a(type, false));
        type.p();
        return type.a(field, ((Type) (mt)), arraylist, ((mt) (null)), false);
_L54:
        aa = ((nv) (obj1)).b;
        i1 = arraylist.size();
        arraylist.add(aa.getGenericType());
        aa = ((mz.a []) (a(((Field) (aa)), ((nv) (obj1)).b.getGenericType(), arraylist, mt, true)));
        arraylist.remove(i1);
        ((nv) (obj1)).a(type, aa);
_L57:
        obj1 = c();
_L40:
        if (obj1 != nb.e) goto _L50; else goto _L49
_L49:
        aa = g();
        c();
        obj1 = nq1.a(aa);
        if (obj1 == null) goto _L52; else goto _L51
_L51:
        if (!((nv) (obj1)).a() || ((nv) (obj1)).a) goto _L54; else goto _L53
_L53:
        throw new IllegalArgumentException("final array/object fields are not supported");
_L52:
        if (!flag) goto _L56; else goto _L55
_L55:
        ((nw)type).d(aa, a(null, ((Type) (null)), arraylist, mt, true));
          goto _L57
_L56:
        f();
          goto _L57
_L6:
        if (type1 == null) goto _L59; else goto _L58
_L58:
        if (obj1 == Boolean.TYPE) goto _L59; else goto _L60
_L60:
        if (obj1 == null) goto _L62; else goto _L61
_L61:
        if (!((Class) (obj1)).isAssignableFrom(java/lang/Boolean)) goto _L62; else goto _L59
_L111:
        oh.a(flag, "expected type Boolean or boolean but got %s", new Object[] {
            type1
        });
        if (type == nb.i)
        {
            return Boolean.TRUE;
        } else
        {
            return Boolean.FALSE;
        }
_L7:
        if (field == null) goto _L64; else goto _L63
_L63:
        if (field.getAnnotation(na) != null) goto _L65; else goto _L64
_L112:
        oh.a(flag, "number type formatted as a JSON number cannot use @JsonString annotation");
        if (obj1 == null) goto _L67; else goto _L66
_L66:
        if (!((Class) (obj1)).isAssignableFrom(java/math/BigDecimal)) goto _L68; else goto _L67
_L67:
        return o();
_L68:
        if (obj1 != java/math/BigInteger) goto _L70; else goto _L69
_L69:
        return n();
_L70:
        if (obj1 == java/lang/Double) goto _L72; else goto _L71
_L71:
        if (obj1 != Double.TYPE) goto _L73; else goto _L72
_L72:
        return Double.valueOf(m());
_L73:
        if (obj1 == java/lang/Long) goto _L75; else goto _L74
_L74:
        if (obj1 != Long.TYPE) goto _L76; else goto _L75
_L75:
        return Long.valueOf(l());
_L76:
        if (obj1 == java/lang/Float) goto _L78; else goto _L77
_L77:
        if (obj1 != Float.TYPE) goto _L79; else goto _L78
_L78:
        return Float.valueOf(k());
_L79:
        if (obj1 == java/lang/Integer) goto _L81; else goto _L80
_L80:
        if (obj1 != Integer.TYPE) goto _L82; else goto _L81
_L81:
        return Integer.valueOf(j());
_L82:
        if (obj1 == java/lang/Short) goto _L84; else goto _L83
_L83:
        if (obj1 != Short.TYPE) goto _L85; else goto _L84
_L84:
        return Short.valueOf(i());
_L85:
        if (obj1 == java/lang/Byte) goto _L87; else goto _L86
_L86:
        if (obj1 != Byte.TYPE) goto _L88; else goto _L87
_L87:
        return Byte.valueOf(h());
_L88:
        throw new IllegalArgumentException((new StringBuilder("expected numeric type but got ")).append(type1).toString());
_L8:
        type = g().trim().toLowerCase(Locale.US);
        if (obj1 == Float.TYPE || obj1 == java/lang/Float) goto _L90; else goto _L89
_L89:
        if (obj1 != Double.TYPE && obj1 != java/lang/Double) goto _L91; else goto _L90
_L90:
        if (type.equals("nan") || type.equals("infinity") || type.equals("-infinity")) goto _L92; else goto _L91
_L91:
        if (obj1 == null) goto _L94; else goto _L93
_L93:
        if (!java/lang/Number.isAssignableFrom(((Class) (obj1)))) goto _L94; else goto _L95
_L95:
        if (field == null) goto _L97; else goto _L96
_L96:
        if (field.getAnnotation(na) == null) goto _L97; else goto _L94
_L113:
        oh.a(flag, "number field formatted as a JSON string must use the @JsonString annotation");
_L92:
        return ns.a(type1, g());
_L9:
        if (obj1 == null) goto _L99; else goto _L98
_L98:
        if (((Class) (obj1)).isPrimitive()) goto _L100; else goto _L99
_L114:
        oh.a(flag, "primitive number field but found a JSON null");
        if (obj1 == null) goto _L102; else goto _L101
_L101:
        if ((((Class) (obj1)).getModifiers() & 0x600) != 0)
        {
            if (on.a(((Class) (obj1)), java/util/Collection))
            {
                return ns.a(ns.b(type1).getClass());
            }
            if (on.a(((Class) (obj1)), java/util/Map))
            {
                return ns.a(ns.b(((Class) (obj1))).getClass());
            }
        }
_L102:
        type = ((Type) (ns.a(on.a(arraylist, type1))));
        return type;
_L18:
        type = null;
          goto _L20
_L11:
        flag = true;
          goto _L103
_L13:
        flag = false;
          goto _L103
_L24:
        obj = null;
          goto _L104
_L26:
        i1 = 0;
          goto _L105
_L29:
        if (i1 == 0 && obj1 != null) goto _L107; else goto _L106
_L36:
        obj1 = null;
          goto _L108
_L46:
        if (mt != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L109
_L48:
        i1++;
          goto _L110
_L59:
        flag = true;
          goto _L111
_L62:
        flag = false;
          goto _L111
_L64:
        flag = true;
          goto _L112
_L65:
        flag = false;
          goto _L112
_L94:
        flag = true;
          goto _L113
_L97:
        flag = false;
          goto _L113
_L99:
        flag = true;
          goto _L114
_L100:
        flag = false;
          goto _L114
    }

    private void a(Field field, Map map, Type type, ArrayList arraylist, mt mt)
    {
        for (Object obj = q(); obj == nb.e; obj = c())
        {
            obj = g();
            c();
            map.put(obj, a(field, type, arraylist, mt, true));
        }

    }

    private static Field b(Class class1)
    {
        if (class1 == null)
        {
            return null;
        }
        b.lock();
        if (!a.containsKey(class1))
        {
            break MISSING_BLOCK_LABEL_45;
        }
        class1 = (Field)a.get(class1);
        b.unlock();
        return class1;
        Iterator iterator = Collections.unmodifiableCollection(nq.a(class1).c.values()).iterator();
        Field field = null;
_L6:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Field field1;
        Object obj;
        field1 = ((nv)iterator.next()).b;
        obj = (mz)field1.getAnnotation(mz);
        boolean flag;
        if (obj == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        mz.a a1;
        int i1;
        int j1;
        if (field == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oh.a(flag, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", new Object[] {
            class1
        });
        oh.a(ns.a(field1.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", new Object[] {
            class1, field1.getType()
        });
        field = ((mz) (obj)).a();
        obj = new HashSet();
        if (field.length > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oh.a(flag, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
        j1 = field.length;
        i1 = 0;
_L4:
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        a1 = field[i1];
        oh.a(((HashSet) (obj)).add(a1.a()), "Class contains two @TypeDef annotations with identical key: %s", new Object[] {
            a1.a()
        });
        i1++;
        if (true) goto _L4; else goto _L3
_L2:
        a.put(class1, field);
        b.unlock();
        return field;
        class1;
        b.unlock();
        throw class1;
_L3:
        field = field1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private nb p()
    {
        nb nb1 = d();
        if (nb1 == null)
        {
            nb1 = c();
        }
        boolean flag;
        if (nb1 != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oh.a(flag, "no JSON input found");
        return nb1;
    }

    private nb q()
    {
        nb nb1 = p();
        switch (_cls1.a[nb1.ordinal()])
        {
        default:
            return nb1;

        case 1: // '\001'
            nb nb2 = c();
            boolean flag;
            if (nb2 == nb.e || nb2 == nb.d)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            oh.a(flag, nb2);
            return nb2;

        case 2: // '\002'
            return c();
        }
    }

    public final Object a(Class class1)
    {
        class1 = ((Class) (a(((Type) (class1)), false)));
        b();
        return class1;
        class1;
        b();
        throw class1;
    }

    public final Object a(Type type, boolean flag)
    {
        if (!java/lang/Void.equals(type))
        {
            p();
        }
        type = ((Type) (a(null, type, new ArrayList(), ((mt) (null)), true)));
        if (flag)
        {
            b();
        }
        return type;
        type;
        if (flag)
        {
            b();
        }
        throw type;
    }

    public final String a(Set set)
    {
        for (Object obj = q(); obj == nb.e; obj = c())
        {
            obj = g();
            c();
            if (set.contains(obj))
            {
                return ((String) (obj));
            }
            f();
        }

        return null;
    }

    public abstract mv a();

    public abstract void b();

    public abstract nb c();

    public abstract nb d();

    public abstract String e();

    public abstract my f();

    public abstract String g();

    public abstract byte h();

    public abstract short i();

    public abstract int j();

    public abstract float k();

    public abstract long l();

    public abstract double m();

    public abstract BigInteger n();

    public abstract BigDecimal o();

}
