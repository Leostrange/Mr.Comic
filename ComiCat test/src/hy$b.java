// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public static final class util.Map
{

    public final int a;
    public final InputStream b;
    public final Map c;

    private static final Map a(Map map)
    {
        TreeMap treemap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        map = map.entrySet().iterator();
        do
        {
            if (!map.hasNext())
            {
                break;
            }
            java.util.ntry ntry = (java.util.ntry)map.next();
            if (ntry.getKey() != null && ((String)ntry.getKey()).trim().length() != 0)
            {
                treemap.put(ntry.getKey(), Collections.unmodifiableList((List)ntry.getValue()));
            }
        } while (true);
        return Collections.unmodifiableMap(treemap);
    }

    public >(int i, InputStream inputstream, Map map)
    {
        a = i;
        b = inputstream;
        c = a(map);
    }
}
