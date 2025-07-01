// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;

import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringWriter;
import java.io.Writer;

// Referenced classes of package com.eclipsesource.json:
//            JsonLiteral, JsonParser, JsonNumber, JsonString, 
//            JsonWriter, JsonArray, JsonObject

public abstract class JsonValue
    implements Serializable
{

    public static final JsonValue FALSE = new JsonLiteral("false");
    public static final JsonValue NULL = new JsonLiteral("null");
    public static final JsonValue TRUE = new JsonLiteral("true");

    JsonValue()
    {
    }

    private static String cutOffPointZero(String s)
    {
        String s1 = s;
        if (s.endsWith(".0"))
        {
            s1 = s.substring(0, s.length() - 2);
        }
        return s1;
    }

    public static JsonValue readFrom(Reader reader)
    {
        return (new JsonParser(reader)).parse();
    }

    public static JsonValue readFrom(String s)
    {
        try
        {
            s = (new JsonParser(s)).parse();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new RuntimeException(s);
        }
        return s;
    }

    public static JsonValue valueOf(double d)
    {
        if (Double.isInfinite(d) || Double.isNaN(d))
        {
            throw new IllegalArgumentException("Infinite and NaN values not permitted in JSON");
        } else
        {
            return new JsonNumber(cutOffPointZero(Double.toString(d)));
        }
    }

    public static JsonValue valueOf(float f)
    {
        if (Float.isInfinite(f) || Float.isNaN(f))
        {
            throw new IllegalArgumentException("Infinite and NaN values not permitted in JSON");
        } else
        {
            return new JsonNumber(cutOffPointZero(Float.toString(f)));
        }
    }

    public static JsonValue valueOf(int i)
    {
        return new JsonNumber(Integer.toString(i, 10));
    }

    public static JsonValue valueOf(long l)
    {
        return new JsonNumber(Long.toString(l, 10));
    }

    public static JsonValue valueOf(String s)
    {
        if (s == null)
        {
            return NULL;
        } else
        {
            return new JsonString(s);
        }
    }

    public static JsonValue valueOf(boolean flag)
    {
        if (flag)
        {
            return TRUE;
        } else
        {
            return FALSE;
        }
    }

    public JsonArray asArray()
    {
        throw new UnsupportedOperationException((new StringBuilder("Not an array: ")).append(toString()).toString());
    }

    public boolean asBoolean()
    {
        throw new UnsupportedOperationException((new StringBuilder("Not a boolean: ")).append(toString()).toString());
    }

    public double asDouble()
    {
        throw new UnsupportedOperationException((new StringBuilder("Not a number: ")).append(toString()).toString());
    }

    public float asFloat()
    {
        throw new UnsupportedOperationException((new StringBuilder("Not a number: ")).append(toString()).toString());
    }

    public int asInt()
    {
        throw new UnsupportedOperationException((new StringBuilder("Not a number: ")).append(toString()).toString());
    }

    public long asLong()
    {
        throw new UnsupportedOperationException((new StringBuilder("Not a number: ")).append(toString()).toString());
    }

    public JsonObject asObject()
    {
        throw new UnsupportedOperationException((new StringBuilder("Not an object: ")).append(toString()).toString());
    }

    public String asString()
    {
        throw new UnsupportedOperationException((new StringBuilder("Not a string: ")).append(toString()).toString());
    }

    public boolean equals(Object obj)
    {
        return super.equals(obj);
    }

    public int hashCode()
    {
        return super.hashCode();
    }

    public boolean isArray()
    {
        return false;
    }

    public boolean isBoolean()
    {
        return false;
    }

    public boolean isFalse()
    {
        return false;
    }

    public boolean isNull()
    {
        return false;
    }

    public boolean isNumber()
    {
        return false;
    }

    public boolean isObject()
    {
        return false;
    }

    public boolean isString()
    {
        return false;
    }

    public boolean isTrue()
    {
        return false;
    }

    public String toString()
    {
        StringWriter stringwriter = new StringWriter();
        JsonWriter jsonwriter = new JsonWriter(stringwriter);
        try
        {
            write(jsonwriter);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return stringwriter.toString();
    }

    protected abstract void write(JsonWriter jsonwriter);

    public void writeTo(Writer writer)
    {
        write(new JsonWriter(writer));
    }

}
