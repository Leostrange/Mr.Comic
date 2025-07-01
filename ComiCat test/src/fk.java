// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public abstract class fk
    implements fl
{

    static final boolean a;
    private static final String b = fk.getName();

    public fk()
    {
    }

    public final fz a(String s, Context context)
    {
        gz.c(b, (new StringBuilder("getAppInfo : packageName=")).append(s).toString());
        if (s == null)
        {
            gz.d(b, "packageName can't be null!");
            return null;
        }
        gz.c(b, (new StringBuilder("Finding API Key for ")).append(s).toString());
        if (!a && s == null)
        {
            throw new AssertionError();
        }
        Object obj = new hb(context, s);
        boolean flag;
        if (((hb) (obj)).b != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            gz.d(hb.a, "Unable to get API Key from Assests");
            obj = ((hb) (obj)).a("APIKey");
        } else
        {
            obj = ((hb) (obj)).b;
        }
        return fj.a(s, ((String) (obj)), context);
    }

    static 
    {
        boolean flag;
        if (!fk.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
