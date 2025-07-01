// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLink;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequest, BoxRequestUpdateSharedItem

public abstract class BoxRequestItemUpdate extends BoxRequestItem
{

    protected BoxRequestItemUpdate(BoxRequestItemUpdate boxrequestitemupdate)
    {
        super(boxrequestitemupdate);
    }

    public BoxRequestItemUpdate(Class class1, String s, String s1, BoxSession boxsession)
    {
        super(class1, s, s1, boxsession);
        mRequestMethod = BoxRequest.Methods.PUT;
    }

    public String getDescription()
    {
        if (mBodyMap.containsKey("description"))
        {
            return (String)mBodyMap.get("description");
        } else
        {
            return null;
        }
    }

    public String getIfMatchEtag()
    {
        return super.getIfMatchEtag();
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

    public BoxSharedLink getSharedLink()
    {
        if (mBodyMap.containsKey("shared_link"))
        {
            return (BoxSharedLink)mBodyMap.get("shared_link");
        } else
        {
            return null;
        }
    }

    public List getTags()
    {
        if (mBodyMap.containsKey("tags"))
        {
            return (List)mBodyMap.get("tags");
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
        }
        if (((String)entry.getKey()).equals("shared_link"))
        {
            if (entry.getValue() == null)
            {
                jsonobject.add((String)entry.getKey(), null);
                return;
            } else
            {
                jsonobject.add((String)entry.getKey(), parseJsonObject(entry.getValue()));
                return;
            }
        } else
        {
            super.parseHashMapEntry(jsonobject, entry);
            return;
        }
    }

    public BoxRequest setDescription(String s)
    {
        mBodyMap.put("description", s);
        return this;
    }

    public BoxRequest setIfMatchEtag(String s)
    {
        return super.setIfMatchEtag(s);
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

    public BoxRequest setSharedLink(BoxSharedLink boxsharedlink)
    {
        mBodyMap.put("shared_link", boxsharedlink);
        return this;
    }

    public BoxRequest setTags(List list)
    {
        JsonArray jsonarray = new JsonArray();
        for (list = list.iterator(); list.hasNext(); jsonarray.add((String)list.next())) { }
        mBodyMap.put("tags", jsonarray);
        return this;
    }

    public abstract BoxRequestUpdateSharedItem updateSharedLink();
}
