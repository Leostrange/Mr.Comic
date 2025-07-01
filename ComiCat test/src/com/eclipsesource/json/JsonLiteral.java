// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;


// Referenced classes of package com.eclipsesource.json:
//            JsonValue, JsonWriter

class JsonLiteral extends JsonValue
{

    private final String value;

    JsonLiteral(String s)
    {
        value = s;
    }

    public boolean asBoolean()
    {
        if (isBoolean())
        {
            return isTrue();
        } else
        {
            return super.asBoolean();
        }
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
                    obj = (JsonLiteral)obj;
                    return value.equals(((JsonLiteral) (obj)).value);
                }
            }
        }
        return flag;
    }

    public int hashCode()
    {
        return value.hashCode();
    }

    public boolean isBoolean()
    {
        return this == TRUE || this == FALSE;
    }

    public boolean isFalse()
    {
        return this == FALSE;
    }

    public boolean isNull()
    {
        return this == NULL;
    }

    public boolean isTrue()
    {
        return this == TRUE;
    }

    public String toString()
    {
        return value;
    }

    protected void write(JsonWriter jsonwriter)
    {
        jsonwriter.write(value);
    }
}
