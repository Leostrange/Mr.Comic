// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;


// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest

static class ntentTypes
{

    static final int $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes[];

    static 
    {
        $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes = new int[ntentTypes.values().length];
        try
        {
            $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes[ntentTypes.JSON.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes[ntentTypes.URL_ENCODED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$box$androidsdk$content$requests$BoxRequest$ContentTypes[ntentTypes.JSON_PATCH.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
