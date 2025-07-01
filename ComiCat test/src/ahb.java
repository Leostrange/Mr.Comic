// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.List;

public final class ahb
{

    public static boolean a(String s)
    {
        return agv.a(afa.j(), agv.a(s)) != -1;
    }

    public static boolean a(String s, List list)
    {
        boolean flag;
label0:
        {
            flag = false;
            if (s != null)
            {
                list = list.iterator();
                flag = false;
                do
                {
                    if (!list.hasNext())
                    {
                        break label0;
                    }
                    String s1 = (String)list.next();
                    if (s.equals(agv.c(s1)))
                    {
                        flag = a(s1);
                    }
                } while (!flag);
            }
            return flag;
        }
        return flag;
    }
}
