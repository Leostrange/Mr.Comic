package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

public class BoxIteratorItems extends BoxIteratorBoxEntity<BoxItem> {
    private static final long serialVersionUID = 1378358978076482578L;

    public BoxIteratorItems() {
    }

    public BoxIteratorItems(JsonObject jsonObject) {
        super(jsonObject);
    }
}
