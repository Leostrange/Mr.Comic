// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxCollaboration;
import com.box.androidsdk.content.models.BoxCollaborator;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxGroup;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonObject;
import java.util.HashMap;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsShare, BoxResponse

public static class mBodyMap extends BoxRequest
{

    public static final String ERROR_CODE_USER_ALREADY_COLLABORATOR = "user_already_collaborator";
    private static final long serialVersionUID = 0x70be1f2741234cf6L;
    private final String mFolderId;

    private void setAccessibleBy(String s, String s1, String s2)
    {
        JsonObject jsonobject = new JsonObject();
        if (!SdkUtils.isEmptyString(s))
        {
            jsonobject.add("id", s);
        }
        if (!SdkUtils.isEmptyString(s1))
        {
            jsonobject.add("login", s1);
        }
        jsonobject.add("type", s2);
        if (s2.equals("user"))
        {
            s = new BoxUser(jsonobject);
        } else
        if (s2.equals("group"))
        {
            s = new BoxGroup(jsonobject);
        } else
        {
            throw new IllegalArgumentException("AccessibleBy property can only be set with type BoxUser.TYPE or BoxGroup.TYPE");
        }
        mBodyMap.put("accessible_by", s);
    }

    private void setFolder(String s)
    {
        mBodyMap.put("item", BoxFolder.createFromId(s));
    }

    public BoxCollaborator getAccessibleBy()
    {
        if (mBodyMap.containsKey("accessible_by"))
        {
            return (BoxCollaborator)mBodyMap.get("accessible_by");
        } else
        {
            return null;
        }
    }

    public String getFolderId()
    {
        return mFolderId;
    }

    public mFolderId notifyCollaborators(boolean flag)
    {
        mQueryMap.put("notify", Boolean.toString(flag));
        return this;
    }

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public (String s, String s1, com.box.androidsdk.content.models.n n, BoxCollaborator boxcollaborator, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxCollaboration, s, boxsession);
        mRequestMethod = mRequestMethod;
        mFolderId = s1;
        setFolder(s1);
        setAccessibleBy(boxcollaborator.getId(), null, boxcollaborator.getType());
        mBodyMap.put("role", n.mBodyMap());
    }

    public mBodyMap(String s, String s1, com.box.androidsdk.content.models.n n, String s2, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxCollaboration, s, boxsession);
        mRequestMethod = mRequestMethod;
        mFolderId = s1;
        setFolder(s1);
        setAccessibleBy(null, s2, "user");
        mBodyMap.put("role", n.mBodyMap());
    }
}
