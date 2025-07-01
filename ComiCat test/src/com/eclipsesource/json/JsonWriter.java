// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;

import java.io.Writer;
import java.util.Iterator;

// Referenced classes of package com.eclipsesource.json:
//            JsonArray, JsonValue, JsonObject

class JsonWriter
{

    private static final char BS_CHARS[] = {
        '\\', '\\'
    };
    private static final int CONTROL_CHARACTERS_END = 31;
    private static final int CONTROL_CHARACTERS_START = 0;
    private static final char CR_CHARS[] = {
        '\\', 'r'
    };
    private static final char HEX_DIGITS[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    private static final char LF_CHARS[] = {
        '\\', 'n'
    };
    private static final char QUOT_CHARS[] = {
        '\\', '"'
    };
    private static final char TAB_CHARS[] = {
        '\\', 't'
    };
    private static final char UNICODE_2028_CHARS[] = {
        '\\', 'u', '2', '0', '2', '8'
    };
    private static final char UNICODE_2029_CHARS[] = {
        '\\', 'u', '2', '0', '2', '9'
    };
    protected final Writer writer;

    JsonWriter(Writer writer1)
    {
        writer = writer1;
    }

    private static char[] getReplacementChars(char c)
    {
        Object obj = null;
        char ac[];
        if (c == '"')
        {
            ac = QUOT_CHARS;
        } else
        {
            if (c == '\\')
            {
                return BS_CHARS;
            }
            if (c == '\n')
            {
                return LF_CHARS;
            }
            if (c == '\r')
            {
                return CR_CHARS;
            }
            if (c == '\t')
            {
                return TAB_CHARS;
            }
            if (c == '\u2028')
            {
                return UNICODE_2028_CHARS;
            }
            if (c == '\u2029')
            {
                return UNICODE_2029_CHARS;
            }
            ac = obj;
            if (c >= 0)
            {
                ac = obj;
                if (c <= '\037')
                {
                    char ac1[] = new char[6];
                    char[] _tmp = ac1;
                    ac1[0] = '\\';
                    ac1[1] = 'u';
                    ac1[2] = '0';
                    ac1[3] = '0';
                    ac1[4] = '0';
                    ac1[5] = '0';
                    ac1[4] = HEX_DIGITS[c >> 4 & 0xf];
                    ac1[5] = HEX_DIGITS[c & 0xf];
                    return ac1;
                }
            }
        }
        return ac;
    }

    void write(String s)
    {
        writer.write(s);
    }

    protected void writeArray(JsonArray jsonarray)
    {
        writeBeginArray();
        jsonarray = jsonarray.iterator();
        for (boolean flag = true; jsonarray.hasNext(); flag = false)
        {
            JsonValue jsonvalue = (JsonValue)jsonarray.next();
            if (!flag)
            {
                writeArrayValueSeparator();
            }
            jsonvalue.write(this);
        }

        writeEndArray();
    }

    protected void writeArrayValueSeparator()
    {
        writer.write(44);
    }

    protected void writeBeginArray()
    {
        writer.write(91);
    }

    protected void writeBeginObject()
    {
        writer.write(123);
    }

    protected void writeEndArray()
    {
        writer.write(93);
    }

    protected void writeEndObject()
    {
        writer.write(125);
    }

    protected void writeNameValueSeparator()
    {
        writer.write(58);
    }

    protected void writeObject(JsonObject jsonobject)
    {
        writeBeginObject();
        jsonobject = jsonobject.iterator();
        for (boolean flag = true; jsonobject.hasNext(); flag = false)
        {
            JsonObject.Member member = (JsonObject.Member)jsonobject.next();
            if (!flag)
            {
                writeObjectValueSeparator();
            }
            writeString(member.getName());
            writeNameValueSeparator();
            member.getValue().write(this);
        }

        writeEndObject();
    }

    protected void writeObjectValueSeparator()
    {
        writer.write(44);
    }

    void writeString(String s)
    {
        int j = 0;
        writer.write(34);
        int l = s.length();
        char ac[] = new char[l];
        s.getChars(0, l, ac, 0);
        for (int i = 0; i < l;)
        {
            s = getReplacementChars(ac[i]);
            int k = j;
            if (s != null)
            {
                writer.write(ac, j, i - j);
                writer.write(s);
                k = i + 1;
            }
            i++;
            j = k;
        }

        writer.write(ac, j, l - j);
        writer.write(34);
    }

}
