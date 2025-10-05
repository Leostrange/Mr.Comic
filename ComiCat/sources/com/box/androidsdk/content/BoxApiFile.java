package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLink;
import com.box.androidsdk.content.requests.BoxRequestsFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Locale;

public class BoxApiFile extends BoxApi {
    public BoxApiFile(BoxSession boxSession) {
        super(boxSession);
    }

    public BoxRequestsFile.AddCommentToFile getAddCommentRequest(String str, String str2) {
        return new BoxRequestsFile.AddCommentToFile(str, str2, getCommentUrl(), this.mSession);
    }

    public BoxRequestsFile.AddTaggedCommentToFile getAddTaggedCommentRequest(String str, String str2) {
        return new BoxRequestsFile.AddTaggedCommentToFile(str, str2, getCommentUrl(), this.mSession);
    }

    public BoxRequestsFile.AddFileToCollection getAddToCollectionRequest(String str, String str2) {
        return new BoxRequestsFile.AddFileToCollection(str, str2, getFileInfoUrl(str), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getCommentUrl() {
        return getBaseUri() + BoxApiComment.COMMENTS_ENDPOINT;
    }

    public BoxRequestsFile.GetFileComments getCommentsRequest(String str) {
        return new BoxRequestsFile.GetFileComments(str, getFileCommentsUrl(str), this.mSession);
    }

    public BoxRequestsFile.CopyFile getCopyRequest(String str, String str2) {
        return new BoxRequestsFile.CopyFile(str, str2, getFileCopyUrl(str), this.mSession);
    }

    public BoxRequestsFile.UpdatedSharedFile getCreateSharedLinkRequest(String str) {
        return (BoxRequestsFile.UpdatedSharedFile) new BoxRequestsFile.UpdatedSharedFile(str, getFileInfoUrl(str), this.mSession).setAccess((BoxSharedLink.Access) null);
    }

    /* access modifiers changed from: protected */
    public String getDeleteFileVersionUrl(String str, String str2) {
        return String.format(Locale.ENGLISH, "%s/%s", new Object[]{getFileVersionsUrl(str), str2});
    }

    public BoxRequestsFile.DeleteFileFromCollection getDeleteFromCollectionRequest(String str) {
        return new BoxRequestsFile.DeleteFileFromCollection(str, getFileInfoUrl(str), this.mSession);
    }

    public BoxRequestsFile.DeleteFile getDeleteRequest(String str) {
        return new BoxRequestsFile.DeleteFile(str, getFileInfoUrl(str), this.mSession);
    }

    public BoxRequestsFile.DeleteTrashedFile getDeleteTrashedFileRequest(String str) {
        return new BoxRequestsFile.DeleteTrashedFile(str, getTrashedFileUrl(str), this.mSession);
    }

    public BoxRequestsFile.DeleteFileVersion getDeleteVersionRequest(String str, String str2) {
        return new BoxRequestsFile.DeleteFileVersion(str2, getDeleteFileVersionUrl(str, str2), this.mSession);
    }

    public BoxRequestsFile.UpdateFile getDisableSharedLinkRequest(String str) {
        return (BoxRequestsFile.UpdateFile) new BoxRequestsFile.UpdateFile(str, getFileInfoUrl(str), this.mSession).setSharedLink((BoxSharedLink) null);
    }

    public BoxRequestsFile.DownloadFile getDownloadRequest(File file, String str) {
        if (file.exists()) {
            return new BoxRequestsFile.DownloadFile(file, getFileDownloadUrl(str), this.mSession);
        }
        throw new FileNotFoundException();
    }

    public BoxRequestsFile.DownloadFile getDownloadRequest(OutputStream outputStream, String str) {
        return new BoxRequestsFile.DownloadFile(outputStream, getFileDownloadUrl(str), this.mSession);
    }

    public BoxRequestsFile.DownloadThumbnail getDownloadThumbnailRequest(File file, String str) {
        if (file.exists()) {
            return new BoxRequestsFile.DownloadThumbnail(str, file, getThumbnailFileDownloadUrl(str), this.mSession);
        }
        throw new FileNotFoundException();
    }

    public BoxRequestsFile.DownloadThumbnail getDownloadThumbnailRequest(OutputStream outputStream, String str) {
        return new BoxRequestsFile.DownloadThumbnail(str, outputStream, getThumbnailFileDownloadUrl(str), this.mSession);
    }

    public BoxRequestsFile.DownloadFile getDownloadUrlRequest(File file, String str) {
        if (file.exists()) {
            return new BoxRequestsFile.DownloadFile(file, str, this.mSession);
        }
        throw new FileNotFoundException();
    }

    public BoxRequestsFile.GetEmbedLinkFileInfo getEmbedLinkRequest(String str) {
        return new BoxRequestsFile.GetEmbedLinkFileInfo(str, getFileInfoUrl(str), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getFileCommentsUrl(String str) {
        return getFileInfoUrl(str) + BoxApiComment.COMMENTS_ENDPOINT;
    }

    /* access modifiers changed from: protected */
    public String getFileCopyUrl(String str) {
        return String.format(Locale.ENGLISH, getFileInfoUrl(str) + "/copy", new Object[0]);
    }

    /* access modifiers changed from: protected */
    public String getFileDownloadUrl(String str) {
        return getFileInfoUrl(str) + "/content";
    }

    /* access modifiers changed from: protected */
    public String getFileInfoUrl(String str) {
        return String.format(Locale.ENGLISH, "%s/%s", new Object[]{getFilesUrl(), str});
    }

    public BoxRequestsFile.FilePreviewed getFilePreviewedRequest(String str) {
        return new BoxRequestsFile.FilePreviewed(str, getPreviewFileUrl(), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getFileUploadNewVersionUrl(String str) {
        return String.format(Locale.ENGLISH, "%s/files/%s/content", new Object[]{getBaseUploadUri(), str});
    }

    /* access modifiers changed from: protected */
    public String getFileUploadUrl() {
        return String.format(Locale.ENGLISH, "%s/files/content", new Object[]{getBaseUploadUri()});
    }

    /* access modifiers changed from: protected */
    public String getFileVersionsUrl(String str) {
        return getFileInfoUrl(str) + "/versions";
    }

    /* access modifiers changed from: protected */
    public String getFilesUrl() {
        return String.format(Locale.ENGLISH, "%s/files", new Object[]{getBaseUri()});
    }

    public BoxRequestsFile.GetFileInfo getInfoRequest(String str) {
        return new BoxRequestsFile.GetFileInfo(str, getFileInfoUrl(str), this.mSession);
    }

    public BoxRequestsFile.UpdateFile getMoveRequest(String str, String str2) {
        BoxRequestsFile.UpdateFile updateFile = new BoxRequestsFile.UpdateFile(str, getFileInfoUrl(str), this.mSession);
        updateFile.setParentId(str2);
        return updateFile;
    }

    /* access modifiers changed from: protected */
    public String getPreviewFileUrl() {
        return getBaseUri() + BoxApiEvent.EVENTS_ENDPOINT;
    }

    /* access modifiers changed from: protected */
    public String getPromoteFileVersionUrl(String str) {
        return getFileVersionsUrl(str) + "/current";
    }

    public BoxRequestsFile.PromoteFileVersion getPromoteVersionRequest(String str, String str2) {
        return new BoxRequestsFile.PromoteFileVersion(str, str2, getPromoteFileVersionUrl(str), this.mSession);
    }

    public BoxRequestsFile.UpdateFile getRenameRequest(String str, String str2) {
        BoxRequestsFile.UpdateFile updateFile = new BoxRequestsFile.UpdateFile(str, getFileInfoUrl(str), this.mSession);
        updateFile.setName(str2);
        return updateFile;
    }

    public BoxRequestsFile.RestoreTrashedFile getRestoreTrashedFileRequest(String str) {
        return new BoxRequestsFile.RestoreTrashedFile(str, getFileInfoUrl(str), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getThumbnailFileDownloadUrl(String str) {
        return getFileInfoUrl(str) + "/thumbnail";
    }

    public BoxRequestsFile.GetTrashedFile getTrashedFileRequest(String str) {
        return new BoxRequestsFile.GetTrashedFile(str, getTrashedFileUrl(str), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getTrashedFileUrl(String str) {
        return getFileInfoUrl(str) + "/trash";
    }

    public BoxRequestsFile.UpdateFile getUpdateRequest(String str) {
        return new BoxRequestsFile.UpdateFile(str, getFileInfoUrl(str), this.mSession);
    }

    public BoxRequestsFile.UploadNewVersion getUploadNewVersionRequest(File file, String str) {
        try {
            BoxRequestsFile.UploadNewVersion uploadNewVersionRequest = getUploadNewVersionRequest((InputStream) new FileInputStream(file), str);
            uploadNewVersionRequest.setUploadSize(file.length());
            uploadNewVersionRequest.setModifiedDate(new Date(file.lastModified()));
            return uploadNewVersionRequest;
        } catch (FileNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public BoxRequestsFile.UploadNewVersion getUploadNewVersionRequest(InputStream inputStream, String str) {
        return new BoxRequestsFile.UploadNewVersion(inputStream, getFileUploadNewVersionUrl(str), this.mSession);
    }

    public BoxRequestsFile.UploadFile getUploadRequest(File file, String str) {
        return new BoxRequestsFile.UploadFile(file, str, getFileUploadUrl(), this.mSession);
    }

    public BoxRequestsFile.UploadFile getUploadRequest(InputStream inputStream, String str, String str2) {
        return new BoxRequestsFile.UploadFile(inputStream, str, str2, getFileUploadUrl(), this.mSession);
    }

    public BoxRequestsFile.GetFileVersions getVersionsRequest(String str) {
        return new BoxRequestsFile.GetFileVersions(str, getFileVersionsUrl(str), this.mSession);
    }
}
