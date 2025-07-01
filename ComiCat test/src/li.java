// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collections;

public abstract class li extends le
{
    public static abstract class a extends le.a
    {

        public le.a a(String s)
        {
            return d(s);
        }

        public le.a a(lh lh)
        {
            return b(lh);
        }

        public le.a b(String s)
        {
            return e(s);
        }

        public a b(lh lh)
        {
            return (a)super.a(lh);
        }

        public le.a c(String s)
        {
            return f(s);
        }

        public a d(String s)
        {
            return (a)super.a(s);
        }

        public a e(String s)
        {
            return (a)super.b(s);
        }

        public a f(String s)
        {
            return (a)super.c(s);
        }

        protected a(mf mf, mv mv, String s, String s1)
        {
            mv = new mx.a(mv);
            mv.b = Collections.emptySet();
            super(mf, s, s1, mv.a());
        }
    }


    protected li(a a1)
    {
        super(a1);
    }

    public final volatile of b()
    {
        return (mx)super.b();
    }

    public final mv c()
    {
        return ((mx)super.b()).a;
    }
}
