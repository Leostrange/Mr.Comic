// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity

public abstract class BoxCollaborator extends BoxEntity
{

    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_MODIFIED_AT = "modified_at";
    public static final String FIELD_NAME = "name";
    private static final long serialVersionUID = 0x455385a835bc4697L;

    public BoxCollaborator()
    {
    }

    public BoxCollaborator(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public Date getCreatedAt()
    {
        return getPropertyAsDate("created_at");
    }

    public Date getModifiedAt()
    {
        return getPropertyAsDate("modified_at");
    }

    public String getName()
    {
        return getPropertyAsString("name");
    }
}
