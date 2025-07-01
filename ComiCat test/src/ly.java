// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ly
{

    private static final Pattern a = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");
    private static final Pattern b = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");
    private static final Pattern c = Pattern.compile((new StringBuilder("\\s*(")).append("[^\\s/=;\"]+").append(")/(").append("[^\\s/=;\"]+").append(")\\s*(").append(";.*").append(")?").toString(), 32);
    private static final Pattern d;
    private String e;
    private String f;
    private final SortedMap g = new TreeMap();
    private String h;

    public ly(String s)
    {
        e = "application";
        f = "octet-stream";
        c(s);
    }

    private boolean a(ly ly1)
    {
        return ly1 != null && e.equalsIgnoreCase(ly1.e) && f.equalsIgnoreCase(ly1.f);
    }

    static boolean b(String s)
    {
        return b.matcher(s).matches();
    }

    public static boolean b(String s, String s1)
    {
        return s1 != null && (new ly(s)).a(new ly(s1));
    }

    private ly c(String s)
    {
        s = c.matcher(s);
        oh.a(s.matches(), "Type must be in the 'maintype/subtype; parameter=value' format");
        String s1 = s.group(1);
        oh.a(a.matcher(s1).matches(), "Type contains reserved characters");
        e = s1;
        h = null;
        s1 = s.group(2);
        oh.a(a.matcher(s1).matches(), "Subtype contains reserved characters");
        f = s1;
        h = null;
        s = s.group(3);
        if (s != null)
        {
            String s3;
            for (Matcher matcher = d.matcher(s); matcher.find(); a(s3, s))
            {
                s3 = matcher.group(1);
                String s2 = matcher.group(3);
                s = s2;
                if (s2 == null)
                {
                    s = matcher.group(2);
                }
            }

        }
        return this;
    }

    public final String a()
    {
        if (h != null)
        {
            return h;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(e);
        stringbuilder.append('/');
        stringbuilder.append(f);
        if (g != null)
        {
            Object obj;
            for (Iterator iterator = g.entrySet().iterator(); iterator.hasNext(); stringbuilder.append(((String) (obj))))
            {
                obj = (java.util.Map.Entry)iterator.next();
                String s = (String)((java.util.Map.Entry) (obj)).getValue();
                stringbuilder.append("; ");
                stringbuilder.append((String)((java.util.Map.Entry) (obj)).getKey());
                stringbuilder.append("=");
                obj = s;
                if (!b(s))
                {
                    obj = s.replace("\\", "\\\\").replace("\"", "\\\"");
                    obj = (new StringBuilder("\"")).append(((String) (obj))).append("\"").toString();
                }
            }

        }
        h = stringbuilder.toString();
        return h;
    }

    public final String a(String s)
    {
        return (String)g.get(s.toLowerCase());
    }

    public final ly a(String s, String s1)
    {
        if (s1 == null)
        {
            h = null;
            g.remove(s.toLowerCase());
            return this;
        } else
        {
            oh.a(b.matcher(s).matches(), "Name contains reserved characters");
            h = null;
            g.put(s.toLowerCase(), s1);
            return this;
        }
    }

    public final Charset b()
    {
        String s = a("charset");
        if (s == null)
        {
            return null;
        } else
        {
            return Charset.forName(s);
        }
    }

    public final boolean equals(Object obj)
    {
        if (obj instanceof ly)
        {
            if (a(((ly) (obj = (ly)obj))) && g.equals(((ly) (obj)).g))
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        return a().hashCode();
    }

    public final String toString()
    {
        return a();
    }

    static 
    {
        String s = (new StringBuilder()).append("\"([^\"]*)\"").append("|").append("[^\\s;\"]*").toString();
        d = Pattern.compile((new StringBuilder("\\s*;\\s*(")).append("[^\\s/=;\"]+").append(")=(").append(s).append(")").toString());
    }
}
