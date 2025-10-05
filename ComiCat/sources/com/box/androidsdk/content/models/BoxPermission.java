package com.box.androidsdk.content.models;

import com.box.androidsdk.content.models.BoxItem;
import com.eclipsesource.json.JsonObject;
import java.util.EnumSet;

public class BoxPermission extends BoxJsonObject {
    public BoxPermission() {
    }

    public BoxPermission(JsonObject jsonObject) {
        super(jsonObject);
    }

    /* access modifiers changed from: package-private */
    public EnumSet<BoxItem.Permission> getPermissions() {
        EnumSet<BoxItem.Permission> noneOf = EnumSet.noneOf(BoxItem.Permission.class);
        for (String next : getPropertiesKeySet()) {
            Boolean propertyAsBoolean = getPropertyAsBoolean(next);
            if (propertyAsBoolean != null && propertyAsBoolean.booleanValue()) {
                if (next.equals(BoxItem.Permission.CAN_DOWNLOAD.toString())) {
                    noneOf.add(BoxItem.Permission.CAN_DOWNLOAD);
                } else if (next.equals(BoxItem.Permission.CAN_UPLOAD.toString())) {
                    noneOf.add(BoxItem.Permission.CAN_UPLOAD);
                } else if (next.equals(BoxItem.Permission.CAN_RENAME.toString())) {
                    noneOf.add(BoxItem.Permission.CAN_RENAME);
                } else if (next.equals(BoxItem.Permission.CAN_DELETE.toString())) {
                    noneOf.add(BoxItem.Permission.CAN_DELETE);
                } else if (next.equals(BoxItem.Permission.CAN_SHARE.toString())) {
                    noneOf.add(BoxItem.Permission.CAN_SHARE);
                } else if (next.equals(BoxItem.Permission.CAN_SET_SHARE_ACCESS.toString())) {
                    noneOf.add(BoxItem.Permission.CAN_SET_SHARE_ACCESS);
                } else if (next.equals(BoxItem.Permission.CAN_PREVIEW.toString())) {
                    noneOf.add(BoxItem.Permission.CAN_PREVIEW);
                } else if (next.equals(BoxItem.Permission.CAN_COMMENT.toString())) {
                    noneOf.add(BoxItem.Permission.CAN_COMMENT);
                } else if (next.equals(BoxItem.Permission.CAN_INVITE_COLLABORATOR.toString())) {
                    noneOf.add(BoxItem.Permission.CAN_INVITE_COLLABORATOR);
                }
            }
        }
        return noneOf;
    }
}
