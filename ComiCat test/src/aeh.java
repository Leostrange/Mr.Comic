// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;

public final class aeh
{

    public static void a()
    {
        xj.a("jcifs.resolveOrder", "DNS");
    }

    public static aar[] a(aar aar1)
    {
        try
        {
            ArrayList arraylist = new ArrayList();
            aar1.a(arraylist, "*");
            aar1 = (aar[])(aar[])arraylist.toArray(new aar[arraylist.size()]);
        }
        // Misplaced declaration of an exception variable
        catch (aar aar1)
        {
            agt.a(aar1);
            throw new aed();
        }
        return aar1;
    }
}
