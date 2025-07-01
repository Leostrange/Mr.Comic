// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device.dataobject;


// Referenced classes of package com.amazon.identity.auth.device.dataobject:
//            AuthorizationCode

public static final class e extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    private static final d f[];
    public final int e;

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/amazon/identity/auth/device/dataobject/AuthorizationCode$a, s);
    }

    public static e[] values()
    {
        return (e[])f.clone();
    }

    static 
    {
        a = new <init>("ROW_ID", 0, 0);
        b = new <init>("CODE", 1, 1);
        c = new <init>("APP_FAMILY_ID", 2, 2);
        d = new <init>("AUTHORIZATION_TOKEN_ID", 3, 3);
        f = (new f[] {
            a, b, c, d
        });
    }

    private (String s, int i, int j)
    {
        super(s, i);
        e = j;
    }
}
