// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device.dataobject;


// Referenced classes of package com.amazon.identity.auth.device.dataobject:
//            RequestedScope

public static final class d extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    private static final c e[];
    public final long d;

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/amazon/identity/auth/device/dataobject/RequestedScope$b, s);
    }

    public static d[] values()
    {
        return (d[])e.clone();
    }

    static 
    {
        a = new <init>("UNKNOWN", 0, -2L);
        b = new <init>("REJECTED", 1, -1L);
        c = new <init>("GRANTED_LOCALLY", 2, 0L);
        e = (new e[] {
            a, b, c
        });
    }

    private A(String s, int i, long l)
    {
        super(s, i);
        d = l;
    }
}
