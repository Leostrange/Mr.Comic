// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class je extends hh
{

    public final jd a;

    public je(String s, String s1, hq hq, jd jd)
    {
        super(s1, hq, a(s, hq, jd));
        if (jd == null)
        {
            throw new NullPointerException("errorValue");
        } else
        {
            a = jd;
            return;
        }
    }
}
