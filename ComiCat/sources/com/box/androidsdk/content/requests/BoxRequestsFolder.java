package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxItem;
import com.box.androidsdk.content.models.BoxIterator;
import com.box.androidsdk.content.models.BoxIteratorCollaborations;
import com.box.androidsdk.content.models.BoxIteratorItems;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUploadEmail;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.models.BoxVoid;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class BoxRequestsFolder {

    public static class AddFolderToCollection extends BoxRequestCollectionUpdate<BoxFolder, AddFolderToCollection> {
        private static final long serialVersionUID = 8123965031279971539L;

        public AddFolderToCollection(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxFolder.class, str, str3, boxSession);
            setCollectionId(str2);
            this.mRequestMethod = BoxRequest.Methods.PUT;
        }

        public AddFolderToCollection setCollectionId(String str) {
            return (AddFolderToCollection) super.setCollectionId(str);
        }
    }

    public static class CopyFolder extends BoxRequestItemCopy<BoxFolder, CopyFolder> {
        private static final long serialVersionUID = 8123965031279971532L;

        public CopyFolder(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxFolder.class, str, str2, str3, boxSession);
        }

        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public /* bridge */ /* synthetic */ String getParentId() {
            return super.getParentId();
        }
    }

    public static class CreateFolder extends BoxRequestItem<BoxFolder, CreateFolder> {
        private static final long serialVersionUID = 8123965031279971505L;

        public CreateFolder(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxFolder.class, (String) null, str3, boxSession);
            this.mRequestMethod = BoxRequest.Methods.POST;
            setParentId(str);
            setName(str2);
        }

        public String getName() {
            return (String) this.mBodyMap.get("name");
        }

        public String getParentId() {
            if (this.mBodyMap.containsKey("parent")) {
                return (String) this.mBodyMap.get(BoxEntity.FIELD_ID);
            }
            return null;
        }

        public CreateFolder setName(String str) {
            this.mBodyMap.put("name", str);
            return this;
        }

        public CreateFolder setParentId(String str) {
            this.mBodyMap.put("parent", BoxFolder.createFromId(str));
            return this;
        }
    }

    public static class DeleteFolder extends BoxRequestItemDelete<DeleteFolder> {
        private static final String FALSE = "false";
        private static final String FIELD_RECURSIVE = "recursive";
        private static final String TRUE = "true";
        private static final long serialVersionUID = 8123965031279971594L;

        public DeleteFolder(String str, String str2, BoxSession boxSession) {
            super(str, str2, boxSession);
            setRecursive(true);
        }

        public Boolean getRecursive() {
            return Boolean.valueOf(TRUE.equals(this.mQueryMap.get(FIELD_RECURSIVE)));
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxVoid> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }

        public DeleteFolder setRecursive(boolean z) {
            this.mQueryMap.put(FIELD_RECURSIVE, z ? TRUE : FALSE);
            return this;
        }
    }

    public static class DeleteFolderFromCollection extends BoxRequestCollectionUpdate<BoxFolder, AddFolderToCollection> {
        private static final long serialVersionUID = 8123965031279971540L;

        public DeleteFolderFromCollection(String str, String str2, BoxSession boxSession) {
            super(BoxFolder.class, str, str2, boxSession);
            setCollectionId((String) null);
        }
    }

    public static class DeleteTrashedFolder extends BoxRequestItemDelete<DeleteTrashedFolder> {
        private static final long serialVersionUID = 8123965031279971592L;

        public DeleteTrashedFolder(String str, String str2, BoxSession boxSession) {
            super(str, str2, boxSession);
        }
    }

    public static class GetCollaborations extends BoxRequestItem<BoxIteratorCollaborations, GetCollaborations> implements BoxCacheableRequest<BoxIteratorCollaborations> {
        private static final long serialVersionUID = 8123965031279971515L;

        public GetCollaborations(String str, String str2, BoxSession boxSession) {
            super(BoxIteratorCollaborations.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public BoxIteratorCollaborations sendForCachedResult() {
            return (BoxIteratorCollaborations) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxIteratorCollaborations> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetFolderInfo extends BoxRequestItem<BoxFolder, GetFolderInfo> implements BoxCacheableRequest<BoxFolder> {
        private static final long serialVersionUID = 8123965031279971529L;

        public GetFolderInfo(String str, String str2, BoxSession boxSession) {
            super(BoxFolder.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public String getIfNoneMatchEtag() {
            return super.getIfNoneMatchEtag();
        }

        public BoxFolder sendForCachedResult() {
            return (BoxFolder) super.handleSendForCachedResult();
        }

        public GetFolderInfo setIfNoneMatchEtag(String str) {
            return (GetFolderInfo) super.setIfNoneMatchEtag(str);
        }

        public GetFolderInfo setLimit(int i) {
            this.mQueryMap.put(BoxIterator.FIELD_LIMIT, String.valueOf(i));
            return this;
        }

        public GetFolderInfo setOffset(int i) {
            this.mQueryMap.put(BoxIterator.FIELD_OFFSET, String.valueOf(i));
            return this;
        }

        public BoxFutureTask<BoxFolder> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetFolderItems extends BoxRequestItem<BoxIteratorItems, GetFolderItems> implements BoxCacheableRequest<BoxIteratorItems> {
        private static final String DEFAULT_LIMIT = "1000";
        private static final String DEFAULT_OFFSET = "0";
        private static final String LIMIT = "limit";
        private static final String OFFSET = "offset";
        private static final long serialVersionUID = 8123965031279971524L;

        public GetFolderItems(String str, String str2, BoxSession boxSession) {
            super(BoxIteratorItems.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
            this.mQueryMap.put("limit", DEFAULT_LIMIT);
            this.mQueryMap.put("offset", "0");
        }

        public BoxIteratorItems sendForCachedResult() {
            return (BoxIteratorItems) super.handleSendForCachedResult();
        }

        public GetFolderItems setLimit(int i) {
            this.mQueryMap.put("limit", String.valueOf(i));
            return this;
        }

        public GetFolderItems setOffset(int i) {
            this.mQueryMap.put("offset", String.valueOf(i));
            return this;
        }

        public BoxFutureTask<BoxIteratorItems> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetFolderWithAllItems extends BoxRequestItem<BoxFolder, GetFolderWithAllItems> implements BoxCacheableRequest<BoxFolder> {
        public static int DEFAULT_MAX_LIMIT = 4000;
        private static int LIMIT = 100;
        private static final long serialVersionUID = -146995041590363404L;
        private String mFolderId;
        private String mItemsUrl;
        private int mMaxLimit = -1;

        public GetFolderWithAllItems(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxFolder.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
            this.mFolderId = str;
            this.mItemsUrl = str3;
        }

        public String getIfNoneMatchEtag() {
            return super.getIfNoneMatchEtag();
        }

        public BoxFolder onSend() {
            String str = (String) this.mQueryMap.get(QUERY_FIELDS);
            GetFolderInfo limit = ((GetFolderInfo) new GetFolderInfo(this.mFolderId, this.mRequestUrlString, this.mSession) {
                /* access modifiers changed from: protected */
                public void onSendCompleted(BoxResponse<BoxFolder> boxResponse) {
                }
            }.setFields(str)).setLimit(LIMIT);
            if (!SdkUtils.isBlank(getIfNoneMatchEtag())) {
                limit.setIfNoneMatchEtag(getIfNoneMatchEtag());
            }
            BoxFolder boxFolder = (BoxFolder) limit.send();
            BoxRequestBatch executor = new BoxRequestBatch().setExecutor(SdkUtils.createDefaultThreadPoolExecutor(10, 10, 3600, TimeUnit.SECONDS));
            BoxIteratorItems itemCollection = boxFolder.getItemCollection();
            int intValue = itemCollection.offset().intValue();
            int intValue2 = itemCollection.limit().intValue();
            long longValue = (this.mMaxLimit <= 0 || ((long) this.mMaxLimit) >= itemCollection.fullSize().longValue()) ? itemCollection.fullSize().longValue() : (long) this.mMaxLimit;
            int i = intValue2;
            int i2 = intValue;
            while (((long) (i2 + i)) < longValue) {
                int i3 = i2 + i;
                int i4 = LIMIT;
                executor.addRequest(((GetFolderItems) new GetFolderItems(this.mFolderId, this.mItemsUrl, this.mSession) {
                    /* access modifiers changed from: protected */
                    public void onSendCompleted(BoxResponse<BoxIteratorItems> boxResponse) {
                    }
                }.setFields(str)).setOffset(i3).setLimit(i4));
                i = i4;
                i2 = i3;
            }
            JsonObject jsonObject = boxFolder.toJsonObject();
            JsonArray asArray = jsonObject.get(BoxFolder.FIELD_ITEM_COLLECTION).asObject().get(BoxIterator.FIELD_ENTRIES).asArray();
            Iterator<BoxResponse> it = ((BoxResponseBatch) executor.send()).getResponses().iterator();
            while (it.hasNext()) {
                BoxResponse next = it.next();
                if (next.isSuccess()) {
                    Iterator it2 = ((BoxIteratorItems) next.getResult()).iterator();
                    while (it2.hasNext()) {
                        asArray.add((JsonValue) ((BoxItem) it2.next()).toJsonObject());
                    }
                } else {
                    throw ((BoxException) next.getException());
                }
            }
            return new BoxFolder(jsonObject);
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxFolder> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }

        public BoxFolder sendForCachedResult() {
            return (BoxFolder) super.handleSendForCachedResult();
        }

        public GetFolderWithAllItems setIfNoneMatchEtag(String str) {
            return (GetFolderWithAllItems) super.setIfNoneMatchEtag(str);
        }

        public GetFolderWithAllItems setMaximumLimit(int i) {
            this.mMaxLimit = i;
            return this;
        }

        public BoxFutureTask<BoxFolder> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetTrashedFolder extends BoxRequestItem<BoxFolder, GetTrashedFolder> implements BoxCacheableRequest<BoxFolder> {
        private static final long serialVersionUID = 8123965031279971509L;

        public GetTrashedFolder(String str, String str2, BoxSession boxSession) {
            super(BoxFolder.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public String getIfNoneMatchEtag() {
            return super.getIfNoneMatchEtag();
        }

        public BoxFolder sendForCachedResult() {
            return (BoxFolder) super.handleSendForCachedResult();
        }

        public GetTrashedFolder setIfNoneMatchEtag(String str) {
            return (GetTrashedFolder) super.setIfNoneMatchEtag(str);
        }

        public BoxFutureTask<BoxFolder> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetTrashedItems extends BoxRequest<BoxIteratorItems, GetTrashedItems> implements BoxCacheableRequest<BoxIteratorItems> {
        private static final long serialVersionUID = 8123965031279971576L;

        public GetTrashedItems(String str, BoxSession boxSession) {
            super(BoxIteratorItems.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public BoxIteratorItems sendForCachedResult() {
            return (BoxIteratorItems) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxIteratorItems> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class RestoreTrashedFolder extends BoxRequestItemRestoreTrashed<BoxFolder, RestoreTrashedFolder> {
        private static final long serialVersionUID = 8123965031279971534L;

        public RestoreTrashedFolder(String str, String str2, BoxSession boxSession) {
            super(BoxFolder.class, str, str2, boxSession);
        }

        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public /* bridge */ /* synthetic */ String getParentId() {
            return super.getParentId();
        }
    }

    public static class UpdateFolder extends BoxRequestItemUpdate<BoxFolder, UpdateFolder> {
        private static final long serialVersionUID = 8123965031279971522L;

        public UpdateFolder(String str, String str2, BoxSession boxSession) {
            super(BoxFolder.class, str, str2, boxSession);
        }

        public String getOwnedById() {
            if (this.mBodyMap.containsKey(BoxItem.FIELD_OWNED_BY)) {
                return ((BoxUser) this.mBodyMap.get(BoxItem.FIELD_OWNED_BY)).getId();
            }
            return null;
        }

        public BoxFolder.SyncState getSyncState() {
            if (this.mBodyMap.containsKey(BoxFolder.FIELD_SYNC_STATE)) {
                return (BoxFolder.SyncState) this.mBodyMap.get(BoxFolder.FIELD_SYNC_STATE);
            }
            return null;
        }

        public BoxUploadEmail.Access getUploadEmailAccess() {
            if (this.mBodyMap.containsKey(BoxFolder.FIELD_FOLDER_UPLOAD_EMAIL)) {
                return ((BoxUploadEmail) this.mBodyMap.get(BoxFolder.FIELD_FOLDER_UPLOAD_EMAIL)).getAccess();
            }
            return null;
        }

        /* access modifiers changed from: protected */
        public void parseHashMapEntry(JsonObject jsonObject, Map.Entry<String, Object> entry) {
            if (entry.getKey().equals(BoxFolder.FIELD_FOLDER_UPLOAD_EMAIL)) {
                jsonObject.add(entry.getKey(), parseJsonObject(entry.getValue()));
            } else if (entry.getKey().equals(BoxItem.FIELD_OWNED_BY)) {
                jsonObject.add(entry.getKey(), parseJsonObject(entry.getValue()));
            } else if (entry.getKey().equals(BoxFolder.FIELD_SYNC_STATE)) {
                jsonObject.add(entry.getKey(), ((BoxFolder.SyncState) entry.getValue()).toString());
            } else {
                super.parseHashMapEntry(jsonObject, entry);
            }
        }

        public UpdateFolder setFolderUploadEmailAccess(BoxUploadEmail.Access access) {
            this.mBodyMap.put(BoxFolder.FIELD_FOLDER_UPLOAD_EMAIL, BoxUploadEmail.createFromAccess(access));
            return this;
        }

        public UpdateFolder setOwnedById(String str) {
            this.mBodyMap.put(BoxItem.FIELD_OWNED_BY, BoxUser.createFromId(str));
            return this;
        }

        public UpdateFolder setSyncState(BoxFolder.SyncState syncState) {
            this.mBodyMap.put(BoxFolder.FIELD_SYNC_STATE, syncState);
            return this;
        }

        public UpdateSharedFolder updateSharedLink() {
            return new UpdateSharedFolder(this);
        }
    }

    public static class UpdateSharedFolder extends BoxRequestUpdateSharedItem<BoxFolder, UpdateSharedFolder> {
        private static final long serialVersionUID = 8123965031279971519L;

        protected UpdateSharedFolder(UpdateFolder updateFolder) {
            super(updateFolder);
        }

        public UpdateSharedFolder(String str, String str2, BoxSession boxSession) {
            super(BoxFolder.class, str, str2, boxSession);
        }

        public Boolean getCanDownload() {
            return super.getCanDownload();
        }

        public UpdateSharedFolder setCanDownload(boolean z) {
            return (UpdateSharedFolder) super.setCanDownload(z);
        }
    }
}
