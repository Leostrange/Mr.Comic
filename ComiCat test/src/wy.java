// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public abstract class wy
{
    static class a extends wn.a
    {

        public a(wy wy1)
        {
            super(wy1);
        }
    }

    static final class b
    {

        static final wy a = new wy(java/lang/Object) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                appendable.append((CharSequence)obj.getClass().getName());
                appendable.append('#');
                return wz.a(System.identityHashCode(obj), appendable);
            }

        };
        static final wy b = new wy(java/lang/String) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return appendable.append((CharSequence)obj);
            }

        };
        static final wy c = new wy(java/lang/Boolean) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return wz.a(((Boolean)obj).booleanValue(), appendable);
            }

        };
        static final wy d = new wy(java/lang/Character) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return appendable.append(((Character)obj).charValue());
            }

        };
        static final wy e = new wy(java/lang/Byte) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return wz.a(((Byte)obj).byteValue(), appendable);
            }

        };
        static final wy f = new wy(java/lang/Short) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return wz.a(((Short)obj).shortValue(), appendable);
            }

        };
        static final wy g = new wy(java/lang/Integer) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return wz.a(((Integer)obj).intValue(), appendable);
            }

        };
        static final wy h = new wy(java/lang/Long) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return wz.a(((Long)obj).longValue(), appendable);
            }

        };
        static final wy i = new wy(java/lang/Float) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return wz.a(((Float)obj).floatValue(), appendable);
            }

        };
        static final wy j = new wy(java/lang/Double) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return wz.a(((Double)obj).doubleValue(), appendable);
            }

        };
        static final wy k = new wy(java/lang/Class) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return appendable.append((CharSequence)((Class)obj).getName());
            }

        };
        static final wy l = new wy(ww) {

            public final Appendable a(Object obj, Appendable appendable)
            {
                return appendable.append((ww)obj);
            }

        };

        static void a()
        {
        }

    }


    protected wy(Class class1)
    {
        if (class1 == null)
        {
            return;
        } else
        {
            wu.a().a(new a(this), class1, wy$a);
            return;
        }
    }

    public static wy a(Class class1)
    {
        b.a();
        class1 = (a)wu.a().a(class1, wy$a);
        if (class1 == null)
        {
            return b.a;
        } else
        {
            return (wy)class1.a();
        }
    }

    public abstract Appendable a(Object obj, Appendable appendable);

    public final ww a(Object obj)
    {
        wx wx1 = wx.c();
        a(obj, ((Appendable) (wx1)));
        obj = wx1.b();
        wx.a(wx1);
        return ((ww) (obj));
        obj;
        throw new Error();
        obj;
        wx.a(wx1);
        throw obj;
    }

    public final String b(Object obj)
    {
        wx wx1 = wx.c();
        a(obj, wx1);
        obj = wx1.toString();
        wx.a(wx1);
        return ((String) (obj));
        obj;
        throw new Error();
        obj;
        wx.a(wx1);
        throw obj;
    }
}
