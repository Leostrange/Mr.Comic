package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

public class BoxRepresentation extends BoxJsonObject {
    protected static final String FIELD_DETAILS = "details";
    protected static final String FIELD_LINKS = "links";
    protected static final String FIELD_PROPERTIES = "properties";
    protected static final String FIELD_REPRESENTATION = "representation";
    protected static final String FIELD_STATUS = "status";
    private static final long serialVersionUID = -4748896287486795L;

    public static class Link extends BoxJsonObject {
        protected static final String FIELD_CONTENT = "content";
        protected static final String FIELD_INFO = "info";

        public static class Content extends BoxEmbedLink {
            public String getType() {
                return getPropertyAsString("type");
            }
        }

        public static class Info extends BoxEmbedLink {
        }

        public Content getContent() {
            return (Content) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(Content.class), FIELD_CONTENT);
        }

        public Info getInfo() {
            return (Info) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(Info.class), FIELD_INFO);
        }
    }

    public BoxRepresentation() {
    }

    public BoxRepresentation(JsonObject jsonObject) {
        super(jsonObject);
    }

    public BoxMap getDetails() {
        return (BoxMap) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(BoxMap.class), FIELD_DETAILS);
    }

    public Link getLinks() {
        return (Link) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(Link.class), FIELD_LINKS);
    }

    public BoxMap getProperties() {
        return (BoxMap) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(BoxMap.class), FIELD_PROPERTIES);
    }

    public String getRepresentation() {
        return getPropertyAsString(FIELD_REPRESENTATION);
    }

    public String getStatus() {
        return getPropertyAsString("status");
    }
}
