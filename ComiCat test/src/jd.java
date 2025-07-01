// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class jd
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
                obj = jd.a(ji.a.h(jsonparser));
            } else
            if ("reset".equals(obj))
            {
                obj = jd.a;
            } else
            {
                obj = jd.b;
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
            obj = (jd)obj;
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
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[b.b.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[b.c.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1.a[((jd) (obj)).c.ordinal()])
            {
            default:
                jsongenerator.writeString("other");
                return;

            case 1: // '\001'
                jsongenerator.writeStartObject();
                jsongenerator.writeStringField(".tag", "path");
                jsongenerator.writeFieldName("path");
                ji.a a1 = ji.a.a;
                ji.a.a(jd.a(((jd) (obj))), jsongenerator);
                jsongenerator.writeEndObject();
                return;

            case 2: // '\002'
                jsongenerator.writeString("reset");
                break;
            }
        }


        a()
        {
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        private static final b d[];

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(jd$b, s);
        }

        public static b[] values()
        {
            return (b[])d.clone();
        }

        static 
        {
            a = new b("PATH", 0);
            b = new b("RESET", 1);
            c = new b("OTHER", 2);
            d = (new b[] {
                a, b, c
            });
        }

        private b(String s, int i)
        {
            super(s, i);
        }
    }


    public static final jd a;
    public static final jd b;
    final b c;
    private final ji d;

    private jd(b b1, ji ji1)
    {
        c = b1;
        d = ji1;
    }

    public static jd a(ji ji1)
    {
        if (ji1 == null)
        {
            throw new IllegalArgumentException("Value is null");
        } else
        {
            return new jd(b.a, ji1);
        }
    }

    static ji a(jd jd1)
    {
        return jd1.d;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!(obj instanceof jd))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (jd)obj;
        if (c != ((jd) (obj)).c)
        {
            return false;
        }
        switch (_cls1.a[c.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            continue; /* Loop/switch isn't completed */

        case 2: // '\002'
        case 3: // '\003'
            break;
        }
        if (true) goto _L1; else goto _L3
        if (d == ((jd) (obj)).d || d.equals(((jd) (obj)).d)) goto _L1; else goto _L4
_L4:
        return false;
_L3:
        return false;
    }

    public final int hashCode()
    {
        return Arrays.hashCode(new Object[] {
            c, d
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }

    static 
    {
        a = new jd(b.b, null);
        b = new jd(b.c, null);
    }
}
