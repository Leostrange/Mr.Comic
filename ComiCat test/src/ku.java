// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;

public final class ku extends kf
{
    public static final class a extends kf.a
    {

        String o;
        public String p;

        private a b(Collection collection)
        {
            boolean flag;
            if (!collection.isEmpty())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            ni.b(flag);
            return (a)super.a(collection);
        }

        public final volatile kf.a a(String s)
        {
            return (a)super.a(s);
        }

        public final kf.a a(Collection collection)
        {
            return b(collection);
        }

        public final volatile kf.a a(kl.a a1)
        {
            return (a)super.a(a1);
        }

        public final volatile kf.a a(lr lr1)
        {
            return (a)super.a(lr1);
        }

        public final volatile kf.a a(lv lv)
        {
            return (a)super.a(lv);
        }

        public final volatile kf.a a(mf mf)
        {
            return (a)super.a(mf);
        }

        public final volatile kf.a a(mv mv)
        {
            return (a)super.a(mv);
        }

        public final ku a()
        {
            return new ku(this);
        }

        public final volatile kf.a b(String s)
        {
            return (a)super.b(s);
        }

        public a(mf mf, mv mv, String s, String s1, Collection collection)
        {
            super(kj.a(), mf, mv, new lr("https://accounts.google.com/o/oauth2/token"), new kk(s, s1), s, "https://accounts.google.com/o/oauth2/auth");
            b(collection);
        }
    }


    public final String i;
    public final String j;

    protected ku(a a1)
    {
        super(a1);
        j = a1.p;
        i = a1.o;
    }

    public final kw a(String s)
    {
        return (new kw(super.a, super.b, super.c, "", "", s, "")).c(super.d).c(super.g).c(super.h);
    }
}
