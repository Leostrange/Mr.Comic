// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;


// Referenced classes of package com.eclipsesource.json:
//            JsonObject, JsonValue

public static class value
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
            obj = (value)obj;
            if (!name.equals(((name) (obj)).name) || !value.equals(((value) (obj)).value))
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

    (String s, JsonValue jsonvalue)
    {
        name = s;
        value = jsonvalue;
    }
}
