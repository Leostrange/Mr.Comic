// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;


// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest

public static final class  extends Enum
{

    private static final OPTIONS $VALUES[];
    public static final OPTIONS DELETE;
    public static final OPTIONS GET;
    public static final OPTIONS OPTIONS;
    public static final OPTIONS POST;
    public static final OPTIONS PUT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/box/androidsdk/content/requests/BoxRequest$Methods, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        GET = new <init>("GET", 0);
        POST = new <init>("POST", 1);
        PUT = new <init>("PUT", 2);
        DELETE = new <init>("DELETE", 3);
        OPTIONS = new <init>("OPTIONS", 4);
        $VALUES = (new .VALUES[] {
            GET, POST, PUT, DELETE, OPTIONS
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
