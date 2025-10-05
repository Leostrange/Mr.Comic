package com.box.androidsdk.content.models;

import com.box.androidsdk.content.models.BoxJsonObject;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.HashMap;

public class BoxEntity extends BoxJsonObject {
    private static HashMap<String, BoxEntityCreator> ENTITY_ADDON_MAP = new HashMap<>();
    public static final String FIELD_ID = "id";
    public static final String FIELD_ITEM_ID = "item_id";
    public static final String FIELD_ITEM_TYPE = "item_type";
    public static final String FIELD_TYPE = "type";
    private static final long serialVersionUID = 1626798809346520004L;

    public interface BoxEntityCreator {
        BoxEntity createEntity();
    }

    static {
        addEntityType(BoxCollection.TYPE, new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxCollection();
            }
        });
        addEntityType(BoxComment.TYPE, new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxComment();
            }
        });
        addEntityType(BoxCollaboration.TYPE, new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxCollaboration();
            }
        });
        addEntityType("enterprise", new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxEnterprise();
            }
        });
        addEntityType("file_version", new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxFileVersion();
            }
        });
        addEntityType("event", new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxEvent();
            }
        });
        addEntityType(BoxFile.TYPE, new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxFile();
            }
        });
        addEntityType(BoxFolder.TYPE, new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxFolder();
            }
        });
        addEntityType(BoxBookmark.TYPE, new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxBookmark();
            }
        });
        addEntityType("user", new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxUser();
            }
        });
        addEntityType(BoxGroup.TYPE, new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxGroup();
            }
        });
        addEntityType(BoxRealTimeServer.TYPE, new BoxEntityCreator() {
            public final BoxEntity createEntity() {
                return new BoxRealTimeServer();
            }
        });
    }

    public BoxEntity() {
    }

    public BoxEntity(JsonObject jsonObject) {
        super(jsonObject);
    }

    public static void addEntityType(String str, BoxEntityCreator boxEntityCreator) {
        ENTITY_ADDON_MAP.put(str, boxEntityCreator);
    }

    public static BoxEntity createEntityFromJson(JsonObject jsonObject) {
        JsonValue jsonValue = jsonObject.get("type");
        if (!jsonValue.isString()) {
            return null;
        }
        BoxEntityCreator boxEntityCreator = ENTITY_ADDON_MAP.get(jsonValue.asString());
        BoxEntity boxEntity = boxEntityCreator == null ? new BoxEntity() : boxEntityCreator.createEntity();
        boxEntity.createFromJson(jsonObject);
        return boxEntity;
    }

    public static BoxEntity createEntityFromJson(String str) {
        return createEntityFromJson(JsonObject.readFrom(str));
    }

    public static BoxJsonObject.BoxJsonObjectCreator<BoxEntity> getBoxJsonObjectCreator() {
        return new BoxJsonObject.BoxJsonObjectCreator<BoxEntity>() {
            public final BoxEntity createFromJsonObject(JsonObject jsonObject) {
                return BoxEntity.createEntityFromJson(jsonObject);
            }
        };
    }

    public String getId() {
        String propertyAsString = getPropertyAsString(FIELD_ID);
        return propertyAsString == null ? getPropertyAsString(FIELD_ITEM_ID) : propertyAsString;
    }

    public String getType() {
        String propertyAsString = getPropertyAsString("type");
        return propertyAsString == null ? getPropertyAsString(FIELD_ITEM_TYPE) : propertyAsString;
    }
}
