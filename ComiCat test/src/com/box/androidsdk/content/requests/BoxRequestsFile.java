// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import android.text.TextUtils;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxDownload;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxExpiringEmbedLinkFile;
import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxFileVersion;
import com.box.androidsdk.content.models.BoxIteratorComments;
import com.box.androidsdk.content.models.BoxIteratorFileVersions;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;
import com.eclipsesource.json.JsonObject;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestCommentAdd, BoxRequestCollectionUpdate, BoxRequest, BoxRequestItemCopy, 
//            BoxRequestItemDelete, BoxResponse, BoxRequestDownload, BoxRequestItem, 
//            BoxCacheableRequest, BoxRequestItemRestoreTrashed, BoxRequestItemUpdate, BoxRequestUpdateSharedItem, 
//            BoxRequestUpload, BoxRequestMultipart

public class BoxRequestsFile
{
    public static class AddCommentToFile extends BoxRequestCommentAdd
    {

        private static final long serialVersionUID = 0x70be1f2741234cbaL;

        public volatile String getItemId()
        {
            return super.getItemId();
        }

        public volatile String getItemType()
        {
            return super.getItemType();
        }

        public volatile String getMessage()
        {
            return super.getMessage();
        }

        public AddCommentToFile(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxComment, s2, boxsession);
            setItemId(s);
            setItemType("file");
            setMessage(s1);
        }
    }

    public static class AddFileToCollection extends BoxRequestCollectionUpdate
    {

        private static final long serialVersionUID = 0x70be1f2741234cd1L;

        public volatile BoxRequest setCollectionId(String s)
        {
            return setCollectionId(s);
        }

        public AddFileToCollection setCollectionId(String s)
        {
            return (AddFileToCollection)super.setCollectionId(s);
        }

        public AddFileToCollection(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, s, s2, boxsession);
            setCollectionId(s1);
        }
    }

    public static class AddTaggedCommentToFile extends BoxRequestCommentAdd
    {

        public volatile String getItemId()
        {
            return super.getItemId();
        }

        public volatile String getItemType()
        {
            return super.getItemType();
        }

        public volatile String getMessage()
        {
            return super.getMessage();
        }

        public AddTaggedCommentToFile(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxComment, s2, boxsession);
            setItemId(s);
            setItemType("file");
            setTaggedMessage(s1);
        }
    }

    public static class CopyFile extends BoxRequestItemCopy
    {

        private static final long serialVersionUID = 0x70be1f2741234ccdL;

        public volatile String getName()
        {
            return super.getName();
        }

        public volatile String getParentId()
        {
            return super.getParentId();
        }

        public CopyFile(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, s, s1, s2, boxsession);
        }
    }

    public static class DeleteFile extends BoxRequestItemDelete
    {

        private static final long serialVersionUID = 0x70be1f2741234d09L;

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public DeleteFile(String s, String s1, BoxSession boxsession)
        {
            super(s, s1, boxsession);
        }
    }

    public static class DeleteFileFromCollection extends BoxRequestCollectionUpdate
    {

        private static final long serialVersionUID = 0x70be1f2741234cd2L;

        public DeleteFileFromCollection(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, s, s1, boxsession);
            setCollectionId(null);
        }
    }

    public static class DeleteFileVersion extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cf7L;
        private final String mVersionId;

        public String getVersionId()
        {
            return mVersionId;
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public DeleteFileVersion(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxVoid, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.DELETE;
            mVersionId = s;
        }
    }

    public static class DeleteTrashedFile extends BoxRequestItemDelete
    {

        private static final long serialVersionUID = 0x70be1f2741234d06L;

        public DeleteTrashedFile(String s, String s1, BoxSession boxsession)
        {
            super(s, s1, boxsession);
        }
    }

    public static class DownloadFile extends BoxRequestDownload
    {

        private static final long serialVersionUID = 0x70be1f2741234d04L;

        public DownloadFile(File file, String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxDownload, file, s, boxsession);
        }

        public DownloadFile(OutputStream outputstream, String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxDownload, outputstream, s, boxsession);
        }

        public DownloadFile(String s, File file, String s1, BoxSession boxsession)
        {
            super(s, com/box/androidsdk/content/models/BoxDownload, file, s1, boxsession);
        }

        public DownloadFile(String s, OutputStream outputstream, String s1, BoxSession boxsession)
        {
            super(s, com/box/androidsdk/content/models/BoxDownload, outputstream, s1, boxsession);
        }
    }

    public static class DownloadThumbnail extends BoxRequestDownload
    {

        private static final String FIELD_MAX_HEIGHT = "max_height";
        private static final String FIELD_MAX_WIDTH = "max_width";
        private static final String FIELD_MIN_HEIGHT = "min_height";
        private static final String FIELD_MIN_WIDTH = "min_width";
        public static int SIZE_128 = 0;
        public static int SIZE_160 = 0;
        public static int SIZE_256 = 0;
        public static int SIZE_32 = 0;
        public static int SIZE_320 = 0;
        public static int SIZE_64 = 0;
        public static int SIZE_94 = 0;
        private static final long serialVersionUID = 0x70be1f2741234d03L;
        protected Format mFormat;

        protected URL buildUrl()
        {
            String s = createQuery(mQueryMap);
            String s1 = String.format(Locale.ENGLISH, "%s%s", new Object[] {
                mRequestUrlString, getThumbnailExtension()
            });
            if (TextUtils.isEmpty(s))
            {
                return new URL(s1);
            } else
            {
                return new URL(String.format(Locale.ENGLISH, "%s?%s", new Object[] {
                    s1, s
                }));
            }
        }

        public Format getFormat()
        {
            return mFormat;
        }

        public Integer getMaxHeight()
        {
            if (mQueryMap.containsKey("max_height"))
            {
                return Integer.valueOf(Integer.parseInt((String)mQueryMap.get("max_height")));
            } else
            {
                return null;
            }
        }

        public Integer getMaxWidth()
        {
            if (mQueryMap.containsKey("max_width"))
            {
                return Integer.valueOf(Integer.parseInt((String)mQueryMap.get("max_width")));
            } else
            {
                return null;
            }
        }

        public Integer getMinHeight()
        {
            if (mQueryMap.containsKey("min_height"))
            {
                return Integer.valueOf(Integer.parseInt((String)mQueryMap.get("min_height")));
            } else
            {
                return null;
            }
        }

        public Integer getMinWidth()
        {
            if (mQueryMap.containsKey("min_width"))
            {
                return Integer.valueOf(Integer.parseInt((String)mQueryMap.get("min_width")));
            } else
            {
                return null;
            }
        }

        protected String getThumbnailExtension()
        {
            if (mFormat != null)
            {
                return mFormat.toString();
            }
            Integer integer;
            if (getMinWidth() != null)
            {
                integer = getMinWidth();
            } else
            if (getMinHeight() != null)
            {
                integer = getMinHeight();
            } else
            if (getMaxWidth() != null)
            {
                integer = getMaxWidth();
            } else
            if (getMaxHeight() != null)
            {
                integer = getMaxHeight();
            } else
            {
                integer = null;
            }
            if (integer == null)
            {
                return Format.JPG.toString();
            }
            int i = integer.intValue();
            if (i <= SIZE_32)
            {
                return Format.PNG.toString();
            }
            if (i <= SIZE_64)
            {
                return Format.PNG.toString();
            }
            if (i > SIZE_94)
            {
                if (i <= SIZE_128)
                {
                    return Format.PNG.toString();
                }
                if (i > SIZE_160 && i <= SIZE_256)
                {
                    return Format.PNG.toString();
                }
            }
            return Format.JPG.toString();
        }

        public DownloadThumbnail setFormat(Format format)
        {
            mFormat = format;
            return this;
        }

        public DownloadThumbnail setMaxHeight(int i)
        {
            mQueryMap.put("max_height", Integer.toString(i));
            return this;
        }

        public DownloadThumbnail setMaxWidth(int i)
        {
            mQueryMap.put("max_width", Integer.toString(i));
            return this;
        }

        public DownloadThumbnail setMinHeight(int i)
        {
            mQueryMap.put("min_height", Integer.toString(i));
            return this;
        }

        public DownloadThumbnail setMinSize(int i)
        {
            setMinWidth(i);
            setMinHeight(i);
            return this;
        }

        public DownloadThumbnail setMinWidth(int i)
        {
            mQueryMap.put("min_width", Integer.toString(i));
            return this;
        }

        static 
        {
            SIZE_32 = 32;
            SIZE_64 = 64;
            SIZE_94 = 94;
            SIZE_128 = 128;
            SIZE_160 = 160;
            SIZE_256 = 256;
            SIZE_320 = 320;
        }

        public DownloadThumbnail(File file, String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxDownload, file, s, boxsession);
            mFormat = null;
        }

        public DownloadThumbnail(OutputStream outputstream, String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxDownload, outputstream, s, boxsession);
            mFormat = null;
        }

        public DownloadThumbnail(String s, File file, String s1, BoxSession boxsession)
        {
            super(s, com/box/androidsdk/content/models/BoxDownload, file, s1, boxsession);
            mFormat = null;
        }

        public DownloadThumbnail(String s, OutputStream outputstream, String s1, BoxSession boxsession)
        {
            super(s, com/box/androidsdk/content/models/BoxDownload, outputstream, s1, boxsession);
            mFormat = null;
        }
    }

    public static final class DownloadThumbnail.Format extends Enum
    {

        private static final DownloadThumbnail.Format $VALUES[];
        public static final DownloadThumbnail.Format JPG;
        public static final DownloadThumbnail.Format PNG;
        private final String mExt;

        public static DownloadThumbnail.Format valueOf(String s)
        {
            return (DownloadThumbnail.Format)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequestsFile$DownloadThumbnail$Format, s);
        }

        public static DownloadThumbnail.Format[] values()
        {
            return (DownloadThumbnail.Format[])$VALUES.clone();
        }

        public final String toString()
        {
            return mExt;
        }

        static 
        {
            JPG = new DownloadThumbnail.Format("JPG", 0, ".jpg");
            PNG = new DownloadThumbnail.Format("PNG", 1, ".png");
            $VALUES = (new DownloadThumbnail.Format[] {
                JPG, PNG
            });
        }

        private DownloadThumbnail.Format(String s, int i, String s1)
        {
            super(s, i);
            mExt = s1;
        }
    }

    public static class FilePreviewed extends BoxRequest
    {

        private static final String TYPE_FILE = "file";
        private static final String TYPE_ITEM_PREVIEW = "PREVIEW";
        private String mFileId;

        public String getFileId()
        {
            return mFileId;
        }

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public FilePreviewed(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxVoid, s1, boxsession);
            mFileId = s;
            mRequestMethod = BoxRequest.Methods.POST;
            mBodyMap.put("type", "event");
            mBodyMap.put("event_type", "PREVIEW");
            s1 = new JsonObject();
            s1.add("type", "file");
            s1.add("id", s);
            mBodyMap.put("source", BoxEntity.createEntityFromJson(s1));
        }
    }

    public static class GetEmbedLinkFileInfo extends BoxRequestItem
    {

        private static final long serialVersionUID = 0x70be1f2741234cadL;

        public String getIfNoneMatchEtag()
        {
            return super.getIfNoneMatchEtag();
        }

        public volatile BoxRequest setFields(String as[])
        {
            return setFields(as);
        }

        public transient GetEmbedLinkFileInfo setFields(String as[])
        {
            int j = as.length;
            int i = 0;
            boolean flag = false;
            for (; i < j; i++)
            {
                if (as[i].equalsIgnoreCase("expiring_embed_link"))
                {
                    flag = true;
                }
            }

            if (!flag)
            {
                String as1[] = new String[as.length + 1];
                System.arraycopy(as, 0, as1, 0, as.length);
                as1[as.length] = "expiring_embed_link";
                return (GetEmbedLinkFileInfo)super.setFields(as1);
            } else
            {
                return (GetEmbedLinkFileInfo)super.setFields(as);
            }
        }

        public volatile BoxRequest setIfNoneMatchEtag(String s)
        {
            return setIfNoneMatchEtag(s);
        }

        public GetEmbedLinkFileInfo setIfNoneMatchEtag(String s)
        {
            return (GetEmbedLinkFileInfo)super.setIfNoneMatchEtag(s);
        }

        public GetEmbedLinkFileInfo(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxExpiringEmbedLinkFile, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
            setFields(new String[] {
                "expiring_embed_link"
            });
        }
    }

    public static class GetFileComments extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final String QUERY_LIMIT = "limit";
        private static final String QUERY_OFFSET = "offset";
        private static final long serialVersionUID = 0x70be1f2741234cc5L;

        public BoxIteratorComments sendForCachedResult()
        {
            return (BoxIteratorComments)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public void setLimit(int i)
        {
            mQueryMap.put("limit", Integer.toString(i));
        }

        public void setOffset(int i)
        {
            mQueryMap.put("offset", Integer.toString(i));
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetFileComments(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorComments, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
            setFields(BoxComment.ALL_FIELDS);
        }
    }

    public static class GetFileInfo extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cadL;

        public String getIfNoneMatchEtag()
        {
            return super.getIfNoneMatchEtag();
        }

        public BoxFile sendForCachedResult()
        {
            return (BoxFile)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public volatile BoxRequest setIfNoneMatchEtag(String s)
        {
            return setIfNoneMatchEtag(s);
        }

        public GetFileInfo setIfNoneMatchEtag(String s)
        {
            return (GetFileInfo)super.setIfNoneMatchEtag(s);
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetFileInfo(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class GetFileVersions extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234ccaL;

        public BoxIteratorFileVersions sendForCachedResult()
        {
            return (BoxIteratorFileVersions)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetFileVersions(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorFileVersions, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
            setFields(BoxFileVersion.ALL_FIELDS);
        }
    }

    public static class GetTrashedFile extends BoxRequestItem
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cd7L;

        public String getIfNoneMatchEtag()
        {
            return super.getIfNoneMatchEtag();
        }

        public BoxFile sendForCachedResult()
        {
            return (BoxFile)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public volatile BoxRequest setIfNoneMatchEtag(String s)
        {
            return setIfNoneMatchEtag(s);
        }

        public GetTrashedFile setIfNoneMatchEtag(String s)
        {
            return (GetTrashedFile)super.setIfNoneMatchEtag(s);
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetTrashedFile(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, s, s1, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class PromoteFileVersion extends BoxRequestItem
    {

        private static final long serialVersionUID = 0x70be1f2741234cc7L;

        protected void onSendCompleted(BoxResponse boxresponse)
        {
            super.onSendCompleted(boxresponse);
            super.handleUpdateCache(boxresponse);
        }

        public PromoteFileVersion setVersionId(String s)
        {
            mBodyMap.put("type", "file_version");
            mBodyMap.put("id", s);
            return this;
        }

        public PromoteFileVersion(String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFileVersion, s, s2, boxsession);
            mRequestMethod = BoxRequest.Methods.POST;
            setVersionId(s1);
        }
    }

    public static class RestoreTrashedFile extends BoxRequestItemRestoreTrashed
    {

        private static final long serialVersionUID = 0x70be1f2741234ccfL;

        public volatile String getName()
        {
            return super.getName();
        }

        public volatile String getParentId()
        {
            return super.getParentId();
        }

        public RestoreTrashedFile(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, s, s1, boxsession);
        }
    }

    public static class UpdateFile extends BoxRequestItemUpdate
    {

        private static final long serialVersionUID = 0x70be1f2741234cc1L;

        public volatile BoxRequestUpdateSharedItem updateSharedLink()
        {
            return updateSharedLink();
        }

        public UpdatedSharedFile updateSharedLink()
        {
            return new UpdatedSharedFile(this);
        }

        public UpdateFile(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, s, s1, boxsession);
        }
    }

    public static class UpdatedSharedFile extends BoxRequestUpdateSharedItem
    {

        private static final long serialVersionUID = 0x70be1f2741234cc0L;

        public Boolean getCanDownload()
        {
            return super.getCanDownload();
        }

        public volatile BoxRequest setCanDownload(boolean flag)
        {
            return setCanDownload(flag);
        }

        public UpdatedSharedFile setCanDownload(boolean flag)
        {
            return (UpdatedSharedFile)super.setCanDownload(flag);
        }

        protected UpdatedSharedFile(UpdateFile updatefile)
        {
            super(updatefile);
        }

        public UpdatedSharedFile(String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, s, s1, boxsession);
        }
    }

    public static class UploadFile extends BoxRequestUpload
    {

        private static final long serialVersionUID = 0x70be1f2741234caeL;
        String mDestinationFolderId;

        protected BoxRequestMultipart createMultipartRequest()
        {
            BoxRequestMultipart boxrequestmultipart = super.createMultipartRequest();
            boxrequestmultipart.putField("parent_id", mDestinationFolderId);
            return boxrequestmultipart;
        }

        public String getDestinationFolderId()
        {
            return mDestinationFolderId;
        }

        public String getFileName()
        {
            return mFileName;
        }

        public UploadFile setFileName(String s)
        {
            mFileName = s;
            return this;
        }

        public UploadFile(File file, String s, String s1, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, null, s1, boxsession);
            mRequestUrlString = s1;
            mRequestMethod = BoxRequest.Methods.POST;
            mDestinationFolderId = s;
            mFileName = file.getName();
            mFile = file;
            mUploadSize = file.length();
            mModifiedDate = new Date(file.lastModified());
        }

        public UploadFile(InputStream inputstream, String s, String s1, String s2, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, inputstream, s2, boxsession);
            mRequestUrlString = s2;
            mRequestMethod = BoxRequest.Methods.POST;
            mFileName = s;
            mStream = inputstream;
            mDestinationFolderId = s1;
        }
    }

    public static class UploadNewVersion extends BoxRequestUpload
    {

        public String getIfMatchEtag()
        {
            return super.getIfMatchEtag();
        }

        public volatile BoxRequest setIfMatchEtag(String s)
        {
            return setIfMatchEtag(s);
        }

        public UploadNewVersion setIfMatchEtag(String s)
        {
            return (UploadNewVersion)super.setIfMatchEtag(s);
        }

        public UploadNewVersion(InputStream inputstream, String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxFile, inputstream, s, boxsession);
        }
    }


    public BoxRequestsFile()
    {
    }
}
