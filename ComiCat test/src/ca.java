// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.List;

public final class ca
{
    static interface a
    {

        public abstract Object a(ca ca1);
    }

    static final class b extends d
    {

        public final Object a(ca ca1)
        {
            return new cb._cls1(new cb.a(this, ca1) {

                final ca a;
                final b b;

                public final boolean a()
                {
                    return ca.b();
                }

                public final List b()
                {
                    ca.c();
                    new ArrayList();
                    throw new NullPointerException();
                }

                public final Object c()
                {
                    ca.a();
                    return null;
                }

            
            {
                b = b1;
                a = ca1;
                super();
            }
            });
        }

        b()
        {
        }
    }

    static final class c extends d
    {

        public final Object a(ca ca1)
        {
            return new cc._cls1(new cc.a(this, ca1) {

                final ca a;
                final c b;

                public final boolean a()
                {
                    return ca.b();
                }

                public final List b()
                {
                    ca.c();
                    new ArrayList();
                    throw new NullPointerException();
                }

                public final Object c()
                {
                    ca.a();
                    return null;
                }

                public final Object d()
                {
                    ca.d();
                    return null;
                }

            
            {
                b = c1;
                a = ca1;
                super();
            }
            });
        }

        c()
        {
        }
    }

    static class d
        implements a
    {

        public Object a(ca ca1)
        {
            return null;
        }

        d()
        {
        }
    }


    private static final a b;
    public final Object a;

    public ca()
    {
        a = b.a(this);
    }

    public ca(Object obj)
    {
        a = obj;
    }

    public static bz a()
    {
        return null;
    }

    public static boolean b()
    {
        return false;
    }

    public static List c()
    {
        return null;
    }

    public static bz d()
    {
        return null;
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            b = new c();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            b = new b();
        } else
        {
            b = new d();
        }
    }
}
