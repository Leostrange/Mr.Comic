package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxArray;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxMetadata;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxVoid;
import com.box.androidsdk.content.requests.BoxRequest;
import java.util.Map;

public class BoxRequestsMetadata {

    public static class AddFileMetadata extends BoxRequest<BoxMetadata, AddFileMetadata> {
        private static final long serialVersionUID = 8123965031279971578L;

        public AddFileMetadata(Map<String, Object> map, String str, BoxSession boxSession) {
            super(BoxMetadata.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.POST;
            setValues(map);
        }

        /* access modifiers changed from: protected */
        public AddFileMetadata setValues(Map<String, Object> map) {
            this.mBodyMap.putAll(map);
            return this;
        }
    }

    public static class DeleteFileMetadata extends BoxRequest<BoxVoid, DeleteFileMetadata> {
        private static final long serialVersionUID = 8123965031279971546L;

        public DeleteFileMetadata(String str, BoxSession boxSession) {
            super(BoxVoid.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.DELETE;
        }
    }

    public static class GetFileMetadata extends BoxRequest<BoxMetadata, GetFileMetadata> implements BoxCacheableRequest<BoxMetadata> {
        private static final long serialVersionUID = 8123965031279971571L;

        public GetFileMetadata(String str, BoxSession boxSession) {
            super(BoxMetadata.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public BoxMetadata sendForCachedResult() {
            return (BoxMetadata) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxMetadata> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetMetadataTemplateSchema extends BoxRequest<BoxMetadata, GetMetadataTemplateSchema> implements BoxCacheableRequest<BoxMetadata> {
        private static final long serialVersionUID = 8123965031279971586L;

        public GetMetadataTemplateSchema(String str, BoxSession boxSession) {
            super(BoxMetadata.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public BoxMetadata sendForCachedResult() {
            return (BoxMetadata) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxMetadata> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class GetMetadataTemplates extends BoxRequest<BoxMetadata, GetMetadataTemplates> implements BoxCacheableRequest<BoxMetadata> {
        private static final long serialVersionUID = 8123965031279971547L;

        public GetMetadataTemplates(String str, BoxSession boxSession) {
            super(BoxMetadata.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.GET;
        }

        public BoxMetadata sendForCachedResult() {
            return (BoxMetadata) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxMetadata> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }

    public static class UpdateFileMetadata extends BoxRequest<BoxMetadata, UpdateFileMetadata> {
        private static final long serialVersionUID = 8123965031279971549L;
        private BoxArray<BoxMetadataUpdateTask> mUpdateTasks = new BoxArray<>();

        class BoxMetadataUpdateTask extends BoxJsonObject {
            public static final String OPERATION = "op";
            public static final String PATH = "path";
            public static final String VALUE = "value";

            public BoxMetadataUpdateTask(Operations operations, String str, String str2) {
                set(OPERATION, operations.toString());
                set(PATH, "/" + str);
                if (operations != Operations.REMOVE) {
                    set(VALUE, str2);
                }
            }
        }

        public enum Operations {
            ADD("add"),
            REPLACE("replace"),
            REMOVE("remove"),
            TEST("test");
            
            private String mName;

            private Operations(String str) {
                this.mName = str;
            }

            public final String toString() {
                return this.mName;
            }
        }

        public UpdateFileMetadata(String str, BoxSession boxSession) {
            super(BoxMetadata.class, str, boxSession);
            this.mRequestMethod = BoxRequest.Methods.PUT;
            this.mContentType = BoxRequest.ContentTypes.JSON_PATCH;
        }

        public UpdateFileMetadata addUpdateTask(Operations operations, String str) {
            return addUpdateTask(operations, str, "");
        }

        public UpdateFileMetadata addUpdateTask(Operations operations, String str, String str2) {
            this.mUpdateTasks.add(new BoxMetadataUpdateTask(operations, str, str2));
            return setUpdateTasks(this.mUpdateTasks);
        }

        /* access modifiers changed from: protected */
        public UpdateFileMetadata setUpdateTasks(BoxArray<BoxMetadataUpdateTask> boxArray) {
            this.mBodyMap.put(BoxRequest.JSON_OBJECT, boxArray);
            return this;
        }
    }
}
