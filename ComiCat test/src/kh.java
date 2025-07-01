// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;

public class kh extends kp
{

    private String code;
    private String redirectUri;

    public kh(mf mf, mv mv, lr lr, String s)
    {
        super(mf, mv, lr, "authorization_code");
        b(s);
    }

    public kh a(String s)
    {
        return (kh)super.d(s);
    }

    public kh a(String s, Object obj)
    {
        return (kh)super.b(s, obj);
    }

    public kh a(Collection collection)
    {
        return (kh)super.b(collection);
    }

    public kh a(lr lr)
    {
        return (kh)super.b(lr);
    }

    public kh a(lv lv)
    {
        return (kh)super.b(lv);
    }

    public kh a(mb mb)
    {
        return (kh)super.b(mb);
    }

    public kh b(String s)
    {
        code = (String)ni.a(s);
        return this;
    }

    public kp b(String s, Object obj)
    {
        return a(s, obj);
    }

    public kp b(Collection collection)
    {
        return a(collection);
    }

    public kp b(lr lr)
    {
        return a(lr);
    }

    public kp b(lv lv)
    {
        return a(lv);
    }

    public kp b(mb mb)
    {
        return a(mb);
    }

    public kh c(String s)
    {
        redirectUri = s;
        return this;
    }

    public kp d(String s)
    {
        return a(s);
    }

    public nw d(String s, Object obj)
    {
        return a(s, obj);
    }
}
