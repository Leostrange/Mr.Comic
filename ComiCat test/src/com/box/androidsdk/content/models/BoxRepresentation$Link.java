// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;


// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject, BoxRepresentation, BoxEmbedLink

public static class Info extends BoxJsonObject
{
    public static class Content extends BoxEmbedLink
    {

        public String getType()
        {
            return getPropertyAsString("type");
        }

        public Content()
        {
        }
    }

    public static class Info extends BoxEmbedLink
    {

        public Info()
        {
        }
    }


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

    public Info()
    {
    }
}
