// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestUpdateSharedItem, BoxRequestsFolder, BoxRequest

public static class  extends BoxRequestUpdateSharedItem
{

    private static final long serialVersionUID = 0x70be1f2741234cbfL;

    public Boolean getCanDownload()
    {
        return super.getCanDownload();
    }

    public volatile BoxRequest setCanDownload(boolean flag)
    {
        return setCanDownload(flag);
    }

    public setCanDownload setCanDownload(boolean flag)
    {
        return (setCanDownload)super.setCanDownload(flag);
    }

    protected ( )
    {
        super();
    }

    public (String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
    }
}
