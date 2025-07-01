// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;

import java.io.Reader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.eclipsesource.json:
//            JsonValue, JsonWriter

public class JsonArray extends JsonValue
    implements Iterable
{

    private final List values;

    public JsonArray()
    {
        values = new ArrayList();
    }

    public JsonArray(JsonArray jsonarray)
    {
        this(jsonarray, false);
    }

    private JsonArray(JsonArray jsonarray, boolean flag)
    {
        if (jsonarray == null)
        {
            throw new NullPointerException("array is null");
        }
        if (flag)
        {
            values = Collections.unmodifiableList(jsonarray.values);
            return;
        } else
        {
            values = new ArrayList(jsonarray.values);
            return;
        }
    }

    public static JsonArray readFrom(Reader reader)
    {
        return JsonValue.readFrom(reader).asArray();
    }

    public static JsonArray readFrom(String s)
    {
        return JsonValue.readFrom(s).asArray();
    }

    public static JsonArray unmodifiableArray(JsonArray jsonarray)
    {
        return new JsonArray(jsonarray, true);
    }

    public JsonArray add(double d)
    {
        values.add(valueOf(d));
        return this;
    }

    public JsonArray add(float f)
    {
        values.add(valueOf(f));
        return this;
    }

    public JsonArray add(int i)
    {
        values.add(valueOf(i));
        return this;
    }

    public JsonArray add(long l)
    {
        values.add(valueOf(l));
        return this;
    }

    public JsonArray add(JsonValue jsonvalue)
    {
        if (jsonvalue == null)
        {
            throw new NullPointerException("value is null");
        } else
        {
            values.add(jsonvalue);
            return this;
        }
    }

    public JsonArray add(String s)
    {
        values.add(valueOf(s));
        return this;
    }

    public JsonArray add(boolean flag)
    {
        values.add(valueOf(flag));
        return this;
    }

    public JsonArray asArray()
    {
        return this;
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag;
        if (this == obj)
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (obj != null)
            {
                flag = flag1;
                if (getClass() == obj.getClass())
                {
                    obj = (JsonArray)obj;
                    return values.equals(((JsonArray) (obj)).values);
                }
            }
        }
        return flag;
    }

    public JsonValue get(int i)
    {
        return (JsonValue)values.get(i);
    }

    public int hashCode()
    {
        return values.hashCode();
    }

    public boolean isArray()
    {
        return true;
    }

    public boolean isEmpty()
    {
        return values.isEmpty();
    }

    public Iterator iterator()
    {
        return new Iterator() {

            final JsonArray this$0;
            final Iterator val$iterator;

            public boolean hasNext()
            {
                return iterator.hasNext();
            }

            public JsonValue next()
            {
                return (JsonValue)iterator.next();
            }

            public volatile Object next()
            {
                return next();
            }

            public void remove()
            {
                throw new UnsupportedOperationException();
            }

            
            {
                this$0 = JsonArray.this;
                iterator = iterator1;
                super();
            }
        };
    }

    public JsonArray remove(int i)
    {
        values.remove(i);
        return this;
    }

    public JsonArray set(int i, double d)
    {
        values.set(i, valueOf(d));
        return this;
    }

    public JsonArray set(int i, float f)
    {
        values.set(i, valueOf(f));
        return this;
    }

    public JsonArray set(int i, int j)
    {
        values.set(i, valueOf(j));
        return this;
    }

    public JsonArray set(int i, long l)
    {
        values.set(i, valueOf(l));
        return this;
    }

    public JsonArray set(int i, JsonValue jsonvalue)
    {
        if (jsonvalue == null)
        {
            throw new NullPointerException("value is null");
        } else
        {
            values.set(i, jsonvalue);
            return this;
        }
    }

    public JsonArray set(int i, String s)
    {
        values.set(i, valueOf(s));
        return this;
    }

    public JsonArray set(int i, boolean flag)
    {
        values.set(i, valueOf(flag));
        return this;
    }

    public int size()
    {
        return values.size();
    }

    public List values()
    {
        return Collections.unmodifiableList(values);
    }

    protected void write(JsonWriter jsonwriter)
    {
        jsonwriter.writeArray(this);
    }
}
