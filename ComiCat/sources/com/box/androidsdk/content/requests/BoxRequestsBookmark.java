package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxBookmark;
import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxItem;
import com.box.androidsdk.content.models.BoxIteratorComments;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequest;

public class BoxRequestsBookmark {

    public static class AddBookmarkToCollection extends BoxRequestCollectionUpdate<BoxBookmark, AddBookmarkToCollection> {
        private static final long serialVersionUID = 8123965031279971541L;

        public AddBookmarkToCollection(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxBookmark.class, str, str3, boxSession);
            setCollectionId(str2);
        }

        public AddBookmarkToCollection setCollectionId(String str) {
            return (AddBookmarkToCollection) super.setCollectionId(str);
        }
    }

    public static class AddCommentToBookmark extends BoxRequestCommentAdd<BoxComment, AddCommentToBookmark> {
        private static final long serialVersionUID = 8123965031279971512L;

        public AddCommentToBookmark(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxComment.class, str3, boxSession);
            setItemId(str);
            setItemType(BoxBookmark.TYPE);
            setMessage(str2);
        }

        public /* bridge */ /* synthetic */ String getItemId() {
            return super.getItemId();
        }

        public /* bridge */ /* synthetic */ String getItemType() {
            return super.getItemType();
        }

        public /* bridge */ /* synthetic */ String getMessage() {
            return super.getMessage();
        }
    }

    public static class CopyBookmark extends BoxRequestItemCopy<BoxBookmark, CopyBookmark> {
        private static final long serialVersionUID = 8123965031279971531L;

        public CopyBookmark(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxBookmark.class, str, str2, str3, boxSession);
        }

        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public /* bridge */ /* synthetic */ String getParentId() {
            return super.getParentId();
        }
    }

    public static class CreateBookmark extends BoxRequestItem<BoxBookmark, CreateBookmark> {
        private static final long serialVersionUID = 8123965031279971526L;

        public CreateBookmark(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxBookmark.class, (String) null, str3, boxSession);
            this.mRequestMethod = BoxRequest.Methods.POST;
            setParentId(str);
            setUrl(str2);
        }

        public String getDescription() {
            return (String) this.mBodyMap.get(BoxItem.FIELD_DESCRIPTION);
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

        public String getUrl() {
            return (String) this.mBodyMap.get("url");
        }

        public CreateBookmark setDescription(String str) {
            this.mBodyMap.put(BoxItem.FIELD_DESCRIPTION, str);
            return this;
        }

        public CreateBookmark setName(String str) {
            this.mBodyMap.put("name", str);
            return this;
        }

        public CreateBookmark setParentId(String str) {
            this.mBodyMap.put("parent", BoxFolder.createFromId(str));
            return this;
        }

        public CreateBookmark setUrl(String str) {
            this.mBodyMap.put("url", str);
            return this;
        }
    }

    public static class DeleteBookmark extends BoxRequestItemDelete<DeleteBookmark> {
        private static final long serialVersionUID = 8123965031279971595L;

        public DeleteBookmark(String str, String str2, BoxSession boxSession) {
            super(str, str2, boxSession);
        }
    }

    public static class DeleteBookmarkFromCollection extends BoxRequestCollectionUpdate<BoxBookmark, DeleteBookmarkFromCollection> {
        private static final long serialVersionUID = 8123965031279971541L;

        public DeleteBookmarkFromCollection(String str, String str2, BoxSession boxSession) {
            super(BoxBookmark.class, str, str2, boxSession);
            setCollectionId((String) null);
        }
    }

    public static class DeleteTrashedBookmark extends BoxRequestItemDelete<DeleteTrashedBookmark> {
        private static final long serialVersionUID = 8123965031279971591L;

        public DeleteTrashedBookmark(String str, String str2, BoxSession boxSession) {
            super(str, str2, boxSession);
        }
    }

    public static class GetBookmarkComments extends BoxRequestItem<BoxIteratorComments, GetBookmarkComments> implements BoxCacheableRequest<BoxIteratorComments> {
        private static final long serialVersionUID = 8123965031279971516L;

        public GetBookmarkComments(String str, String str2, BoxSession boxSession) {
            super(BoxIteratorComments.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public BoxIteratorComments sendForCachedResult() {
            return (BoxIteratorComments) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxIteratorComments> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetBookmarkInfo extends BoxRequestItem<BoxBookmark, GetBookmarkInfo> implements BoxCacheableRequest<BoxBookmark> {
        private static final long serialVersionUID = 8123965031279971508L;

        public GetBookmarkInfo(String str, String str2, BoxSession boxSession) {
            super(BoxBookmark.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public String getIfNoneMatchEtag() {
            return super.getIfNoneMatchEtag();
        }

        public BoxBookmark sendForCachedResult() {
            return (BoxBookmark) super.handleSendForCachedResult();
        }

        public GetBookmarkInfo setIfNoneMatchEtag(String str) {
            return (GetBookmarkInfo) super.setIfNoneMatchEtag(str);
        }

        public BoxFutureTask<BoxBookmark> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetTrashedBookmark extends BoxRequestItem<BoxBookmark, GetTrashedBookmark> implements BoxCacheableRequest<BoxBookmark> {
        private static final long serialVersionUID = 8123965031279971542L;

        public GetTrashedBookmark(String str, String str2, BoxSession boxSession) {
            super(BoxBookmark.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public String getIfNoneMatchEtag() {
            return super.getIfNoneMatchEtag();
        }

        public BoxBookmark sendForCachedResult() {
            return (BoxBookmark) super.handleSendForCachedResult();
        }

        public GetTrashedBookmark setIfNoneMatchEtag(String str) {
            return (GetTrashedBookmark) super.setIfNoneMatchEtag(str);
        }

        public BoxFutureTask<BoxBookmark> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class RestoreTrashedBookmark extends BoxRequestItemRestoreTrashed<BoxBookmark, RestoreTrashedBookmark> {
        private static final long serialVersionUID = 8123965031279971536L;

        public RestoreTrashedBookmark(String str, String str2, BoxSession boxSession) {
            super(BoxBookmark.class, str, str2, boxSession);
        }

        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public /* bridge */ /* synthetic */ String getParentId() {
            return super.getParentId();
        }
    }

    public static class UpdateBookmark extends BoxRequestItemUpdate<BoxBookmark, UpdateBookmark> {
        private static final long serialVersionUID = 8123965031279971523L;

        public UpdateBookmark(String str, String str2, BoxSession boxSession) {
            super(BoxBookmark.class, str, str2, boxSession);
        }

        public String getUrl() {
            return (String) this.mBodyMap.get("url");
        }

        public UpdateBookmark setUrl(String str) {
            this.mBodyMap.put("url", str);
            return this;
        }

        public UpdateSharedBookmark updateSharedLink() {
            return new UpdateSharedBookmark(this);
        }
    }

    public static class UpdateSharedBookmark extends BoxRequestUpdateSharedItem<BoxBookmark, UpdateSharedBookmark> {
        private static final long serialVersionUID = 8123965031279971518L;

        public UpdateSharedBookmark(UpdateBookmark updateBookmark) {
            super(updateBookmark);
        }

        public UpdateSharedBookmark(String str, String str2, BoxSession boxSession) {
            super(BoxBookmark.class, str, str2, boxSession);
        }
    }
}
