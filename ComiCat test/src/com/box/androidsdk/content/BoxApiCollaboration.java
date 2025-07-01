// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxCollaborator;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiCollaboration extends BoxApi
{

    public BoxApiCollaboration(BoxSession boxsession)
    {
        super(boxsession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsShare.AddCollaboration getAddRequest(String s, com.box.androidsdk.content.models.BoxCollaboration.Role role, BoxCollaborator boxcollaborator)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsShare.AddCollaboration(getCollaborationsUrl(), s, role, boxcollaborator, mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsShare.AddCollaboration getAddRequest(String s, com.box.androidsdk.content.models.BoxCollaboration.Role role, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsShare.AddCollaboration(getCollaborationsUrl(), s, role, s1, mSession);
    }

    protected String getCollaborationInfoUrl(String s)
    {
        return String.format("%s/%s", new Object[] {
            getCollaborationsUrl(), s
        });
    }

    protected String getCollaborationsUrl()
    {
        return String.format("%s/collaborations", new Object[] {
            getBaseUri()
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsShare.DeleteCollaboration getDeleteRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsShare.DeleteCollaboration(s, getCollaborationInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsShare.GetCollaborationInfo getInfoRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsShare.GetCollaborationInfo(s, getCollaborationInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsShare.GetPendingCollaborations getPendingCollaborationsRequest()
    {
        return new com.box.androidsdk.content.requests.BoxRequestsShare.GetPendingCollaborations(getCollaborationsUrl(), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsShare.UpdateOwner getUpdateOwnerRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsShare.UpdateOwner(s, getCollaborationInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsShare.UpdateCollaboration getUpdateRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsShare.UpdateCollaboration(s, getCollaborationInfoUrl(s), mSession);
    }
}
