// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

final class ang.Object
    implements Comparator
{

    final acx a;

    public final volatile int compare(Object obj, Object obj1)
    {
        obj = (acv)obj;
        obj1 = (acv)obj1;
        return ((acv) (obj)).a.c - ((acv) (obj1)).a.c;
    }

    (acx acx1)
    {
        a = acx1;
        super();
    }
}
