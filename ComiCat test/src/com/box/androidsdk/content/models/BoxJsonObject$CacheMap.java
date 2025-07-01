// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
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
//            BoxJsonObject

class mInternalCache
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
        return mJsonObject.equals(((mJsonObject)obj).mJsonObject);
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

    public BoxJsonObject getAsJsonObject(jectCreator jectcreator, String s)
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
            jectcreator = jectcreator.createFromJsonObject(jsonvalue.asObject());
            mInternalCache.put(s, jectcreator);
            return jectcreator;
        }
    }

    public JsonObject getAsJsonObject()
    {
        return mJsonObject;
    }

    public ArrayList getAsJsonObjectArray(jectCreator jectcreator, String s)
    {
        if (mInternalCache.get(s) != null)
        {
            return (ArrayList)mInternalCache.get(s);
        }
        Object obj = getAsJsonValue(s);
        if (obj != null && !((JsonValue) (obj)).isArray() && ((JsonValue) (obj)).isObject())
        {
            ArrayList arraylist = new ArrayList(1);
            arraylist.add(jectcreator.createFromJsonObject(((JsonValue) (obj)).asObject()));
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
            for (obj1 = ((JsonArray) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); ((ArrayList) (obj)).add(jectcreator.createFromJsonObject(((JsonValue)((Iterator) (obj1)).next()).asObject()))) { }
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

    public jectCreator(JsonObject jsonobject)
    {
        this$0 = BoxJsonObject.this;
        super();
        mJsonObject = jsonobject;
        mInternalCache = new LinkedHashMap();
    }
}
