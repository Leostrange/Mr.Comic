package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequestsComment;

public class BoxApiComment extends BoxApi {
    public static final String COMMENTS_ENDPOINT = "/comments";

    public BoxApiComment(BoxSession boxSession) {
        super(boxSession);
    }

    public BoxRequestsComment.AddReplyComment getAddCommentReplyRequest(String str, String str2) {
        return new BoxRequestsComment.AddReplyComment(str, str2, getCommentsUrl(), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getCommentInfoUrl(String str) {
        return String.format("%s/%s", new Object[]{getCommentsUrl(), str});
    }

    /* access modifiers changed from: protected */
    public String getCommentsUrl() {
        return getBaseUri() + COMMENTS_ENDPOINT;
    }

    public BoxRequestsComment.DeleteComment getDeleteRequest(String str) {
        return new BoxRequestsComment.DeleteComment(str, getCommentInfoUrl(str), this.mSession);
    }

    public BoxRequestsComment.GetCommentInfo getInfoRequest(String str) {
        return new BoxRequestsComment.GetCommentInfo(str, getCommentInfoUrl(str), this.mSession);
    }

    public BoxRequestsComment.UpdateComment getUpdateRequest(String str, String str2) {
        return new BoxRequestsComment.UpdateComment(str, str2, getCommentInfoUrl(str), this.mSession);
    }
}
