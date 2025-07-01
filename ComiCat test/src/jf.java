// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class jf
{
    static final class a extends ih
    {

        public static final a a = new a();

        public final Object a(JsonParser jsonparser)
        {
            Object obj;
            boolean flag;
            if (jsonparser.getCurrentToken() == JsonToken.VALUE_STRING)
            {
                obj = c(jsonparser);
                jsonparser.nextToken();
                flag = true;
            } else
            {
                d(jsonparser);
                obj = b(jsonparser);
                flag = false;
            }
            if (obj == null)
            {
                throw new JsonParseException(jsonparser, "Required field missing: .tag");
            }
            if ("path".equals(obj))
            {
                a("path", jsonparser);
                obj = ji.a.a;
                obj = jf.a(ji.a.h(jsonparser));
            } else
            {
                obj = jf.a;
                g(jsonparser);
            }
            if (!flag)
            {
                e(jsonparser);
            }
            return obj;
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jf)obj;
            static final class _cls1
            {

                static final int a[];

                static 
                {
                    a = new int[b.values().length];
                    try
                    {
                        a[b.a.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[b.b.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1.a[((jf) (obj)).b.ordinal()])
            {
            default:
                jsongenerator.writeString("other");
                return;

            case 1: // '\001'
                jsongenerator.writeStartObject();
                break;
            }
            jsongenerator.writeStringField(".tag", "path");
            jsongenerator.writeFieldName("path");
            ji.a a1 = ji.a.a;
            ji.a.a(jf.a(((jf) (obj))), jsongenerator);
            jsongenerator.writeEndObject();
        }


        a()
        {
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        private static final b c[];

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(jf$b, s);
        }

        public static b[] values()
        {
            return (b[])c.clone();
        }

        static 
        {
            a = new b("PATH", 0);
            b = new b("OTHER", 1);
            c = (new b[] {
                a, b
            });
        }

        private b(String s, int i)
        {
            super(s, i);
        }
    }


    public static final jf a;
    final b b;
    private final ji c;

    private jf(b b1, ji ji1)
    {
        b = b1;
        c = ji1;
    }

    public static jf a(ji ji1)
    {
        if (ji1 == null)
        {
            throw new IllegalArgumentException("Value is null");
        } else
        {
            return new jf(b.a, ji1);
        }
    }

    static ji a(jf jf1)
    {
        return jf1.c;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!(obj instanceof jf))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (jf)obj;
        if (b != ((jf) (obj)).b)
        {
            return false;
        }
        switch (_cls1.a[b.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            continue; /* Loop/switch isn't completed */

        case 2: // '\002'
            break;
        }
        if (true) goto _L1; else goto _L3
        if (c == ((jf) (obj)).c || c.equals(((jf) (obj)).c)) goto _L1; else goto _L4
_L4:
        return false;
_L3:
        return false;
    }

    public final int hashCode()
    {
        return Arrays.hashCode(new Object[] {
            b, c
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }

    static 
    {
        a = new jf(b.b, null);
    }
}
