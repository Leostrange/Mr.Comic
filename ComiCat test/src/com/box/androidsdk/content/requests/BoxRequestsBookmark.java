// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxBookmark;
import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxIteratorComments;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestCollectionUpdate, BoxRequest, BoxRequestCommentAdd, BoxRequestItemCopy, 
//            BoxRequestItem, BoxRequestItemDelete, BoxCacheableRequest, BoxRequestItemRestoreTrashed, 
//            BoxRequestItemUpdate, BoxRequestUpdateSharedItem

public class BoxRequestsBookmark
{
    public static class AddBookmarkToCollection extends BoxRequestCollectionUpdate
    {

        private static final long serialVersionUID = 0x70be1f2741234cd5L;

        public volatile BoxRequest setCollectionId(String s)
        {
            return setCollectionId(s);
        }

        public AddBookmarkToCollection setCollectionId(String s)
        {
            return (AddBookmarkToCollection)super.setCollectionId(s);
        }

        public AddBookmarkToCollection(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxBookmark, s, s2, boxsession);
            setCollectionId(s1);
        }
    }

    public static class AddCommentToBookmark extends BoxRequestCommentAdd
    {

        private static final long serialVersionUID = 0x70be1f2741234cb8L;

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

        public AddCommentToBookmark(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxComment, s2, boxsession);
            setItemId(s);
            setItemType("web_link");
            setMessage(s1);
        }
    }

    public static class CopyBookmark extends BoxRequestItemCopy
    {

        private static final long serialVersionUID = 0x70be1f2741234ccbL;

        public volatile String getName()
        {
            return super.getName();
        }

        public volatile String getParentId()
        {
            return super.getParentId();
        }

        public CopyBookmark(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxBookmark, s, s1, s2, boxsession);
        }
    }

    public static class CreateBookmark extends BoxRequestItem
    {

        private static final long serialVersionUID = 0x70be1f2741234cc6L;

        public String getDescription()
        {
            return (String)mBodyMap.get("description");
        }

        public String getName()
        {
            return (String)mBodyMap.get("name");
        }

        public String getParentId()
        {
            if (mBodyMap.containsKey("parent"))
            {
                return (String)mBodyMap.get("id");
            } else
            {
                return null;
            }
        }

        public String getUrl()
        {
            return (String)mBodyMap.get("url");
        }

        public CreateBookmark setDescription(String s)
        {
            mBodyMap.put("description", s);
            return this;
        }

        public CreateBookmark setName(String s)
        {
            mBodyMap.put("name", s);
            return this;
        }

        public CreateBookmark setParentId(String s)
        {
            s = BoxFolder.createFromId(s);
            mBodyMap.put("parent", s);
            return this;
        }

        public CreateBookmark setUrl(String s)
        {
            mBodyMap.put("url", s);
            return this;
        }

        public CreateBookmark(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxBookmark, null, s2, boxsession);
            mRequestMethod = BoxRequest.Methods.POST;
            setParentId(s);
            setUrl(s1);
        }
    }

    public static class DeleteBookmark extends BoxRequestItemDelete
    {

        private static final long serialVersionUID = 0x70be1f2741234d0bL;

        public DeleteBookmark(String s, String s1, BoxSession boxsession)
        {
            super(s, s1, boxsession);
        }
    }

    public static class DeleteBookmarkFromCollection extends BoxRequestCollectionUpdate
    {

        private static final long serialVersionUID = 0x70be1f2741234cd5L;

        public DeleteBookmarkFromCollection(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxBookmark, s, s1, boxsession);
            setCollectionId(null);
        }
    }

    public static class DeleteTrashedBookmark extends BoxRequestItemDelete
    {

        private static final long serialVersionUID = 0x70be1f2741234d07L;

        public DeleteTrashedBookmark(String s, String s1, BoxSession boxsession)
        {
            super(s, s1, boxsession);
        }
    }

    public static class GetBookmarkComments extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cbcL;

        public BoxIteratorComments sendForCachedResult()
        {
            return (BoxIteratorComments)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetBookmarkComments(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorComments, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class GetBookmarkInfo extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cb4L;

        public String getIfNoneMatchEtag()
        {
            return super.getIfNoneMatchEtag();
        }

        public BoxBookmark sendForCachedResult()
        {
            return (BoxBookmark)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public volatile BoxRequest setIfNoneMatchEtag(String s)
        {
            return setIfNoneMatchEtag(s);
        }

        public GetBookmarkInfo setIfNoneMatchEtag(String s)
        {
            return (GetBookmarkInfo)super.setIfNoneMatchEtag(s);
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetBookmarkInfo(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxBookmark, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class GetTrashedBookmark extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cd6L;

        public String getIfNoneMatchEtag()
        {
            return super.getIfNoneMatchEtag();
        }

        public BoxBookmark sendForCachedResult()
        {
            return (BoxBookmark)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public volatile BoxRequest setIfNoneMatchEtag(String s)
        {
            return setIfNoneMatchEtag(s);
        }

        public GetTrashedBookmark setIfNoneMatchEtag(String s)
        {
            return (GetTrashedBookmark)super.setIfNoneMatchEtag(s);
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetTrashedBookmark(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxBookmark, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class RestoreTrashedBookmark extends BoxRequestItemRestoreTrashed
    {

        private static final long serialVersionUID = 0x70be1f2741234cd0L;

        public volatile String getName()
        {
            return super.getName();
        }

        public volatile String getParentId()
        {
            return super.getParentId();
        }

        public RestoreTrashedBookmark(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxBookmark, s, s1, boxsession);
        }
    }

    public static class UpdateBookmark extends BoxRequestItemUpdate
    {

        private static final long serialVersionUID = 0x70be1f2741234cc3L;

        public String getUrl()
        {
            return (String)mBodyMap.get("url");
        }

        public UpdateBookmark setUrl(String s)
        {
            mBodyMap.put("url", s);
            return this;
        }

        public volatile BoxRequestUpdateSharedItem updateSharedLink()
        {
            return updateSharedLink();
        }

        public UpdateSharedBookmark updateSharedLink()
        {
            return new UpdateSharedBookmark(this);
        }

        public UpdateBookmark(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxBookmark, s, s1, boxsession);
        }
    }

    public static class UpdateSharedBookmark extends BoxRequestUpdateSharedItem
    {

        private static final long serialVersionUID = 0x70be1f2741234cbeL;

        public UpdateSharedBookmark(UpdateBookmark updatebookmark)
        {
            super(updatebookmark);
        }

        public UpdateSharedBookmark(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxBookmark, s, s1, boxsession);
        }
    }


    public BoxRequestsBookmark()
    {
    }
}
