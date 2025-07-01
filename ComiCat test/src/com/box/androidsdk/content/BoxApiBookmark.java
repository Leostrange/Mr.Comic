// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiBookmark extends BoxApi
{

    public BoxApiBookmark(BoxSession boxsession)
    {
        super(boxsession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.AddCommentToBookmark getAddCommentRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.AddCommentToBookmark(s, s1, getCommentUrl(), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.AddBookmarkToCollection getAddToCollectionRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.AddBookmarkToCollection(s, s1, getBookmarkInfoUrl(s), mSession);
    }

    protected String getBookmarkCommentsUrl(String s)
    {
        return (new StringBuilder()).append(getBookmarkInfoUrl(s)).append("/comments").toString();
    }

    protected String getBookmarkCopyUrl(String s)
    {
        return String.format((new StringBuilder()).append(getBookmarkInfoUrl(s)).append("/copy").toString(), new Object[0]);
    }

    protected String getBookmarkInfoUrl(String s)
    {
        return String.format("%s/%s", new Object[] {
            getBookmarksUrl(), s
        });
    }

    protected String getBookmarksUrl()
    {
        return String.format("%s/web_links", new Object[] {
            getBaseUri()
        });
    }

    protected String getCommentUrl()
    {
        return (new StringBuilder()).append(getBaseUri()).append("/comments").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.GetBookmarkComments getCommentsRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.GetBookmarkComments(s, getBookmarkCommentsUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.CopyBookmark getCopyRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.CopyBookmark(s, s1, getBookmarkCopyUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.CreateBookmark getCreateRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.CreateBookmark(s, s1, getBookmarksUrl(), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateSharedBookmark getCreateSharedLinkRequest(String s)
    {
        return (com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateSharedBookmark)(new com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateSharedBookmark(s, getBookmarkInfoUrl(s), mSession)).setAccess(null);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.DeleteBookmarkFromCollection getDeleteFromCollectionRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.DeleteBookmarkFromCollection(s, getBookmarkInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.DeleteBookmark getDeleteRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.DeleteBookmark(s, getBookmarkInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.DeleteTrashedBookmark getDeleteTrashedBookmarkRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.DeleteTrashedBookmark(s, getTrashedBookmarkUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateBookmark getDisableSharedLinkRequest(String s)
    {
        return (com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateBookmark)(new com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateBookmark(s, getBookmarkInfoUrl(s), mSession)).setSharedLink(null);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.GetBookmarkInfo getInfoRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.GetBookmarkInfo(s, getBookmarkInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateBookmark getMoveRequest(String s, String s1)
    {
        s = new com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateBookmark(s, getBookmarkInfoUrl(s), mSession);
        s.setParentId(s1);
        return s;
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateBookmark getRenameRequest(String s, String s1)
    {
        s = new com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateBookmark(s, getBookmarkInfoUrl(s), mSession);
        s.setName(s1);
        return s;
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.RestoreTrashedBookmark getRestoreTrashedBookmarkRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.RestoreTrashedBookmark(s, getBookmarkInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.GetTrashedBookmark getTrashedBookmarkRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.GetTrashedBookmark(s, getTrashedBookmarkUrl(s), mSession);
    }

    protected String getTrashedBookmarkUrl(String s)
    {
        return (new StringBuilder()).append(getBookmarkInfoUrl(s)).append("/trash").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateBookmark getUpdateRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsBookmark.UpdateBookmark(s, getBookmarkInfoUrl(s), mSession);
    }
}
