// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;


// Referenced classes of package com.eclipsesource.json:
//            JsonValue, JsonWriter

class JsonNumber extends JsonValue
{

    private final String string;

    JsonNumber(String s)
    {
        if (s == null)
        {
            throw new NullPointerException("string is null");
        } else
        {
            string = s;
            return;
        }
    }

    public double asDouble()
    {
        return Double.parseDouble(string);
    }

    public float asFloat()
    {
        return Float.parseFloat(string);
    }

    public int asInt()
    {
        return Integer.parseInt(string, 10);
    }

    public long asLong()
    {
        return Long.parseLong(string, 10);
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
                    obj = (JsonNumber)obj;
                    return string.equals(((JsonNumber) (obj)).string);
                }
            }
        }
        return flag;
    }

    public int hashCode()
    {
        return string.hashCode();
    }

    public boolean isNumber()
    {
        return true;
    }

    public String toString()
    {
        return string;
    }

    protected void write(JsonWriter jsonwriter)
    {
        jsonwriter.write(string);
    }
}
