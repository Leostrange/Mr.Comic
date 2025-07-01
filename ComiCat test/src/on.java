// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
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

public final class on
{

    public static Class a(ParameterizedType parameterizedtype)
    {
        return (Class)parameterizedtype.getRawType();
    }

    public static Class a(List list, Type type)
    {
        if (type instanceof TypeVariable)
        {
            type = a(list, (TypeVariable)type);
        }
        if (type instanceof GenericArrayType)
        {
            return Array.newInstance(a(list, b(type)), 0).getClass();
        }
        if (type instanceof Class)
        {
            return (Class)type;
        }
        if (type instanceof ParameterizedType)
        {
            return a((ParameterizedType)type);
        }
        boolean flag;
        if (type == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oh.a(flag, "wildcard type is not supported: %s", new Object[] {
            type
        });
        return java/lang/Object;
    }

    private static IllegalArgumentException a(Exception exception, Class class1)
    {
        StringBuilder stringbuilder = (new StringBuilder("unable to create new instance of class ")).append(class1.getName());
        Object obj = new ArrayList();
        boolean flag;
        if (class1.isArray())
        {
            ((ArrayList) (obj)).add("because it is an array");
        } else
        if (class1.isPrimitive())
        {
            ((ArrayList) (obj)).add("because it is primitive");
        } else
        if (class1 == java/lang/Void)
        {
            ((ArrayList) (obj)).add("because it is void");
        } else
        {
            if (Modifier.isInterface(class1.getModifiers()))
            {
                ((ArrayList) (obj)).add("because it is an interface");
            } else
            if (Modifier.isAbstract(class1.getModifiers()))
            {
                ((ArrayList) (obj)).add("because it is abstract");
            }
            if (class1.getEnclosingClass() != null && !Modifier.isStatic(class1.getModifiers()))
            {
                ((ArrayList) (obj)).add("because it is not static");
            }
            if (!Modifier.isPublic(class1.getModifiers()))
            {
                ((ArrayList) (obj)).add("possibly because it is not public");
            } else
            {
                try
                {
                    class1.getConstructor(new Class[0]);
                }
                // Misplaced declaration of an exception variable
                catch (Class class1)
                {
                    ((ArrayList) (obj)).add("because it has no accessible default constructor");
                }
            }
        }
        class1 = ((ArrayList) (obj)).iterator();
        flag = false;
        while (class1.hasNext()) 
        {
            obj = (String)class1.next();
            if (flag)
            {
                stringbuilder.append(" and");
            } else
            {
                flag = true;
            }
            stringbuilder.append(" ").append(((String) (obj)));
        }
        return new IllegalArgumentException(stringbuilder.toString(), exception);
    }

    public static Iterable a(Object obj)
    {
        if (obj instanceof Iterable)
        {
            return (Iterable)obj;
        }
        Class class1 = obj.getClass();
        oh.a(class1.isArray(), "not an array or Iterable: %s", new Object[] {
            class1
        });
        if (!class1.getComponentType().isPrimitive())
        {
            return Arrays.asList((Object[])(Object[])obj);
        } else
        {
            return new Iterable(obj) {

                final Object a;

                public final Iterator iterator()
                {
                    return new Iterator(this) {

                        final int a;
                        int b;
                        final _cls1 c;

                        public final boolean hasNext()
                        {
                            return b < a;
                        }

                        public final Object next()
                        {
                            if (!hasNext())
                            {
                                throw new NoSuchElementException();
                            } else
                            {
                                Object obj = c.a;
                                int i = b;
                                b = i + 1;
                                return Array.get(obj, i);
                            }
                        }

                        public final void remove()
                        {
                            throw new UnsupportedOperationException();
                        }

            
            {
                c = _pcls1;
                super();
                a = Array.getLength(c.a);
                b = 0;
            }
                    };
                }

            
            {
                a = obj;
                super();
            }
            };
        }
    }

    public static Object a(Class class1)
    {
        Object obj;
        try
        {
            obj = class1.newInstance();
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw a(((Exception) (illegalaccessexception)), class1);
        }
        catch (InstantiationException instantiationexception)
        {
            throw a(((Exception) (instantiationexception)), class1);
        }
        return obj;
    }

    public static Object a(Collection collection, Class class1)
    {
        if (class1.isPrimitive())
        {
            class1 = ((Class) (Array.newInstance(class1, collection.size())));
            int i = 0;
            for (collection = collection.iterator(); collection.hasNext();)
            {
                Array.set(class1, i, collection.next());
                i++;
            }

            return class1;
        } else
        {
            return ((Object) (collection.toArray((Object[])(Object[])Array.newInstance(class1, collection.size()))));
        }
    }

    private static ParameterizedType a(Type type, Class class1)
    {
        if (!(type instanceof Class) && !(type instanceof ParameterizedType)) goto _L2; else goto _L1
_L1:
        if (type == null || type == java/lang/Object) goto _L2; else goto _L3
_L3:
        if (!(type instanceof Class)) goto _L5; else goto _L4
_L4:
        type = (Class)type;
_L7:
        type = type.getGenericSuperclass();
          goto _L1
_L5:
        Class class2;
        Type atype[];
        int i;
        int j;
        type = (ParameterizedType)type;
        class2 = a(((ParameterizedType) (type)));
        if (class2 == class1)
        {
            return type;
        }
        if (!class1.isInterface())
        {
            break MISSING_BLOCK_LABEL_142;
        }
        atype = class2.getGenericInterfaces();
        j = atype.length;
        i = 0;
_L6:
label0:
        {
            if (i >= j)
            {
                break MISSING_BLOCK_LABEL_142;
            }
            Type type1 = atype[i];
            if (type1 instanceof Class)
            {
                type = (Class)type1;
            } else
            {
                type = a((ParameterizedType)type1);
            }
            if (!class1.isAssignableFrom(type))
            {
                break label0;
            }
            type = type1;
        }
          goto _L1
        i++;
          goto _L6
_L2:
        return null;
          goto _L1
        type = class2;
          goto _L7
    }

    private static Type a(Type type, Class class1, int i)
    {
        class1 = a(type, class1);
        if (class1 == null)
        {
            class1 = null;
        } else
        {
            Type type1 = class1.getActualTypeArguments()[i];
            class1 = type1;
            if (type1 instanceof TypeVariable)
            {
                type = a(Arrays.asList(new Type[] {
                    type
                }), (TypeVariable)type1);
                class1 = type1;
                if (type != null)
                {
                    return type;
                }
            }
        }
        return class1;
    }

    public static Type a(WildcardType wildcardtype)
    {
        Type atype[] = wildcardtype.getLowerBounds();
        if (atype.length != 0)
        {
            return atype[0];
        } else
        {
            return wildcardtype.getUpperBounds()[0];
        }
    }

    public static Type a(List list, TypeVariable typevariable)
    {
        GenericDeclaration genericdeclaration = typevariable.getGenericDeclaration();
        if (genericdeclaration instanceof Class)
        {
            Class class1 = (Class)genericdeclaration;
            int i = list.size();
            Object obj = null;
            do
            {
                if (obj != null)
                {
                    break;
                }
                i--;
                if (i < 0)
                {
                    break;
                }
                obj = a((Type)list.get(i), class1);
            } while (true);
            if (obj != null)
            {
                TypeVariable atypevariable[] = genericdeclaration.getTypeParameters();
                int j;
                for (j = 0; j < atypevariable.length && !atypevariable[j].equals(typevariable); j++) { }
                obj = ((ParameterizedType) (obj)).getActualTypeArguments()[j];
                typevariable = ((TypeVariable) (obj));
                if (obj instanceof TypeVariable)
                {
                    list = a(list, (TypeVariable)obj);
                    typevariable = ((TypeVariable) (obj));
                    if (list != null)
                    {
                        typevariable = list;
                    }
                }
                return typevariable;
            }
        }
        return null;
    }

    public static boolean a(Class class1, Class class2)
    {
        return class1.isAssignableFrom(class2) || class2.isAssignableFrom(class1);
    }

    public static boolean a(Type type)
    {
        return (type instanceof GenericArrayType) || (type instanceof Class) && ((Class)type).isArray();
    }

    public static Type b(Type type)
    {
        if (type instanceof GenericArrayType)
        {
            return ((GenericArrayType)type).getGenericComponentType();
        } else
        {
            return ((Class)type).getComponentType();
        }
    }

    public static Type c(Type type)
    {
        return a(type, java/lang/Iterable, 0);
    }

    public static Type d(Type type)
    {
        return a(type, java/util/Map, 1);
    }
}
