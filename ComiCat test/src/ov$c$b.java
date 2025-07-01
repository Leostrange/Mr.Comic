// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ng.String extends ow
{

    private String corpus;
    final ng.String g;
    public Integer maxResults;
    private String orderBy;
    public String pageToken;
    private String projection;
    public String q;
    public String spaces;

    private ng.Object f(String s, Object obj)
    {
        return (ng.Object)super.c(s, obj);
    }

    public final lf a(String s, Object obj)
    {
        return f(s, obj);
    }

    public final volatile ow a(Boolean boolean1)
    {
        return (ng.Boolean)super.a(boolean1);
    }

    public final volatile ow a(String s)
    {
        return (ng.String)super.a(s);
    }

    public final lj b(String s, Object obj)
    {
        return f(s, obj);
    }

    public final volatile ow b(String s)
    {
        return (ng.String)super.b(s);
    }

    public final ow c(String s)
    {
        return d(s);
    }

    public final ow c(String s, Object obj)
    {
        return f(s, obj);
    }

    public final nw d(String s, Object obj)
    {
        return f(s, obj);
    }

    public final ng.String d(String s)
    {
        return (ng.String)super.c(s);
    }

    protected ng.Class(ng ng)
    {
        g = ng;
        super(ng.t>, "GET", "files", pa);
    }
}
