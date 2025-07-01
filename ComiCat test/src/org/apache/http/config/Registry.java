// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.config;

import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package org.apache.http.config:
//            Lookup

public final class Registry
    implements Lookup
{

    private final Map map;

    Registry(Map map1)
    {
        map = new ConcurrentHashMap(map1);
    }

    public final Object lookup(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return map.get(s.toLowerCase(Locale.ROOT));
        }
    }

    public final String toString()
    {
        return map.toString();
    }
}
