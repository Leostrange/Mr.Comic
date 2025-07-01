// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class agy
{

    public static List a(List list, int i)
    {
        ArrayList arraylist = new ArrayList();
        i;
        JVM INSTR tableswitch -6 -2: default 44
    //                   -6 140
    //                   -5 90
    //                   -4 46
    //                   -3 243
    //                   -2 199;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return arraylist;
_L4:
        list = list.iterator();
        while (list.hasNext()) 
        {
            aeq aeq1 = (aeq)list.next();
            if (aeq1.a())
            {
                arraylist.add(aeq1);
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (!agw.a())
        {
            list = list.iterator();
            while (list.hasNext()) 
            {
                aeq aeq2 = (aeq)list.next();
                if (agw.a(aeq2))
                {
                    arraylist.add(aeq2);
                }
            }
        }
        if (true) goto _L1; else goto _L2
_L2:
        i = (int)aei.a().d.a("last-synced-id", 0L);
        list = list.iterator();
        while (list.hasNext()) 
        {
            aeq aeq3 = (aeq)list.next();
            if (aeq3.a > i)
            {
                arraylist.add(aeq3);
            }
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L6:
        list = list.iterator();
        while (list.hasNext()) 
        {
            aeq aeq4 = (aeq)list.next();
            if (!aeq4.p())
            {
                arraylist.add(aeq4);
            }
        }
        if (true) goto _L1; else goto _L5
_L5:
        list = list.iterator();
        while (list.hasNext()) 
        {
            aeq aeq5 = (aeq)list.next();
            if (aeq5.h.c(2))
            {
                arraylist.add(aeq5);
            }
        }
        if (true) goto _L1; else goto _L7
_L7:
    }
}
