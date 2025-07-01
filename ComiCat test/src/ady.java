// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import org.json.JSONObject;

public final class ady
    implements adc
{

    JSONObject a;
    String b;

    ady(JSONObject jsonobject, String s)
    {
        a = jsonobject;
        b = s;
    }

    public final String a()
    {
        return a.optString("name");
    }

    public final String b()
    {
        return agp.b(b, a());
    }

    public final String c()
    {
        return a.optString("id");
    }

    public final boolean d()
    {
        return a != null;
    }

    public final boolean e()
    {
        return a.optString("type").equals("folder");
    }

    public final long f()
    {
        return a.optLong("size");
    }

    public final String g()
    {
        return null;
    }
}
