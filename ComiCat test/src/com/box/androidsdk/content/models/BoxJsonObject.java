// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.io.Writer;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxObject

public abstract class BoxJsonObject extends BoxObject
{
    public static interface BoxJsonObjectCreator
    {

        public abstract BoxJsonObject createFromJsonObject(JsonObject jsonobject);
    }

    class CacheMap
        implements Serializable
    {

        private transient HashMap mInternalCache;
        private JsonObject mJsonObject;
        final BoxJsonObject this$0;

        public void addInJsonArray(String s, BoxJsonObject boxjsonobject)
        {
            getAsJsonArray(s).add(boxjsonobject.toJsonObject());
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public void addInJsonArray(String s, JsonObject jsonobject)
        {
            getAsJsonArray(s).add(jsonobject);
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public boolean equals(Object obj)
        {
            return mJsonObject.equals(((CacheMap)obj).mJsonObject);
        }

        public Boolean getAsBoolean(String s)
        {
            s = getAsJsonValue(s);
            if (s == null)
            {
                return null;
            } else
            {
                return Boolean.valueOf(s.asBoolean());
            }
        }

        public Date getAsDate(String s)
        {
            JsonValue jsonvalue = getAsJsonValue(s);
            Date date;
            if (jsonvalue == null || jsonvalue.isNull())
            {
                date = null;
            } else
            {
                Date date2 = (Date)mInternalCache.get(s);
                date = date2;
                if (date2 == null)
                {
                    Date date1;
                    try
                    {
                        date1 = BoxDateFormat.parse(jsonvalue.asString());
                        mInternalCache.put(s, date1);
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        BoxLogUtils.e("BoxJsonObject", "getAsDate", s);
                        return null;
                    }
                    return date1;
                }
            }
            return date;
        }

        public Double getAsDouble(String s)
        {
            s = getAsJsonValue(s);
            if (s == null || s.isNull())
            {
                return null;
            } else
            {
                return Double.valueOf(s.asDouble());
            }
        }

        public Float getAsFloat(String s)
        {
            s = getAsJsonValue(s);
            if (s == null || s.isNull())
            {
                return null;
            } else
            {
                return Float.valueOf(s.asFloat());
            }
        }

        public Integer getAsInt(String s)
        {
            s = getAsJsonValue(s);
            if (s == null || s.isNull())
            {
                return null;
            } else
            {
                return Integer.valueOf(s.asInt());
            }
        }

        public JsonArray getAsJsonArray(String s)
        {
            s = getAsJsonValue(s);
            if (s == null || s.isNull())
            {
                return null;
            } else
            {
                return s.asArray();
            }
        }

        public BoxJsonObject getAsJsonObject(BoxJsonObjectCreator boxjsonobjectcreator, String s)
        {
            if (mInternalCache.get(s) != null)
            {
                return (BoxJsonObject)mInternalCache.get(s);
            }
            JsonValue jsonvalue = getAsJsonValue(s);
            if (jsonvalue == null || jsonvalue.isNull() || !jsonvalue.isObject())
            {
                return null;
            } else
            {
                boxjsonobjectcreator = boxjsonobjectcreator.createFromJsonObject(jsonvalue.asObject());
                mInternalCache.put(s, boxjsonobjectcreator);
                return boxjsonobjectcreator;
            }
        }

        public JsonObject getAsJsonObject()
        {
            return mJsonObject;
        }

        public ArrayList getAsJsonObjectArray(BoxJsonObjectCreator boxjsonobjectcreator, String s)
        {
            if (mInternalCache.get(s) != null)
            {
                return (ArrayList)mInternalCache.get(s);
            }
            Object obj = getAsJsonValue(s);
            if (obj != null && !((JsonValue) (obj)).isArray() && ((JsonValue) (obj)).isObject())
            {
                ArrayList arraylist = new ArrayList(1);
                arraylist.add(boxjsonobjectcreator.createFromJsonObject(((JsonValue) (obj)).asObject()));
                mInternalCache.put(s, arraylist);
                return arraylist;
            }
            Object obj1 = getAsJsonArray(s);
            if (obj1 == null)
            {
                return null;
            }
            obj = new ArrayList(((JsonArray) (obj1)).size());
            if (obj1 != null)
            {
                for (obj1 = ((JsonArray) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); ((ArrayList) (obj)).add(boxjsonobjectcreator.createFromJsonObject(((JsonValue)((Iterator) (obj1)).next()).asObject()))) { }
            }
            mInternalCache.put(s, obj);
            return ((ArrayList) (obj));
        }

        public JsonValue getAsJsonValue(String s)
        {
            return mJsonObject.get(s);
        }

        public Long getAsLong(String s)
        {
            s = getAsJsonValue(s);
            if (s == null || s.isNull())
            {
                return null;
            } else
            {
                return Long.valueOf(s.asLong());
            }
        }

        public String getAsString(String s)
        {
            s = getAsJsonValue(s);
            if (s == null || s.isNull())
            {
                return null;
            } else
            {
                return s.asString();
            }
        }

        public ArrayList getAsStringArray(String s)
        {
            if (mInternalCache.get(s) != null)
            {
                return (ArrayList)mInternalCache.get(s);
            }
            Object obj = getAsJsonValue(s);
            if (obj == null || ((JsonValue) (obj)).isNull())
            {
                return null;
            }
            ArrayList arraylist = new ArrayList(((JsonValue) (obj)).asArray().size());
            for (obj = ((JsonValue) (obj)).asArray().iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(((JsonValue)((Iterator) (obj)).next()).asString())) { }
            mInternalCache.put(s, arraylist);
            return arraylist;
        }

        public List getPropertiesKeySet()
        {
            return mJsonObject.names();
        }

        public HashSet getPropertyAsStringHashSet(String s)
        {
            if (mInternalCache.get(s) != null)
            {
                return (HashSet)mInternalCache.get(s);
            }
            Object obj = getAsJsonValue(s);
            if (obj == null || ((JsonValue) (obj)).isNull())
            {
                return null;
            }
            HashSet hashset = new HashSet(((JsonValue) (obj)).asArray().size());
            for (obj = ((JsonValue) (obj)).asArray().iterator(); ((Iterator) (obj)).hasNext(); hashset.add(((JsonValue)((Iterator) (obj)).next()).asString())) { }
            mInternalCache.put(s, hashset);
            return hashset;
        }

        public int hashCode()
        {
            return mJsonObject.hashCode();
        }

        public boolean remove(String s)
        {
            boolean flag;
            if (getAsJsonValue(s) != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mJsonObject.remove(s);
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
            return flag;
        }

        public void set(String s, BoxJsonObject boxjsonobject)
        {
            mJsonObject.set(s, boxjsonobject.toJsonObject());
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public void set(String s, JsonArray jsonarray)
        {
            mJsonObject.set(s, jsonarray);
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public void set(String s, JsonObject jsonobject)
        {
            mJsonObject.set(s, jsonobject);
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public void set(String s, Double double1)
        {
            mJsonObject.set(s, double1.doubleValue());
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public void set(String s, Float float1)
        {
            mJsonObject.set(s, float1.floatValue());
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public void set(String s, Integer integer)
        {
            mJsonObject.set(s, integer.intValue());
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public void set(String s, Long long1)
        {
            mJsonObject.set(s, long1.longValue());
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public void set(String s, String s1)
        {
            mJsonObject.set(s, s1);
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public void set(String s, boolean flag)
        {
            mJsonObject.set(s, flag);
            if (mInternalCache.containsKey(s))
            {
                mInternalCache.remove(s);
            }
        }

        public String toJson()
        {
            return mJsonObject.toString();
        }

        public void writeTo(Writer writer)
        {
            mJsonObject.writeTo(writer);
        }

        public CacheMap(JsonObject jsonobject)
        {
            this$0 = BoxJsonObject.this;
            super();
            mJsonObject = jsonobject;
            mInternalCache = new LinkedHashMap();
        }
    }


    private static final long serialVersionUID = 0x63927e9c99055c76L;
    private CacheMap mCacheMap;

    public BoxJsonObject()
    {
        createFromJson(new JsonObject());
    }

    public BoxJsonObject(JsonObject jsonobject)
    {
        createFromJson(jsonobject);
    }

    public static BoxJsonObjectCreator getBoxJsonObjectCreator(Class class1)
    {
        return new BoxJsonObjectCreator(class1) {

            final Class val$jsonObjectClass;

            public final BoxJsonObject createFromJsonObject(JsonObject jsonobject)
            {
                BoxJsonObject boxjsonobject;
                boxjsonobject = (BoxJsonObject)jsonObjectClass.newInstance();
                boxjsonobject.createFromJson(jsonobject);
                return boxjsonobject;
                jsonobject;
                BoxLogUtils.e("BoxJsonObject", (new StringBuilder("getBoxJsonObjectCreator ")).append(jsonObjectClass).toString(), jsonobject);
_L2:
                return null;
                jsonobject;
                BoxLogUtils.e("BoxJsonObject", (new StringBuilder("getBoxJsonObjectCreator ")).append(jsonObjectClass).toString(), jsonobject);
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                jsonObjectClass = class1;
                super();
            }
        };
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        createFromJson(JsonObject.readFrom(new BufferedReader(new InputStreamReader(objectinputstream))));
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
    {
        objectoutputstream = new BufferedWriter(new OutputStreamWriter(objectoutputstream));
        mCacheMap.writeTo(objectoutputstream);
        objectoutputstream.flush();
    }

    protected void addInJsonArray(String s, BoxJsonObject boxjsonobject)
    {
        mCacheMap.addInJsonArray(s, boxjsonobject);
    }

    protected void addInJsonArray(String s, JsonObject jsonobject)
    {
        mCacheMap.addInJsonArray(s, jsonobject);
    }

    public void createFromJson(JsonObject jsonobject)
    {
        mCacheMap = new CacheMap(jsonobject);
    }

    public void createFromJson(String s)
    {
        createFromJson(JsonObject.readFrom(s));
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof BoxJsonObject)
        {
            return mCacheMap.equals(((BoxJsonObject)obj).mCacheMap);
        } else
        {
            return false;
        }
    }

    JsonObject getOriginalJsonObject()
    {
        return mCacheMap.getAsJsonObject();
    }

    public List getPropertiesKeySet()
    {
        return mCacheMap.getPropertiesKeySet();
    }

    protected Boolean getPropertyAsBoolean(String s)
    {
        return mCacheMap.getAsBoolean(s);
    }

    protected Date getPropertyAsDate(String s)
    {
        return mCacheMap.getAsDate(s);
    }

    protected Double getPropertyAsDouble(String s)
    {
        return mCacheMap.getAsDouble(s);
    }

    protected Float getPropertyAsFloat(String s)
    {
        return mCacheMap.getAsFloat(s);
    }

    protected Integer getPropertyAsInt(String s)
    {
        return mCacheMap.getAsInt(s);
    }

    protected JsonArray getPropertyAsJsonArray(String s)
    {
        return mCacheMap.getAsJsonArray(s);
    }

    protected BoxJsonObject getPropertyAsJsonObject(BoxJsonObjectCreator boxjsonobjectcreator, String s)
    {
        return mCacheMap.getAsJsonObject(boxjsonobjectcreator, s);
    }

    protected ArrayList getPropertyAsJsonObjectArray(BoxJsonObjectCreator boxjsonobjectcreator, String s)
    {
        return mCacheMap.getAsJsonObjectArray(boxjsonobjectcreator, s);
    }

    protected Long getPropertyAsLong(String s)
    {
        if (mCacheMap.getAsDouble(s) == null)
        {
            return null;
        } else
        {
            return Long.valueOf(mCacheMap.getAsDouble(s).longValue());
        }
    }

    protected String getPropertyAsString(String s)
    {
        return mCacheMap.getAsString(s);
    }

    protected ArrayList getPropertyAsStringArray(String s)
    {
        return mCacheMap.getAsStringArray(s);
    }

    protected HashSet getPropertyAsStringHashSet(String s)
    {
        return mCacheMap.getPropertyAsStringHashSet(s);
    }

    public JsonValue getPropertyValue(String s)
    {
        s = mCacheMap.getAsJsonValue(s);
        if (s == null)
        {
            return null;
        } else
        {
            return JsonValue.readFrom(s.toString());
        }
    }

    public int hashCode()
    {
        return mCacheMap.hashCode();
    }

    protected void parseJSONMember(com.eclipsesource.json.JsonObject.Member member)
    {
    }

    protected boolean remove(String s)
    {
        return mCacheMap.remove(s);
    }

    protected void set(String s, BoxJsonObject boxjsonobject)
    {
        mCacheMap.set(s, boxjsonobject);
    }

    protected void set(String s, JsonArray jsonarray)
    {
        mCacheMap.set(s, jsonarray);
    }

    protected void set(String s, JsonObject jsonobject)
    {
        mCacheMap.set(s, jsonobject);
    }

    protected void set(String s, Boolean boolean1)
    {
        mCacheMap.set(s, boolean1.booleanValue());
    }

    protected void set(String s, Double double1)
    {
        mCacheMap.set(s, double1);
    }

    protected void set(String s, Float float1)
    {
        mCacheMap.set(s, float1);
    }

    protected void set(String s, Integer integer)
    {
        mCacheMap.set(s, integer);
    }

    protected void set(String s, Long long1)
    {
        mCacheMap.set(s, long1);
    }

    protected void set(String s, String s1)
    {
        mCacheMap.set(s, s1);
    }

    public String toJson()
    {
        return mCacheMap.toJson();
    }

    public JsonObject toJsonObject()
    {
        return JsonObject.readFrom(toJson());
    }
}
