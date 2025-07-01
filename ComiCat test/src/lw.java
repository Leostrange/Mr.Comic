// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class lw extends nw
{
    static final class a extends mi
    {

        private final lw e;
        private final b f;

        public final mj a()
        {
            throw new UnsupportedOperationException();
        }

        public final void a(String s, String s1)
        {
            e.a(s, s1, f);
        }

        a(lw lw1, b b1)
        {
            e = lw1;
            f = b1;
        }
    }

    static final class b
    {

        final nm a;
        final StringBuilder b;
        final nq c;
        final List d;

        public b(lw lw1, StringBuilder stringbuilder)
        {
            Class class1 = lw1.getClass();
            d = Arrays.asList(new Type[] {
                class1
            });
            c = nq.a(class1, true);
            b = stringbuilder;
            a = new nm(lw1);
        }
    }


    private List accept;
    List acceptEncoding;
    private List age;
    public List authenticate;
    public List authorization;
    private List cacheControl;
    private List contentEncoding;
    private List contentLength;
    private List contentMD5;
    private List contentRange;
    List contentType;
    private List cookie;
    private List date;
    private List etag;
    private List expires;
    List ifMatch;
    List ifModifiedSince;
    List ifNoneMatch;
    List ifRange;
    List ifUnmodifiedSince;
    private List lastModified;
    private List location;
    private List mimeVersion;
    public List range;
    private List retryAfter;
    List userAgent;

    public lw()
    {
        super(EnumSet.of(nw.c.a));
        acceptEncoding = new ArrayList(Collections.singleton("gzip"));
    }

    private static Object a(Type type, List list, String s)
    {
        return ns.a(ns.a(list, type), s);
    }

    public static Object a(List list)
    {
        if (list == null)
        {
            return null;
        } else
        {
            return list.get(0);
        }
    }

    static List a(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(obj);
            return arraylist;
        }
    }

    private static void a(Logger logger, StringBuilder stringbuilder, StringBuilder stringbuilder1, mi mi1, String s, Object obj, Writer writer)
    {
        if (obj != null && !ns.a(obj))
        {
            if (obj instanceof Enum)
            {
                obj = nv.a((Enum)obj).c;
            } else
            {
                obj = obj.toString();
            }
            if (("Authorization".equalsIgnoreCase(s) || "Cookie".equalsIgnoreCase(s)) && (logger == null || !logger.isLoggable(Level.ALL)))
            {
                logger = "<Not Logged>";
            } else
            {
                logger = ((Logger) (obj));
            }
            if (stringbuilder != null)
            {
                stringbuilder.append(s).append(": ");
                stringbuilder.append(logger);
                stringbuilder.append(ok.a);
            }
            if (stringbuilder1 != null)
            {
                stringbuilder1.append(" -H '").append(s).append(": ").append(logger).append("'");
            }
            if (mi1 != null)
            {
                mi1.a(s, ((String) (obj)));
            }
            if (writer != null)
            {
                writer.write(s);
                writer.write(": ");
                writer.write(((String) (obj)));
                writer.write("\r\n");
                return;
            }
        }
    }

    public static void a(lw lw1, Writer writer)
    {
        a(lw1, null, null, null, null, writer);
    }

    static void a(lw lw1, StringBuilder stringbuilder, StringBuilder stringbuilder1, Logger logger, mi mi1)
    {
        a(lw1, stringbuilder, stringbuilder1, logger, mi1, null);
    }

    private static void a(lw lw1, StringBuilder stringbuilder, StringBuilder stringbuilder1, Logger logger, mi mi1, Writer writer)
    {
        HashSet hashset = new HashSet();
        Iterator iterator = lw1.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = (java.util.Map.Entry)iterator.next();
            String s = (String)((java.util.Map.Entry) (obj)).getKey();
            oh.a(hashset.add(s), "multiple headers of the same name (headers are case insensitive): %s", new Object[] {
                s
            });
            obj = ((java.util.Map.Entry) (obj)).getValue();
            if (obj != null)
            {
                Object obj1 = ((nw) (lw1)).f.a(s);
                if (obj1 != null)
                {
                    s = ((nv) (obj1)).c;
                }
                obj1 = obj.getClass();
                if ((obj instanceof Iterable) || ((Class) (obj1)).isArray())
                {
                    obj = on.a(obj).iterator();
                    while (((Iterator) (obj)).hasNext()) 
                    {
                        a(logger, stringbuilder, stringbuilder1, mi1, s, ((Iterator) (obj)).next(), writer);
                    }
                } else
                {
                    a(logger, stringbuilder, stringbuilder1, mi1, s, obj, writer);
                }
            }
        } while (true);
        if (writer != null)
        {
            writer.flush();
        }
    }

    public final String a()
    {
        return (String)a(location);
    }

    public final lw a(Long long1)
    {
        contentLength = a(long1);
        return this;
    }

    public final lw a(String s)
    {
        authorization = a(s);
        return this;
    }

    public final lw a(String s, Object obj)
    {
        return (lw)super.d(s, obj);
    }

    final void a(String s, String s1, b b1)
    {
        Object obj = b1.d;
        Object obj1 = b1.c;
        nm nm1 = b1.a;
        b1 = b1.b;
        if (b1 != null)
        {
            b1.append((new StringBuilder()).append(s).append(": ").append(s1).toString()).append(ok.a);
        }
        obj1 = ((nq) (obj1)).a(s);
        if (obj1 != null)
        {
            Type type = ns.a(((List) (obj)), ((nv) (obj1)).b.getGenericType());
            if (on.a(type))
            {
                s = on.a(((List) (obj)), on.b(type));
                nm1.a(((nv) (obj1)).b, s, a(((Type) (s)), ((List) (obj)), s1));
                return;
            }
            if (on.a(on.a(((List) (obj)), type), java/lang/Iterable))
            {
                b1 = (Collection)((nv) (obj1)).a(this);
                s = b1;
                if (b1 == null)
                {
                    s = ns.b(type);
                    ((nv) (obj1)).a(this, s);
                }
                if (type == java/lang/Object)
                {
                    b1 = null;
                } else
                {
                    b1 = on.c(type);
                }
                s.add(a(((Type) (b1)), ((List) (obj)), s1));
                return;
            } else
            {
                ((nv) (obj1)).a(this, a(type, ((List) (obj)), s1));
                return;
            }
        }
        obj = (ArrayList)get(s);
        b1 = ((b) (obj));
        if (obj == null)
        {
            b1 = new ArrayList();
            a(s, b1);
        }
        b1.add(s1);
    }

    public final void a(lw lw1)
    {
        try
        {
            b b1 = new b(this, null);
            a(lw1, null, null, null, ((mi) (new a(this, b1))));
            b1.a.a();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (lw lw1)
        {
            throw om.a(lw1);
        }
    }

    public final void a(mj mj1, StringBuilder stringbuilder)
    {
        clear();
        stringbuilder = new b(this, stringbuilder);
        int j = mj1.g();
        for (int i = 0; i < j; i++)
        {
            a(mj1.a(i), mj1.b(i), ((b) (stringbuilder)));
        }

        ((b) (stringbuilder)).a.a();
    }

    public final lw b(String s)
    {
        contentEncoding = a(s);
        return this;
    }

    public final lw c(String s)
    {
        contentRange = a(s);
        return this;
    }

    public final Object clone()
    {
        return (lw)super.d();
    }

    public final lw d(String s)
    {
        contentType = a(s);
        return this;
    }

    public final volatile nw d()
    {
        return (lw)super.d();
    }

    public final nw d(String s, Object obj)
    {
        return a(s, obj);
    }

    public final lw e(String s)
    {
        userAgent = a(s);
        return this;
    }
}
