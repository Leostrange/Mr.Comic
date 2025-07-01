// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestCommentAdd, BoxRequestsComment

public static class setMessage extends BoxRequestCommentAdd
{

    private static final long serialVersionUID = 0x70be1f2741234cb9L;

    public volatile String getItemId()
    {
        return super.getItemId();
    }

    public volatile String getItemType()
    {
        return super.getItemType();
    }

    public volatile String getMessage()
    {
        return super.getMessage();
    }

    public (String s, String s1, String s2, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxComment, s2, boxsession);
        setItemId(s);
        setItemType("comment");
        setMessage(s1);
    }
}
