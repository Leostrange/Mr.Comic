// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class if
{
    public static final class a extends ie
    {

        public static final a a = new a();

        public final Object a(JsonParser jsonparser)
        {
            boolean flag = jsonparser.getBooleanValue();
            jsonparser.nextToken();
            return Boolean.valueOf(flag);
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            jsongenerator.writeBoolean(((Boolean)obj).booleanValue());
        }


        private a()
        {
        }
    }

    public static final class b extends ie
    {

        public static final b a = new b();

        private static Date b(JsonParser jsonparser)
        {
            String s = c(jsonparser);
            jsonparser.nextToken();
            Date date;
            try
            {
                date = ii.a(s);
            }
            catch (ParseException parseexception)
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("Malformed timestamp: '")).append(s).append("'").toString(), parseexception);
            }
            return date;
        }

        public final Object a(JsonParser jsonparser)
        {
            return b(jsonparser);
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            jsongenerator.writeString(ii.a((Date)obj));
        }


        private b()
        {
        }
    }

    public static final class c extends ie
    {

        public static final c a = new c();

        public final Object a(JsonParser jsonparser)
        {
            double d1 = jsonparser.getDoubleValue();
            jsonparser.nextToken();
            return Double.valueOf(d1);
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            jsongenerator.writeNumber(((Double)obj).doubleValue());
        }


        private c()
        {
        }
    }

    static final class d extends ie
    {

        private final ie a;

        public final Object a(JsonParser jsonparser)
        {
            if (jsonparser.getCurrentToken() != JsonToken.START_ARRAY)
            {
                throw new JsonParseException(jsonparser, "expected array value.");
            }
            jsonparser.nextToken();
            ArrayList arraylist = new ArrayList();
            for (; jsonparser.getCurrentToken() != JsonToken.END_ARRAY; arraylist.add(a.a(jsonparser))) { }
            if (jsonparser.getCurrentToken() != JsonToken.END_ARRAY)
            {
                throw new JsonParseException(jsonparser, "expected end of array value.");
            } else
            {
                jsonparser.nextToken();
                return arraylist;
            }
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            obj = (List)obj;
            jsongenerator.writeStartArray(((List) (obj)).size());
            Object obj1;
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); a.a(obj1, jsongenerator))
            {
                obj1 = ((Iterator) (obj)).next();
            }

            jsongenerator.writeEndArray();
        }

        public d(ie ie1)
        {
            a = ie1;
        }
    }

    public static final class e extends ie
    {

        public static final e a = new e();

        public final Object a(JsonParser jsonparser)
        {
            long l = jsonparser.getLongValue();
            jsonparser.nextToken();
            return Long.valueOf(l);
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            jsongenerator.writeNumber(((Long)obj).longValue());
        }


        private e()
        {
        }
    }

    static final class f extends ie
    {

        private final ie a;

        public final Object a(JsonParser jsonparser)
        {
            if (jsonparser.getCurrentToken() == JsonToken.VALUE_NULL)
            {
                jsonparser.nextToken();
                return null;
            } else
            {
                return a.a(jsonparser);
            }
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            if (obj == null)
            {
                jsongenerator.writeNull();
                return;
            } else
            {
                a.a(obj, jsongenerator);
                return;
            }
        }

        public f(ie ie1)
        {
            a = ie1;
        }
    }

    public static final class g extends ie
    {

        public static final g a = new g();

        public final Object a(JsonParser jsonparser)
        {
            String s = c(jsonparser);
            jsonparser.nextToken();
            return s;
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            jsongenerator.writeString((String)obj);
        }


        private g()
        {
        }
    }

    public static final class h extends ie
    {

        public static final h a = new h();

        public final Object a(JsonParser jsonparser)
        {
            f(jsonparser);
            return null;
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            jsongenerator.writeNull();
        }


        private h()
        {
        }
    }


    public static ie a(ie ie)
    {
        return new f(ie);
    }

    public static ie b(ie ie)
    {
        return new d(ie);
    }
}
