// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class kb extends jy
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (kb)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("account_id");
            if.g.a.a(((kb) (obj)).a, jsongenerator);
            jsongenerator.writeFieldName("name");
            kd.a.a.b(((kb) (obj)).b, jsongenerator);
            jsongenerator.writeFieldName("email");
            if.g.a.a(((kb) (obj)).c, jsongenerator);
            jsongenerator.writeFieldName("email_verified");
            if.a.a.a(Boolean.valueOf(((kb) (obj)).d), jsongenerator);
            jsongenerator.writeFieldName("disabled");
            if.a.a.a(Boolean.valueOf(((kb) (obj)).f), jsongenerator);
            jsongenerator.writeFieldName("locale");
            if.g.a.a(((kb) (obj)).h, jsongenerator);
            jsongenerator.writeFieldName("referral_link");
            if.g.a.a(((kb) (obj)).i, jsongenerator);
            jsongenerator.writeFieldName("is_paired");
            if.a.a.a(Boolean.valueOf(((kb) (obj)).l), jsongenerator);
            jsongenerator.writeFieldName("account_type");
            jz.a a1 = jz.a.a;
            jz.a.a(((kb) (obj)).m, jsongenerator);
            if (((kb) (obj)).e != null)
            {
                jsongenerator.writeFieldName("profile_photo_url");
                if.a(if.g.a).a(((kb) (obj)).e, jsongenerator);
            }
            if (((kb) (obj)).g != null)
            {
                jsongenerator.writeFieldName("country");
                if.a(if.g.a).a(((kb) (obj)).g, jsongenerator);
            }
            if (((kb) (obj)).j != null)
            {
                jsongenerator.writeFieldName("team");
                if.a(kc.a.a).a(((kb) (obj)).j, jsongenerator);
            }
            if (((kb) (obj)).k != null)
            {
                jsongenerator.writeFieldName("team_member_id");
                if.a(if.g.a).a(((kb) (obj)).k, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                String s4 = null;
                String s3 = null;
                String s2 = null;
                Object obj1 = null;
                String s1 = null;
                String s = null;
                kc kc1 = null;
                obj = null;
                Boolean boolean1 = null;
                String s5 = null;
                Boolean boolean2 = null;
                Boolean boolean3 = null;
                kd kd1 = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s6 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("account_id".equals(s6))
                    {
                        s5 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("name".equals(s6))
                    {
                        kd1 = (kd)kd.a.a.a(jsonparser);
                    } else
                    if ("email".equals(s6))
                    {
                        s4 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("email_verified".equals(s6))
                    {
                        boolean3 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("disabled".equals(s6))
                    {
                        boolean2 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("locale".equals(s6))
                    {
                        s3 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("referral_link".equals(s6))
                    {
                        s2 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("is_paired".equals(s6))
                    {
                        boolean1 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("account_type".equals(s6))
                    {
                        obj1 = jz.a.a;
                        obj1 = jz.a.h(jsonparser);
                    } else
                    if ("profile_photo_url".equals(s6))
                    {
                        s1 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("country".equals(s6))
                    {
                        s = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("team".equals(s6))
                    {
                        kc1 = (kc)if.a(kc.a.a).a(jsonparser);
                    } else
                    if ("team_member_id".equals(s6))
                    {
                        obj = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (s5 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"account_id\" missing.");
                }
                if (kd1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"name\" missing.");
                }
                if (s4 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"email\" missing.");
                }
                if (boolean3 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"email_verified\" missing.");
                }
                if (boolean2 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"disabled\" missing.");
                }
                if (s3 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"locale\" missing.");
                }
                if (s2 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"referral_link\" missing.");
                }
                if (boolean1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"is_paired\" missing.");
                }
                if (obj1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"account_type\" missing.");
                } else
                {
                    obj = new kb(s5, kd1, s4, boolean3.booleanValue(), boolean2.booleanValue(), s3, s2, boolean1.booleanValue(), ((jz) (obj1)), s1, s, kc1, ((String) (obj)));
                    e(jsonparser);
                    return obj;
                }
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }


        a()
        {
        }
    }


    protected final String g;
    protected final String h;
    protected final String i;
    protected final kc j;
    protected final String k;
    protected final boolean l;
    protected final jz m;

    public kb(String s, kd kd1, String s1, boolean flag, boolean flag1, String s2, String s3, 
            boolean flag2, jz jz1, String s4, String s5, kc kc1, String s6)
    {
        super(s, kd1, s1, flag, flag1, s4);
        if (s5 != null)
        {
            if (s5.length() < 2)
            {
                throw new IllegalArgumentException("String 'country' is shorter than 2");
            }
            if (s5.length() > 2)
            {
                throw new IllegalArgumentException("String 'country' is longer than 2");
            }
        }
        g = s5;
        if (s2 == null)
        {
            throw new IllegalArgumentException("Required value for 'locale' is null");
        }
        if (s2.length() < 2)
        {
            throw new IllegalArgumentException("String 'locale' is shorter than 2");
        }
        h = s2;
        if (s3 == null)
        {
            throw new IllegalArgumentException("Required value for 'referralLink' is null");
        }
        i = s3;
        j = kc1;
        k = s6;
        l = flag2;
        if (jz1 == null)
        {
            throw new IllegalArgumentException("Required value for 'accountType' is null");
        } else
        {
            m = jz1;
            return;
        }
    }

    public final kd a()
    {
        return b;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((kb) (obj = (kb)obj)).a && !a.equals(((kb) (obj)).a) || b != ((kb) (obj)).b && !b.equals(((kb) (obj)).b) || c != ((kb) (obj)).c && !c.equals(((kb) (obj)).c) || d != ((kb) (obj)).d || f != ((kb) (obj)).f || h != ((kb) (obj)).h && !h.equals(((kb) (obj)).h) || i != ((kb) (obj)).i && !i.equals(((kb) (obj)).i) || l != ((kb) (obj)).l || m != ((kb) (obj)).m && !m.equals(((kb) (obj)).m) || e != ((kb) (obj)).e && (e == null || !e.equals(((kb) (obj)).e)) || g != ((kb) (obj)).g && (g == null || !g.equals(((kb) (obj)).g)) || j != ((kb) (obj)).j && (j == null || !j.equals(((kb) (obj)).j)) || k != ((kb) (obj)).k && (k == null || !k.equals(((kb) (obj)).k)))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return Arrays.hashCode(new Object[] {
            g, h, i, j, k, Boolean.valueOf(l), m
        }) + super.hashCode() * 31;
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
