// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class lr extends nw
{

    private static final oq c = new or("=&-_.!~*'()@:$,;/?:", false);
    List a;
    public String b;
    private String d;
    private String g;
    private String h;
    private int i;

    public lr()
    {
        i = -1;
    }

    public lr(String s)
    {
        this(a(s));
    }

    private lr(String s, String s1, int j, String s2, String s3, String s4, String s5)
    {
        Object obj = null;
        super();
        i = -1;
        d = s.toLowerCase();
        g = s1;
        i = j;
        a = g(s2);
        if (s3 != null)
        {
            s = op.b(s3);
        } else
        {
            s = null;
        }
        b = s;
        if (s4 != null)
        {
            mn.a(s4, this);
        }
        s = obj;
        if (s5 != null)
        {
            s = op.b(s5);
        }
        h = s;
    }

    public lr(URL url)
    {
        this(url.getProtocol(), url.getHost(), url.getPort(), url.getPath(), url.getRef(), url.getQuery(), url.getUserInfo());
    }

    private static URL a(String s)
    {
        try
        {
            s = new URL(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException(s);
        }
        return s;
    }

    private void a(StringBuilder stringbuilder)
    {
        int k = a.size();
        for (int j = 0; j < k; j++)
        {
            String s = (String)a.get(j);
            if (j != 0)
            {
                stringbuilder.append('/');
            }
            if (s.length() != 0)
            {
                stringbuilder.append(op.c(s));
            }
        }

    }

    static void a(Set set, StringBuilder stringbuilder)
    {
        set = set.iterator();
        boolean flag = true;
        do
        {
            if (!set.hasNext())
            {
                break;
            }
            Object obj1 = (java.util.Map.Entry)set.next();
            Object obj = ((java.util.Map.Entry) (obj1)).getValue();
            if (obj != null)
            {
                obj1 = op.f((String)((java.util.Map.Entry) (obj1)).getKey());
                if (obj instanceof Collection)
                {
                    obj = ((Collection)obj).iterator();
                    while (((Iterator) (obj)).hasNext()) 
                    {
                        flag = a(flag, stringbuilder, ((String) (obj1)), ((Iterator) (obj)).next());
                    }
                } else
                {
                    flag = a(flag, stringbuilder, ((String) (obj1)), obj);
                }
            }
        } while (true);
    }

    private static boolean a(boolean flag, StringBuilder stringbuilder, String s, Object obj)
    {
        if (flag)
        {
            flag = false;
            stringbuilder.append('?');
        } else
        {
            stringbuilder.append('&');
        }
        stringbuilder.append(s);
        s = op.f(obj.toString());
        if (s.length() != 0)
        {
            stringbuilder.append('=').append(s);
        }
        return flag;
    }

    public static List g(String s)
    {
        if (s == null || s.length() == 0)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        boolean flag = true;
        int j = 0;
        while (flag) 
        {
            int k = s.indexOf('/', j);
            String s1;
            if (k != -1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                s1 = s.substring(j, k);
            } else
            {
                s1 = s.substring(j);
            }
            arraylist.add(op.b(s1));
            j = k + 1;
        }
        return arraylist;
    }

    public lr c()
    {
        lr lr1 = (lr)super.d();
        if (a != null)
        {
            lr1.a = new ArrayList(a);
        }
        return lr1;
    }

    public lr c(String s, Object obj)
    {
        return (lr)super.d(s, obj);
    }

    public Object clone()
    {
        return c();
    }

    public nw d()
    {
        return c();
    }

    public nw d(String s, Object obj)
    {
        return c(s, obj);
    }

    public final String e()
    {
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = new StringBuilder();
        stringbuilder1.append((String)ni.a(d));
        stringbuilder1.append("://");
        if (h != null)
        {
            stringbuilder1.append(op.e(h)).append('@');
        }
        stringbuilder1.append((String)ni.a(g));
        int j = i;
        if (j != -1)
        {
            stringbuilder1.append(':').append(j);
        }
        stringbuilder = stringbuilder.append(stringbuilder1.toString());
        stringbuilder1 = new StringBuilder();
        if (a != null)
        {
            a(stringbuilder1);
        }
        a(entrySet(), stringbuilder1);
        String s = b;
        if (s != null)
        {
            stringbuilder1.append('#').append(c.a(s));
        }
        return stringbuilder.append(stringbuilder1.toString()).toString();
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof lr))
        {
            return false;
        } else
        {
            obj = (lr)obj;
            return e().equals(((lr) (obj)).toString());
        }
    }

    public final URL f(String s)
    {
        try
        {
            s = new URL(a(e()), s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException(s);
        }
        return s;
    }

    public int hashCode()
    {
        return e().hashCode();
    }

    public String toString()
    {
        return e();
    }

}
