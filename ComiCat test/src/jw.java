// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

public final class jw extends Enum
{
    static final class a extends ih
    {

        public static final a a = new a();

        public static void a(jw jw1, JsonGenerator jsongenerator)
        {
            static final class _cls1
            {

                static final int a[];

                static 
                {
                    a = new int[jw.values().length];
                    try
                    {
                        a[jw.a.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[jw.b.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[jw.c.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls1.a[jw1.ordinal()])
            {
            default:
                jsongenerator.writeString("other");
                return;

            case 1: // '\001'
                jsongenerator.writeString("default_public");
                return;

            case 2: // '\002'
                jsongenerator.writeString("default_team_only");
                return;

            case 3: // '\003'
                jsongenerator.writeString("team_only");
                break;
            }
        }

        public static jw h(JsonParser jsonparser)
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
            if ("default_public".equals(obj))
            {
                obj = jw.a;
            } else
            if ("default_team_only".equals(obj))
            {
                obj = jw.b;
            } else
            if ("team_only".equals(obj))
            {
                obj = jw.c;
            } else
            {
                obj = jw.d;
                g(jsonparser);
            }
            if (!flag)
            {
                e(jsonparser);
            }
            return ((jw) (obj));
        }

        public final Object a(JsonParser jsonparser)
        {
            return h(jsonparser);
        }

        public final volatile void a(Object obj, JsonGenerator jsongenerator)
        {
            a((jw)obj, jsongenerator);
        }


        a()
        {
        }
    }


    public static final jw a;
    public static final jw b;
    public static final jw c;
    public static final jw d;
    private static final jw e[];

    private jw(String s, int i)
    {
        super(s, i);
    }

    public static jw valueOf(String s)
    {
        return (jw)Enum.valueOf(jw, s);
    }

    public static jw[] values()
    {
        return (jw[])e.clone();
    }

    static 
    {
        a = new jw("DEFAULT_PUBLIC", 0);
        b = new jw("DEFAULT_TEAM_ONLY", 1);
        c = new jw("TEAM_ONLY", 2);
        d = new jw("OTHER", 3);
        e = (new jw[] {
            a, b, c, d
        });
    }
}
