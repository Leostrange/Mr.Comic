// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;


// Referenced classes of package com.box.androidsdk.content.models:
//            BoxSession

static class pe
{

    static final int $SwitchMap$com$box$androidsdk$content$BoxException$ErrorType[];

    static 
    {
        $SwitchMap$com$box$androidsdk$content$BoxException$ErrorType = new int[com.box.androidsdk.content.ErrorType.values().length];
        try
        {
            $SwitchMap$com$box$androidsdk$content$BoxException$ErrorType[com.box.androidsdk.content.ErrorType.NETWORK_ERROR.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$box$androidsdk$content$BoxException$ErrorType[com.box.androidsdk.content.ErrorType.IP_BLOCKED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
