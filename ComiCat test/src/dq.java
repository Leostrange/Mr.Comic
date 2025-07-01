// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class dq
{

    public final Object d;

    dq(Object obj)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        } else
        {
            d = obj;
            return;
        }
    }
}
