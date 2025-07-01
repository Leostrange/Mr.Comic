// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;
import java.util.logging.Logger;

public abstract class mf
{

    static final Logger a = Logger.getLogger(mf.getName());
    private static final String b[];

    public mf()
    {
    }

    public final ma a(mb mb)
    {
        return new ma(this, mb);
    }

    public abstract mi a(String s, String s1);

    public boolean a(String s)
    {
        return Arrays.binarySearch(b, s) >= 0;
    }

    static 
    {
        String as[] = new String[4];
        as[0] = "DELETE";
        as[1] = "GET";
        as[2] = "POST";
        as[3] = "PUT";
        b = as;
        Arrays.sort(as);
    }
}
