// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxItem

public static final class value extends Enum
{

    private static final CAN_COMMENT $VALUES[];
    public static final CAN_COMMENT CAN_COMMENT;
    public static final CAN_COMMENT CAN_DELETE;
    public static final CAN_COMMENT CAN_DOWNLOAD;
    public static final CAN_COMMENT CAN_INVITE_COLLABORATOR;
    public static final CAN_COMMENT CAN_PREVIEW;
    public static final CAN_COMMENT CAN_RENAME;
    public static final CAN_COMMENT CAN_SET_SHARE_ACCESS;
    public static final CAN_COMMENT CAN_SHARE;
    public static final CAN_COMMENT CAN_UPLOAD;
    private final String value;

    public static value fromString(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            value avalue[] = values();
            int j = avalue.length;
            for (int i = 0; i < j; i++)
            {
                value value1 = avalue[i];
                if (s.equalsIgnoreCase(value1.name()))
                {
                    return value1;
                }
            }

        }
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[] {
            s
        }));
    }

    public static name valueOf(String s)
    {
        return (name)Enum.valueOf(com/box/androidsdk/content/models/BoxItem$Permission, s);
    }

    public static name[] values()
    {
        return (name[])$VALUES.clone();
    }

    public final String toString()
    {
        return value;
    }

    static 
    {
        CAN_PREVIEW = new <init>("CAN_PREVIEW", 0, "can_preview");
        CAN_DOWNLOAD = new <init>("CAN_DOWNLOAD", 1, "can_download");
        CAN_UPLOAD = new <init>("CAN_UPLOAD", 2, "can_upload");
        CAN_INVITE_COLLABORATOR = new <init>("CAN_INVITE_COLLABORATOR", 3, "can_invite_collaborator");
        CAN_RENAME = new <init>("CAN_RENAME", 4, "can_rename");
        CAN_DELETE = new <init>("CAN_DELETE", 5, "can_delete");
        CAN_SHARE = new <init>("CAN_SHARE", 6, "can_share");
        CAN_SET_SHARE_ACCESS = new <init>("CAN_SET_SHARE_ACCESS", 7, "can_set_share_access");
        CAN_COMMENT = new <init>("CAN_COMMENT", 8, "can_comment");
        $VALUES = (new .VALUES[] {
            CAN_PREVIEW, CAN_DOWNLOAD, CAN_UPLOAD, CAN_INVITE_COLLABORATOR, CAN_RENAME, CAN_DELETE, CAN_SHARE, CAN_SET_SHARE_ACCESS, CAN_COMMENT
        });
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        value = s1;
    }
}
