// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import org.json.JSONObject;

public static final class f
{

    public static final boolean d;
    public sn a;
    public JSONObject b;
    public Object c;
    private final String e;
    private final String f;

    static sn a(t t)
    {
        return t.a;
    }

    static String b(a a1)
    {
        return a1.e;
    }

    static String c(e e1)
    {
        return e1.f;
    }

    static JSONObject d(f f1)
    {
        return f1.b;
    }

    static Object e(b b1)
    {
        return b1.c;
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

    public >(String s, String s1)
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
