// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject, BoxCollection, BoxUser, BoxGroup, 
//            BoxRealTimeServer, BoxComment, BoxCollaboration, BoxEnterprise, 
//            BoxFileVersion, BoxEvent, BoxFile, BoxFolder, 
//            BoxBookmark

public class BoxEntity extends BoxJsonObject
{
    public static interface BoxEntityCreator
    {

        public abstract BoxEntity createEntity();
    }


    private static HashMap ENTITY_ADDON_MAP = new HashMap();
    public static final String FIELD_ID = "id";
    public static final String FIELD_ITEM_ID = "item_id";
    public static final String FIELD_ITEM_TYPE = "item_type";
    public static final String FIELD_TYPE = "type";
    private static final long serialVersionUID = 0x16938ce5e020b3c4L;

    public BoxEntity()
    {
    }

    public BoxEntity(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public static void addEntityType(String s, BoxEntityCreator boxentitycreator)
    {
        ENTITY_ADDON_MAP.put(s, boxentitycreator);
    }

    public static BoxEntity createEntityFromJson(JsonObject jsonobject)
    {
        Object obj = jsonobject.get("type");
        if (!((JsonValue) (obj)).isString())
        {
            return null;
        }
        obj = ((JsonValue) (obj)).asString();
        obj = (BoxEntityCreator)ENTITY_ADDON_MAP.get(obj);
        if (obj == null)
        {
            obj = new BoxEntity();
        } else
        {
            obj = ((BoxEntityCreator) (obj)).createEntity();
        }
        ((BoxEntity) (obj)).createFromJson(jsonobject);
        return ((BoxEntity) (obj));
    }

    public static BoxEntity createEntityFromJson(String s)
    {
        return createEntityFromJson(JsonObject.readFrom(s));
    }

    public static BoxJsonObject.BoxJsonObjectCreator getBoxJsonObjectCreator()
    {
        return new BoxJsonObject.BoxJsonObjectCreator() {

            public final BoxEntity createFromJsonObject(JsonObject jsonobject)
            {
                return BoxEntity.createEntityFromJson(jsonobject);
            }

            public final volatile BoxJsonObject createFromJsonObject(JsonObject jsonobject)
            {
                return createFromJsonObject(jsonobject);
            }

        };
    }

    public String getId()
    {
        String s1 = getPropertyAsString("id");
        String s = s1;
        if (s1 == null)
        {
            s = getPropertyAsString("item_id");
        }
        return s;
    }

    public String getType()
    {
        String s1 = getPropertyAsString("type");
        String s = s1;
        if (s1 == null)
        {
            s = getPropertyAsString("item_type");
        }
        return s;
    }

    static 
    {
        addEntityType("collection", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxCollection();
            }

        });
        addEntityType("comment", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxComment();
            }

        });
        addEntityType("collaboration", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxCollaboration();
            }

        });
        addEntityType("enterprise", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxEnterprise();
            }

        });
        addEntityType("file_version", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxFileVersion();
            }

        });
        addEntityType("event", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxEvent();
            }

        });
        addEntityType("file", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxFile();
            }

        });
        addEntityType("folder", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxFolder();
            }

        });
        addEntityType("web_link", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxBookmark();
            }

        });
        addEntityType("user", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxUser();
            }

        });
        addEntityType("group", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxGroup();
            }

        });
        addEntityType("realtime_server", new BoxEntityCreator() {

            public final BoxEntity createEntity()
            {
                return new BoxRealTimeServer();
            }

        });
    }
}
