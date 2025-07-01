// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxFile, BoxEmbedLink, BoxJsonObject

public class BoxExpiringEmbedLinkFile extends BoxFile
{

    public static final String FIELD_EMBED_LINK = "expiring_embed_link";
    protected static final String FIELD_EMBED_LINK_CREATION_TIME = "expiring_embed_link_creation_time";
    private static final long serialVersionUID = 0xbe51e5f439a98cb5L;

    public BoxExpiringEmbedLinkFile()
    {
    }

    public BoxExpiringEmbedLinkFile(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    private void setUrlCreationTime()
    {
        set("expiring_embed_link_creation_time", Long.valueOf(System.currentTimeMillis()));
    }

    public void createFromJson(String s)
    {
        super.createFromJson(s);
        setUrlCreationTime();
    }

    public BoxEmbedLink getEmbedLink()
    {
        return (BoxEmbedLink)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxEmbedLink), "expiring_embed_link");
    }

    public Long getUrlCreationTime()
    {
        return getPropertyAsLong("expiring_embed_link_creation_time");
    }

    public boolean isEmbedLinkUrlExpired()
    {
        for (Long long1 = getUrlCreationTime(); long1 == null || System.currentTimeMillis() - long1.longValue() < 60000L;)
        {
            return true;
        }

        return false;
    }

    public boolean isPreviewSessionExpired()
    {
        for (Long long1 = getUrlCreationTime(); long1 == null || System.currentTimeMillis() - long1.longValue() < 0x36ee80L;)
        {
            return true;
        }

        return false;
    }
}
