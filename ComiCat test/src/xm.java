// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class xm
{

    static HashMap a;
    String b;
    String c;
    String d;
    HashMap e;
    xu f;
    int g;
    int h;

    xm(String s, String s1)
    {
        d = null;
        e = null;
        f = null;
        b = s;
        c = s1;
    }

    final Object a(String s)
    {
        if (s.equals("endpoint"))
        {
            return d;
        }
        if (e != null)
        {
            return e.get(s);
        } else
        {
            return null;
        }
    }

    public final String toString()
    {
        String s = (new StringBuilder()).append(b).append(":").append(c).append("[").append(d).toString();
        Object obj = s;
        if (e != null)
        {
            Iterator iterator = e.keySet().iterator();
            do
            {
                obj = s;
                if (!iterator.hasNext())
                {
                    break;
                }
                obj = iterator.next();
                Object obj1 = e.get(obj);
                s = (new StringBuilder()).append(s).append(",").append(obj).append("=").append(obj1).toString();
            } while (true);
        }
        return (new StringBuilder()).append(((String) (obj))).append("]").toString();
    }

    static 
    {
        HashMap hashmap = new HashMap();
        a = hashmap;
        hashmap.put("srvsvc", "4b324fc8-1670-01d3-1278-5a47bf6ee188:3.0");
        a.put("lsarpc", "12345778-1234-abcd-ef00-0123456789ab:0.0");
        a.put("samr", "12345778-1234-abcd-ef00-0123456789ac:1.0");
        a.put("netdfs", "4fc742e0-4a10-11cf-8273-00aa004ae673:3.0");
    }
}
