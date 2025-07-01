// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Date;

public final class ik
{

    public static RuntimeException a(String s, Throwable throwable)
    {
        s = new RuntimeException((new StringBuilder()).append(s).append(": ").append(throwable.getMessage()).toString());
        s.initCause(throwable);
        return s;
    }

    public static Date a(Date date)
    {
        Date date1 = date;
        if (date != null)
        {
            long l = date.getTime();
            date1 = new Date(l - l % 1000L);
        }
        return date1;
    }
}
