package com.box.androidsdk.content.requests;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxEvent;
import com.box.androidsdk.content.models.BoxExpiringEmbedLinkFile;
import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxFileVersion;
import com.box.androidsdk.content.models.BoxIteratorComments;
import com.box.androidsdk.content.models.BoxIteratorFileVersions;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;
import com.box.androidsdk.content.requests.BoxRequest;
import com.eclipsesource.json.JsonObject;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.Date;
import java.util.Locale;

public class BoxRequestsFile {

    public static class AddCommentToFile extends BoxRequestCommentAdd<BoxComment, AddCommentToFile> {
        private static final long serialVersionUID = 8123965031279971514L;

        public AddCommentToFile(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxComment.class, str3, boxSession);
            setItemId(str);
            setItemType(BoxFile.TYPE);
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

    public static class AddFileToCollection extends BoxRequestCollectionUpdate<BoxFile, AddFileToCollection> {
        private static final long serialVersionUID = 8123965031279971537L;

        public AddFileToCollection(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxFile.class, str, str3, boxSession);
            setCollectionId(str2);
        }

        public AddFileToCollection setCollectionId(String str) {
            return (AddFileToCollection) super.setCollectionId(str);
        }
    }

    public static class AddTaggedCommentToFile extends BoxRequestCommentAdd<BoxComment, AddTaggedCommentToFile> {
        public AddTaggedCommentToFile(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxComment.class, str3, boxSession);
            setItemId(str);
            setItemType(BoxFile.TYPE);
            setTaggedMessage(str2);
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

    public static class CopyFile extends BoxRequestItemCopy<BoxFile, CopyFile> {
        private static final long serialVersionUID = 8123965031279971533L;

        public CopyFile(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxFile.class, str, str2, str3, boxSession);
        }

        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public /* bridge */ /* synthetic */ String getParentId() {
            return super.getParentId();
        }
    }

    public static class DeleteFile extends BoxRequestItemDelete<DeleteFile> {
        private static final long serialVersionUID = 8123965031279971593L;

        public DeleteFile(String str, String str2, BoxSession boxSession) {
            super(str, str2, boxSession);
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxVoid> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }
    }

    public static class DeleteFileFromCollection extends BoxRequestCollectionUpdate<BoxFile, DeleteFileFromCollection> {
        private static final long serialVersionUID = 8123965031279971538L;

        public DeleteFileFromCollection(String str, String str2, BoxSession boxSession) {
            super(BoxFile.class, str, str2, boxSession);
            setCollectionId((String) null);
        }
    }

    public static class DeleteFileVersion extends BoxRequest<BoxVoid, DeleteFileVersion> {
        private static final long serialVersionUID = 8123965031279971575L;
        private final String mVersionId;

        public DeleteFileVersion(String str, String str2, BoxSession boxSession) {
            super(BoxVoid.class, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.DELETE;
            this.mVersionId = str;
        }

        public String getVersionId() {
            return this.mVersionId;
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxVoid> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }
    }

    public static class DeleteTrashedFile extends BoxRequestItemDelete<DeleteTrashedFile> {
        private static final long serialVersionUID = 8123965031279971590L;

        public DeleteTrashedFile(String str, String str2, BoxSession boxSession) {
            super(str, str2, boxSession);
        }
    }

    public static class DownloadFile extends BoxRequestDownload<BoxDownload, DownloadFile> {
        private static final long serialVersionUID = 8123965031279971588L;

        @Deprecated
        public DownloadFile(File file, String str, BoxSession boxSession) {
            super(BoxDownload.class, file, str, boxSession);
        }

        @Deprecated
        public DownloadFile(OutputStream outputStream, String str, BoxSession boxSession) {
            super(BoxDownload.class, outputStream, str, boxSession);
        }

        public DownloadFile(String str, File file, String str2, BoxSession boxSession) {
            super(str, BoxDownload.class, file, str2, boxSession);
        }

        public DownloadFile(String str, OutputStream outputStream, String str2, BoxSession boxSession) {
            super(str, BoxDownload.class, outputStream, str2, boxSession);
        }
    }

    public static class DownloadThumbnail extends BoxRequestDownload<BoxDownload, DownloadThumbnail> {
        private static final String FIELD_MAX_HEIGHT = "max_height";
        private static final String FIELD_MAX_WIDTH = "max_width";
        private static final String FIELD_MIN_HEIGHT = "min_height";
        private static final String FIELD_MIN_WIDTH = "min_width";
        public static int SIZE_128 = NotificationCompat.FLAG_HIGH_PRIORITY;
        public static int SIZE_160 = 160;
        public static int SIZE_256 = NotificationCompat.FLAG_LOCAL_ONLY;
        public static int SIZE_32 = 32;
        public static int SIZE_320 = 320;
        public static int SIZE_64 = 64;
        public static int SIZE_94 = 94;
        private static final long serialVersionUID = 8123965031279971587L;
        protected Format mFormat = null;

        public enum Format {
            JPG(".jpg"),
            PNG(".png");
            
            private final String mExt;

            private Format(String str) {
                this.mExt = str;
            }

            public final String toString() {
                return this.mExt;
            }
        }

        @Deprecated
        public DownloadThumbnail(File file, String str, BoxSession boxSession) {
            super(BoxDownload.class, file, str, boxSession);
        }

        @Deprecated
        public DownloadThumbnail(OutputStream outputStream, String str, BoxSession boxSession) {
            super(BoxDownload.class, outputStream, str, boxSession);
        }

        public DownloadThumbnail(String str, File file, String str2, BoxSession boxSession) {
            super(str, BoxDownload.class, file, str2, boxSession);
        }

        public DownloadThumbnail(String str, OutputStream outputStream, String str2, BoxSession boxSession) {
            super(str, BoxDownload.class, outputStream, str2, boxSession);
        }

        /* access modifiers changed from: protected */
        public URL buildUrl() {
            String createQuery = createQuery(this.mQueryMap);
            String format = String.format(Locale.ENGLISH, "%s%s", new Object[]{this.mRequestUrlString, getThumbnailExtension()});
            if (TextUtils.isEmpty(createQuery)) {
                return new URL(format);
            }
            return new URL(String.format(Locale.ENGLISH, "%s?%s", new Object[]{format, createQuery}));
        }

        public Format getFormat() {
            return this.mFormat;
        }

        public Integer getMaxHeight() {
            if (this.mQueryMap.containsKey(FIELD_MAX_HEIGHT)) {
                return Integer.valueOf(Integer.parseInt((String) this.mQueryMap.get(FIELD_MAX_HEIGHT)));
            }
            return null;
        }

        public Integer getMaxWidth() {
            if (this.mQueryMap.containsKey(FIELD_MAX_WIDTH)) {
                return Integer.valueOf(Integer.parseInt((String) this.mQueryMap.get(FIELD_MAX_WIDTH)));
            }
            return null;
        }

        public Integer getMinHeight() {
            if (this.mQueryMap.containsKey(FIELD_MIN_HEIGHT)) {
                return Integer.valueOf(Integer.parseInt((String) this.mQueryMap.get(FIELD_MIN_HEIGHT)));
            }
            return null;
        }

        public Integer getMinWidth() {
            if (this.mQueryMap.containsKey(FIELD_MIN_WIDTH)) {
                return Integer.valueOf(Integer.parseInt((String) this.mQueryMap.get(FIELD_MIN_WIDTH)));
            }
            return null;
        }

        /* access modifiers changed from: protected */
        public String getThumbnailExtension() {
            if (this.mFormat != null) {
                return this.mFormat.toString();
            }
            Integer minWidth = getMinWidth() != null ? getMinWidth() : getMinHeight() != null ? getMinHeight() : getMaxWidth() != null ? getMaxWidth() : getMaxHeight() != null ? getMaxHeight() : null;
            if (minWidth == null) {
                return Format.JPG.toString();
            }
            int intValue = minWidth.intValue();
            if (intValue <= SIZE_32) {
                return Format.PNG.toString();
            }
            if (intValue <= SIZE_64) {
                return Format.PNG.toString();
            }
            if (intValue > SIZE_94) {
                if (intValue <= SIZE_128) {
                    return Format.PNG.toString();
                }
                if (intValue > SIZE_160 && intValue <= SIZE_256) {
                    return Format.PNG.toString();
                }
            }
            return Format.JPG.toString();
        }

        public DownloadThumbnail setFormat(Format format) {
            this.mFormat = format;
            return this;
        }

        public DownloadThumbnail setMaxHeight(int i) {
            this.mQueryMap.put(FIELD_MAX_HEIGHT, Integer.toString(i));
            return this;
        }

        public DownloadThumbnail setMaxWidth(int i) {
            this.mQueryMap.put(FIELD_MAX_WIDTH, Integer.toString(i));
            return this;
        }

        public DownloadThumbnail setMinHeight(int i) {
            this.mQueryMap.put(FIELD_MIN_HEIGHT, Integer.toString(i));
            return this;
        }

        public DownloadThumbnail setMinSize(int i) {
            setMinWidth(i);
            setMinHeight(i);
            return this;
        }

        public DownloadThumbnail setMinWidth(int i) {
            this.mQueryMap.put(FIELD_MIN_WIDTH, Integer.toString(i));
            return this;
        }
    }

    public static class FilePreviewed extends BoxRequest<BoxVoid, FilePreviewed> {
        private static final String TYPE_FILE = "file";
        private static final String TYPE_ITEM_PREVIEW = "PREVIEW";
        private String mFileId;

        public FilePreviewed(String str, String str2, BoxSession boxSession) {
            super(BoxVoid.class, str2, boxSession);
            this.mFileId = str;
            this.mRequestMethod = BoxRequest.Methods.POST;
            this.mBodyMap.put("type", "event");
            this.mBodyMap.put(BoxEvent.FIELD_EVENT_TYPE, TYPE_ITEM_PREVIEW);
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("type", "file");
            jsonObject.add(BoxEntity.FIELD_ID, str);
            this.mBodyMap.put(BoxEvent.FIELD_SOURCE, BoxEntity.createEntityFromJson(jsonObject));
        }

        public String getFileId() {
            return this.mFileId;
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxVoid> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }
    }

    public static class GetEmbedLinkFileInfo extends BoxRequestItem<BoxExpiringEmbedLinkFile, GetEmbedLinkFileInfo> {
        private static final long serialVersionUID = 8123965031279971501L;

        public GetEmbedLinkFileInfo(String str, String str2, BoxSession boxSession) {
            super(BoxExpiringEmbedLinkFile.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
            setFields(new String[]{BoxExpiringEmbedLinkFile.FIELD_EMBED_LINK});
        }

        public String getIfNoneMatchEtag() {
            return super.getIfNoneMatchEtag();
        }

        public GetEmbedLinkFileInfo setFields(String... strArr) {
            boolean z = false;
            for (String equalsIgnoreCase : strArr) {
                if (equalsIgnoreCase.equalsIgnoreCase(BoxExpiringEmbedLinkFile.FIELD_EMBED_LINK)) {
                    z = true;
                }
            }
            if (z) {
                return (GetEmbedLinkFileInfo) super.setFields(strArr);
            }
            String[] strArr2 = new String[(strArr.length + 1)];
            System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            strArr2[strArr.length] = BoxExpiringEmbedLinkFile.FIELD_EMBED_LINK;
            return (GetEmbedLinkFileInfo) super.setFields(strArr2);
        }

        public GetEmbedLinkFileInfo setIfNoneMatchEtag(String str) {
            return (GetEmbedLinkFileInfo) super.setIfNoneMatchEtag(str);
        }
    }

    public static class GetFileComments extends BoxRequestItem<BoxIteratorComments, GetFileComments> implements BoxCacheableRequest<BoxIteratorComments> {
        private static final String QUERY_LIMIT = "limit";
        private static final String QUERY_OFFSET = "offset";
        private static final long serialVersionUID = 8123965031279971525L;

        public GetFileComments(String str, String str2, BoxSession boxSession) {
            super(BoxIteratorComments.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
            setFields(BoxComment.ALL_FIELDS);
        }

        public BoxIteratorComments sendForCachedResult() {
            return (BoxIteratorComments) super.handleSendForCachedResult();
        }

        public void setLimit(int i) {
            this.mQueryMap.put("limit", Integer.toString(i));
        }

        public void setOffset(int i) {
            this.mQueryMap.put("offset", Integer.toString(i));
        }

        public BoxFutureTask<BoxIteratorComments> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetFileInfo extends BoxRequestItem<BoxFile, GetFileInfo> implements BoxCacheableRequest<BoxFile> {
        private static final long serialVersionUID = 8123965031279971501L;

        public GetFileInfo(String str, String str2, BoxSession boxSession) {
            super(BoxFile.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public String getIfNoneMatchEtag() {
            return super.getIfNoneMatchEtag();
        }

        public BoxFile sendForCachedResult() {
            return (BoxFile) super.handleSendForCachedResult();
        }

        public GetFileInfo setIfNoneMatchEtag(String str) {
            return (GetFileInfo) super.setIfNoneMatchEtag(str);
        }

        public BoxFutureTask<BoxFile> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetFileVersions extends BoxRequestItem<BoxIteratorFileVersions, GetFileVersions> implements BoxCacheableRequest<BoxIteratorFileVersions> {
        private static final long serialVersionUID = 8123965031279971530L;

        public GetFileVersions(String str, String str2, BoxSession boxSession) {
            super(BoxIteratorFileVersions.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
            setFields(BoxFileVersion.ALL_FIELDS);
        }

        public BoxIteratorFileVersions sendForCachedResult() {
            return (BoxIteratorFileVersions) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxIteratorFileVersions> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetTrashedFile extends BoxRequestItem<BoxFile, GetTrashedFile> implements BoxCacheableRequest<BoxFile> {
        private static final long serialVersionUID = 8123965031279971543L;

        public GetTrashedFile(String str, String str2, BoxSession boxSession) {
            super(BoxFile.class, str, str2, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public String getIfNoneMatchEtag() {
            return super.getIfNoneMatchEtag();
        }

        public BoxFile sendForCachedResult() {
            return (BoxFile) super.handleSendForCachedResult();
        }

        public GetTrashedFile setIfNoneMatchEtag(String str) {
            return (GetTrashedFile) super.setIfNoneMatchEtag(str);
        }

        public BoxFutureTask<BoxFile> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class PromoteFileVersion extends BoxRequestItem<BoxFileVersion, PromoteFileVersion> {
        private static final long serialVersionUID = 8123965031279971527L;

        public PromoteFileVersion(String str, String str2, String str3, BoxSession boxSession) {
            super(BoxFileVersion.class, str, str3, boxSession);
            this.mRequestMethod = BoxRequest.Methods.POST;
            setVersionId(str2);
        }

        /* access modifiers changed from: protected */
        public void onSendCompleted(BoxResponse<BoxFileVersion> boxResponse) {
            super.onSendCompleted(boxResponse);
            super.handleUpdateCache(boxResponse);
        }

        public PromoteFileVersion setVersionId(String str) {
            this.mBodyMap.put("type", "file_version");
            this.mBodyMap.put(BoxEntity.FIELD_ID, str);
            return this;
        }
    }

    public static class RestoreTrashedFile extends BoxRequestItemRestoreTrashed<BoxFile, RestoreTrashedFile> {
        private static final long serialVersionUID = 8123965031279971535L;

        public RestoreTrashedFile(String str, String str2, BoxSession boxSession) {
            super(BoxFile.class, str, str2, boxSession);
        }

        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public /* bridge */ /* synthetic */ String getParentId() {
            return super.getParentId();
        }
    }

    public static class UpdateFile extends BoxRequestItemUpdate<BoxFile, UpdateFile> {
        private static final long serialVersionUID = 8123965031279971521L;

        public UpdateFile(String str, String str2, BoxSession boxSession) {
            super(BoxFile.class, str, str2, boxSession);
        }

        public UpdatedSharedFile updateSharedLink() {
            return new UpdatedSharedFile(this);
        }
    }

    public static class UpdatedSharedFile extends BoxRequestUpdateSharedItem<BoxFile, UpdatedSharedFile> {
        private static final long serialVersionUID = 8123965031279971520L;

        protected UpdatedSharedFile(UpdateFile updateFile) {
            super(updateFile);
        }

        public UpdatedSharedFile(String str, String str2, BoxSession boxSession) {
            super(BoxFile.class, str, str2, boxSession);
        }

        public Boolean getCanDownload() {
            return super.getCanDownload();
        }

        public UpdatedSharedFile setCanDownload(boolean z) {
            return (UpdatedSharedFile) super.setCanDownload(z);
        }
    }

    public static class UploadFile extends BoxRequestUpload<BoxFile, UploadFile> {
        private static final long serialVersionUID = 8123965031279971502L;
        String mDestinationFolderId;

        public UploadFile(File file, String str, String str2, BoxSession boxSession) {
            super(BoxFile.class, (InputStream) null, str2, boxSession);
            this.mRequestUrlString = str2;
            this.mRequestMethod = BoxRequest.Methods.POST;
            this.mDestinationFolderId = str;
            this.mFileName = file.getName();
            this.mFile = file;
            this.mUploadSize = file.length();
            this.mModifiedDate = new Date(file.lastModified());
        }

        public UploadFile(InputStream inputStream, String str, String str2, String str3, BoxSession boxSession) {
            super(BoxFile.class, inputStream, str3, boxSession);
            this.mRequestUrlString = str3;
            this.mRequestMethod = BoxRequest.Methods.POST;
            this.mFileName = str;
            this.mStream = inputStream;
            this.mDestinationFolderId = str2;
        }

        /* access modifiers changed from: protected */
        public BoxRequestMultipart createMultipartRequest() {
            BoxRequestMultipart createMultipartRequest = super.createMultipartRequest();
            createMultipartRequest.putField("parent_id", this.mDestinationFolderId);
            return createMultipartRequest;
        }

        public String getDestinationFolderId() {
            return this.mDestinationFolderId;
        }

        public String getFileName() {
            return this.mFileName;
        }

        public UploadFile setFileName(String str) {
            this.mFileName = str;
            return this;
        }
    }

    public static class UploadNewVersion extends BoxRequestUpload<BoxFile, UploadNewVersion> {
        public UploadNewVersion(InputStream inputStream, String str, BoxSession boxSession) {
            super(BoxFile.class, inputStream, str, boxSession);
        }

        public String getIfMatchEtag() {
            return super.getIfMatchEtag();
        }

        public UploadNewVersion setIfMatchEtag(String str) {
            return (UploadNewVersion) super.setIfMatchEtag(str);
        }
    }
}
