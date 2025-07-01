// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject

public class BoxPermission extends BoxJsonObject
{

    public BoxPermission()
    {
    }

    public BoxPermission(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    EnumSet getPermissions()
    {
        EnumSet enumset = EnumSet.noneOf(com/box/androidsdk/content/models/BoxItem$Permission);
        Iterator iterator = getPropertiesKeySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            Boolean boolean1 = getPropertyAsBoolean(s);
            if (boolean1 != null && boolean1.booleanValue())
            {
                if (s.equals(BoxItem.Permission.CAN_DOWNLOAD.toString()))
                {
                    enumset.add(BoxItem.Permission.CAN_DOWNLOAD);
                } else
                if (s.equals(BoxItem.Permission.CAN_UPLOAD.toString()))
                {
                    enumset.add(BoxItem.Permission.CAN_UPLOAD);
                } else
                if (s.equals(BoxItem.Permission.CAN_RENAME.toString()))
                {
                    enumset.add(BoxItem.Permission.CAN_RENAME);
                } else
                if (s.equals(BoxItem.Permission.CAN_DELETE.toString()))
                {
                    enumset.add(BoxItem.Permission.CAN_DELETE);
                } else
                if (s.equals(BoxItem.Permission.CAN_SHARE.toString()))
                {
                    enumset.add(BoxItem.Permission.CAN_SHARE);
                } else
                if (s.equals(BoxItem.Permission.CAN_SET_SHARE_ACCESS.toString()))
                {
                    enumset.add(BoxItem.Permission.CAN_SET_SHARE_ACCESS);
                } else
                if (s.equals(BoxItem.Permission.CAN_PREVIEW.toString()))
                {
                    enumset.add(BoxItem.Permission.CAN_PREVIEW);
                } else
                if (s.equals(BoxItem.Permission.CAN_COMMENT.toString()))
                {
                    enumset.add(BoxItem.Permission.CAN_COMMENT);
                } else
                if (s.equals(BoxItem.Permission.CAN_INVITE_COLLABORATOR.toString()))
                {
                    enumset.add(BoxItem.Permission.CAN_INVITE_COLLABORATOR);
                }
            }
        } while (true);
        return enumset;
    }
}
