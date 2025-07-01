// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.protocol;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.protocol:
//            HttpContext

public class BasicHttpContext
    implements HttpContext
{

    private final Map map;
    private final HttpContext parentContext;

    public BasicHttpContext()
    {
        this(null);
    }

    public BasicHttpContext(HttpContext httpcontext)
    {
        map = new ConcurrentHashMap();
        parentContext = httpcontext;
    }

    public void clear()
    {
        map.clear();
    }

    public Object getAttribute(String s)
    {
        Args.notNull(s, "Id");
        Object obj1 = map.get(s);
        Object obj = obj1;
        if (obj1 == null)
        {
            obj = obj1;
            if (parentContext != null)
            {
                obj = parentContext.getAttribute(s);
            }
        }
        return obj;
    }

    public Object removeAttribute(String s)
    {
        Args.notNull(s, "Id");
        return map.remove(s);
    }

    public void setAttribute(String s, Object obj)
    {
        Args.notNull(s, "Id");
        if (obj != null)
        {
            map.put(s, obj);
            return;
        } else
        {
            map.remove(s);
            return;
        }
    }

    public String toString()
    {
        return map.toString();
    }
}
