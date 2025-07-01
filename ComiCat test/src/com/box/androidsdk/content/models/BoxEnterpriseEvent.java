// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEvent, BoxEntity, BoxCollaborator

public class BoxEnterpriseEvent extends BoxEvent
{
    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type ADD_DEVICE_ASSOCIATION;
        public static final Type ADMIN_LOGIN;
        public static final Type COLLABORATION_ACCEPT;
        public static final Type COLLABORATION_EXPIRATION;
        public static final Type COLLABORATION_INVITE;
        public static final Type COLLABORATION_REMOVE;
        public static final Type COLLABORATION_ROLE_CHANGE;
        public static final Type COPY;
        public static final Type DELETE;
        public static final Type DELETE_USER;
        public static final Type DOWNLOAD;
        public static final Type EDIT;
        public static final Type EDIT_USER;
        public static final Type FAILED_LOGIN;
        public static final Type GROUP_ADD_FOLDER;
        public static final Type GROUP_ADD_USER;
        public static final Type GROUP_CREATION;
        public static final Type GROUP_DELETION;
        public static final Type GROUP_EDITED;
        public static final Type GROUP_REMOVE_FOLDER;
        public static final Type GROUP_REMOVE_USER;
        public static final Type ITEM_SHARED_UPDATE;
        public static final Type ITEM_SYNC;
        public static final Type ITEM_UNSYNC;
        public static final Type LOCK;
        public static final Type LOGIN;
        public static final Type MOVE;
        public static final Type NEW_USER;
        public static final Type PREVIEW;
        public static final Type REMOVE_DEVICE_ASSOCIATION;
        public static final Type RENAME;
        public static final Type SHARE;
        public static final Type SHARE_EXPIRATION;
        public static final Type STORAGE_EXPIRATION;
        public static final Type TERMS_OF_SERVICE_AGREE;
        public static final Type TERMS_OF_SERVICE_REJECT;
        public static final Type UNDELETE;
        public static final Type UNLOCK;
        public static final Type UNSHARE;
        public static final Type UPDATE_COLLABORATION_EXPIRATION;
        public static final Type UPDATE_SHARE_EXPIRATION;
        public static final Type UPLOAD;
        public static final Type USER_AUTHENTICATE_OAUTH2_TOKEN_REFRESH;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/box/androidsdk/content/models/BoxEnterpriseEvent$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            GROUP_ADD_USER = new Type("GROUP_ADD_USER", 0);
            NEW_USER = new Type("NEW_USER", 1);
            GROUP_CREATION = new Type("GROUP_CREATION", 2);
            GROUP_DELETION = new Type("GROUP_DELETION", 3);
            DELETE_USER = new Type("DELETE_USER", 4);
            GROUP_EDITED = new Type("GROUP_EDITED", 5);
            EDIT_USER = new Type("EDIT_USER", 6);
            GROUP_ADD_FOLDER = new Type("GROUP_ADD_FOLDER", 7);
            GROUP_REMOVE_USER = new Type("GROUP_REMOVE_USER", 8);
            GROUP_REMOVE_FOLDER = new Type("GROUP_REMOVE_FOLDER", 9);
            ADMIN_LOGIN = new Type("ADMIN_LOGIN", 10);
            ADD_DEVICE_ASSOCIATION = new Type("ADD_DEVICE_ASSOCIATION", 11);
            FAILED_LOGIN = new Type("FAILED_LOGIN", 12);
            LOGIN = new Type("LOGIN", 13);
            USER_AUTHENTICATE_OAUTH2_TOKEN_REFRESH = new Type("USER_AUTHENTICATE_OAUTH2_TOKEN_REFRESH", 14);
            REMOVE_DEVICE_ASSOCIATION = new Type("REMOVE_DEVICE_ASSOCIATION", 15);
            TERMS_OF_SERVICE_AGREE = new Type("TERMS_OF_SERVICE_AGREE", 16);
            TERMS_OF_SERVICE_REJECT = new Type("TERMS_OF_SERVICE_REJECT", 17);
            COPY = new Type("COPY", 18);
            DELETE = new Type("DELETE", 19);
            DOWNLOAD = new Type("DOWNLOAD", 20);
            EDIT = new Type("EDIT", 21);
            LOCK = new Type("LOCK", 22);
            MOVE = new Type("MOVE", 23);
            PREVIEW = new Type("PREVIEW", 24);
            RENAME = new Type("RENAME", 25);
            STORAGE_EXPIRATION = new Type("STORAGE_EXPIRATION", 26);
            UNDELETE = new Type("UNDELETE", 27);
            UNLOCK = new Type("UNLOCK", 28);
            UPLOAD = new Type("UPLOAD", 29);
            SHARE = new Type("SHARE", 30);
            ITEM_SHARED_UPDATE = new Type("ITEM_SHARED_UPDATE", 31);
            UPDATE_SHARE_EXPIRATION = new Type("UPDATE_SHARE_EXPIRATION", 32);
            SHARE_EXPIRATION = new Type("SHARE_EXPIRATION", 33);
            UNSHARE = new Type("UNSHARE", 34);
            COLLABORATION_ACCEPT = new Type("COLLABORATION_ACCEPT", 35);
            COLLABORATION_ROLE_CHANGE = new Type("COLLABORATION_ROLE_CHANGE", 36);
            UPDATE_COLLABORATION_EXPIRATION = new Type("UPDATE_COLLABORATION_EXPIRATION", 37);
            COLLABORATION_REMOVE = new Type("COLLABORATION_REMOVE", 38);
            COLLABORATION_INVITE = new Type("COLLABORATION_INVITE", 39);
            COLLABORATION_EXPIRATION = new Type("COLLABORATION_EXPIRATION", 40);
            ITEM_SYNC = new Type("ITEM_SYNC", 41);
            ITEM_UNSYNC = new Type("ITEM_UNSYNC", 42);
            $VALUES = (new Type[] {
                GROUP_ADD_USER, NEW_USER, GROUP_CREATION, GROUP_DELETION, DELETE_USER, GROUP_EDITED, EDIT_USER, GROUP_ADD_FOLDER, GROUP_REMOVE_USER, GROUP_REMOVE_FOLDER, 
                ADMIN_LOGIN, ADD_DEVICE_ASSOCIATION, FAILED_LOGIN, LOGIN, USER_AUTHENTICATE_OAUTH2_TOKEN_REFRESH, REMOVE_DEVICE_ASSOCIATION, TERMS_OF_SERVICE_AGREE, TERMS_OF_SERVICE_REJECT, COPY, DELETE, 
                DOWNLOAD, EDIT, LOCK, MOVE, PREVIEW, RENAME, STORAGE_EXPIRATION, UNDELETE, UNLOCK, UPLOAD, 
                SHARE, ITEM_SHARED_UPDATE, UPDATE_SHARE_EXPIRATION, SHARE_EXPIRATION, UNSHARE, COLLABORATION_ACCEPT, COLLABORATION_ROLE_CHANGE, UPDATE_COLLABORATION_EXPIRATION, COLLABORATION_REMOVE, COLLABORATION_INVITE, 
                COLLABORATION_EXPIRATION, ITEM_SYNC, ITEM_UNSYNC
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String FIELD_ACCESSIBLE_BY = "accessible_by";
    public static final String FIELD_ADDITIONAL_DETAILS = "additional_details";
    public static final String FIELD_IP_ADDRESS = "ip_address";
    private static final long serialVersionUID = 0xec80e3bb157730bdL;

    public BoxEnterpriseEvent()
    {
    }

    public BoxEnterpriseEvent(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public BoxCollaborator getAccessibleBy()
    {
        return (BoxCollaborator)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "accessible_by");
    }

    public String getAdditionalDetails()
    {
        return getPropertyAsString("additional_details");
    }

    public String getIpAddress()
    {
        return getPropertyAsString("ip_address");
    }
}
