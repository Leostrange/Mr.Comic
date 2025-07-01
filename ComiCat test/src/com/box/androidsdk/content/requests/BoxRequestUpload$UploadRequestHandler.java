// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxIterator;
import com.box.androidsdk.content.models.BoxIteratorBoxEntity;
import com.box.androidsdk.content.models.BoxObject;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestUpload, BoxHttpResponse

public static class  extends 
{

    public BoxObject onResponse(Class class1, BoxHttpResponse boxhttpresponse)
    {
        return ((BoxIterator)super.e(com/box/androidsdk/content/models/BoxIteratorBoxEntity, boxhttpresponse)).get(0);
    }

    public (BoxRequestUpload boxrequestupload)
    {
        super(boxrequestupload);
    }
}
