// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class ji
{
    public static final class a extends ih
    {

        public static final a a = new a();

        public static void a(ji ji1, JsonGenerator jsongenerator)
        {
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
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    try
                    {
                        a[b.b.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    try
                    {
                        a[b.c.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    try
                    {
                        a[b.d.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        a[b.e.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[b.f.ordinal()] = 6;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[b.g.ordinal()] = 7;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1.a[ji1.f.ordinal()])
            {
            default:
                jsongenerator.writeString("other");
                return;

            case 1: // '\001'
                jsongenerator.writeStartObject();
                jsongenerator.writeStringField(".tag", "malformed_path");
                jsongenerator.writeFieldName("malformed_path");
                if.a(if.g.a).a(ji.a(ji1), jsongenerator);
                jsongenerator.writeEndObject();
                return;

            case 2: // '\002'
                jsongenerator.writeString("not_found");
                return;

            case 3: // '\003'
                jsongenerator.writeString("not_file");
                return;

            case 4: // '\004'
                jsongenerator.writeString("not_folder");
                return;

            case 5: // '\005'
                jsongenerator.writeString("restricted_content");
                return;

            case 6: // '\006'
                jsongenerator.writeStartObject();
                break;
            }
            jsongenerator.writeStringField(".tag", "invalid_path_root");
            jm.a a1 = jm.a.a;
            jm.a.a(ji.b(ji1), jsongenerator, true);
            jsongenerator.writeEndObject();
        }

        public static ji h(JsonParser jsonparser)
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
                flag = false;
                d(jsonparser);
                obj = b(jsonparser);
            }
            if (obj == null)
            {
                throw new JsonParseException(jsonparser, "Required field missing: .tag");
            }
            if ("malformed_path".equals(obj))
            {
                obj = null;
                if (jsonparser.getCurrentToken() != JsonToken.END_OBJECT)
                {
                    a("malformed_path", jsonparser);
                    obj = (String)if.a(if.g.a).a(jsonparser);
                }
                if (obj == null)
                {
                    obj = ji.a();
                } else
                {
                    obj = ji.a(((String) (obj)));
                }
            } else
            if ("not_found".equals(obj))
            {
                obj = ji.a;
            } else
            if ("not_file".equals(obj))
            {
                obj = ji.b;
            } else
            if ("not_folder".equals(obj))
            {
                obj = ji.c;
            } else
            if ("restricted_content".equals(obj))
            {
                obj = ji.d;
            } else
            if ("invalid_path_root".equals(obj))
            {
                obj = jm.a.a;
                obj = ji.a(jm.a.a(jsonparser, true));
            } else
            {
                obj = ji.e;
                g(jsonparser);
            }
            if (!flag)
            {
                e(jsonparser);
            }
            return ((ji) (obj));
        }

        public final Object a(JsonParser jsonparser)
        {
            return h(jsonparser);
        }

        public final volatile void a(Object obj, JsonGenerator jsongenerator)
        {
            a((ji)obj, jsongenerator);
        }


        public a()
        {
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        public static final b e;
        public static final b f;
        public static final b g;
        private static final b h[];

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(ji$b, s);
        }

        public static b[] values()
        {
            return (b[])h.clone();
        }

        static 
        {
            a = new b("MALFORMED_PATH", 0);
            b = new b("NOT_FOUND", 1);
            c = new b("NOT_FILE", 2);
            d = new b("NOT_FOLDER", 3);
            e = new b("RESTRICTED_CONTENT", 4);
            f = new b("INVALID_PATH_ROOT", 5);
            g = new b("OTHER", 6);
            h = (new b[] {
                a, b, c, d, e, f, g
            });
        }

        private b(String s, int i)
        {
            super(s, i);
        }
    }


    public static final ji a;
    public static final ji b;
    public static final ji c;
    public static final ji d;
    public static final ji e;
    final b f;
    private final String g;
    private final jm h;

    private ji(b b1, String s, jm jm1)
    {
        f = b1;
        g = s;
        h = jm1;
    }

    static String a(ji ji1)
    {
        return ji1.g;
    }

    public static ji a()
    {
        return a(((String) (null)));
    }

    public static ji a(String s)
    {
        return new ji(b.a, s, null);
    }

    public static ji a(jm jm1)
    {
        if (jm1 == null)
        {
            throw new IllegalArgumentException("Value is null");
        } else
        {
            return new ji(b.f, null, jm1);
        }
    }

    static jm b(ji ji1)
    {
        return ji1.h;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!(obj instanceof ji)) goto _L4; else goto _L3
_L3:
        obj = (ji)obj;
        if (f != ((ji) (obj)).f)
        {
            return false;
        }
        _cls1.a[f.ordinal()];
        JVM INSTR tableswitch 1 7: default 84
    //                   1 86
    //                   2 5
    //                   3 5
    //                   4 5
    //                   5 5
    //                   6 120
    //                   7 5;
           goto _L5 _L6 _L1 _L1 _L1 _L1 _L7 _L1
_L7:
        continue; /* Loop/switch isn't completed */
_L5:
        return false;
_L6:
        if (g == ((ji) (obj)).g || g != null && g.equals(((ji) (obj)).g)) goto _L1; else goto _L8
_L8:
        return false;
        if (h == ((ji) (obj)).h || h.equals(((ji) (obj)).h)) goto _L1; else goto _L9
_L9:
        return false;
_L4:
        return false;
    }

    public final int hashCode()
    {
        return Arrays.hashCode(new Object[] {
            f, g, h
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }

    static 
    {
        a = new ji(b.b, null, null);
        b = new ji(b.c, null, null);
        c = new ji(b.d, null, null);
        d = new ji(b.e, null, null);
        e = new ji(b.g, null, null);
    }
}
