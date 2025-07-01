// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;


// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestsSearch

public static final class  extends Enum
{

    private static final ENTERPRISE_CONTENT $VALUES[];
    public static final ENTERPRISE_CONTENT ENTERPRISE_CONTENT;
    public static final ENTERPRISE_CONTENT USER_CONTENT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/box/androidsdk/content/requests/BoxRequestsSearch$Search$Scope, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        USER_CONTENT = new <init>("USER_CONTENT", 0);
        ENTERPRISE_CONTENT = new <init>("ENTERPRISE_CONTENT", 1);
        $VALUES = (new .VALUES[] {
            USER_CONTENT, ENTERPRISE_CONTENT
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
