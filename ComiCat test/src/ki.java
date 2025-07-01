// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;
import java.util.Iterator;

public class ki extends lr
{

    private String clientId;
    private String redirectUri;
    private String responseTypes;
    private String scopes;
    private String state;

    public ki(String s, String s1, Collection collection)
    {
        super(s);
        boolean flag;
        if (super.b == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        c(s1);
        d(collection);
    }

    public ki b()
    {
        return (ki)super.c();
    }

    public ki b(String s, Object obj)
    {
        return (ki)super.c(s, obj);
    }

    public ki c(String s)
    {
        clientId = (String)ni.a(s);
        return this;
    }

    public ki c(Collection collection)
    {
        if (collection == null || !collection.iterator().hasNext())
        {
            collection = null;
        } else
        {
            collection = ny.a().a(collection);
        }
        scopes = collection;
        return this;
    }

    public lr c()
    {
        return b();
    }

    public lr c(String s, Object obj)
    {
        return b(s, obj);
    }

    public Object clone()
    {
        return b();
    }

    public ki d(String s)
    {
        redirectUri = s;
        return this;
    }

    public ki d(Collection collection)
    {
        responseTypes = ny.a().a(collection);
        return this;
    }

    public nw d()
    {
        return b();
    }

    public nw d(String s, Object obj)
    {
        return b(s, obj);
    }
}
