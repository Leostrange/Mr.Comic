// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity, BoxCollaborator

public class BoxEvent extends BoxEntity
{
    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type ADD_LOGIN_ACTIVITY_DEVICE;
        public static final Type CHANGE_ADMIN_ROLE;
        public static final Type COLLAB_ADD_COLLABORATOR;
        public static final Type COLLAB_INVITE_COLLABORATOR;
        public static final Type COLLAB_REMOVE_COLLABORATOR;
        public static final Type COLLAB_ROLE_CHANGE;
        public static final Type COMMENT_CREATE;
        public static final Type ITEM_COPY;
        public static final Type ITEM_CREATE;
        public static final Type ITEM_DOWNLOAD;
        public static final Type ITEM_MOVE;
        public static final Type ITEM_PREVIEW;
        public static final Type ITEM_RENAME;
        public static final Type ITEM_SHARED;
        public static final Type ITEM_SHARED_CREATE;
        public static final Type ITEM_SHARED_UNSHARE;
        public static final Type ITEM_SYNC;
        public static final Type ITEM_TRASH;
        public static final Type ITEM_UNDELETE_VIA_TRASH;
        public static final Type ITEM_UNSYNC;
        public static final Type ITEM_UPLOAD;
        public static final Type LOCK_CREATE;
        public static final Type LOCK_DESTROY;
        public static final Type REMOVE_LOGIN_ACTIVITY_DEVICE;
        public static final Type TAG_ITEM_CREATE;
        public static final Type TASK_ASSIGNMENT_CREATE;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/box/androidsdk/content/models/BoxEvent$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            ITEM_CREATE = new Type("ITEM_CREATE", 0);
            ITEM_UPLOAD = new Type("ITEM_UPLOAD", 1);
            COMMENT_CREATE = new Type("COMMENT_CREATE", 2);
            ITEM_DOWNLOAD = new Type("ITEM_DOWNLOAD", 3);
            ITEM_PREVIEW = new Type("ITEM_PREVIEW", 4);
            ITEM_MOVE = new Type("ITEM_MOVE", 5);
            ITEM_COPY = new Type("ITEM_COPY", 6);
            TASK_ASSIGNMENT_CREATE = new Type("TASK_ASSIGNMENT_CREATE", 7);
            LOCK_CREATE = new Type("LOCK_CREATE", 8);
            LOCK_DESTROY = new Type("LOCK_DESTROY", 9);
            ITEM_TRASH = new Type("ITEM_TRASH", 10);
            ITEM_UNDELETE_VIA_TRASH = new Type("ITEM_UNDELETE_VIA_TRASH", 11);
            COLLAB_ADD_COLLABORATOR = new Type("COLLAB_ADD_COLLABORATOR", 12);
            COLLAB_REMOVE_COLLABORATOR = new Type("COLLAB_REMOVE_COLLABORATOR", 13);
            COLLAB_INVITE_COLLABORATOR = new Type("COLLAB_INVITE_COLLABORATOR", 14);
            COLLAB_ROLE_CHANGE = new Type("COLLAB_ROLE_CHANGE", 15);
            ITEM_SYNC = new Type("ITEM_SYNC", 16);
            ITEM_UNSYNC = new Type("ITEM_UNSYNC", 17);
            ITEM_RENAME = new Type("ITEM_RENAME", 18);
            ITEM_SHARED_CREATE = new Type("ITEM_SHARED_CREATE", 19);
            ITEM_SHARED_UNSHARE = new Type("ITEM_SHARED_UNSHARE", 20);
            ITEM_SHARED = new Type("ITEM_SHARED", 21);
            TAG_ITEM_CREATE = new Type("TAG_ITEM_CREATE", 22);
            ADD_LOGIN_ACTIVITY_DEVICE = new Type("ADD_LOGIN_ACTIVITY_DEVICE", 23);
            REMOVE_LOGIN_ACTIVITY_DEVICE = new Type("REMOVE_LOGIN_ACTIVITY_DEVICE", 24);
            CHANGE_ADMIN_ROLE = new Type("CHANGE_ADMIN_ROLE", 25);
            $VALUES = (new Type[] {
                ITEM_CREATE, ITEM_UPLOAD, COMMENT_CREATE, ITEM_DOWNLOAD, ITEM_PREVIEW, ITEM_MOVE, ITEM_COPY, TASK_ASSIGNMENT_CREATE, LOCK_CREATE, LOCK_DESTROY, 
                ITEM_TRASH, ITEM_UNDELETE_VIA_TRASH, COLLAB_ADD_COLLABORATOR, COLLAB_REMOVE_COLLABORATOR, COLLAB_INVITE_COLLABORATOR, COLLAB_ROLE_CHANGE, ITEM_SYNC, ITEM_UNSYNC, ITEM_RENAME, ITEM_SHARED_CREATE, 
                ITEM_SHARED_UNSHARE, ITEM_SHARED, TAG_ITEM_CREATE, ADD_LOGIN_ACTIVITY_DEVICE, REMOVE_LOGIN_ACTIVITY_DEVICE, CHANGE_ADMIN_ROLE
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String EVENT_TYPE_ADD_LOGIN_ACTIVITY_DEVICE = "ADD_LOGIN_ACTIVITY_DEVICE";
    public static final String EVENT_TYPE_COLLAB_ADD_COLLABORATOR = "COLLAB_ADD_COLLABORATOR";
    public static final String EVENT_TYPE_COLLAB_INVITE_COLLABORATOR = "COLLAB_INVITE_COLLABORATOR";
    public static final String EVENT_TYPE_COMMENT_CREATE = "COMMENT_CREATE";
    public static final String EVENT_TYPE_ITEM_COPY = "ITEM_COPY";
    public static final String EVENT_TYPE_ITEM_CREATE = "ITEM_CREATE";
    public static final String EVENT_TYPE_ITEM_DOWNLOAD = "ITEM_DOWNLOAD";
    public static final String EVENT_TYPE_ITEM_MOVE = "ITEM_MOVE";
    public static final String EVENT_TYPE_ITEM_PREVIEW = "ITEM_PREVIEW";
    public static final String EVENT_TYPE_ITEM_RENAME = "ITEM_RENAME";
    public static final String EVENT_TYPE_ITEM_SHARED = "ITEM_SHARED";
    public static final String EVENT_TYPE_ITEM_SHARED_CREATE = "ITEM_SHARED_CREATE";
    public static final String EVENT_TYPE_ITEM_SHARED_UNSHARE = "ITEM_SHARED_UNSHARE";
    public static final String EVENT_TYPE_ITEM_SYNC = "ITEM_SYNC";
    public static final String EVENT_TYPE_ITEM_TRASH = "ITEM_TRASH";
    public static final String EVENT_TYPE_ITEM_UNDELETE_VIA_TRASH = "ITEM_UNDELETE_VIA_TRASH";
    public static final String EVENT_TYPE_ITEM_UNSYNC = "ITEM_UNSYNC";
    public static final String EVENT_TYPE_ITEM_UPLOAD = "ITEM_UPLOAD";
    public static final String EVENT_TYPE_LOCK_CREATE = "LOCK_CREATE";
    public static final String EVENT_TYPE_LOCK_DESTROY = "LOCK_DESTROY";
    public static final String EVENT_TYPE_TAG_ITEM_CREATE = "TAG_ITEM_CREATE";
    public static final String EVENT_TYPE_TASK_ASSIGNMENT_CREATE = "TASK_ASSIGNMENT_CREATE";
    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_CREATED_BY = "created_by";
    public static final String FIELD_EVENT_ID = "event_id";
    public static final String FIELD_EVENT_TYPE = "event_type";
    public static final String FIELD_IS_PACKAGE = "is_package";
    public static final String FIELD_RECORDED_AT = "recorded_at";
    public static final String FIELD_SESSION_ID = "session_id";
    public static final String FIELD_SOURCE = "source";
    public static final String FIELD_TYPE = "type";
    public static final String TYPE = "event";
    private static final long serialVersionUID = 0xe0e09cf1228ed758L;

    public BoxEvent()
    {
    }

    public BoxEvent(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public Date getCreatedAt()
    {
        return getPropertyAsDate("created_at");
    }

    public BoxCollaborator getCreatedBy()
    {
        return (BoxCollaborator)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "created_by");
    }

    public String getEventId()
    {
        return getPropertyAsString("event_id");
    }

    public String getEventType()
    {
        return getPropertyAsString("event_type");
    }

    public Boolean getIsPackage()
    {
        return getPropertyAsBoolean("is_package");
    }

    public Date getRecordedAt()
    {
        return getPropertyAsDate("recorded_at");
    }

    public String getSessionId()
    {
        return getPropertyAsString("session_id");
    }

    public BoxEntity getSource()
    {
        return (BoxEntity)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "source");
    }

    public String getType()
    {
        return getPropertyAsString("type");
    }
}
