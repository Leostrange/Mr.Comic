// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;

public class kn extends kp
{

    private String refreshToken;

    public kn(mf mf, mv mv, lr lr, String s)
    {
        super(mf, mv, lr, "refresh_token");
        b(s);
    }

    public kn a(String s)
    {
        return (kn)super.d(s);
    }

    public kn a(String s, Object obj)
    {
        return (kn)super.b(s, obj);
    }

    public kn a(Collection collection)
    {
        return (kn)super.b(collection);
    }

    public kn a(lr lr)
    {
        return (kn)super.b(lr);
    }

    public kn a(lv lv)
    {
        return (kn)super.b(lv);
    }

    public kn a(mb mb)
    {
        return (kn)super.b(mb);
    }

    public kn b(String s)
    {
        refreshToken = (String)ni.a(s);
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

    public kp d(String s)
    {
        return a(s);
    }

    public nw d(String s, Object obj)
    {
        return a(s, obj);
    }
}
