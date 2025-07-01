// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject, BoxMap, BoxEmbedLink

public class BoxRepresentation extends BoxJsonObject
{
    public static class Link extends BoxJsonObject
    {

        protected static final String FIELD_CONTENT = "content";
        protected static final String FIELD_INFO = "info";

        public Content getContent()
        {
            return (Content)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxRepresentation$Link$Content), "content");
        }

        public Info getInfo()
        {
            return (Info)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxRepresentation$Link$Info), "info");
        }

        public Link()
        {
        }
    }

    public static class Link.Content extends BoxEmbedLink
    {

        public String getType()
        {
            return getPropertyAsString("type");
        }

        public Link.Content()
        {
        }
    }

    public static class Link.Info extends BoxEmbedLink
    {

        public Link.Info()
        {
        }
    }


    protected static final String FIELD_DETAILS = "details";
    protected static final String FIELD_LINKS = "links";
    protected static final String FIELD_PROPERTIES = "properties";
    protected static final String FIELD_REPRESENTATION = "representation";
    protected static final String FIELD_STATUS = "status";
    private static final long serialVersionUID = 0xffef20e76bb58cb5L;

    public BoxRepresentation()
    {
    }

    public BoxRepresentation(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public BoxMap getDetails()
    {
        return (BoxMap)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxMap), "details");
    }

    public Link getLinks()
    {
        return (Link)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxRepresentation$Link), "links");
    }

    public BoxMap getProperties()
    {
        return (BoxMap)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxMap), "properties");
    }

    public String getRepresentation()
    {
        return getPropertyAsString("representation");
    }

    public String getStatus()
    {
        return getPropertyAsString("status");
    }
}
