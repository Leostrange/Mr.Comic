package com.box.androidsdk.content.models;

public class BoxEmbedLink extends BoxJsonObject {
    private static final String FIELD_URL = "url";

    public String getUrl() {
        return getPropertyAsString("url");
    }
}
