// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import android.text.TextUtils;
import com.box.androidsdk.content.models.BoxCollection;
import com.box.androidsdk.content.models.BoxSession;
import com.eclipsesource.json.JsonArray;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxRequest

public abstract class BoxRequestCollectionUpdate extends BoxRequestItem
{

    protected static final String FIELD_COLLECTIONS = "collections";

    public BoxRequestCollectionUpdate(Class class1, String s, String s1, BoxSession boxsession)
    {
        super(class1, s, s1, boxsession);
        mRequestMethod = BoxRequest.Methods.PUT;
    }

    protected BoxRequest setCollectionId(String s)
    {
        JsonArray jsonarray = new JsonArray();
        if (!TextUtils.isEmpty(s))
        {
            jsonarray.add(BoxCollection.createFromId(s).toJsonObject());
        }
        mBodyMap.put("collections", jsonarray);
        return this;
    }
}
