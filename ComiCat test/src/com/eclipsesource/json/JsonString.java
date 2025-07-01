// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;


// Referenced classes of package com.eclipsesource.json:
//            JsonValue, JsonWriter

class JsonString extends JsonValue
{

    private final String string;

    JsonString(String s)
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

    public String asString()
    {
        return string;
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
                    obj = (JsonString)obj;
                    return string.equals(((JsonString) (obj)).string);
                }
            }
        }
        return flag;
    }

    public int hashCode()
    {
        return string.hashCode();
    }

    public boolean isString()
    {
        return true;
    }

    protected void write(JsonWriter jsonwriter)
    {
        jsonwriter.writeString(string);
    }
}
