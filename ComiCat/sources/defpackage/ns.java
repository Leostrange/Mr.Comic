package defpackage;

import com.box.androidsdk.content.BoxConstants;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: ns  reason: default package */
/* compiled from: Data */
public final class ns {
    public static final Boolean a = new Boolean(true);
    public static final String b = new String();
    public static final Character c = new Character(0);
    public static final Byte d = new Byte((byte) 0);
    public static final Short e = new Short(0);
    public static final Integer f = new Integer(0);
    public static final Float g = new Float(0.0f);
    public static final Long h = new Long(0);
    public static final Double i = new Double(0.0d);
    public static final BigInteger j = new BigInteger(BoxConstants.ROOT_FOLDER_ID);
    public static final BigDecimal k = new BigDecimal(BoxConstants.ROOT_FOLDER_ID);
    public static final nu l = new nu();
    private static final ConcurrentHashMap<Class<?>, Object> m;

    static {
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = new ConcurrentHashMap<>();
        m = concurrentHashMap;
        concurrentHashMap.put(Boolean.class, a);
        m.put(String.class, b);
        m.put(Character.class, c);
        m.put(Byte.class, d);
        m.put(Short.class, e);
        m.put(Integer.class, f);
        m.put(Float.class, g);
        m.put(Long.class, h);
        m.put(Double.class, i);
        m.put(BigInteger.class, j);
        m.put(BigDecimal.class, k);
        m.put(nu.class, l);
    }

    public static <T> T a(Class<?> cls) {
        int i2 = 0;
        T t = m.get(cls);
        if (t == null) {
            synchronized (m) {
                t = m.get(cls);
                if (t == null) {
                    if (cls.isArray()) {
                        Class<?> cls2 = cls;
                        do {
                            cls2 = cls2.getComponentType();
                            i2++;
                        } while (cls2.isArray());
                        t = Array.newInstance(cls2, new int[i2]);
                    } else if (cls.isEnum()) {
                        nv a2 = nq.a(cls).a((String) null);
                        Object[] objArr = {cls};
                        if (a2 == null) {
                            throw new NullPointerException(ni.a("enum missing constant with @NullValue annotation: %s", objArr));
                        }
                        t = a2.b();
                    } else {
                        t = on.a(cls);
                    }
                    m.put(cls, t);
                }
            }
        }
        return t;
    }

    public static Object a(Type type, String str) {
        Class<BigDecimal> cls = type instanceof Class ? (Class) type : null;
        if (type == null || cls != null) {
            if (cls == Void.class) {
                return null;
            }
            if (str == null || cls == null || cls.isAssignableFrom(String.class)) {
                return str;
            }
            if (cls == Character.class || cls == Character.TYPE) {
                if (str.length() == 1) {
                    return Character.valueOf(str.charAt(0));
                }
                throw new IllegalArgumentException("expected type Character/char but got " + cls);
            } else if (cls == Boolean.class || cls == Boolean.TYPE) {
                return Boolean.valueOf(str);
            } else {
                if (cls == Byte.class || cls == Byte.TYPE) {
                    return Byte.valueOf(str);
                }
                if (cls == Short.class || cls == Short.TYPE) {
                    return Short.valueOf(str);
                }
                if (cls == Integer.class || cls == Integer.TYPE) {
                    return Integer.valueOf(str);
                }
                if (cls == Long.class || cls == Long.TYPE) {
                    return Long.valueOf(str);
                }
                if (cls == Float.class || cls == Float.TYPE) {
                    return Float.valueOf(str);
                }
                if (cls == Double.class || cls == Double.TYPE) {
                    return Double.valueOf(str);
                }
                if (cls == nu.class) {
                    return nu.a(str);
                }
                if (cls == BigInteger.class) {
                    return new BigInteger(str);
                }
                if (cls == BigDecimal.class) {
                    return new BigDecimal(str);
                }
                if (cls.isEnum()) {
                    return nq.a((Class<?>) cls).a(str).b();
                }
            }
        }
        throw new IllegalArgumentException("expected primitive class, but got: " + type);
    }

    public static Type a(List<Type> list, Type type) {
        Type a2 = type instanceof WildcardType ? on.a((WildcardType) type) : type;
        while (a2 instanceof TypeVariable) {
            Type a3 = on.a(list, (TypeVariable<?>) (TypeVariable) a2);
            if (a3 == null) {
                a3 = a2;
            }
            a2 = a3 instanceof TypeVariable ? ((TypeVariable) a3).getBounds()[0] : a3;
        }
        return a2;
    }

    public static void a(Object obj, Object obj2) {
        Object a2;
        boolean z = true;
        int i2 = 0;
        Class<?> cls = obj.getClass();
        ni.a(cls == obj2.getClass());
        if (cls.isArray()) {
            if (Array.getLength(obj) != Array.getLength(obj2)) {
                z = false;
            }
            ni.a(z);
            for (Object c2 : on.a(obj)) {
                Array.set(obj2, i2, c(c2));
                i2++;
            }
        } else if (Collection.class.isAssignableFrom(cls)) {
            Collection<Object> collection = (Collection) obj;
            if (ArrayList.class.isAssignableFrom(cls)) {
                ((ArrayList) obj2).ensureCapacity(collection.size());
            }
            Collection collection2 = (Collection) obj2;
            for (Object c3 : collection) {
                collection2.add(c(c3));
            }
        } else {
            boolean isAssignableFrom = nw.class.isAssignableFrom(cls);
            if (isAssignableFrom || !Map.class.isAssignableFrom(cls)) {
                nq a3 = isAssignableFrom ? ((nw) obj).f : nq.a(cls);
                for (String a4 : a3.d) {
                    nv a5 = a3.a(a4);
                    if (!a5.a() && ((!isAssignableFrom || !a5.a) && (a2 = a5.a(obj)) != null)) {
                        a5.a(obj2, c(a2));
                    }
                }
            } else if (nl.class.isAssignableFrom(cls)) {
                nl nlVar = (nl) obj2;
                nl nlVar2 = (nl) obj;
                int size = nlVar2.size();
                while (i2 < size) {
                    nlVar.a(i2, c(nlVar2.a(i2)));
                    i2++;
                }
            } else {
                Map map = (Map) obj2;
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    map.put(entry.getKey(), c(entry.getValue()));
                }
            }
        }
    }

    public static boolean a(Object obj) {
        return obj != null && obj == m.get(obj.getClass());
    }

    public static boolean a(Type type) {
        Type a2 = type instanceof WildcardType ? on.a((WildcardType) type) : type;
        if (!(a2 instanceof Class)) {
            return false;
        }
        Class<Boolean> cls = (Class) a2;
        return cls.isPrimitive() || cls == Character.class || cls == String.class || cls == Integer.class || cls == Long.class || cls == Short.class || cls == Byte.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == nu.class || cls == Boolean.class;
    }

    public static Collection<Object> b(Type type) {
        Type a2 = type instanceof WildcardType ? on.a((WildcardType) type) : type;
        Type rawType = a2 instanceof ParameterizedType ? ((ParameterizedType) a2).getRawType() : a2;
        Class cls = rawType instanceof Class ? (Class) rawType : null;
        if (rawType == null || (rawType instanceof GenericArrayType) || (cls != null && (cls.isArray() || cls.isAssignableFrom(ArrayList.class)))) {
            return new ArrayList();
        }
        if (cls != null) {
            return cls.isAssignableFrom(HashSet.class) ? new HashSet() : cls.isAssignableFrom(TreeSet.class) ? new TreeSet() : (Collection) on.a(cls);
        }
        throw new IllegalArgumentException("unable to create new instance of type: " + rawType);
    }

    public static Map<String, Object> b(Class<?> cls) {
        return (cls == null || cls.isAssignableFrom(nl.class)) ? nl.a() : cls.isAssignableFrom(TreeMap.class) ? new TreeMap() : (Map) on.a(cls);
    }

    public static Map<String, Object> b(Object obj) {
        return (obj == null || a(obj)) ? Collections.emptyMap() : obj instanceof Map ? (Map) obj : new nt(obj, false);
    }

    public static <T> T c(T t) {
        T a2;
        if (t == null || a((Type) t.getClass())) {
            return t;
        }
        if (t instanceof nw) {
            return ((nw) t).clone();
        }
        Class<?> cls = t.getClass();
        if (cls.isArray()) {
            a2 = Array.newInstance(cls.getComponentType(), Array.getLength(t));
        } else if (t instanceof nl) {
            a2 = ((nl) t).clone();
        } else if ("java.util.Arrays$ArrayList".equals(cls.getName())) {
            Object[] array = ((List) t).toArray();
            a((Object) array, (Object) array);
            return Arrays.asList(array);
        } else {
            a2 = on.a(cls);
        }
        a((Object) t, (Object) a2);
        return a2;
    }

    public static boolean d(Object obj) {
        return obj == null || a((Type) obj.getClass());
    }
}
