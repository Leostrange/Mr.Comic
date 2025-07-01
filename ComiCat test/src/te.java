// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import org.json.JSONObject;

public class te
{
    public static final class a
    {

        public static final boolean d;
        public sn a;
        public JSONObject b;
        public Object c;
        private final String e;
        private final String f;

        static sn a(a a1)
        {
            return a1.a;
        }

        static String b(a a1)
        {
            return a1.e;
        }

        static String c(a a1)
        {
            return a1.f;
        }

        static JSONObject d(a a1)
        {
            return a1.b;
        }

        static Object e(a a1)
        {
            return a1.c;
        }

        public final te a()
        {
            return new te(this, (byte)0);
        }

        static 
        {
            boolean flag;
            if (!te.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            d = flag;
        }

        public a(String s, String s1)
        {
            if (!d && TextUtils.isEmpty(s))
            {
                throw new AssertionError();
            }
            if (!d && TextUtils.isEmpty(s1))
            {
                throw new AssertionError();
            } else
            {
                e = s;
                f = s1;
                return;
            }
        }
    }


    static final boolean b;
    public JSONObject a;
    private final sn c;
    private final String d;
    private final String e;
    private final Object f;

    private te(a a1)
    {
        c = a.a(a1);
        d = a.b(a1);
        e = a.c(a1);
        a = a.d(a1);
        f = a.e(a1);
    }

    te(a a1, byte byte0)
    {
        this(a1);
    }

    static 
    {
        boolean flag;
        if (!te.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
