// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;

import java.io.ObjectInputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.eclipsesource.json:
//            JsonValue, JsonWriter

public class JsonObject extends JsonValue
    implements Iterable
{
    static class HashIndexTable
    {

        private final byte hashTable[];

        private int hashSlotFor(Object obj)
        {
            return obj.hashCode() & hashTable.length - 1;
        }

        void add(String s, int i)
        {
            int j = hashSlotFor(s);
            if (i < 255)
            {
                hashTable[j] = (byte)(i + 1);
                return;
            } else
            {
                hashTable[j] = 0;
                return;
            }
        }

        int get(Object obj)
        {
            int i = hashSlotFor(obj);
            return (hashTable[i] & 0xff) - 1;
        }

        void remove(int i)
        {
            int j = 0;
            while (j < hashTable.length) 
            {
                if (hashTable[j] == i + 1)
                {
                    hashTable[j] = 0;
                } else
                if (hashTable[j] > i + 1)
                {
                    byte abyte0[] = hashTable;
                    abyte0[j] = (byte)(abyte0[j] - 1);
                }
                j++;
            }
        }

        public HashIndexTable()
        {
            hashTable = new byte[32];
        }

        public HashIndexTable(HashIndexTable hashindextable)
        {
            hashTable = new byte[32];
            System.arraycopy(hashindextable.hashTable, 0, hashTable, 0, hashTable.length);
        }
    }

    public static class Member
    {

        private final String name;
        private final JsonValue value;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null)
                {
                    return false;
                }
                if (getClass() != obj.getClass())
                {
                    return false;
                }
                obj = (Member)obj;
                if (!name.equals(((Member) (obj)).name) || !value.equals(((Member) (obj)).value))
                {
                    return false;
                }
            }
            return true;
        }

        public String getName()
        {
            return name;
        }

        public JsonValue getValue()
        {
            return value;
        }

        public int hashCode()
        {
            return (name.hashCode() + 31) * 31 + value.hashCode();
        }

        Member(String s, JsonValue jsonvalue)
        {
            name = s;
            value = jsonvalue;
        }
    }


    private final List names;
    private transient HashIndexTable table;
    private final List values;

    public JsonObject()
    {
        names = new ArrayList();
        values = new ArrayList();
        table = new HashIndexTable();
    }

    public JsonObject(JsonObject jsonobject)
    {
        this(jsonobject, false);
    }

    private JsonObject(JsonObject jsonobject, boolean flag)
    {
        if (jsonobject == null)
        {
            throw new NullPointerException("object is null");
        }
        if (flag)
        {
            names = Collections.unmodifiableList(jsonobject.names);
            values = Collections.unmodifiableList(jsonobject.values);
        } else
        {
            names = new ArrayList(jsonobject.names);
            values = new ArrayList(jsonobject.values);
        }
        table = new HashIndexTable();
        updateHashIndex();
    }

    public static JsonObject readFrom(Reader reader)
    {
        return JsonValue.readFrom(reader).asObject();
    }

    public static JsonObject readFrom(String s)
    {
        return JsonValue.readFrom(s).asObject();
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        this;
        JVM INSTR monitorenter ;
        objectinputstream.defaultReadObject();
        table = new HashIndexTable();
        updateHashIndex();
        this;
        JVM INSTR monitorexit ;
        return;
        objectinputstream;
        throw objectinputstream;
    }

    public static JsonObject unmodifiableObject(JsonObject jsonobject)
    {
        return new JsonObject(jsonobject, true);
    }

    private void updateHashIndex()
    {
        int j = names.size();
        for (int i = 0; i < j; i++)
        {
            table.add((String)names.get(i), i);
        }

    }

    public JsonObject add(String s, double d)
    {
        add(s, valueOf(d));
        return this;
    }

    public JsonObject add(String s, float f)
    {
        add(s, valueOf(f));
        return this;
    }

    public JsonObject add(String s, int i)
    {
        add(s, valueOf(i));
        return this;
    }

    public JsonObject add(String s, long l)
    {
        add(s, valueOf(l));
        return this;
    }

    public JsonObject add(String s, JsonValue jsonvalue)
    {
        if (s == null)
        {
            throw new NullPointerException("name is null");
        }
        if (jsonvalue == null)
        {
            throw new NullPointerException("value is null");
        } else
        {
            table.add(s, names.size());
            names.add(s);
            values.add(jsonvalue);
            return this;
        }
    }

    public JsonObject add(String s, String s1)
    {
        add(s, valueOf(s1));
        return this;
    }

    public JsonObject add(String s, boolean flag)
    {
        add(s, valueOf(flag));
        return this;
    }

    public JsonObject asObject()
    {
        return this;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            obj = (JsonObject)obj;
            if (!names.equals(((JsonObject) (obj)).names) || !values.equals(((JsonObject) (obj)).values))
            {
                return false;
            }
        }
        return true;
    }

    public JsonValue get(String s)
    {
        if (s == null)
        {
            throw new NullPointerException("name is null");
        }
        int i = indexOf(s);
        if (i != -1)
        {
            return (JsonValue)values.get(i);
        } else
        {
            return null;
        }
    }

    public int hashCode()
    {
        return (names.hashCode() + 31) * 31 + values.hashCode();
    }

    int indexOf(String s)
    {
        int i = table.get(s);
        if (i != -1 && s.equals(names.get(i)))
        {
            return i;
        } else
        {
            return names.lastIndexOf(s);
        }
    }

    public boolean isEmpty()
    {
        return names.isEmpty();
    }

    public boolean isObject()
    {
        return true;
    }

    public Iterator iterator()
    {
        return new Iterator() {

            final JsonObject this$0;
            final Iterator val$namesIterator;
            final Iterator val$valuesIterator;

            public boolean hasNext()
            {
                return namesIterator.hasNext();
            }

            public Member next()
            {
                return new Member((String)namesIterator.next(), (JsonValue)valuesIterator.next());
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
                this$0 = JsonObject.this;
                namesIterator = iterator1;
                valuesIterator = iterator2;
                super();
            }
        };
    }

    public List names()
    {
        return Collections.unmodifiableList(names);
    }

    public JsonObject remove(String s)
    {
        if (s == null)
        {
            throw new NullPointerException("name is null");
        }
        int i = indexOf(s);
        if (i != -1)
        {
            table.remove(i);
            names.remove(i);
            values.remove(i);
        }
        return this;
    }

    public JsonObject set(String s, double d)
    {
        set(s, valueOf(d));
        return this;
    }

    public JsonObject set(String s, float f)
    {
        set(s, valueOf(f));
        return this;
    }

    public JsonObject set(String s, int i)
    {
        set(s, valueOf(i));
        return this;
    }

    public JsonObject set(String s, long l)
    {
        set(s, valueOf(l));
        return this;
    }

    public JsonObject set(String s, JsonValue jsonvalue)
    {
        if (s == null)
        {
            throw new NullPointerException("name is null");
        }
        if (jsonvalue == null)
        {
            throw new NullPointerException("value is null");
        }
        int i = indexOf(s);
        if (i != -1)
        {
            values.set(i, jsonvalue);
            return this;
        } else
        {
            table.add(s, names.size());
            names.add(s);
            values.add(jsonvalue);
            return this;
        }
    }

    public JsonObject set(String s, String s1)
    {
        set(s, valueOf(s1));
        return this;
    }

    public JsonObject set(String s, boolean flag)
    {
        set(s, valueOf(flag));
        return this;
    }

    public int size()
    {
        return names.size();
    }

    protected void write(JsonWriter jsonwriter)
    {
        jsonwriter.writeObject(this);
    }
}
