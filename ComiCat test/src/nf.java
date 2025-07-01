// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class nf
    implements Iterator
{
    static final class a extends Enum
    {

        public static final int a;
        public static final int b;
        public static final int c;
        public static final int d;
        private static final int e[];

        public static int[] a()
        {
            return (int[])e.clone();
        }

        static 
        {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = (new int[] {
                a, b, c, d
            });
        }
    }


    int a;
    private Object b;

    protected nf()
    {
        a = a.b;
    }

    protected abstract Object a();

    public final boolean hasNext()
    {
        boolean flag1 = false;
        static final class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[a.a().length];
                try
                {
                    a[a.c - 1] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[a.a - 1] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        boolean flag;
        if (a != a.d)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.b(flag);
        flag = flag1;
        switch (_cls1.a[a - 1])
        {
        default:
            a = a.d;
            b = a();
            flag = flag1;
            if (a != a.c)
            {
                a = a.a;
                flag = true;
            }
            // fall through

        case 1: // '\001'
            return flag;

        case 2: // '\002'
            return true;
        }
    }

    public final Object next()
    {
        if (!hasNext())
        {
            throw new NoSuchElementException();
        } else
        {
            a = a.b;
            Object obj = b;
            b = null;
            return obj;
        }
    }

    public final void remove()
    {
        throw new UnsupportedOperationException();
    }
}
