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
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonObject;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class BoxRequestsShare {

    public static class AddCollaboration extends BoxRequest<BoxCollaboration, AddCollaboration> {
        public static final String ERROR_CODE_USER_ALREADY_COLLABORATOR = "user_already_collaborator";
        private static final long serialVersionUID = 8123965031279971574L;
        private final String mFolderId;

        public AddCollaboration(String str, String str2, BoxCollaboration.Role role, BoxCollaborator boxCollaborator, BoxSession boxSession) {
            super(BoxCollaboration.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.POST;
            this.mFolderId = str2;
            setFolder(str2);
            setAccessibleBy(boxCollaborator.getId(), (String) null, boxCollaborator.getType());
            this.mBodyMap.put("role", role.toString());
        }

        public AddCollaboration(String str, String str2, BoxCollaboration.Role role, String str3, BoxSession boxSession) {
            super(BoxCollaboration.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.POST;
            this.mFolderId = str2;
            setFolder(str2);
            setAccessibleBy((String) null, str3, "user");
            this.mBodyMap.put("role", role.toString());
        }

        private void setAccessibleBy(String str, String str2, String str3) {
            Object boxGroup;
            JsonObject jsonObject = new JsonObject();
            if (!SdkUtils.isEmptyString(str)) {
                jsonObject.add(BoxEntity.FIELD_ID, str);
            }
            if (!SdkUtils.isEmptyString(str2)) {
                jsonObject.add(BoxUser.FIELD_LOGIN, str2);
            }
            jsonObject.add("type", str3);
            if (str3.equals("user")) {
                boxGroup = new BoxUser(jsonObject);
            } else if (str3.equals(BoxGroup.TYPE)) {
                boxGroup = new BoxGroup(jsonObject);
            } else {
                throw new IllegalArgumentException("AccessibleBy property can only be set with type BoxUser.TYPE or BoxGroup.TYPE");
            }
            this.mBodyMap.put("accessible_by", boxGroup);
        }

        private void setFolder(String str) {
            this.mBodyMap.put("item", BoxFolder.createFromId(str));
        }

        public BoxCollaborator getAccessibleBy() {
            if (this.mBodyMap.containsKey("accessible_by")) {
                return (BoxCollaborator) this.mBodyMap.get("accessible_by");
            }
            return null;
        }

        public String getFolderId() {
            return this.mFolderId;
        }

        public AddCollaboration notifyCollaborators(boolean z) {
            this.mQueryMap.put("notify", Boolean.toString(z));
            return this;
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxCollaboration> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }
    }

    public static class DeleteCollaboration extends BoxRequest<BoxVoid, DeleteCollaboration> {
        private static final long serialVersionUID = 8123965031279971504L;
        private String mId;

        public DeleteCollaboration(String str, String str2, BoxSession boxSession) {
            super(BoxVoid.class, str2, boxSession);
            this.mId = str;
            this.mRequestMethod = BoxRequest.Methods.DELETE;
        }

        public String getId() {
            return this.mId;
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxVoid> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }
    }

    public static class GetCollaborationInfo extends BoxRequest<BoxCollaboration, GetCollaborationInfo> implements BoxCacheableRequest<BoxCollaboration> {
        private static final long serialVersionUID = 8123965031279971581L;
        private final String mId;

        public GetCollaborationInfo(String str, String str2, BoxSession boxSession) {
            super(BoxCollaboration.class, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
            this.mId = str;
        }

        public String getId() {
            return this.mId;
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxCollaboration> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }

        public BoxCollaboration sendForCachedResult() {
            return (BoxCollaboration) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxCollaboration> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetPendingCollaborations extends BoxRequest<BoxIteratorCollaborations, GetPendingCollaborations> implements BoxCacheableRequest<BoxIteratorCollaborations> {
        private static final long serialVersionUID = 8123965031279971581L;

        public GetPendingCollaborations(String str, BoxSession boxSession) {
            super(BoxIteratorCollaborations.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
            this.mQueryMap.put("status", BoxCollaboration.Status.PENDING.toString());
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxIteratorCollaborations> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }

        public BoxIteratorCollaborations sendForCachedResult() {
            return (BoxIteratorCollaborations) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxIteratorCollaborations> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetSharedLink extends BoxRequestItem<BoxItem, GetSharedLink> implements BoxCacheableRequest<BoxItem> {
        private static final long serialVersionUID = 8123965031279971573L;

        public GetSharedLink(String str, BoxSharedLinkSession boxSharedLinkSession) {
            super(BoxItem.class, (String) null, str, boxSharedLinkSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
            setRequestHandler(createRequestHandler(this));
        }

        public static BoxRequest.BoxRequestHandler<GetSharedLink> createRequestHandler(GetSharedLink getSharedLink) {
            return new BoxRequest.BoxRequestHandler<GetSharedLink>(getSharedLink) {
                public final <T extends BoxObject> T onResponse(Class<T> cls, BoxHttpResponse boxHttpResponse) {
                    if (Thread.currentThread().isInterrupted()) {
                        disconnectForInterrupt(boxHttpResponse);
                        throw new BoxException("Request cancelled ", (Throwable) new InterruptedException());
                    } else if (boxHttpResponse.getResponseCode() == 429) {
                        return retryRateLimited(boxHttpResponse);
                    } else {
                        String contentType = boxHttpResponse.getContentType();
                        T boxEntity = new BoxEntity();
                        if (!contentType.contains(BoxRequest.ContentTypes.JSON.toString())) {
                            return boxEntity;
                        }
                        String stringBody = boxHttpResponse.getStringBody();
                        boxEntity.createFromJson(stringBody);
                        if (boxEntity.getType().equals(BoxFolder.TYPE)) {
                            T boxFolder = new BoxFolder();
                            boxFolder.createFromJson(stringBody);
                            return boxFolder;
                        } else if (boxEntity.getType().equals(BoxFile.TYPE)) {
                            T boxFile = new BoxFile();
                            boxFile.createFromJson(stringBody);
                            return boxFile;
                        } else if (!boxEntity.getType().equals(BoxBookmark.TYPE)) {
                            return boxEntity;
                        } else {
                            T boxBookmark = new BoxBookmark();
                            boxBookmark.createFromJson(stringBody);
                            return boxBookmark;
                        }
                    }
                }
            };
        }

        private void readObject(ObjectInputStream objectInputStream) {
            objectInputStream.defaultReadObject();
            this.mRequestHandler = createRequestHandler(this);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) {
            objectOutputStream.defaultWriteObject();
        }

        public String getIfNoneMatchEtag() {
            return super.getIfNoneMatchEtag();
        }

        public BoxItem sendForCachedResult() {
            return (BoxItem) super.handleSendForCachedResult();
        }

        public GetSharedLink setIfNoneMatchEtag(String str) {
            return (GetSharedLink) super.setIfNoneMatchEtag(str);
        }

        public BoxFutureTask<BoxItem> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class UpdateCollaboration extends BoxRequest<BoxCollaboration, UpdateCollaboration> {
        private static final long serialVersionUID = 8123965031279971597L;
        private String mId;

        public UpdateCollaboration(String str, String str2, BoxSession boxSession) {
            super(BoxCollaboration.class, str2, boxSession);
            this.mId = str;
            this.mRequestMethod = BoxRequest.Methods.PUT;
        }

        public String getId() {
            return this.mId;
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxCollaboration> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }

        public UpdateCollaboration setNewRole(BoxCollaboration.Role role) {
            this.mBodyMap.put("role", role.toString());
            return this;
        }

        public UpdateCollaboration setNewStatus(String str) {
            this.mBodyMap.put("status", str);
            return this;
        }
    }

    public static class UpdateOwner extends BoxRequest<BoxVoid, UpdateOwner> {
        private static final long serialVersionUID = 8123965031239671597L;
        private String mId;

        public UpdateOwner(String str, String str2, BoxSession boxSession) {
            super(BoxVoid.class, str2, boxSession);
            this.mId = str;
            this.mRequestMethod = BoxRequest.Methods.PUT;
            this.mBodyMap.put("role", BoxCollaboration.Role.OWNER.toString());
        }

        public String getId() {
            return this.mId;
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxVoid> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }
    }
}
