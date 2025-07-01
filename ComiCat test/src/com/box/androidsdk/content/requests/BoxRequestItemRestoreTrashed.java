// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxSession;
import com.eclipsesource.json.JsonObject;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequest

abstract class BoxRequestItemRestoreTrashed extends BoxRequestItem
{

    public BoxRequestItemRestoreTrashed(Class class1, String s, String s1, BoxSession boxsession)
    {
        super(class1, s, s1, boxsession);
        mRequestMethod = BoxRequest.Methods.POST;
    }

    public String getName()
    {
        if (mBodyMap.containsKey("name"))
        {
            return (String)mBodyMap.get("name");
        } else
        {
            return null;
        }
    }

    public String getParentId()
    {
        if (mBodyMap.containsKey("parent"))
        {
            return ((BoxFolder)mBodyMap.get("parent")).getId();
        } else
        {
            return null;
        }
    }

    protected void parseHashMapEntry(JsonObject jsonobject, java.util.Map.Entry entry)
    {
        if (((String)entry.getKey()).equals("parent"))
        {
            jsonobject.add((String)entry.getKey(), parseJsonObject(entry.getValue()));
            return;
        } else
        {
            super.parseHashMapEntry(jsonobject, entry);
            return;
        }
    }

    public BoxRequest setName(String s)
    {
        mBodyMap.put("name", s);
        return this;
    }

    public BoxRequest setParentId(String s)
    {
        s = BoxFolder.createFromId(s);
        mBodyMap.put("parent", s);
        return this;
    }
}
