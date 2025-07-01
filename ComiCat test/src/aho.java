// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class aho
{

    private static final boolean a;
    private static Method b;
    private static Method c;
    private static Method d;
    private static Method e;
    private static Method f;
    private static Method g;
    private static Method h;
    private static Object i;
    private static Object j;

    public static boolean a()
    {
        return a;
    }

    public static boolean a(File file)
    {
        boolean flag;
        try
        {
            file = ((File) (d.invoke(file, new Object[0])));
            flag = ((Boolean)b.invoke(null, new Object[] {
                file
            })).booleanValue();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            throw new RuntimeException(file);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            throw new RuntimeException(file);
        }
        return flag;
    }

    static 
    {
        boolean flag = true;
        try
        {
            Object obj = Thread.currentThread().getContextClassLoader();
            Class class1 = ((ClassLoader) (obj)).loadClass("java.nio.file.Files");
            Class class2 = ((ClassLoader) (obj)).loadClass("java.nio.file.Path");
            Class class3 = ((ClassLoader) (obj)).loadClass("java.nio.file.attribute.FileAttribute");
            obj = ((ClassLoader) (obj)).loadClass("java.nio.file.LinkOption");
            b = class1.getMethod("isSymbolicLink", new Class[] {
                class2
            });
            c = class1.getMethod("delete", new Class[] {
                class2
            });
            g = class1.getMethod("readSymbolicLink", new Class[] {
                class2
            });
            j = Array.newInstance(class3, 0);
            h = class1.getMethod("createSymbolicLink", new Class[] {
                class2, class2, j.getClass()
            });
            i = Array.newInstance(((Class) (obj)), 0);
            e = class1.getMethod("exists", new Class[] {
                class2, i.getClass()
            });
            d = java/io/File.getMethod("toPath", new Class[0]);
            f = class2.getMethod("toFile", new Class[0]);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            flag = false;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            flag = false;
        }
        a = flag;
    }
}
