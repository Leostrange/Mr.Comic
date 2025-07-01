// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.concurrent.TimeUnit;

public class hu extends hj
{

    public final long a;

    public hu(String s, String s1)
    {
        this(s, s1, 0L, TimeUnit.MILLISECONDS);
    }

    public hu(String s, String s1, long l, TimeUnit timeunit)
    {
        super(s, s1);
        a = timeunit.toMillis(l);
    }
}
