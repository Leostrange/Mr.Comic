// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxArray;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxMetadata;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;
import java.util.LinkedHashMap;
import java.util.Map;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxCacheableRequest

public class BoxRequestsMetadata
{
    public static class AddFileMetadata extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cfaL;

        protected AddFileMetadata setValues(Map map)
        {
            mBodyMap.putAll(map);
            return this;
        }

        public AddFileMetadata(Map map, String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxMetadata, s, boxsession);
            mRequestMethod = BoxRequest.Methods.POST;
            setValues(map);
        }
    }

    public static class DeleteFileMetadata extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cdaL;

        public DeleteFileMetadata(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxVoid, s, boxsession);
            mRequestMethod = BoxRequest.Methods.DELETE;
        }
    }

    public static class GetFileMetadata extends BoxRequest
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cf3L;

        public BoxMetadata sendForCachedResult()
        {
            return (BoxMetadata)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetFileMetadata(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxMetadata, s, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class GetMetadataTemplateSchema extends BoxRequest
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234d02L;

        public BoxMetadata sendForCachedResult()
        {
            return (BoxMetadata)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetMetadataTemplateSchema(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxMetadata, s, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class GetMetadataTemplates extends BoxRequest
        implements BoxCacheableRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cdbL;

        public BoxMetadata sendForCachedResult()
        {
            return (BoxMetadata)super.handleSendForCachedResult();
        }

        public volatile BoxObject sendForCachedResult()
        {
            return sendForCachedResult();
        }

        public BoxFutureTask toTaskForCachedResult()
        {
            return super.handleToTaskForCachedResult();
        }

        public GetMetadataTemplates(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxMetadata, s, boxsession);
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }

    public static class UpdateFileMetadata extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cddL;
        private BoxArray mUpdateTasks;

        public UpdateFileMetadata addUpdateTask(Operations operations, String s)
        {
            return addUpdateTask(operations, s, "");
        }

        public UpdateFileMetadata addUpdateTask(Operations operations, String s, String s1)
        {
            mUpdateTasks.add(new BoxMetadataUpdateTask(operations, s, s1));
            return setUpdateTasks(mUpdateTasks);
        }

        protected UpdateFileMetadata setUpdateTasks(BoxArray boxarray)
        {
            mBodyMap.put("json_object", boxarray);
            return this;
        }

        public UpdateFileMetadata(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxMetadata, s, boxsession);
            mRequestMethod = BoxRequest.Methods.PUT;
            mContentType = BoxRequest.ContentTypes.JSON_PATCH;
            mUpdateTasks = new BoxArray();
        }
    }

    class UpdateFileMetadata.BoxMetadataUpdateTask extends BoxJsonObject
    {

        public static final String OPERATION = "op";
        public static final String PATH = "path";
        public static final String VALUE = "value";
        final UpdateFileMetadata this$0;

        public UpdateFileMetadata.BoxMetadataUpdateTask(UpdateFileMetadata.Operations operations, String s, String s1)
        {
            this$0 = UpdateFileMetadata.this;
            super();
            set("op", operations.toString());
            set("path", (new StringBuilder("/")).append(s).toString());
            if (operations != UpdateFileMetadata.Operations.REMOVE)
            {
                set("value", s1);
            }
        }
    }

    public static final class UpdateFileMetadata.Operations extends Enum
    {

        private static final UpdateFileMetadata.Operations $VALUES[];
        public static final UpdateFileMetadata.Operations ADD;
        public static final UpdateFileMetadata.Operations REMOVE;
        public static final UpdateFileMetadata.Operations REPLACE;
        public static final UpdateFileMetadata.Operations TEST;
        private String mName;

        public static UpdateFileMetadata.Operations valueOf(String s)
        {
            return (UpdateFileMetadata.Operations)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequestsMetadata$UpdateFileMetadata$Operations, s);
        }

        public static UpdateFileMetadata.Operations[] values()
        {
            return (UpdateFileMetadata.Operations[])$VALUES.clone();
        }

        public final String toString()
        {
            return mName;
        }

        static 
        {
            ADD = new UpdateFileMetadata.Operations("ADD", 0, "add");
            REPLACE = new UpdateFileMetadata.Operations("REPLACE", 1, "replace");
            REMOVE = new UpdateFileMetadata.Operations("REMOVE", 2, "remove");
            TEST = new UpdateFileMetadata.Operations("TEST", 3, "test");
            $VALUES = (new UpdateFileMetadata.Operations[] {
                ADD, REPLACE, REMOVE, TEST
            });
        }

        private UpdateFileMetadata.Operations(String s, int i, String s1)
        {
            super(s, i);
            mName = s1;
        }
    }


    public BoxRequestsMetadata()
    {
    }
}
