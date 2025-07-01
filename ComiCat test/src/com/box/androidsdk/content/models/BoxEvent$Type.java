// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;


// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEvent

public static final class  extends Enum
{

    private static final CHANGE_ADMIN_ROLE $VALUES[];
    public static final CHANGE_ADMIN_ROLE ADD_LOGIN_ACTIVITY_DEVICE;
    public static final CHANGE_ADMIN_ROLE CHANGE_ADMIN_ROLE;
    public static final CHANGE_ADMIN_ROLE COLLAB_ADD_COLLABORATOR;
    public static final CHANGE_ADMIN_ROLE COLLAB_INVITE_COLLABORATOR;
    public static final CHANGE_ADMIN_ROLE COLLAB_REMOVE_COLLABORATOR;
    public static final CHANGE_ADMIN_ROLE COLLAB_ROLE_CHANGE;
    public static final CHANGE_ADMIN_ROLE COMMENT_CREATE;
    public static final CHANGE_ADMIN_ROLE ITEM_COPY;
    public static final CHANGE_ADMIN_ROLE ITEM_CREATE;
    public static final CHANGE_ADMIN_ROLE ITEM_DOWNLOAD;
    public static final CHANGE_ADMIN_ROLE ITEM_MOVE;
    public static final CHANGE_ADMIN_ROLE ITEM_PREVIEW;
    public static final CHANGE_ADMIN_ROLE ITEM_RENAME;
    public static final CHANGE_ADMIN_ROLE ITEM_SHARED;
    public static final CHANGE_ADMIN_ROLE ITEM_SHARED_CREATE;
    public static final CHANGE_ADMIN_ROLE ITEM_SHARED_UNSHARE;
    public static final CHANGE_ADMIN_ROLE ITEM_SYNC;
    public static final CHANGE_ADMIN_ROLE ITEM_TRASH;
    public static final CHANGE_ADMIN_ROLE ITEM_UNDELETE_VIA_TRASH;
    public static final CHANGE_ADMIN_ROLE ITEM_UNSYNC;
    public static final CHANGE_ADMIN_ROLE ITEM_UPLOAD;
    public static final CHANGE_ADMIN_ROLE LOCK_CREATE;
    public static final CHANGE_ADMIN_ROLE LOCK_DESTROY;
    public static final CHANGE_ADMIN_ROLE REMOVE_LOGIN_ACTIVITY_DEVICE;
    public static final CHANGE_ADMIN_ROLE TAG_ITEM_CREATE;
    public static final CHANGE_ADMIN_ROLE TASK_ASSIGNMENT_CREATE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/box/androidsdk/content/models/BoxEvent$Type, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        ITEM_CREATE = new <init>("ITEM_CREATE", 0);
        ITEM_UPLOAD = new <init>("ITEM_UPLOAD", 1);
        COMMENT_CREATE = new <init>("COMMENT_CREATE", 2);
        ITEM_DOWNLOAD = new <init>("ITEM_DOWNLOAD", 3);
        ITEM_PREVIEW = new <init>("ITEM_PREVIEW", 4);
        ITEM_MOVE = new <init>("ITEM_MOVE", 5);
        ITEM_COPY = new <init>("ITEM_COPY", 6);
        TASK_ASSIGNMENT_CREATE = new <init>("TASK_ASSIGNMENT_CREATE", 7);
        LOCK_CREATE = new <init>("LOCK_CREATE", 8);
        LOCK_DESTROY = new <init>("LOCK_DESTROY", 9);
        ITEM_TRASH = new <init>("ITEM_TRASH", 10);
        ITEM_UNDELETE_VIA_TRASH = new <init>("ITEM_UNDELETE_VIA_TRASH", 11);
        COLLAB_ADD_COLLABORATOR = new <init>("COLLAB_ADD_COLLABORATOR", 12);
        COLLAB_REMOVE_COLLABORATOR = new <init>("COLLAB_REMOVE_COLLABORATOR", 13);
        COLLAB_INVITE_COLLABORATOR = new <init>("COLLAB_INVITE_COLLABORATOR", 14);
        COLLAB_ROLE_CHANGE = new <init>("COLLAB_ROLE_CHANGE", 15);
        ITEM_SYNC = new <init>("ITEM_SYNC", 16);
        ITEM_UNSYNC = new <init>("ITEM_UNSYNC", 17);
        ITEM_RENAME = new <init>("ITEM_RENAME", 18);
        ITEM_SHARED_CREATE = new <init>("ITEM_SHARED_CREATE", 19);
        ITEM_SHARED_UNSHARE = new <init>("ITEM_SHARED_UNSHARE", 20);
        ITEM_SHARED = new <init>("ITEM_SHARED", 21);
        TAG_ITEM_CREATE = new <init>("TAG_ITEM_CREATE", 22);
        ADD_LOGIN_ACTIVITY_DEVICE = new <init>("ADD_LOGIN_ACTIVITY_DEVICE", 23);
        REMOVE_LOGIN_ACTIVITY_DEVICE = new <init>("REMOVE_LOGIN_ACTIVITY_DEVICE", 24);
        CHANGE_ADMIN_ROLE = new <init>("CHANGE_ADMIN_ROLE", 25);
        $VALUES = (new .VALUES[] {
            ITEM_CREATE, ITEM_UPLOAD, COMMENT_CREATE, ITEM_DOWNLOAD, ITEM_PREVIEW, ITEM_MOVE, ITEM_COPY, TASK_ASSIGNMENT_CREATE, LOCK_CREATE, LOCK_DESTROY, 
            ITEM_TRASH, ITEM_UNDELETE_VIA_TRASH, COLLAB_ADD_COLLABORATOR, COLLAB_REMOVE_COLLABORATOR, COLLAB_INVITE_COLLABORATOR, COLLAB_ROLE_CHANGE, ITEM_SYNC, ITEM_UNSYNC, ITEM_RENAME, ITEM_SHARED_CREATE, 
            ITEM_SHARED_UNSHARE, ITEM_SHARED, TAG_ITEM_CREATE, ADD_LOGIN_ACTIVITY_DEVICE, REMOVE_LOGIN_ACTIVITY_DEVICE, CHANGE_ADMIN_ROLE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
