// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxCollaborator

public class BoxGroup extends BoxCollaborator
{

    public static final String TYPE = "group";
    private static final long serialVersionUID = 0x51802b8950c1a489L;

    public BoxGroup()
    {
    }

    public BoxGroup(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public static BoxGroup createFromId(String s)
    {
        JsonObject jsonobject = new JsonObject();
        jsonobject.add("id", s);
        jsonobject.add("type", "user");
        return new BoxGroup(jsonobject);
    }
}
