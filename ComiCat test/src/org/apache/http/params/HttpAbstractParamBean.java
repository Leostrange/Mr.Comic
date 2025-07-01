// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.params;

import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.params:
//            HttpParams

public abstract class HttpAbstractParamBean
{

    protected final HttpParams params;

    public HttpAbstractParamBean(HttpParams httpparams)
    {
        params = (HttpParams)Args.notNull(httpparams, "HTTP parameters");
    }
}
