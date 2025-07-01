// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class jx
{
    public static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jx)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("shared_folder_member_policy");
            Object obj1 = jv.a.a;
            jv.a.a(((jx) (obj)).a, jsongenerator);
            jsongenerator.writeFieldName("shared_folder_join_policy");
            obj1 = ju.a.a;
            ju.a.a(((jx) (obj)).b, jsongenerator);
            jsongenerator.writeFieldName("shared_link_create_policy");
            obj1 = jw.a.a;
            jw.a.a(((jx) (obj)).c, jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            Object obj2 = null;
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                Object obj1 = null;
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("shared_folder_member_policy".equals(s))
                    {
                        obj = jv.a.a;
                        obj = jv.a.h(jsonparser);
                    } else
                    if ("shared_folder_join_policy".equals(s))
                    {
                        obj1 = ju.a.a;
                        obj1 = ju.a.h(jsonparser);
                    } else
                    if ("shared_link_create_policy".equals(s))
                    {
                        obj2 = jw.a.a;
                        obj2 = jw.a.h(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"shared_folder_member_policy\" missing.");
                }
                if (obj1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"shared_folder_join_policy\" missing.");
                }
                if (obj2 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"shared_link_create_policy\" missing.");
                } else
                {
                    obj = new jx(((jv) (obj)), ((ju) (obj1)), ((jw) (obj2)));
                    e(jsonparser);
                    return obj;
                }
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }


        public a()
        {
        }
    }


    protected final jv a;
    protected final ju b;
    protected final jw c;

    public jx(jv jv1, ju ju1, jw jw1)
    {
        if (jv1 == null)
        {
            throw new IllegalArgumentException("Required value for 'sharedFolderMemberPolicy' is null");
        }
        a = jv1;
        if (ju1 == null)
        {
            throw new IllegalArgumentException("Required value for 'sharedFolderJoinPolicy' is null");
        }
        b = ju1;
        if (jw1 == null)
        {
            throw new IllegalArgumentException("Required value for 'sharedLinkCreatePolicy' is null");
        } else
        {
            c = jw1;
            return;
        }
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((jx) (obj = (jx)obj)).a && !a.equals(((jx) (obj)).a) || b != ((jx) (obj)).b && !b.equals(((jx) (obj)).b) || c != ((jx) (obj)).c && !c.equals(((jx) (obj)).c))
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
            a, b, c
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
