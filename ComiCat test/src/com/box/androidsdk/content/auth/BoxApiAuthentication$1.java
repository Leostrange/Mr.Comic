// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.requests.BoxHttpResponse;
import com.box.androidsdk.content.requests.BoxRequest;

// Referenced classes of package com.box.androidsdk.content.auth:
//            BoxApiAuthentication

class stHandler extends com.box.androidsdk.content.requests.ndler
{

    final BoxApiAuthentication this$0;

    public boolean onException(BoxRequest boxrequest, BoxHttpResponse boxhttpresponse, BoxException boxexception)
    {
        return false;
    }

    stHandler(BoxRequest boxrequest)
    {
        this$0 = BoxApiAuthentication.this;
        super(boxrequest);
    }
}
