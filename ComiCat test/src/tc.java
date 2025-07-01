// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import java.io.InputStream;

public class tc
{
    public static final class a
    {

        static final boolean a;
        private sn b;
        private final String c;
        private final String d;
        private InputStream e;
        private Object f;

        static sn a(a a1)
        {
            return a1.b;
        }

        static String b(a a1)
        {
            return a1.c;
        }

        static String c(a a1)
        {
            return a1.d;
        }

        static InputStream d(a a1)
        {
            return a1.e;
        }

        static Object e(a a1)
        {
            return a1.f;
        }

        static 
        {
            boolean flag;
            if (!tc.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        public a(String s, String s1)
        {
            if (!a && TextUtils.isEmpty(s))
            {
                throw new AssertionError();
            }
            if (!a && TextUtils.isEmpty(s1))
            {
                throw new AssertionError();
            } else
            {
                c = s;
                d = s1;
                return;
            }
        }
    }


    public static final boolean c;
    int a;
    public InputStream b;
    private final sn d;
    private final String e;
    private final String f;
    private final Object g;

    public tc(a a1)
    {
        d = a.a(a1);
        e = a.b(a1);
        f = a.c(a1);
        b = a.d(a1);
        g = a.e(a1);
    }

    static 
    {
        boolean flag;
        if (!tc.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
    }
}
