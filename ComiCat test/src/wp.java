// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class wp
{

    private static final wi c = new wi() {

        protected final void a(Object obj)
        {
        }

        protected final Object b()
        {
            return null;
        }

    };
    private wi a;
    boolean b;
    private ThreadLocal d;

    protected wp()
    {
        b = true;
        a = c;
        d = new ThreadLocal() {

            final wp a;

            protected final Object initialValue()
            {
                return wp.c();
            }

            
            {
                a = wp.this;
                super();
            }
        };
    }

    public static void a(wp wp1, Class class1)
    {
        wu.a().a(wp1, class1, wp);
    }

    static wi c()
    {
        return c;
    }

    private wi d()
    {
        Object obj = (wi)d.get();
        if (((wi) (obj)).a != null)
        {
            a = ((wi) (obj));
            return ((wi) (obj));
        }
        obj = wl.b();
        if (((wl) (obj)).d == null)
        {
            obj = wj.a();
        } else
        {
            obj = ((wl) (obj)).d;
        }
        obj = ((wj) (obj)).a(this);
        d.set(obj);
        a = ((wi) (obj));
        return ((wi) (obj));
    }

    public abstract Object a();

    public final void a(Object obj)
    {
        wi wi2 = a;
        wi wi1 = wi2;
        if (wi2.a != Thread.currentThread())
        {
            wi1 = d();
        }
        wi1.a(obj);
    }

    public final Object b()
    {
        wi wi1 = a;
        if (wi1.a == Thread.currentThread())
        {
            return wi1.a();
        } else
        {
            return d().a();
        }
    }

    public void b(Object obj)
    {
        if (obj instanceof wv)
        {
            ((wv)obj).a();
            return;
        } else
        {
            b = false;
            return;
        }
    }

}
