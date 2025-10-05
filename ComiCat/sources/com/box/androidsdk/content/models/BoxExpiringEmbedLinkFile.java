package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

public class BoxExpiringEmbedLinkFile extends BoxFile {
    public static final String FIELD_EMBED_LINK = "expiring_embed_link";
    protected static final String FIELD_EMBED_LINK_CREATION_TIME = "expiring_embed_link_creation_time";
    private static final long serialVersionUID = -4732748896287486795L;

    public BoxExpiringEmbedLinkFile() {
    }

    public BoxExpiringEmbedLinkFile(JsonObject jsonObject) {
        super(jsonObject);
    }

    private void setUrlCreationTime() {
        set(FIELD_EMBED_LINK_CREATION_TIME, Long.valueOf(System.currentTimeMillis()));
    }

    public void createFromJson(String str) {
        super.createFromJson(str);
        setUrlCreationTime();
    }

    public BoxEmbedLink getEmbedLink() {
        return (BoxEmbedLink) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(BoxEmbedLink.class), FIELD_EMBED_LINK);
    }

    public Long getUrlCreationTime() {
        return getPropertyAsLong(FIELD_EMBED_LINK_CREATION_TIME);
    }

    public boolean isEmbedLinkUrlExpired() {
        Long urlCreationTime = getUrlCreationTime();
        return urlCreationTime == null || System.currentTimeMillis() - urlCreationTime.longValue() < 60000;
    }

    public boolean isPreviewSessionExpired() {
        Long urlCreationTime = getUrlCreationTime();
        return urlCreationTime == null || System.currentTimeMillis() - urlCreationTime.longValue() < 3600000;
    }
}
