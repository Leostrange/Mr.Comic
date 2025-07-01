// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

public final class ju extends Enum
{
    static final class a extends ih
    {

        public static final a a = new a();

        public static void a(ju ju1, JsonGenerator jsongenerator)
        {
            static final class _cls1
            {

                static final int a[];

                static 
                {
                    a = new int[ju.values().length];
                    try
                    {
                        a[ju.a.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[ju.b.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1.a[ju1.ordinal()])
            {
            default:
                jsongenerator.writeString("other");
                return;

            case 1: // '\001'
                jsongenerator.writeString("from_team_only");
                return;

            case 2: // '\002'
                jsongenerator.writeString("from_anyone");
                break;
            }
        }

        public static ju h(JsonParser jsonparser)
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
            if ("from_team_only".equals(obj))
            {
                obj = ju.a;
            } else
            if ("from_anyone".equals(obj))
            {
                obj = ju.b;
            } else
            {
                obj = ju.c;
                g(jsonparser);
            }
            if (!flag)
            {
                e(jsonparser);
            }
            return ((ju) (obj));
        }

        public final Object a(JsonParser jsonparser)
        {
            return h(jsonparser);
        }

        public final volatile void a(Object obj, JsonGenerator jsongenerator)
        {
            a((ju)obj, jsongenerator);
        }


        a()
        {
        }
    }


    public static final ju a;
    public static final ju b;
    public static final ju c;
    private static final ju d[];

    private ju(String s, int i)
    {
        super(s, i);
    }

    public static ju valueOf(String s)
    {
        return (ju)Enum.valueOf(ju, s);
    }

    public static ju[] values()
    {
        return (ju[])d.clone();
    }

    static 
    {
        a = new ju("FROM_TEAM_ONLY", 0);
        b = new ju("FROM_ANYONE", 1);
        c = new ju("OTHER", 2);
        d = (new ju[] {
            a, b, c
        });
    }
}
