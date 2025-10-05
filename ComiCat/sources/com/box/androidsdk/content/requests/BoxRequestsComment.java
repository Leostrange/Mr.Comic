package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;
import com.box.androidsdk.content.requests.BoxRequest;

public class BoxRequestsComment {

    public static class AddReplyComment extends BoxRequestCommentAdd<BoxComment, AddReplyComment> {
        private static final long serialVersionUID = 8123965031279971513L;

        public AddReplyComment(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxComment.class, str3, boxSession);
            setItemId(str);
            setItemType(BoxComment.TYPE);
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

    public static class DeleteComment extends BoxRequest<BoxVoid, DeleteComment> {
        private static final long serialVersionUID = 8123965031279971588L;
        private final String mId;

        public DeleteComment(String str, String str2, BoxSession boxSession) {
            super(BoxVoid.class, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.DELETE;
            this.mId = str;
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

    public static class GetCommentInfo extends BoxRequestItem<BoxComment, GetCommentInfo> implements BoxCacheableRequest<BoxComment> {
        private static final long serialVersionUID = 8123965031279971517L;

        public GetCommentInfo(String str, String str2, BoxSession boxSession) {
            super(BoxComment.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public BoxComment sendForCachedResult() {
            return (BoxComment) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxComment> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class UpdateComment extends BoxRequest<BoxComment, UpdateComment> {
        private static final long serialVersionUID = 8123965031279971579L;
        String mId;

        public UpdateComment(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxComment.class, str3, boxSession);
            this.mId = str;
            this.mRequestMethod = BoxRequest.Methods.PUT;
            setMessage(str2);
        }

        public String getId() {
            return this.mId;
        }

        public String getMessage() {
            return (String) this.mBodyMap.get("message");
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxComment> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }

        public UpdateComment setMessage(String str) {
            this.mBodyMap.put("message", str);
            return this;
        }
    }
}
