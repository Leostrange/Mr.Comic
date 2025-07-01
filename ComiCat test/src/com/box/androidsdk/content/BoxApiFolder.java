// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiFolder extends BoxApi
{

    public BoxApiFolder(BoxSession boxsession)
    {
        super(boxsession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.AddFolderToCollection getAddToCollectionRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.AddFolderToCollection(s, s1, getFolderInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.GetCollaborations getCollaborationsRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.GetCollaborations(s, getFolderCollaborationsUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.CopyFolder getCopyRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.CopyFolder(s, s1, getFolderCopyUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.CreateFolder getCreateRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.CreateFolder(s, s1, getFoldersUrl(), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateSharedFolder getCreateSharedLinkRequest(String s)
    {
        return (com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateSharedFolder)(new com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateSharedFolder(s, getFolderInfoUrl(s), mSession)).setAccess(null);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.DeleteFolderFromCollection getDeleteFromCollectionRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.DeleteFolderFromCollection(s, getFolderInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.DeleteFolder getDeleteRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.DeleteFolder(s, getFolderInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.DeleteTrashedFolder getDeleteTrashedFolderRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.DeleteTrashedFolder(s, getTrashedFolderUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder getDisableSharedLinkRequest(String s)
    {
        return (com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder)(new com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder(s, getFolderInfoUrl(s), mSession)).setSharedLink(null);
    }

    protected String getFolderCollaborationsUrl(String s)
    {
        return (new StringBuilder()).append(getFolderInfoUrl(s)).append("/collaborations").toString();
    }

    protected String getFolderCopyUrl(String s)
    {
        return (new StringBuilder()).append(getFolderInfoUrl(s)).append("/copy").toString();
    }

    protected String getFolderInfoUrl(String s)
    {
        return String.format("%s/%s", new Object[] {
            getFoldersUrl(), s
        });
    }

    protected String getFolderItemsUrl(String s)
    {
        return (new StringBuilder()).append(getFolderInfoUrl(s)).append("/items").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.GetFolderWithAllItems getFolderWithAllItems(String s)
    {
        s = new com.box.androidsdk.content.requests.BoxRequestsFolder.GetFolderWithAllItems(s, getFolderInfoUrl(s), getFolderItemsUrl(s), mSession);
        s.setMaximumLimit(com.box.androidsdk.content.requests.BoxRequestsFolder.GetFolderWithAllItems.DEFAULT_MAX_LIMIT);
        return s;
    }

    protected String getFoldersUrl()
    {
        return String.format("%s/folders", new Object[] {
            getBaseUri()
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.GetFolderInfo getInfoRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.GetFolderInfo(s, getFolderInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.GetFolderItems getItemsRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.GetFolderItems(s, getFolderItemsUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder getMoveRequest(String s, String s1)
    {
        return (com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder)(new com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder(s, getFolderInfoUrl(s), mSession)).setParentId(s1);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder getRenameRequest(String s, String s1)
    {
        return (com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder)(new com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder(s, getFolderInfoUrl(s), mSession)).setName(s1);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.RestoreTrashedFolder getRestoreTrashedFolderRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.RestoreTrashedFolder(s, getFolderInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.GetTrashedFolder getTrashedFolderRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.GetTrashedFolder(s, getTrashedFolderUrl(s), mSession);
    }

    protected String getTrashedFolderUrl(String s)
    {
        return (new StringBuilder()).append(getFolderInfoUrl(s)).append("/trash").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.GetTrashedItems getTrashedItemsRequest()
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.GetTrashedItems(getTrashedItemsUrl(), mSession);
    }

    protected String getTrashedItemsUrl()
    {
        return (new StringBuilder()).append(getFoldersUrl()).append("/trash/items").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder getUpdateRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFolder.UpdateFolder(s, getFolderInfoUrl(s), mSession);
    }
}
