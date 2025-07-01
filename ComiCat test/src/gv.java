// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Date;

public final class gv extends ga
{

    public gv()
    {
        h = ga.a.a;
    }

    public gv(String s, String s1, long l)
    {
        this(s, s1, new Date(), l);
    }

    private gv(String s, String s1, Date date, long l)
    {
        this(s, s1, date, new Date(date.getTime() + l));
    }

    private gv(String s, String s1, Date date, Date date1)
    {
        super(s, s1, date, date1, ga.a.a);
    }
}
