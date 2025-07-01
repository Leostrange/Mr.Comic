// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxItem;
import com.box.androidsdk.content.models.BoxIteratorCollaborations;
import com.box.androidsdk.content.models.BoxIteratorItems;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUploadEmail;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestCollectionUpdate, BoxRequest, BoxRequestItemCopy, BoxRequestItem, 
//            BoxRequestItemDelete, BoxResponse, BoxCacheableRequest, BoxRequestBatch, 
//            BoxResponseBatch, BoxRequestItemRestoreTrashed, BoxRequestItemUpdate, BoxRequestUpdateSharedItem

public class BoxRequestsFolder
{
    public static class AddFolderToCollection extends BoxRequestCollectionUpdate
    {

        private static final long serialVersionUID = 0x70be1f2741234cd3L;

        public volatile BoxRequest setCollectionId(String s)
        {
            return setCollectionId(s);
        }

        public AddFolderToCollection setCollectionId(String s)
        {
            return (AddFolderToCollection)super.setCollectionId(s);
        }

        public AddFolderToCollection(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, s, s2, boxsession);
            setCollectionId(s1);
            mRequestMethod = BoxRequest.Methods.PUT;
        }
    }

    public static class CopyFolder extends BoxRequestItemCopy
    {

        private static final long serialVersionUID = 0x70be1f2741234cccL;

        public volatile String getName()
        {
            return super.getName();
        }

        public volatile String getParentId()
        {
            return super.getParentId();
        }

        public CopyFolder(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, s, s1, s2, boxsession);
        }
    }

    public static class CreateFolder extends BoxRequestItem
    {

        private static final long serialVersionUID = 0x70be1f2741234cb1L;

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

        public CreateFolder setName(String s)
        {
            mBodyMap.put("name", s);
            return this;
        }

        public CreateFolder setParentId(String s)
        {
            s = BoxFolder.createFromId(s);
            mBodyMap.put("parent", s);
            return this;
        }

        public CreateFolder(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, null, s2, boxsession);
            mRequestMethod = BoxRequest.Methods.POST;
            setParentId(s);
            setName(s1);
        }
    }

    public static class DeleteFolder extends BoxRequestItemDelete
    {

        private static final String FALSE = "false";
        private static final String FIELD_RECURSIVE = "recursive";
        private static final String TRUE = "true";
        private static final long serialVersionUID = 0x70be1f2741234d0aL;

        public Boolean getRecursive()
        {
            return Boolean.valueOf("true".equals(mQueryMap.get("recursive")));
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public DeleteFolder setRecursive(boolean flag)
        {
            HashMap hashmap = mQueryMap;
            String s;
            if (flag)
            {
                s = "true";
            } else
            {
                s = "false";
            }
            hashmap.put("recursive", s);
            return this;
        }

        public DeleteFolder(String s, String s1, BoxSession boxsession)
        {
            super(s, s1, boxsession);
            setRecursive(true);
        }
    }

    public static class DeleteFolderFromCollection extends BoxRequestCollectionUpdate
    {

        private static final long serialVersionUID = 0x70be1f2741234cd4L;

        public DeleteFolderFromCollection(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
            setCollectionId(null);
        }
    }

    public static class DeleteTrashedFolder extends BoxRequestItemDelete
    {

        private static final long serialVersionUID = 0x70be1f2741234d08L;

        public DeleteTrashedFolder(String s, String s1, BoxSession boxsession)
        {
            super(s, s1, boxsession);
        }
    }

    public static class GetCollaborations extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cbbL;

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

        public GetCollaborations(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorCollaborations, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class GetFolderInfo extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cc9L;

        public String getIfNoneMatchEtag()
        {
            return super.getIfNoneMatchEtag();
        }

        public BoxFolder sendForCachedResult()
        {
            return (BoxFolder)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public volatile BoxRequest setIfNoneMatchEtag(String s)
        {
            return setIfNoneMatchEtag(s);
        }

        public GetFolderInfo setIfNoneMatchEtag(String s)
        {
            return (GetFolderInfo)super.setIfNoneMatchEtag(s);
        }

        public GetFolderInfo setLimit(int i)
        {
            mQueryMap.put("limit", String.valueOf(i));
            return this;
        }

        public GetFolderInfo setOffset(int i)
        {
            mQueryMap.put("offset", String.valueOf(i));
            return this;
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetFolderInfo(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class GetFolderItems extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final String DEFAULT_LIMIT = "1000";
        private static final String DEFAULT_OFFSET = "0";
        private static final String LIMIT = "limit";
        private static final String OFFSET = "offset";
        private static final long serialVersionUID = 0x70be1f2741234cc4L;

        public BoxIteratorItems sendForCachedResult()
        {
            return (BoxIteratorItems)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public GetFolderItems setLimit(int i)
        {
            mQueryMap.put("limit", String.valueOf(i));
            return this;
        }

        public GetFolderItems setOffset(int i)
        {
            mQueryMap.put("offset", String.valueOf(i));
            return this;
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetFolderItems(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorItems, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
            mQueryMap.put("limit", "1000");
            mQueryMap.put("offset", "0");
        }
    }

    public static class GetFolderWithAllItems extends BoxRequestItem
        implements BoxCacheableRequest
    {

        public static int DEFAULT_MAX_LIMIT = 0;
        private static int LIMIT = 0;
        private static final long serialVersionUID = 0xfdf5c4c9da433af4L;
        private String mFolderId;
        private String mItemsUrl;
        private int mMaxLimit;

        public String getIfNoneMatchEtag()
        {
            return super.getIfNoneMatchEtag();
        }

        public BoxFolder onSend()
        {
            Object obj = (String)mQueryMap.get(QUERY_FIELDS);
            Object obj1 = ((GetFolderInfo)(new GetFolderInfo(mFolderId, mRequestUrlString, mSession) {

                final GetFolderWithAllItems this$0;

                protected void onSendCompleted(BoxResponse boxresponse)
                {
                }

            
            {
                this$0 = GetFolderWithAllItems.this;
                super(s, s1, boxsession);
            }
            }).setFields(new String[] {
                obj
            })).setLimit(LIMIT);
            if (!SdkUtils.isBlank(getIfNoneMatchEtag()))
            {
                ((GetFolderInfo) (obj1)).setIfNoneMatchEtag(getIfNoneMatchEtag());
            }
            obj1 = (BoxFolder)((GetFolderInfo) (obj1)).send();
            Object obj2 = (new BoxRequestBatch()).setExecutor(SdkUtils.createDefaultThreadPoolExecutor(10, 10, 3600L, TimeUnit.SECONDS));
            BoxIteratorItems boxiteratoritems = ((BoxFolder) (obj1)).getItemCollection();
            int j = boxiteratoritems.offset().intValue();
            int i = boxiteratoritems.limit().intValue();
            long l;
            if (mMaxLimit > 0 && (long)mMaxLimit < boxiteratoritems.fullSize().longValue())
            {
                l = mMaxLimit;
            } else
            {
                l = boxiteratoritems.fullSize().longValue();
            }
            while ((long)(j + i) < l) 
            {
                j += i;
                i = LIMIT;
                ((BoxRequestBatch) (obj2)).addRequest(((GetFolderItems)(new GetFolderItems(mFolderId, mItemsUrl, mSession) {

                    final GetFolderWithAllItems this$0;

                    protected void onSendCompleted(BoxResponse boxresponse)
                    {
                    }

            
            {
                this$0 = GetFolderWithAllItems.this;
                super(s, s1, boxsession);
            }
                }).setFields(new String[] {
                    obj
                })).setOffset(j).setLimit(i));
            }
            obj2 = (BoxResponseBatch)((BoxRequestBatch) (obj2)).send();
            obj = ((BoxFolder) (obj1)).toJsonObject();
            obj1 = ((JsonObject) (obj)).get("item_collection").asObject().get("entries").asArray();
            for (obj2 = ((BoxResponseBatch) (obj2)).getResponses().iterator(); ((Iterator) (obj2)).hasNext();)
            {
                Object obj3 = (BoxResponse)((Iterator) (obj2)).next();
                if (((BoxResponse) (obj3)).isSuccess())
                {
                    obj3 = ((BoxIteratorItems)((BoxResponse) (obj3)).getResult()).iterator();
                    while (((Iterator) (obj3)).hasNext()) 
                    {
                        ((JsonArray) (obj1)).add(((BoxItem)((Iterator) (obj3)).next()).toJsonObject());
                    }
                } else
                {
                    throw (BoxException)((BoxResponse) (obj3)).getException();
                }
            }

            return new BoxFolder(((JsonObject) (obj)));
        }

        public volatile BoxObject onSend()
        {
            return onSend();
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public BoxFolder sendForCachedResult()
        {
            return (BoxFolder)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public volatile BoxRequest setIfNoneMatchEtag(String s)
        {
            return setIfNoneMatchEtag(s);
        }

        public GetFolderWithAllItems setIfNoneMatchEtag(String s)
        {
            return (GetFolderWithAllItems)super.setIfNoneMatchEtag(s);
        }

        public GetFolderWithAllItems setMaximumLimit(int i)
        {
            mMaxLimit = i;
            return this;
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        static 
        {
            LIMIT = 100;
            DEFAULT_MAX_LIMIT = 4000;
        }

        public GetFolderWithAllItems(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
            mMaxLimit = -1;
            mRequestMethod = BoxRequest.Methods.GET;
            mFolderId = s;
            mItemsUrl = s2;
        }
    }

    public static class GetTrashedFolder extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cb5L;

        public String getIfNoneMatchEtag()
        {
            return super.getIfNoneMatchEtag();
        }

        public BoxFolder sendForCachedResult()
        {
            return (BoxFolder)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public volatile BoxRequest setIfNoneMatchEtag(String s)
        {
            return setIfNoneMatchEtag(s);
        }

        public GetTrashedFolder setIfNoneMatchEtag(String s)
        {
            return (GetTrashedFolder)super.setIfNoneMatchEtag(s);
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetTrashedFolder(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class GetTrashedItems extends BoxRequest
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cf8L;

        public BoxIteratorItems sendForCachedResult()
        {
            return (BoxIteratorItems)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetTrashedItems(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorItems, s, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class RestoreTrashedFolder extends BoxRequestItemRestoreTrashed
    {

        private static final long serialVersionUID = 0x70be1f2741234cceL;

        public volatile String getName()
        {
            return super.getName();
        }

        public volatile String getParentId()
        {
            return super.getParentId();
        }

        public RestoreTrashedFolder(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
        }
    }

    public static class UpdateFolder extends BoxRequestItemUpdate
    {

        private static final long serialVersionUID = 0x70be1f2741234cc2L;

        public String getOwnedById()
        {
            if (mBodyMap.containsKey("owned_by"))
            {
                return ((BoxUser)mBodyMap.get("owned_by")).getId();
            } else
            {
                return null;
            }
        }

        public com.box.androidsdk.content.models.BoxFolder.SyncState getSyncState()
        {
            if (mBodyMap.containsKey("sync_state"))
            {
                return (com.box.androidsdk.content.models.BoxFolder.SyncState)mBodyMap.get("sync_state");
            } else
            {
                return null;
            }
        }

        public com.box.androidsdk.content.models.BoxUploadEmail.Access getUploadEmailAccess()
        {
            if (mBodyMap.containsKey("folder_upload_email"))
            {
                return ((BoxUploadEmail)mBodyMap.get("folder_upload_email")).getAccess();
            } else
            {
                return null;
            }
        }

        protected void parseHashMapEntry(JsonObject jsonobject, java.util.Map.Entry entry)
        {
            if (((String)entry.getKey()).equals("folder_upload_email"))
            {
                jsonobject.add((String)entry.getKey(), parseJsonObject(entry.getValue()));
                return;
            }
            if (((String)entry.getKey()).equals("owned_by"))
            {
                jsonobject.add((String)entry.getKey(), parseJsonObject(entry.getValue()));
                return;
            }
            if (((String)entry.getKey()).equals("sync_state"))
            {
                com.box.androidsdk.content.models.BoxFolder.SyncState syncstate = (com.box.androidsdk.content.models.BoxFolder.SyncState)entry.getValue();
                jsonobject.add((String)entry.getKey(), syncstate.toString());
                return;
            } else
            {
                super.parseHashMapEntry(jsonobject, entry);
                return;
            }
        }

        public UpdateFolder setFolderUploadEmailAccess(com.box.androidsdk.content.models.BoxUploadEmail.Access access)
        {
            access = BoxUploadEmail.createFromAccess(access);
            mBodyMap.put("folder_upload_email", access);
            return this;
        }

        public UpdateFolder setOwnedById(String s)
        {
            s = BoxUser.createFromId(s);
            mBodyMap.put("owned_by", s);
            return this;
        }

        public UpdateFolder setSyncState(com.box.androidsdk.content.models.BoxFolder.SyncState syncstate)
        {
            mBodyMap.put("sync_state", syncstate);
            return this;
        }

        public volatile BoxRequestUpdateSharedItem updateSharedLink()
        {
            return updateSharedLink();
        }

        public UpdateSharedFolder updateSharedLink()
        {
            return new UpdateSharedFolder(this);
        }

        public UpdateFolder(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
        }
    }

    public static class UpdateSharedFolder extends BoxRequestUpdateSharedItem
    {

        private static final long serialVersionUID = 0x70be1f2741234cbfL;

        public Boolean getCanDownload()
        {
            return super.getCanDownload();
        }

        public volatile BoxRequest setCanDownload(boolean flag)
        {
            return setCanDownload(flag);
        }

        public UpdateSharedFolder setCanDownload(boolean flag)
        {
            return (UpdateSharedFolder)super.setCanDownload(flag);
        }

        protected UpdateSharedFolder(UpdateFolder updatefolder)
        {
            super(updatefolder);
        }

        public UpdateSharedFolder(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
        }
    }


    public BoxRequestsFolder()
    {
    }
}
