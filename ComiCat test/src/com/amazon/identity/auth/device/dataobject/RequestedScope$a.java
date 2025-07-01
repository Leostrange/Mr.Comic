// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device.dataobject;


// Referenced classes of package com.amazon.identity.auth.device.dataobject:
//            RequestedScope

public static final class g extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    public static final f f;
    private static final f h[];
    public final int g;

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/amazon/identity/auth/device/dataobject/RequestedScope$a, s);
    }

    public static g[] values()
    {
        return (g[])h.clone();
    }

    static 
    {
        a = new <init>("ROW_ID", 0, 0);
        b = new <init>("SCOPE", 1, 1);
        c = new <init>("APP_FAMILY_ID", 2, 2);
        d = new <init>("DIRECTED_ID", 3, 3);
        e = new <init>("AUTHORIZATION_ACCESS_TOKEN_ID", 4, 4);
        f = new <init>("AUTHORIZATION_REFRESH_TOKEN_ID", 5, 5);
        h = (new h[] {
            a, b, c, d, e, f
        });
    }

    private A(String s, int i, int j)
    {
        super(s, i);
        g = j;
    }
}
