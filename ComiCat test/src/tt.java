// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.LinkedList;

class tt
{
    public static final class a
    {

        static final boolean b;
        final String a;
        private final String c;

        public final String toString()
        {
            boolean flag;
            if (c != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                return (new StringBuilder()).append(a).append("=").append(c).toString();
            } else
            {
                return a;
            }
        }

        static 
        {
            boolean flag;
            if (!tt.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            b = flag;
        }

        public a(String s)
        {
            if (!b && s == null)
            {
                throw new AssertionError();
            } else
            {
                a = s;
                c = null;
                return;
            }
        }

        public a(String s, String s1)
        {
            if (!b && s == null)
            {
                throw new AssertionError();
            }
            if (!b && s1 == null)
            {
                throw new AssertionError();
            } else
            {
                a = s;
                c = s1;
                return;
            }
        }
    }


    static final boolean b;
    StringBuilder a;
    private String c;
    private String d;
    private final LinkedList e = new LinkedList();

    public tt()
    {
    }

    public static tt a(Uri uri)
    {
        tt tt1 = new tt();
        String s = uri.getScheme();
        if (!b && s == null)
        {
            throw new AssertionError();
        }
        tt1.c = s;
        s = uri.getHost();
        if (!b && s == null)
        {
            throw new AssertionError();
        }
        tt1.d = s;
        s = uri.getPath();
        if (!b && s == null)
        {
            throw new AssertionError();
        } else
        {
            tt1.a = new StringBuilder(s);
            return tt1.a(uri.getQuery());
        }
    }

    public final tt a(String s)
    {
        e.clear();
        if (s != null)
        {
            s = TextUtils.split(s, "&");
            int j = s.length;
            int i = 0;
            while (i < j) 
            {
                String s1 = s[i];
                Object obj = TextUtils.split(s1, "=");
                if (obj.length == 2)
                {
                    s1 = obj[0];
                    obj = obj[1];
                    e.add(new a(s1, ((String) (obj))));
                } else
                if (obj.length == 1)
                {
                    obj = obj[0];
                    e.add(new a(((String) (obj))));
                } else
                {
                    Log.w("com.microsoft.live.UriBuilder", (new StringBuilder("Invalid query parameter: ")).append(s1).toString());
                }
                i++;
            }
        }
        return this;
    }

    public final tt a(String s, String s1)
    {
        if (!b && s1 == null)
        {
            throw new AssertionError();
        } else
        {
            e.add(new a(s, s1));
            return this;
        }
    }

    public final tt b(String s)
    {
        Iterator iterator = e.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (((a)iterator.next()).a.equals(s))
            {
                iterator.remove();
            }
        } while (true);
        return this;
    }

    public String toString()
    {
        android.net.Uri.Builder builder = (new android.net.Uri.Builder()).scheme(c).authority(d);
        String s;
        if (a == null)
        {
            s = "";
        } else
        {
            s = a.toString();
        }
        return builder.path(s).encodedQuery(TextUtils.join("&", e)).build().toString();
    }

    static 
    {
        boolean flag;
        if (!tt.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
