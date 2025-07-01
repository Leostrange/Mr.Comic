// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItemDelete, BoxRequestsFolder, BoxResponse

public static class setRecursive extends BoxRequestItemDelete
{

    private static final String FALSE = "false";
    private static final String FIELD_RECURSIVE = "recursive";
    private static final String TRUE = "true";
    private static final long serialVersionUID = 0x70be1f2741234d0aL;

    public Boolean getRecursive()
    {
        return Boolean.valueOf("true".equals(mQueryMap.get("recursive")));
    }

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public teCache setRecursive(boolean flag)
    {
        HashMap hashmap = mQueryMap;
        String s;
        if (flag)
        {
            s = "true";
        } else
        {
            s = "false";
        }
        hashmap.put("recursive", s);
        return this;
    }

    public (String s, String s1, BoxSession boxsession)
    {
        super(s, s1, boxsession);
        setRecursive(true);
    }
}
