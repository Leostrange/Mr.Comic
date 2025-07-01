// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;
import com.eclipsesource.json.JsonObject;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsFile, BoxResponse

public static class mBodyMap extends BoxRequest
{

    private static final String TYPE_FILE = "file";
    private static final String TYPE_ITEM_PREVIEW = "PREVIEW";
    private String mFileId;

    public String getFileId()
    {
        return mFileId;
    }

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public (String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxVoid, s1, boxsession);
        mFileId = s;
        mRequestMethod = mRequestMethod;
        mBodyMap.put("type", "event");
        mBodyMap.put("event_type", "PREVIEW");
        s1 = new JsonObject();
        s1.add("type", "file");
        s1.add("id", s);
        mBodyMap.put("source", BoxEntity.createEntityFromJson(s1));
    }
}
