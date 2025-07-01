// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxSession;
import java.io.InputStream;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestUpload, BoxRequestsFile, BoxRequest

public static class  extends BoxRequestUpload
{

    public String getIfMatchEtag()
    {
        return super.getIfMatchEtag();
    }

    public volatile BoxRequest setIfMatchEtag(String s)
    {
        return setIfMatchEtag(s);
    }

    public setIfMatchEtag setIfMatchEtag(String s)
    {
        return (setIfMatchEtag)super.setIfMatchEtag(s);
    }

    public (InputStream inputstream, String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFile, inputstream, s, boxsession);
    }
}
