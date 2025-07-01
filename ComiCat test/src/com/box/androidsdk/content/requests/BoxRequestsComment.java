// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestCommentAdd, BoxRequest, BoxResponse, BoxRequestItem, 
//            BoxCacheableRequest

public class BoxRequestsComment
{
    public static class AddReplyComment extends BoxRequestCommentAdd
    {

        private static final long serialVersionUID = 0x70be1f2741234cb9L;

        public volatile String getItemId()
        {
            return super.getItemId();
        }

        public volatile String getItemType()
        {
            return super.getItemType();
        }

        public volatile String getMessage()
        {
            return super.getMessage();
        }

        public AddReplyComment(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxComment, s2, boxsession);
            setItemId(s);
            setItemType("comment");
            setMessage(s1);
        }
    }

    public static class DeleteComment extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234d04L;
        private final String mId;

        public String getId()
        {
            return mId;
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public DeleteComment(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxVoid, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.DELETE;
            mId = s;
        }
    }

    public static class GetCommentInfo extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cbdL;

        public BoxComment sendForCachedResult()
        {
            return (BoxComment)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetCommentInfo(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxComment, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class UpdateComment extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cfbL;
        String mId;

        public String getId()
        {
            return mId;
        }

        public String getMessage()
        {
            return (String)mBodyMap.get("message");
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public UpdateComment setMessage(String s)
        {
            mBodyMap.put("message", s);
            return this;
        }

        public UpdateComment(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxComment, s2, boxsession);
            mId = s;
            mRequestMethod = BoxRequest.Methods.PUT;
            setMessage(s1);
        }
    }


    public BoxRequestsComment()
    {
    }
}
