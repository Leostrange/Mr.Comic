// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

public abstract class hy
{
    public static final class a
    {

        final String a;
        final String b;

        public a(String s, String s1)
        {
            a = s;
            b = s1;
        }
    }

    public static final class b
    {

        public final int a;
        public final InputStream b;
        public final Map c;

        private static final Map a(Map map)
        {
            TreeMap treemap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            map = map.entrySet().iterator();
            do
            {
                if (!map.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
                if (entry.getKey() != null && ((String)entry.getKey()).trim().length() != 0)
                {
                    treemap.put(entry.getKey(), Collections.unmodifiableList((List)entry.getValue()));
                }
            } while (true);
            return Collections.unmodifiableMap(treemap);
        }

        public b(int i, InputStream inputstream, Map map)
        {
            a = i;
            b = inputstream;
            c = a(map);
        }
    }

    public static abstract class c
    {

        public abstract OutputStream a();

        public abstract void b();

        public abstract b c();

        public c()
        {
        }
    }


    public static final long a;
    public static final long b;

    public hy()
    {
    }

    public abstract c a(String s, Iterable iterable);

    static 
    {
        a = TimeUnit.SECONDS.toMillis(20L);
        b = TimeUnit.MINUTES.toMillis(2L);
    }
}
