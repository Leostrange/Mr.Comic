// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiComment extends BoxApi
{

    public static final String COMMENTS_ENDPOINT = "/comments";

    public BoxApiComment(BoxSession boxsession)
    {
        super(boxsession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsComment.AddReplyComment getAddCommentReplyRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsComment.AddReplyComment(s, s1, getCommentsUrl(), mSession);
    }

    protected String getCommentInfoUrl(String s)
    {
        return String.format("%s/%s", new Object[] {
            getCommentsUrl(), s
        });
    }

    protected String getCommentsUrl()
    {
        return (new StringBuilder()).append(getBaseUri()).append("/comments").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsComment.DeleteComment getDeleteRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsComment.DeleteComment(s, getCommentInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsComment.GetCommentInfo getInfoRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsComment.GetCommentInfo(s, getCommentInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsComment.UpdateComment getUpdateRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsComment.UpdateComment(s, s1, getCommentInfoUrl(s), mSession);
    }
}
