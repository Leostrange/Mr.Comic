// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;

public final class aia
{
    public static final class a
        implements Serializable
    {

        a()
        {
        }
    }


    public static final a a = new a();

    public static String a(Object obj)
    {
        if (obj == null)
        {
            return "";
        } else
        {
            return obj.toString();
        }
    }

}
