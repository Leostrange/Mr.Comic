// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.LayoutInflater;

public final class ar
{
    static interface a
    {

        public abstract void a(LayoutInflater layoutinflater, au au);
    }

    static class b
        implements a
    {

        public void a(LayoutInflater layoutinflater, au au)
        {
            if (au != null)
            {
                au = new as.a(au);
            } else
            {
                au = null;
            }
            layoutinflater.setFactory(au);
        }

        b()
        {
        }
    }

    static class c extends b
    {

        public void a(LayoutInflater layoutinflater, au au)
        {
            android.view.LayoutInflater.Factory factory;
            if (au != null)
            {
                au = new at.a(au);
            } else
            {
                au = null;
            }
            layoutinflater.setFactory2(au);
            factory = layoutinflater.getFactory();
            if (factory instanceof android.view.LayoutInflater.Factory2)
            {
                at.a(layoutinflater, (android.view.LayoutInflater.Factory2)factory);
                return;
            } else
            {
                at.a(layoutinflater, au);
                return;
            }
        }

        c()
        {
        }
    }

    static final class d extends c
    {

        public final void a(LayoutInflater layoutinflater, au au)
        {
            if (au != null)
            {
                au = new at.a(au);
            } else
            {
                au = null;
            }
            layoutinflater.setFactory2(au);
        }

        d()
        {
        }
    }


    static final a a;

    public static void a(LayoutInflater layoutinflater, au au)
    {
        a.a(layoutinflater, au);
    }

    static 
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 21)
        {
            a = new d();
        } else
        if (i >= 11)
        {
            a = new c();
        } else
        {
            a = new b();
        }
    }
}
