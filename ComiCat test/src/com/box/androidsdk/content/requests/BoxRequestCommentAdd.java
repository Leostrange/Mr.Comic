// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxSession;
import com.eclipsesource.json.JsonObject;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequest

abstract class BoxRequestCommentAdd extends BoxRequestItem
{

    public BoxRequestCommentAdd(Class class1, String s, BoxSession boxsession)
    {
        super(class1, null, s, boxsession);
        mRequestMethod = BoxRequest.Methods.POST;
    }

    public String getItemId()
    {
        if (mBodyMap.containsKey("item"))
        {
            return (String)mBodyMap.get("id");
        } else
        {
            return null;
        }
    }

    public String getItemType()
    {
        if (mBodyMap.containsKey("item"))
        {
            return (String)mBodyMap.get("type");
        } else
        {
            return null;
        }
    }

    public String getMessage()
    {
        return (String)mBodyMap.get("message");
    }

    protected BoxRequest setItemId(String s)
    {
        JsonObject jsonobject = new JsonObject();
        if (mBodyMap.containsKey("item"))
        {
            jsonobject = ((BoxEntity)mBodyMap.get("item")).toJsonObject();
        }
        jsonobject.add("id", s);
        s = new BoxEntity(jsonobject);
        mBodyMap.put("item", s);
        return this;
    }

    protected BoxRequest setItemType(String s)
    {
        JsonObject jsonobject = new JsonObject();
        if (mBodyMap.containsKey("item"))
        {
            jsonobject = ((BoxEntity)mBodyMap.get("item")).toJsonObject();
        }
        jsonobject.add("type", s);
        s = new BoxEntity(jsonobject);
        mBodyMap.put("item", s);
        return this;
    }

    public BoxRequest setMessage(String s)
    {
        mBodyMap.put("message", s);
        return this;
    }

    public BoxRequest setTaggedMessage(String s)
    {
        mBodyMap.put("tagged_message", s);
        return this;
    }
}
