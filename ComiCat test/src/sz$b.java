// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import org.json.JSONObject;

public static final class b
    implements lang.Object
{

    static final boolean a;
    private final tg b;
    private final te c;

    public final void a(Object obj)
    {
        obj = (JSONObject)obj;
        te te1 = c;
        if (!te.b && obj == null)
        {
            throw new AssertionError();
        } else
        {
            te1.a = ((JSONObject) (obj));
            b.a(c);
            return;
        }
    }

    public final void a(tf tf)
    {
        b.a(tf, c);
    }

    static 
    {
        boolean flag;
        if (!sz.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }

    public >(te te1, tg tg1)
    {
        if (!a && te1 == null)
        {
            throw new AssertionError();
        } else
        {
            c = te1;
            b = tg1;
            return;
        }
    }
}
