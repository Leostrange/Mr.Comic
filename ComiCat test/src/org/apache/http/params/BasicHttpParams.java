// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.params;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package org.apache.http.params:
//            AbstractHttpParams, HttpParams

public class BasicHttpParams extends AbstractHttpParams
    implements Serializable, Cloneable
{

    private static final long serialVersionUID = 0x9da80e1f568bbef1L;
    private final Map parameters = new ConcurrentHashMap();

    public BasicHttpParams()
    {
    }

    public void clear()
    {
        parameters.clear();
    }

    public Object clone()
    {
        BasicHttpParams basichttpparams = (BasicHttpParams)super.clone();
        copyParams(basichttpparams);
        return basichttpparams;
    }

    public HttpParams copy()
    {
        HttpParams httpparams;
        try
        {
            httpparams = (HttpParams)clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new UnsupportedOperationException("Cloning not supported");
        }
        return httpparams;
    }

    public void copyParams(HttpParams httpparams)
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = parameters.entrySet().iterator(); iterator.hasNext(); httpparams.setParameter((String)entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    public Set getNames()
    {
        return new HashSet(parameters.keySet());
    }

    public Object getParameter(String s)
    {
        return parameters.get(s);
    }

    public boolean isParameterSet(String s)
    {
        return getParameter(s) != null;
    }

    public boolean isParameterSetLocally(String s)
    {
        return parameters.get(s) != null;
    }

    public boolean removeParameter(String s)
    {
        if (parameters.containsKey(s))
        {
            parameters.remove(s);
            return true;
        } else
        {
            return false;
        }
    }

    public HttpParams setParameter(String s, Object obj)
    {
        if (s == null)
        {
            return this;
        }
        if (obj != null)
        {
            parameters.put(s, obj);
            return this;
        } else
        {
            parameters.remove(s);
            return this;
        }
    }

    public void setParameters(String as[], Object obj)
    {
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            setParameter(as[i], obj);
        }

    }
}
