// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

public final class jv extends Enum
{
    static final class a extends ih
    {

        public static final a a = new a();

        public static void a(jv jv1, JsonGenerator jsongenerator)
        {
            static final class _cls1
            {

                static final int a[];

                static 
                {
                    a = new int[jv.values().length];
                    try
                    {
                        a[jv.a.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[jv.b.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1.a[jv1.ordinal()])
            {
            default:
                jsongenerator.writeString("other");
                return;

            case 1: // '\001'
                jsongenerator.writeString("team");
                return;

            case 2: // '\002'
                jsongenerator.writeString("anyone");
                break;
            }
        }

        public static jv h(JsonParser jsonparser)
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
            if ("team".equals(obj))
            {
                obj = jv.a;
            } else
            if ("anyone".equals(obj))
            {
                obj = jv.b;
            } else
            {
                obj = jv.c;
                g(jsonparser);
            }
            if (!flag)
            {
                e(jsonparser);
            }
            return ((jv) (obj));
        }

        public final Object a(JsonParser jsonparser)
        {
            return h(jsonparser);
        }

        public final volatile void a(Object obj, JsonGenerator jsongenerator)
        {
            a((jv)obj, jsongenerator);
        }


        a()
        {
        }
    }


    public static final jv a;
    public static final jv b;
    public static final jv c;
    private static final jv d[];

    private jv(String s, int i)
    {
        super(s, i);
    }

    public static jv valueOf(String s)
    {
        return (jv)Enum.valueOf(jv, s);
    }

    public static jv[] values()
    {
        return (jv[])d.clone();
    }

    static 
    {
        a = new jv("TEAM", 0);
        b = new jv("ANYONE", 1);
        c = new jv("OTHER", 2);
        d = (new jv[] {
            a, b, c
        });
    }
}
