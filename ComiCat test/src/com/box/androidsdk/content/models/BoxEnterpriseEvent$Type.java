// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;


// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEnterpriseEvent

public static final class  extends Enum
{

    private static final ITEM_UNSYNC $VALUES[];
    public static final ITEM_UNSYNC ADD_DEVICE_ASSOCIATION;
    public static final ITEM_UNSYNC ADMIN_LOGIN;
    public static final ITEM_UNSYNC COLLABORATION_ACCEPT;
    public static final ITEM_UNSYNC COLLABORATION_EXPIRATION;
    public static final ITEM_UNSYNC COLLABORATION_INVITE;
    public static final ITEM_UNSYNC COLLABORATION_REMOVE;
    public static final ITEM_UNSYNC COLLABORATION_ROLE_CHANGE;
    public static final ITEM_UNSYNC COPY;
    public static final ITEM_UNSYNC DELETE;
    public static final ITEM_UNSYNC DELETE_USER;
    public static final ITEM_UNSYNC DOWNLOAD;
    public static final ITEM_UNSYNC EDIT;
    public static final ITEM_UNSYNC EDIT_USER;
    public static final ITEM_UNSYNC FAILED_LOGIN;
    public static final ITEM_UNSYNC GROUP_ADD_FOLDER;
    public static final ITEM_UNSYNC GROUP_ADD_USER;
    public static final ITEM_UNSYNC GROUP_CREATION;
    public static final ITEM_UNSYNC GROUP_DELETION;
    public static final ITEM_UNSYNC GROUP_EDITED;
    public static final ITEM_UNSYNC GROUP_REMOVE_FOLDER;
    public static final ITEM_UNSYNC GROUP_REMOVE_USER;
    public static final ITEM_UNSYNC ITEM_SHARED_UPDATE;
    public static final ITEM_UNSYNC ITEM_SYNC;
    public static final ITEM_UNSYNC ITEM_UNSYNC;
    public static final ITEM_UNSYNC LOCK;
    public static final ITEM_UNSYNC LOGIN;
    public static final ITEM_UNSYNC MOVE;
    public static final ITEM_UNSYNC NEW_USER;
    public static final ITEM_UNSYNC PREVIEW;
    public static final ITEM_UNSYNC REMOVE_DEVICE_ASSOCIATION;
    public static final ITEM_UNSYNC RENAME;
    public static final ITEM_UNSYNC SHARE;
    public static final ITEM_UNSYNC SHARE_EXPIRATION;
    public static final ITEM_UNSYNC STORAGE_EXPIRATION;
    public static final ITEM_UNSYNC TERMS_OF_SERVICE_AGREE;
    public static final ITEM_UNSYNC TERMS_OF_SERVICE_REJECT;
    public static final ITEM_UNSYNC UNDELETE;
    public static final ITEM_UNSYNC UNLOCK;
    public static final ITEM_UNSYNC UNSHARE;
    public static final ITEM_UNSYNC UPDATE_COLLABORATION_EXPIRATION;
    public static final ITEM_UNSYNC UPDATE_SHARE_EXPIRATION;
    public static final ITEM_UNSYNC UPLOAD;
    public static final ITEM_UNSYNC USER_AUTHENTICATE_OAUTH2_TOKEN_REFRESH;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/box/androidsdk/content/models/BoxEnterpriseEvent$Type, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        GROUP_ADD_USER = new <init>("GROUP_ADD_USER", 0);
        NEW_USER = new <init>("NEW_USER", 1);
        GROUP_CREATION = new <init>("GROUP_CREATION", 2);
        GROUP_DELETION = new <init>("GROUP_DELETION", 3);
        DELETE_USER = new <init>("DELETE_USER", 4);
        GROUP_EDITED = new <init>("GROUP_EDITED", 5);
        EDIT_USER = new <init>("EDIT_USER", 6);
        GROUP_ADD_FOLDER = new <init>("GROUP_ADD_FOLDER", 7);
        GROUP_REMOVE_USER = new <init>("GROUP_REMOVE_USER", 8);
        GROUP_REMOVE_FOLDER = new <init>("GROUP_REMOVE_FOLDER", 9);
        ADMIN_LOGIN = new <init>("ADMIN_LOGIN", 10);
        ADD_DEVICE_ASSOCIATION = new <init>("ADD_DEVICE_ASSOCIATION", 11);
        FAILED_LOGIN = new <init>("FAILED_LOGIN", 12);
        LOGIN = new <init>("LOGIN", 13);
        USER_AUTHENTICATE_OAUTH2_TOKEN_REFRESH = new <init>("USER_AUTHENTICATE_OAUTH2_TOKEN_REFRESH", 14);
        REMOVE_DEVICE_ASSOCIATION = new <init>("REMOVE_DEVICE_ASSOCIATION", 15);
        TERMS_OF_SERVICE_AGREE = new <init>("TERMS_OF_SERVICE_AGREE", 16);
        TERMS_OF_SERVICE_REJECT = new <init>("TERMS_OF_SERVICE_REJECT", 17);
        COPY = new <init>("COPY", 18);
        DELETE = new <init>("DELETE", 19);
        DOWNLOAD = new <init>("DOWNLOAD", 20);
        EDIT = new <init>("EDIT", 21);
        LOCK = new <init>("LOCK", 22);
        MOVE = new <init>("MOVE", 23);
        PREVIEW = new <init>("PREVIEW", 24);
        RENAME = new <init>("RENAME", 25);
        STORAGE_EXPIRATION = new <init>("STORAGE_EXPIRATION", 26);
        UNDELETE = new <init>("UNDELETE", 27);
        UNLOCK = new <init>("UNLOCK", 28);
        UPLOAD = new <init>("UPLOAD", 29);
        SHARE = new <init>("SHARE", 30);
        ITEM_SHARED_UPDATE = new <init>("ITEM_SHARED_UPDATE", 31);
        UPDATE_SHARE_EXPIRATION = new <init>("UPDATE_SHARE_EXPIRATION", 32);
        SHARE_EXPIRATION = new <init>("SHARE_EXPIRATION", 33);
        UNSHARE = new <init>("UNSHARE", 34);
        COLLABORATION_ACCEPT = new <init>("COLLABORATION_ACCEPT", 35);
        COLLABORATION_ROLE_CHANGE = new <init>("COLLABORATION_ROLE_CHANGE", 36);
        UPDATE_COLLABORATION_EXPIRATION = new <init>("UPDATE_COLLABORATION_EXPIRATION", 37);
        COLLABORATION_REMOVE = new <init>("COLLABORATION_REMOVE", 38);
        COLLABORATION_INVITE = new <init>("COLLABORATION_INVITE", 39);
        COLLABORATION_EXPIRATION = new <init>("COLLABORATION_EXPIRATION", 40);
        ITEM_SYNC = new <init>("ITEM_SYNC", 41);
        ITEM_UNSYNC = new <init>("ITEM_UNSYNC", 42);
        $VALUES = (new .VALUES[] {
            GROUP_ADD_USER, NEW_USER, GROUP_CREATION, GROUP_DELETION, DELETE_USER, GROUP_EDITED, EDIT_USER, GROUP_ADD_FOLDER, GROUP_REMOVE_USER, GROUP_REMOVE_FOLDER, 
            ADMIN_LOGIN, ADD_DEVICE_ASSOCIATION, FAILED_LOGIN, LOGIN, USER_AUTHENTICATE_OAUTH2_TOKEN_REFRESH, REMOVE_DEVICE_ASSOCIATION, TERMS_OF_SERVICE_AGREE, TERMS_OF_SERVICE_REJECT, COPY, DELETE, 
            DOWNLOAD, EDIT, LOCK, MOVE, PREVIEW, RENAME, STORAGE_EXPIRATION, UNDELETE, UNLOCK, UPLOAD, 
            SHARE, ITEM_SHARED_UPDATE, UPDATE_SHARE_EXPIRATION, SHARE_EXPIRATION, UNSHARE, COLLABORATION_ACCEPT, COLLABORATION_ROLE_CHANGE, UPDATE_COLLABORATION_EXPIRATION, COLLABORATION_REMOVE, COLLABORATION_INVITE, 
            COLLABORATION_EXPIRATION, ITEM_SYNC, ITEM_UNSYNC
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
