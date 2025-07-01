// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class kf
{
    public static class a
    {

        kl.a a;
        mf b;
        mv c;
        lr d;
        lv e;
        String f;
        String g;
        km h;
        ou i;
        mb j;
        Collection k;
        nr l;
        b m;
        Collection n;

        public a a(String s)
        {
            f = (String)ni.a(s);
            return this;
        }

        public a a(Collection collection)
        {
            k = (Collection)ni.a(collection);
            return this;
        }

        public a a(kl.a a1)
        {
            a = (kl.a)ni.a(a1);
            return this;
        }

        public a a(lr lr1)
        {
            d = (lr)ni.a(lr1);
            return this;
        }

        public a a(lv lv)
        {
            e = lv;
            return this;
        }

        public a a(mf mf1)
        {
            b = (mf)ni.a(mf1);
            return this;
        }

        public a a(mv mv1)
        {
            c = (mv)ni.a(mv1);
            return this;
        }

        public a b(String s)
        {
            g = (String)ni.a(s);
            return this;
        }

        public a(kl.a a1, mf mf1, mv mv1, lr lr1, lv lv, String s, String s1)
        {
            k = new ArrayList();
            l = nr.a;
            n = new ArrayList();
            a(a1);
            a(mf1);
            a(mv1);
            a(lr1);
            a(lv);
            a(s);
            b(s1);
        }
    }

    public static interface b
    {
    }


    protected final mf a;
    protected final mv b;
    protected final String c;
    protected final lv d;
    public final String e;
    public final String f;
    protected final mb g;
    public final Collection h;
    private final kl.a i;
    private final km j;
    private final ou k;
    private final nr l;
    private final b m;
    private final Collection n;

    protected kf(a a1)
    {
        i = (kl.a)ni.a(a1.a);
        a = (mf)ni.a(a1.b);
        b = (mv)ni.a(a1.c);
        c = ((lr)ni.a(a1.d)).e();
        d = a1.e;
        e = (String)ni.a(a1.f);
        f = (String)ni.a(a1.g);
        g = a1.j;
        j = a1.h;
        k = a1.i;
        h = Collections.unmodifiableCollection(a1.k);
        l = (nr)ni.a(a1.l);
        m = a1.m;
        n = Collections.unmodifiableCollection(a1.n);
    }
}
