// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

public final class jz extends Enum
{
    static final class a extends ih
    {

        public static final a a = new a();

        public static void a(jz jz1, JsonGenerator jsongenerator)
        {
            static final class _cls1
            {

                static final int a[];

                static 
                {
                    a = new int[jz.values().length];
                    try
                    {
                        a[jz.a.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[jz.b.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[jz.c.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1.a[jz1.ordinal()])
            {
            default:
                throw new IllegalArgumentException((new StringBuilder("Unrecognized tag: ")).append(jz1).toString());

            case 1: // '\001'
                jsongenerator.writeString("basic");
                return;

            case 2: // '\002'
                jsongenerator.writeString("pro");
                return;

            case 3: // '\003'
                jsongenerator.writeString("business");
                break;
            }
        }

        public static jz h(JsonParser jsonparser)
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
            if ("basic".equals(obj))
            {
                obj = jz.a;
            } else
            if ("pro".equals(obj))
            {
                obj = jz.b;
            } else
            if ("business".equals(obj))
            {
                obj = jz.c;
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("Unknown tag: ")).append(((String) (obj))).toString());
            }
            if (!flag)
            {
                e(jsonparser);
            }
            return ((jz) (obj));
        }

        public final Object a(JsonParser jsonparser)
        {
            return h(jsonparser);
        }

        public final volatile void a(Object obj, JsonGenerator jsongenerator)
        {
            a((jz)obj, jsongenerator);
        }


        a()
        {
        }
    }


    public static final jz a;
    public static final jz b;
    public static final jz c;
    private static final jz d[];

    private jz(String s, int i)
    {
        super(s, i);
    }

    public static jz valueOf(String s)
    {
        return (jz)Enum.valueOf(jz, s);
    }

    public static jz[] values()
    {
        return (jz[])d.clone();
    }

    static 
    {
        a = new jz("BASIC", 0);
        b = new jz("PRO", 1);
        c = new jz("BUSINESS", 2);
        d = (new jz[] {
            a, b, c
        });
    }
}
