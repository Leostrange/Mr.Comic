// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

public abstract class io
{
    static interface a
    {

        public abstract Object a();
    }


    private static final JsonFactory b = new JsonFactory();
    private static final Random c = new Random();
    public final hk a;
    private final hl d;

    protected io(hl hl1, hk hk1)
    {
        if (hl1 == null)
        {
            throw new NullPointerException("requestConfig");
        }
        if (hk1 == null)
        {
            throw new NullPointerException("host");
        } else
        {
            d = hl1;
            a = hk1;
            return;
        }
    }

    static hl a(io io1)
    {
        return io1.d;
    }

    private static Object a(int i, a a1)
    {
        int j;
        if (i == 0)
        {
            return a1.a();
        }
        j = 0;
_L2:
        Object obj = a1.a();
        return obj;
        Object obj1;
        obj1;
        int k;
        long l;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        k = j + 1;
        l = ((hu) (obj1)).a + (long)c.nextInt(1000);
        j = k;
        if (l <= 0L)
        {
            continue; /* Loop/switch isn't completed */
        }
        Thread.sleep(l);
        j = k;
        continue; /* Loop/switch isn't completed */
        obj1;
        Thread.currentThread().interrupt();
        j = k;
        if (true) goto _L2; else goto _L1
_L1:
        throw obj1;
    }

    private static byte[] a(ie ie1, Object obj)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        try
        {
            ie1.a(obj, bytearrayoutputstream);
        }
        // Misplaced declaration of an exception variable
        catch (ie ie1)
        {
            throw ik.a("Impossible", ie1);
        }
        return bytearrayoutputstream.toByteArray();
    }

    private static String b(ie ie1, Object obj)
    {
        StringWriter stringwriter = new StringWriter();
        try
        {
            JsonGenerator jsongenerator = b.createGenerator(stringwriter);
            jsongenerator.setHighestNonEscapedChar(126);
            ie1.a(obj, jsongenerator);
            jsongenerator.flush();
        }
        // Misplaced declaration of an exception variable
        catch (ie ie1)
        {
            throw ik.a("Impossible", ie1);
        }
        return stringwriter.toString();
    }

    public final hi a(String s, String s1, Object obj, List list, ie ie1, ie ie2, ie ie3)
    {
        list = new ArrayList(list);
        a(list);
        hm.a(list, d);
        list.add(new hy.a("Dropbox-API-Arg", b(ie1, obj)));
        list.add(new hy.a("Content-Type", ""));
        return (hi)a(d.d, new a(s, s1, new byte[0], list, ie2, ie3) {

            final String a;
            final String b;
            final byte c[];
            final List d;
            final ie e;
            final ie f;
            final io g;

            private hi b()
            {
                Object obj1;
                Object obj2;
                obj2 = hm.a(io.a(g), "OfficialDropboxJavaSDKv2", a, b, c, d);
                obj1 = hm.b(((hy.b) (obj2)));
                ((hy.b) (obj2)).a;
                JVM INSTR lookupswitch 3: default 273
            //                           200: 107
            //                           206: 107
            //                           409: 264;
                   goto _L1 _L2 _L2 _L3
_L1:
                throw hm.a(((hy.b) (obj2)));
_L2:
                Object obj3;
                try
                {
                    obj3 = (List)((hy.b) (obj2)).c.get("dropbox-api-result");
                }
                // Misplaced declaration of an exception variable
                catch (Object obj2)
                {
                    throw new hg(((String) (obj1)), (new StringBuilder("Bad JSON: ")).append(((JsonProcessingException) (obj2)).getMessage()).toString(), ((Throwable) (obj2)));
                }
                // Misplaced declaration of an exception variable
                catch (Object obj1)
                {
                    throw new hr(((IOException) (obj1)));
                }
                if (obj3 != null) goto _L5; else goto _L4
_L4:
                throw new hg(((String) (obj1)), (new StringBuilder("Missing Dropbox-API-Result header; ")).append(((hy.b) (obj2)).c).toString());
_L5:
                if (((List) (obj3)).size() == 0)
                {
                    throw new hg(((String) (obj1)), (new StringBuilder("No Dropbox-API-Result header; ")).append(((hy.b) (obj2)).c).toString());
                }
                obj3 = (String)((List) (obj3)).get(0);
                if (obj3 != null) goto _L7; else goto _L6
_L6:
                throw new hg(((String) (obj1)), (new StringBuilder("Null Dropbox-API-Result header; ")).append(((hy.b) (obj2)).c).toString());
_L7:
                return new hi(e.a(((String) (obj3))), ((hy.b) (obj2)).b);
_L3:
                throw ho.a(f, ((hy.b) (obj2)));
            }

            public final Object a()
            {
                return b();
            }

            
            {
                g = io.this;
                a = s;
                b = s1;
                c = abyte0;
                d = list;
                e = ie1;
                f = ie2;
                super();
            }
        });
    }

    public final Object a(String s, String s1, Object obj, ie ie1, ie ie2, ie ie3)
    {
        obj = a(ie1, obj);
        ie1 = new ArrayList();
        a(((List) (ie1)));
        if (!a.d.equals(s))
        {
            hm.a(ie1, d);
        }
        ie1.add(new hy.a("Content-Type", "application/json; charset=utf-8"));
        return a(d.d, new a(s, s1, ((byte []) (obj)), ie1, ie2, ie3) {

            final String a;
            final String b;
            final byte c[];
            final List d;
            final ie e;
            final ie f;
            final io g;

            public final Object a()
            {
                hy.b b1 = hm.a(io.a(g), "OfficialDropboxJavaSDKv2", a, b, c, d);
                b1.a;
                JVM INSTR lookupswitch 2: default 129
            //                           200: 98
            //                           409: 110;
                   goto _L1 _L2 _L3
_L1:
                throw hm.a(b1);
                JsonProcessingException jsonprocessingexception;
                jsonprocessingexception;
                throw new hg(hm.b(b1), (new StringBuilder("Bad JSON: ")).append(jsonprocessingexception.getMessage()).toString(), jsonprocessingexception);
_L2:
                return e.a(b1.b);
_L3:
                throw ho.a(f, b1);
                IOException ioexception;
                ioexception;
                throw new hr(ioexception);
            }

            
            {
                g = io.this;
                a = s;
                b = s1;
                c = abyte0;
                d = list;
                e = ie1;
                f = ie2;
                super();
            }
        });
    }

    protected abstract void a(List list);

}
