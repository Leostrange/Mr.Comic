// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class t> extends ow
{

    private Boolean acknowledgeAbuse;
    private String fileId;
    final ng.String g;
    private String projection;
    private String revisionId;
    private Boolean updateViewedDate;

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

    public final lr b()
    {
        String s;
        if ("media".equals(get("alt")) && super.c == null)
        {
            s = (new StringBuilder()).append(((le) (g.g)).c).append("download/").append(((le) (g.g)).d).toString();
        } else
        {
            s = g.g.a();
        }
        return new lr(ml.a(s, super.b, this));
    }

    public final volatile ow b(String s)
    {
        return (ng.String)super.b(s);
    }

    public final volatile ow c(String s)
    {
        return (ng.String)super.c(s);
    }

    public final ow c(String s, Object obj)
    {
        return f(s, obj);
    }

    public final nw d(String s, Object obj)
    {
        return f(s, obj);
    }

    protected ng.Object(ng ng, String s)
    {
        g = ng;
        super(ng.t>, "GET", "files/{fileId}", oz);
        fileId = (String)oh.a(s, "Required parameter fileId must be specified.");
        ng = super.a.b;
        super.d = new lb(((ma) (ng)).a, ((ma) (ng)).b);
    }
}
