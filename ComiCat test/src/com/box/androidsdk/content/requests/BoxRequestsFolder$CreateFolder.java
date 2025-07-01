// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequestsFolder

public static class setName extends BoxRequestItem
{

    private static final long serialVersionUID = 0x70be1f2741234cb1L;

    public String getName()
    {
        return (String)mBodyMap.get("name");
    }

    public String getParentId()
    {
        if (mBodyMap.containsKey("parent"))
        {
            return (String)mBodyMap.get("id");
        } else
        {
            return null;
        }
    }

    public mBodyMap setName(String s)
    {
        mBodyMap.put("name", s);
        return this;
    }

    public mBodyMap setParentId(String s)
    {
        s = BoxFolder.createFromId(s);
        mBodyMap.put("parent", s);
        return this;
    }

    public (String s, String s1, String s2, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFolder, null, s2, boxsession);
        mRequestMethod = mRequestMethod;
        setParentId(s);
        setName(s1);
    }
}
