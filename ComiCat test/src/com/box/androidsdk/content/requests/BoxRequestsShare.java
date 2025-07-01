// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxBookmark;
import com.box.androidsdk.content.models.BoxCollaboration;
import com.box.androidsdk.content.models.BoxCollaborator;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxGroup;
import com.box.androidsdk.content.models.BoxItem;
import com.box.androidsdk.content.models.BoxIteratorCollaborations;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLinkSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.models.BoxVoid;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonObject;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxResponse, BoxCacheableRequest, BoxRequestItem, 
//            BoxHttpResponse

public class BoxRequestsShare
{
    public static class AddCollaboration extends BoxRequest
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

        public AddCollaboration notifyCollaborators(boolean flag)
        {
            mQueryMap.put("notify", Boolean.toString(flag));
            return this;
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public AddCollaboration(String s, String s1, com.box.androidsdk.content.models.BoxCollaboration.Role role, BoxCollaborator boxcollaborator, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxCollaboration, s, boxsession);
            mRequestMethod = BoxRequest.Methods.POST;
            mFolderId = s1;
            setFolder(s1);
            setAccessibleBy(boxcollaborator.getId(), null, boxcollaborator.getType());
            mBodyMap.put("role", role.toString());
        }

        public AddCollaboration(String s, String s1, com.box.androidsdk.content.models.BoxCollaboration.Role role, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxCollaboration, s, boxsession);
            mRequestMethod = BoxRequest.Methods.POST;
            mFolderId = s1;
            setFolder(s1);
            setAccessibleBy(null, s2, "user");
            mBodyMap.put("role", role.toString());
        }
    }

    public static class DeleteCollaboration extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cb0L;
        private String mId;

        public String getId()
        {
            return mId;
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public DeleteCollaboration(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxVoid, s1, boxsession);
            mId = s;
            mRequestMethod = BoxRequest.Methods.DELETE;
        }
    }

    public static class GetCollaborationInfo extends BoxRequest
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cfdL;
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

        public BoxCollaboration sendForCachedResult()
        {
            return (BoxCollaboration)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetCollaborationInfo(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxCollaboration, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
            mId = s;
        }
    }

    public static class GetPendingCollaborations extends BoxRequest
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cfdL;

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public BoxIteratorCollaborations sendForCachedResult()
        {
            return (BoxIteratorCollaborations)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetPendingCollaborations(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorCollaborations, s, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
            mQueryMap.put("status", com.box.androidsdk.content.models.BoxCollaboration.Status.PENDING.toString());
        }
    }

    public static class GetSharedLink extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cf5L;

        public static BoxRequest.BoxRequestHandler createRequestHandler(GetSharedLink getsharedlink)
        {
            return new BoxRequest.BoxRequestHandler(getsharedlink) {

                public final BoxObject onResponse(Class class1, BoxHttpResponse boxhttpresponse)
                {
                    if (Thread.currentThread().isInterrupted())
                    {
                        disconnectForInterrupt(boxhttpresponse);
                        throw new BoxException("Request cancelled ", new InterruptedException());
                    }
                    if (boxhttpresponse.getResponseCode() == 429)
                    {
                        class1 = retryRateLimited(boxhttpresponse);
                    } else
                    {
                        String s = boxhttpresponse.getContentType();
                        BoxEntity boxentity = new BoxEntity();
                        class1 = boxentity;
                        if (s.contains(BoxRequest.ContentTypes.JSON.toString()))
                        {
                            boxhttpresponse = boxhttpresponse.getStringBody();
                            boxentity.createFromJson(boxhttpresponse);
                            if (boxentity.getType().equals("folder"))
                            {
                                class1 = new BoxFolder();
                                class1.createFromJson(boxhttpresponse);
                                return class1;
                            }
                            if (boxentity.getType().equals("file"))
                            {
                                class1 = new BoxFile();
                                class1.createFromJson(boxhttpresponse);
                                return class1;
                            }
                            class1 = boxentity;
                            if (boxentity.getType().equals("web_link"))
                            {
                                class1 = new BoxBookmark();
                                class1.createFromJson(boxhttpresponse);
                                return class1;
                            }
                        }
                    }
                    return class1;
                }

            };
        }

        private void readObject(ObjectInputStream objectinputstream)
        {
            objectinputstream.defaultReadObject();
            mRequestHandler = createRequestHandler(this);
        }

        private void writeObject(ObjectOutputStream objectoutputstream)
        {
            objectoutputstream.defaultWriteObject();
        }

        public String getIfNoneMatchEtag()
        {
            return super.getIfNoneMatchEtag();
        }

        public BoxItem sendForCachedResult()
        {
            return (BoxItem)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public volatile BoxRequest setIfNoneMatchEtag(String s)
        {
            return setIfNoneMatchEtag(s);
        }

        public GetSharedLink setIfNoneMatchEtag(String s)
        {
            return (GetSharedLink)super.setIfNoneMatchEtag(s);
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetSharedLink(String s, BoxSharedLinkSession boxsharedlinksession)
        {
            super(com/box/androidsdk/content/models/BoxItem, null, s, boxsharedlinksession);
            mRequestMethod = BoxRequest.Methods.GET;
            setRequestHandler(createRequestHandler(this));
        }
    }

    public static class UpdateCollaboration extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234d0dL;
        private String mId;

        public String getId()
        {
            return mId;
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public UpdateCollaboration setNewRole(com.box.androidsdk.content.models.BoxCollaboration.Role role)
        {
            mBodyMap.put("role", role.toString());
            return this;
        }

        public UpdateCollaboration setNewStatus(String s)
        {
            mBodyMap.put("status", s);
            return this;
        }

        public UpdateCollaboration(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxCollaboration, s1, boxsession);
            mId = s;
            mRequestMethod = BoxRequest.Methods.PUT;
        }
    }

    public static class UpdateOwner extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f273ebc5f2dL;
        private String mId;

        public String getId()
        {
            return mId;
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public UpdateOwner(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxVoid, s1, boxsession);
            mId = s;
            mRequestMethod = BoxRequest.Methods.PUT;
            mBodyMap.put("role", com.box.androidsdk.content.models.BoxCollaboration.Role.OWNER.toString());
        }
    }


    public BoxRequestsShare()
    {
    }
}
