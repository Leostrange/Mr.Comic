// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


static final class lang.Object extends ng
{

    final ng q;
    final ng r;

    final ng a(String s)
    {
        return new <init>(q, r, s);
    }

    public final boolean a(char c)
    {
        return q.a(c) || r.a(c);
    }

    >(ng ng1, ng ng2)
    {
        this(ng1, ng2, (new StringBuilder("CharMatcher.or(")).append(ng1).append(", ").append(ng2).append(")").toString());
    }

    private >(ng ng1, ng ng2, String s)
    {
        super(s);
        q = (ng)ni.a(ng1);
        r = (ng)ni.a(ng2);
    }
}
