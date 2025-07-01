// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class hh extends hj
{

    private final hq a;

    public hh(String s, hq hq, String s1)
    {
        super(s, s1);
        a = hq;
    }

    protected static String a(String s, hq hq, Object obj)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Exception in ").append(s);
        if (obj != null)
        {
            stringbuilder.append(": ").append(obj);
        }
        if (hq != null)
        {
            stringbuilder.append(" (user message: ").append(hq).append(")");
        }
        return stringbuilder.toString();
    }
}
