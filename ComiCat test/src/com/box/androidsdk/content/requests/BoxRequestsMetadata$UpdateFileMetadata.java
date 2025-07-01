// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxArray;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxMetadata;
import com.box.androidsdk.content.models.BoxSession;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestsMetadata

public static class mUpdateTasks extends BoxRequest
{
    class BoxMetadataUpdateTask extends BoxJsonObject
    {

        public static final String OPERATION = "op";
        public static final String PATH = "path";
        public static final String VALUE = "value";
        final BoxRequestsMetadata.UpdateFileMetadata this$0;

        public BoxMetadataUpdateTask(Operations operations, String s, String s1)
        {
            this$0 = BoxRequestsMetadata.UpdateFileMetadata.this;
            super();
            set("op", operations.toString());
            set("path", (new StringBuilder("/")).append(s).toString());
            if (operations != Operations.REMOVE)
            {
                set("value", s1);
            }
        }
    }

    public static final class Operations extends Enum
    {

        private static final Operations $VALUES[];
        public static final Operations ADD;
        public static final Operations REMOVE;
        public static final Operations REPLACE;
        public static final Operations TEST;
        private String mName;

        public static Operations valueOf(String s)
        {
            return (Operations)Enum.valueOf(com/box/androidsdk/content/requests/BoxRequestsMetadata$UpdateFileMetadata$Operations, s);
        }

        public static Operations[] values()
        {
            return (Operations[])$VALUES.clone();
        }

        public final String toString()
        {
            return mName;
        }

        static 
        {
            ADD = new Operations("ADD", 0, "add");
            REPLACE = new Operations("REPLACE", 1, "replace");
            REMOVE = new Operations("REMOVE", 2, "remove");
            TEST = new Operations("TEST", 3, "test");
            $VALUES = (new Operations[] {
                ADD, REPLACE, REMOVE, TEST
            });
        }

        private Operations(String s, int i, String s1)
        {
            super(s, i);
            mName = s1;
        }
    }


    private static final long serialVersionUID = 0x70be1f2741234cddL;
    private BoxArray mUpdateTasks;

    public Operations addUpdateTask(Operations operations, String s)
    {
        return addUpdateTask(operations, s, "");
    }

    public Operations addUpdateTask(Operations operations, String s, String s1)
    {
        mUpdateTasks.add(new BoxMetadataUpdateTask(operations, s, s1));
        return setUpdateTasks(mUpdateTasks);
    }

    protected mUpdateTasks setUpdateTasks(BoxArray boxarray)
    {
        mBodyMap.put("json_object", boxarray);
        return this;
    }

    public BoxMetadataUpdateTask.set(String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxMetadata, s, boxsession);
        mRequestMethod = mRequestMethod;
        mContentType = mContentType;
        mUpdateTasks = new BoxArray();
    }
}
