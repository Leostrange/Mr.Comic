// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

static final class ct
    implements Comparator
{

    public final volatile int compare(Object obj, Object obj1)
    {
        obj = (aem)obj;
        return ((aem)obj1).a - ((aem) (obj)).a;
    }

    ct()
    {
    }
}
