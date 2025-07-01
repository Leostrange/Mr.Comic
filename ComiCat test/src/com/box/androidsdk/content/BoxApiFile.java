// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiFile extends BoxApi
{

    public BoxApiFile(BoxSession boxsession)
    {
        super(boxsession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.AddCommentToFile getAddCommentRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.AddCommentToFile(s, s1, getCommentUrl(), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.AddTaggedCommentToFile getAddTaggedCommentRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.AddTaggedCommentToFile(s, s1, getCommentUrl(), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.AddFileToCollection getAddToCollectionRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.AddFileToCollection(s, s1, getFileInfoUrl(s), mSession);
    }

    protected String getCommentUrl()
    {
        return (new StringBuilder()).append(getBaseUri()).append("/comments").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.GetFileComments getCommentsRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.GetFileComments(s, getFileCommentsUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.CopyFile getCopyRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.CopyFile(s, s1, getFileCopyUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.UpdatedSharedFile getCreateSharedLinkRequest(String s)
    {
        return (com.box.androidsdk.content.requests.BoxRequestsFile.UpdatedSharedFile)(new com.box.androidsdk.content.requests.BoxRequestsFile.UpdatedSharedFile(s, getFileInfoUrl(s), mSession)).setAccess(null);
    }

    protected String getDeleteFileVersionUrl(String s, String s1)
    {
        return String.format(Locale.ENGLISH, "%s/%s", new Object[] {
            getFileVersionsUrl(s), s1
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DeleteFileFromCollection getDeleteFromCollectionRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.DeleteFileFromCollection(s, getFileInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DeleteFile getDeleteRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.DeleteFile(s, getFileInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DeleteTrashedFile getDeleteTrashedFileRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.DeleteTrashedFile(s, getTrashedFileUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DeleteFileVersion getDeleteVersionRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.DeleteFileVersion(s1, getDeleteFileVersionUrl(s, s1), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.UpdateFile getDisableSharedLinkRequest(String s)
    {
        return (com.box.androidsdk.content.requests.BoxRequestsFile.UpdateFile)(new com.box.androidsdk.content.requests.BoxRequestsFile.UpdateFile(s, getFileInfoUrl(s), mSession)).setSharedLink(null);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile getDownloadRequest(File file, String s)
    {
        if (!file.exists())
        {
            throw new FileNotFoundException();
        } else
        {
            return new com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile(file, getFileDownloadUrl(s), mSession);
        }
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile getDownloadRequest(OutputStream outputstream, String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile(outputstream, getFileDownloadUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DownloadThumbnail getDownloadThumbnailRequest(File file, String s)
    {
        if (!file.exists())
        {
            throw new FileNotFoundException();
        } else
        {
            return new com.box.androidsdk.content.requests.BoxRequestsFile.DownloadThumbnail(s, file, getThumbnailFileDownloadUrl(s), mSession);
        }
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DownloadThumbnail getDownloadThumbnailRequest(OutputStream outputstream, String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.DownloadThumbnail(s, outputstream, getThumbnailFileDownloadUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile getDownloadUrlRequest(File file, String s)
    {
        if (!file.exists())
        {
            throw new FileNotFoundException();
        } else
        {
            return new com.box.androidsdk.content.requests.BoxRequestsFile.DownloadFile(file, s, mSession);
        }
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.GetEmbedLinkFileInfo getEmbedLinkRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.GetEmbedLinkFileInfo(s, getFileInfoUrl(s), mSession);
    }

    protected String getFileCommentsUrl(String s)
    {
        return (new StringBuilder()).append(getFileInfoUrl(s)).append("/comments").toString();
    }

    protected String getFileCopyUrl(String s)
    {
        return String.format(Locale.ENGLISH, (new StringBuilder()).append(getFileInfoUrl(s)).append("/copy").toString(), new Object[0]);
    }

    protected String getFileDownloadUrl(String s)
    {
        return (new StringBuilder()).append(getFileInfoUrl(s)).append("/content").toString();
    }

    protected String getFileInfoUrl(String s)
    {
        return String.format(Locale.ENGLISH, "%s/%s", new Object[] {
            getFilesUrl(), s
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.FilePreviewed getFilePreviewedRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.FilePreviewed(s, getPreviewFileUrl(), mSession);
    }

    protected String getFileUploadNewVersionUrl(String s)
    {
        return String.format(Locale.ENGLISH, "%s/files/%s/content", new Object[] {
            getBaseUploadUri(), s
        });
    }

    protected String getFileUploadUrl()
    {
        return String.format(Locale.ENGLISH, "%s/files/content", new Object[] {
            getBaseUploadUri()
        });
    }

    protected String getFileVersionsUrl(String s)
    {
        return (new StringBuilder()).append(getFileInfoUrl(s)).append("/versions").toString();
    }

    protected String getFilesUrl()
    {
        return String.format(Locale.ENGLISH, "%s/files", new Object[] {
            getBaseUri()
        });
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.GetFileInfo getInfoRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.GetFileInfo(s, getFileInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.UpdateFile getMoveRequest(String s, String s1)
    {
        s = new com.box.androidsdk.content.requests.BoxRequestsFile.UpdateFile(s, getFileInfoUrl(s), mSession);
        s.setParentId(s1);
        return s;
    }

    protected String getPreviewFileUrl()
    {
        return (new StringBuilder()).append(getBaseUri()).append("/events").toString();
    }

    protected String getPromoteFileVersionUrl(String s)
    {
        return (new StringBuilder()).append(getFileVersionsUrl(s)).append("/current").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.PromoteFileVersion getPromoteVersionRequest(String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.PromoteFileVersion(s, s1, getPromoteFileVersionUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.UpdateFile getRenameRequest(String s, String s1)
    {
        s = new com.box.androidsdk.content.requests.BoxRequestsFile.UpdateFile(s, getFileInfoUrl(s), mSession);
        s.setName(s1);
        return s;
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.RestoreTrashedFile getRestoreTrashedFileRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.RestoreTrashedFile(s, getFileInfoUrl(s), mSession);
    }

    protected String getThumbnailFileDownloadUrl(String s)
    {
        return (new StringBuilder()).append(getFileInfoUrl(s)).append("/thumbnail").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.GetTrashedFile getTrashedFileRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.GetTrashedFile(s, getTrashedFileUrl(s), mSession);
    }

    protected String getTrashedFileUrl(String s)
    {
        return (new StringBuilder()).append(getFileInfoUrl(s)).append("/trash").toString();
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.UpdateFile getUpdateRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.UpdateFile(s, getFileInfoUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.UploadNewVersion getUploadNewVersionRequest(File file, String s)
    {
        try
        {
            s = getUploadNewVersionRequest(((InputStream) (new FileInputStream(file))), s);
            s.setUploadSize(file.length());
            s.setModifiedDate(new Date(file.lastModified()));
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            throw new IllegalArgumentException(file);
        }
        return s;
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.UploadNewVersion getUploadNewVersionRequest(InputStream inputstream, String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.UploadNewVersion(inputstream, getFileUploadNewVersionUrl(s), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.UploadFile getUploadRequest(File file, String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.UploadFile(file, s, getFileUploadUrl(), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.UploadFile getUploadRequest(InputStream inputstream, String s, String s1)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.UploadFile(inputstream, s, s1, getFileUploadUrl(), mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsFile.GetFileVersions getVersionsRequest(String s)
    {
        return new com.box.androidsdk.content.requests.BoxRequestsFile.GetFileVersions(s, getFileVersionsUrl(s), mSession);
    }
}
