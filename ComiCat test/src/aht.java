// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.List;

public final class aht
{

    private static final ahu a;
    private static final ahu b;

    public static ahu a(ahu ahu1)
    {
        return new ahw(ahu1);
    }

    private static ahu a(String s)
    {
        return new ahv(s);
    }

    public static transient ahu a(ahu aahu[])
    {
        return new ahq(c(aahu));
    }

    public static transient ahu b(ahu aahu[])
    {
        return new ahx(c(aahu));
    }

    private static transient List c(ahu aahu[])
    {
        if (aahu == null)
        {
            throw new IllegalArgumentException("The filters must not be null");
        }
        ArrayList arraylist = new ArrayList(aahu.length);
        for (int i = 0; i < aahu.length; i++)
        {
            if (aahu[i] == null)
            {
                throw new IllegalArgumentException((new StringBuilder("The filter[")).append(i).append("] is null").toString());
            }
            arraylist.add(aahu[i]);
        }

        return arraylist;
    }

    static 
    {
        a = a(a(new ahu[] {
            ahr.a, a("CVS")
        }));
        b = a(a(new ahu[] {
            ahr.a, a(".svn")
        }));
    }
}
