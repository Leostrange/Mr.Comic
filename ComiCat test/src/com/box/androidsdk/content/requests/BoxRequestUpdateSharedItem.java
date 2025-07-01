// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLink;
import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.Date;
import java.util.LinkedHashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItemUpdate, BoxRequest

public abstract class BoxRequestUpdateSharedItem extends BoxRequestItemUpdate
{

    protected BoxRequestUpdateSharedItem(BoxRequestItemUpdate boxrequestitemupdate)
    {
        super(boxrequestitemupdate);
    }

    public BoxRequestUpdateSharedItem(Class class1, String s, String s1, BoxSession boxsession)
    {
        super(class1, s, s1, boxsession);
        mRequestMethod = BoxRequest.Methods.PUT;
    }

    private JsonObject getPermissionsJsonObject()
    {
        if (mBodyMap.containsKey("permissions"))
        {
            return ((com.box.androidsdk.content.models.BoxSharedLink.Permissions)mBodyMap.get("permissions")).toJsonObject();
        } else
        {
            return new JsonObject();
        }
    }

    private JsonObject getSharedLinkJsonObject()
    {
        if (mBodyMap.containsKey("shared_link"))
        {
            return ((BoxSharedLink)mBodyMap.get("shared_link")).toJsonObject();
        } else
        {
            return new JsonObject();
        }
    }

    public com.box.androidsdk.content.models.BoxSharedLink.Access getAccess()
    {
        if (mBodyMap.containsKey("shared_link"))
        {
            return ((BoxSharedLink)mBodyMap.get("shared_link")).getAccess();
        } else
        {
            return null;
        }
    }

    protected Boolean getCanDownload()
    {
        if (mBodyMap.containsKey("shared_link"))
        {
            return ((BoxSharedLink)mBodyMap.get("shared_link")).getPermissions().getCanDownload();
        } else
        {
            return null;
        }
    }

    public String getPassword()
    {
        if (mBodyMap.containsKey("shared_link"))
        {
            return ((BoxSharedLink)mBodyMap.get("shared_link")).getPassword();
        } else
        {
            return null;
        }
    }

    public Date getUnsharedAt()
    {
        if (mBodyMap.containsKey("shared_link"))
        {
            return ((BoxSharedLink)mBodyMap.get("shared_link")).getUnsharedDate();
        } else
        {
            return null;
        }
    }

    public BoxRequest setAccess(com.box.androidsdk.content.models.BoxSharedLink.Access access)
    {
        JsonObject jsonobject = getSharedLinkJsonObject();
        jsonobject.add("access", SdkUtils.getAsStringSafely(access));
        access = new BoxSharedLink(jsonobject);
        mBodyMap.put("shared_link", access);
        return this;
    }

    protected BoxRequest setCanDownload(boolean flag)
    {
        Object obj = getPermissionsJsonObject();
        ((JsonObject) (obj)).add("can_download", flag);
        obj = new com.box.androidsdk.content.models.BoxSharedLink.Permissions(((JsonObject) (obj)));
        JsonObject jsonobject = getSharedLinkJsonObject();
        jsonobject.add("permissions", ((com.box.androidsdk.content.models.BoxSharedLink.Permissions) (obj)).toJsonObject());
        obj = new BoxSharedLink(jsonobject);
        mBodyMap.put("shared_link", obj);
        return this;
    }

    public BoxRequest setPassword(String s)
    {
        JsonObject jsonobject = getSharedLinkJsonObject();
        jsonobject.add("password", s);
        s = new BoxSharedLink(jsonobject);
        mBodyMap.put("shared_link", s);
        return this;
    }

    public BoxRequest setRemoveUnsharedAtDate()
    {
        return setUnsharedAt(null);
    }

    public BoxRequest setUnsharedAt(Date date)
    {
        JsonObject jsonobject = getSharedLinkJsonObject();
        if (date == null)
        {
            jsonobject.add("unshared_at", JsonValue.NULL);
        } else
        {
            jsonobject.add("unshared_at", BoxDateFormat.format(BoxDateFormat.convertToDay(date)));
        }
        date = new BoxSharedLink(jsonobject);
        mBodyMap.put("shared_link", date);
        return this;
    }

    public BoxRequestUpdateSharedItem updateSharedLink()
    {
        return this;
    }
}
