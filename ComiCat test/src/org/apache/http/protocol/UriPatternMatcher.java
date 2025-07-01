// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.util.Args;

public class UriPatternMatcher
{

    private final Map map = new HashMap();

    public UriPatternMatcher()
    {
    }

    public Map getObjects()
    {
        this;
        JVM INSTR monitorenter ;
        Map map1 = map;
        this;
        JVM INSTR monitorexit ;
        return map1;
        Exception exception;
        exception;
        throw exception;
    }

    public Object lookup(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        Args.notNull(s, "Request path");
        obj = map.get(s);
        Object obj2 = obj;
        if (obj != null) goto _L2; else goto _L1
_L1:
        Object obj1 = null;
        Iterator iterator = map.keySet().iterator();
_L3:
        obj2 = obj;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj2 = (String)iterator.next();
        if (!matchUriRequestPattern(((String) (obj2)), s))
        {
            break MISSING_BLOCK_LABEL_154;
        }
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        if (((String) (obj1)).length() >= ((String) (obj2)).length() && (((String) (obj1)).length() != ((String) (obj2)).length() || !((String) (obj2)).endsWith("*")))
        {
            break MISSING_BLOCK_LABEL_154;
        }
        obj1 = map.get(obj2);
        obj = obj2;
_L4:
        obj2 = obj1;
        obj1 = obj;
        obj = obj2;
        if (true) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return obj2;
        s;
        throw s;
        Object obj3 = obj;
        obj = obj1;
        obj1 = obj3;
          goto _L4
    }

    protected boolean matchUriRequestPattern(String s, String s1)
    {
        while (s.equals("*") || s.endsWith("*") && s1.startsWith(s.substring(0, s.length() - 1)) || s.startsWith("*") && s1.endsWith(s.substring(1, s.length()))) 
        {
            return true;
        }
        return false;
    }

    public void register(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        Args.notNull(s, "URI request pattern");
        map.put(s, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void setHandlers(Map map1)
    {
        this;
        JVM INSTR monitorenter ;
        Args.notNull(map1, "Map of handlers");
        map.clear();
        map.putAll(map1);
        this;
        JVM INSTR monitorexit ;
        return;
        map1;
        throw map1;
    }

    public void setObjects(Map map1)
    {
        this;
        JVM INSTR monitorenter ;
        Args.notNull(map1, "Map of handlers");
        map.clear();
        map.putAll(map1);
        this;
        JVM INSTR monitorexit ;
        return;
        map1;
        throw map1;
    }

    public String toString()
    {
        return map.toString();
    }

    public void unregister(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        map.remove(s);
        if (true) goto _L1; else goto _L3
_L3:
        s;
        throw s;
    }
}
