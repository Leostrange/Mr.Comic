package defpackage;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

/* renamed from: on  reason: default package */
/* compiled from: Types */
public final class on {
    public static Class<?> a(ParameterizedType parameterizedType) {
        return (Class) parameterizedType.getRawType();
    }

    public static Class<?> a(List<Type> list, Type type) {
        Type a = type instanceof TypeVariable ? a(list, (TypeVariable<?>) (TypeVariable) type) : type;
        if (a instanceof GenericArrayType) {
            return Array.newInstance(a(list, b(a)), 0).getClass();
        }
        if (a instanceof Class) {
            return (Class) a;
        }
        if (a instanceof ParameterizedType) {
            return a((ParameterizedType) a);
        }
        oh.a(a == null, "wildcard type is not supported: %s", a);
        return Object.class;
    }

    private static IllegalArgumentException a(Exception exc, Class<?> cls) {
        StringBuilder append = new StringBuilder("unable to create new instance of class ").append(cls.getName());
        ArrayList arrayList = new ArrayList();
        if (cls.isArray()) {
            arrayList.add("because it is an array");
        } else if (cls.isPrimitive()) {
            arrayList.add("because it is primitive");
        } else if (cls == Void.class) {
            arrayList.add("because it is void");
        } else {
            if (Modifier.isInterface(cls.getModifiers())) {
                arrayList.add("because it is an interface");
            } else if (Modifier.isAbstract(cls.getModifiers())) {
                arrayList.add("because it is abstract");
            }
            if (cls.getEnclosingClass() != null && !Modifier.isStatic(cls.getModifiers())) {
                arrayList.add("because it is not static");
            }
            if (!Modifier.isPublic(cls.getModifiers())) {
                arrayList.add("possibly because it is not public");
            } else {
                try {
                    cls.getConstructor(new Class[0]);
                } catch (NoSuchMethodException e) {
                    arrayList.add("because it has no accessible default constructor");
                }
            }
        }
        Iterator it = arrayList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (z) {
                append.append(" and");
            } else {
                z = true;
            }
            append.append(" ").append(str);
        }
        return new IllegalArgumentException(append.toString(), exc);
    }

    public static <T> Iterable<T> a(final Object obj) {
        if (obj instanceof Iterable) {
            return (Iterable) obj;
        }
        Class<?> cls = obj.getClass();
        oh.a(cls.isArray(), "not an array or Iterable: %s", cls);
        return !cls.getComponentType().isPrimitive() ? Arrays.asList((Object[]) obj) : new Iterable<T>() {
            public final Iterator<T> iterator() {
                return new Iterator<T>() {
                    final int a = Array.getLength(obj);
                    int b = 0;

                    public final boolean hasNext() {
                        return this.b < this.a;
                    }

                    public final T next() {
                        if (!hasNext()) {
                            throw new NoSuchElementException();
                        }
                        Object obj = obj;
                        int i = this.b;
                        this.b = i + 1;
                        return Array.get(obj, i);
                    }

                    public final void remove() {
                        throw new UnsupportedOperationException();
                    }
                };
            }
        };
    }

    public static <T> T a(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw a((Exception) e, (Class<?>) cls);
        } catch (InstantiationException e2) {
            throw a((Exception) e2, (Class<?>) cls);
        }
    }

    public static Object a(Collection<?> collection, Class<?> cls) {
        if (!cls.isPrimitive()) {
            return collection.toArray((Object[]) Array.newInstance(cls, collection.size()));
        }
        Object newInstance = Array.newInstance(cls, collection.size());
        int i = 0;
        for (Object obj : collection) {
            Array.set(newInstance, i, obj);
            i++;
        }
        return newInstance;
    }

    private static ParameterizedType a(Type type, Class<?> cls) {
        Class<?> cls2;
        if ((type instanceof Class) || (type instanceof ParameterizedType)) {
            Type type2 = type;
            while (type2 != null && type2 != Object.class) {
                if (type2 instanceof Class) {
                    cls2 = (Class) type2;
                } else {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Class<?> a = a(parameterizedType);
                    if (a == cls) {
                        return parameterizedType;
                    }
                    if (cls.isInterface()) {
                        for (Type type3 : a.getGenericInterfaces()) {
                            if (cls.isAssignableFrom(type3 instanceof Class ? (Class) type3 : a((ParameterizedType) type3))) {
                                type2 = type3;
                                break;
                            }
                        }
                    }
                    cls2 = a;
                }
                type2 = cls2.getGenericSuperclass();
            }
        }
        return null;
    }

    private static Type a(Type type, Class<?> cls, int i) {
        ParameterizedType a = a(type, cls);
        if (a == null) {
            return null;
        }
        Type type2 = a.getActualTypeArguments()[i];
        if (!(type2 instanceof TypeVariable)) {
            return type2;
        }
        Type a2 = a((List<Type>) Arrays.asList(new Type[]{type}), (TypeVariable<?>) (TypeVariable) type2);
        return a2 != null ? a2 : type2;
    }

    public static Type a(WildcardType wildcardType) {
        Type[] lowerBounds = wildcardType.getLowerBounds();
        return lowerBounds.length != 0 ? lowerBounds[0] : wildcardType.getUpperBounds()[0];
    }

    /* JADX WARNING: type inference failed for: r6v0, types: [java.lang.reflect.TypeVariable, java.lang.reflect.TypeVariable<?>, java.lang.Object] */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0042, code lost:
        r0 = a(r5, (java.lang.reflect.TypeVariable<?>) (java.lang.reflect.TypeVariable) r1);
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.reflect.Type a(java.util.List<java.lang.reflect.Type> r5, java.lang.reflect.TypeVariable<?> r6) {
        /*
            r3 = 0
            java.lang.reflect.GenericDeclaration r1 = r6.getGenericDeclaration()
            boolean r0 = r1 instanceof java.lang.Class
            if (r0 == 0) goto L_0x004d
            r0 = r1
            java.lang.Class r0 = (java.lang.Class) r0
            int r2 = r5.size()
            r4 = r2
            r2 = r3
        L_0x0012:
            if (r2 != 0) goto L_0x0023
            int r4 = r4 + -1
            if (r4 < 0) goto L_0x0023
            java.lang.Object r2 = r5.get(r4)
            java.lang.reflect.Type r2 = (java.lang.reflect.Type) r2
            java.lang.reflect.ParameterizedType r2 = a((java.lang.reflect.Type) r2, (java.lang.Class<?>) r0)
            goto L_0x0012
        L_0x0023:
            if (r2 == 0) goto L_0x004d
            java.lang.reflect.TypeVariable[] r1 = r1.getTypeParameters()
            r0 = 0
        L_0x002a:
            int r3 = r1.length
            if (r0 >= r3) goto L_0x0038
            r3 = r1[r0]
            boolean r3 = r3.equals(r6)
            if (r3 != 0) goto L_0x0038
            int r0 = r0 + 1
            goto L_0x002a
        L_0x0038:
            java.lang.reflect.Type[] r1 = r2.getActualTypeArguments()
            r1 = r1[r0]
            boolean r0 = r1 instanceof java.lang.reflect.TypeVariable
            if (r0 == 0) goto L_0x004c
            r0 = r1
            java.lang.reflect.TypeVariable r0 = (java.lang.reflect.TypeVariable) r0
            java.lang.reflect.Type r0 = a((java.util.List<java.lang.reflect.Type>) r5, (java.lang.reflect.TypeVariable<?>) r0)
            if (r0 == 0) goto L_0x004c
            r1 = r0
        L_0x004c:
            return r1
        L_0x004d:
            r1 = r3
            goto L_0x004c
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.on.a(java.util.List, java.lang.reflect.TypeVariable):java.lang.reflect.Type");
    }

    public static boolean a(Class<?> cls, Class<?> cls2) {
        return cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls);
    }

    public static boolean a(Type type) {
        return (type instanceof GenericArrayType) || ((type instanceof Class) && ((Class) type).isArray());
    }

    public static Type b(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    public static Type c(Type type) {
        return a(type, Iterable.class, 0);
    }

    public static Type d(Type type) {
        return a(type, Map.class, 1);
    }
}
