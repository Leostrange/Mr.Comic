// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class ow extends lj
{

    private String alt;
    private String fields;
    private String key;
    private String oauthToken;
    private Boolean prettyPrint;
    private String quotaUser;
    private String userIp;

    public ow(ov ov1, String s, String s1, Class class1)
    {
        super(ov1, s, s1, class1);
    }

    public final le a()
    {
        return (ov)super.e();
    }

    public lf a(String s, Object obj)
    {
        return c(s, obj);
    }

    public ow a(Boolean boolean1)
    {
        prettyPrint = boolean1;
        return this;
    }

    public ow a(String s)
    {
        oauthToken = s;
        return this;
    }

    public lj b(String s, Object obj)
    {
        return c(s, obj);
    }

    public ow b(String s)
    {
        key = s;
        return this;
    }

    public ow c(String s)
    {
        fields = s;
        return this;
    }

    public ow c(String s, Object obj)
    {
        return (ow)super.b(s, obj);
    }

    public nw d(String s, Object obj)
    {
        return c(s, obj);
    }

    public final volatile li e()
    {
        return (ov)super.e();
    }
}
