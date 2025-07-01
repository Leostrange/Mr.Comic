// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class jj
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
            if ("pending".equals(obj))
            {
                obj = jj.a;
            } else
            if ("metadata".equals(obj))
            {
                a("metadata", jsonparser);
                obj = jj.a((jk)jk.a.a.a(jsonparser));
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("Unknown tag: ")).append(((String) (obj))).toString());
            }
            if (!flag)
            {
                e(jsonparser);
            }
            return obj;
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jj)obj;
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

            switch (_cls1.a[((jj) (obj)).b.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unrecognized tag: ")).append(((jj) (obj)).b).toString());

            case 1: // '\001'
                jsongenerator.writeString("pending");
                return;

            case 2: // '\002'
                jsongenerator.writeStartObject();
                break;
            }
            jsongenerator.writeStringField(".tag", "metadata");
            jsongenerator.writeFieldName("metadata");
            jk.a.a.b(jj.a(((jj) (obj))), jsongenerator);
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
            return (b)Enum.valueOf(jj$b, s);
        }

        public static b[] values()
        {
            return (b[])c.clone();
        }

        static 
        {
            a = new b("PENDING", 0);
            b = new b("METADATA", 1);
            c = (new b[] {
                a, b
            });
        }

        private b(String s, int i)
        {
            super(s, i);
        }
    }


    public static final jj a;
    final b b;
    private final jk c;

    private jj(b b1, jk jk1)
    {
        b = b1;
        c = jk1;
    }

    public static jj a(jk jk1)
    {
        if (jk1 == null)
        {
            throw new IllegalArgumentException("Value is null");
        } else
        {
            return new jj(b.b, jk1);
        }
    }

    static jk a(jj jj1)
    {
        return jj1.c;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!(obj instanceof jj))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (jj)obj;
        if (b != ((jj) (obj)).b)
        {
            return false;
        }
        switch (_cls1.a[b.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            break;

        case 2: // '\002'
            continue; /* Loop/switch isn't completed */
        }
        if (true) goto _L1; else goto _L3
        if (c == ((jj) (obj)).c || c.equals(((jj) (obj)).c)) goto _L1; else goto _L4
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
        a = new jj(b.a, null);
    }
}
