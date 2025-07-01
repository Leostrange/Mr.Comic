// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class ga extends fy
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a d[];
        private final String c;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(ga$a, s);
        }

        public static a[] values()
        {
            return (a[])d.clone();
        }

        public final String toString()
        {
            return c;
        }

        static 
        {
            a = new a("ACCESS", 0, "com.amazon.identity.token.accessToken");
            b = new a("REFRESH", 1, "com.amazon.identity.token.refreshToken");
            d = (new a[] {
                a, b
            });
        }

        private a(String s, int k, String s1)
        {
            super(s, k);
            c = s1;
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        public static final b e;
        public static final b f;
        public static final b g;
        public static final b h;
        private static final b j[];
        public final int i;

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(ga$b, s);
        }

        public static b[] values()
        {
            return (b[])j.clone();
        }

        static 
        {
            a = new b("ID", 0, 0);
            b = new b("APP_ID", 1, 1);
            c = new b("TOKEN", 2, 2);
            d = new b("CREATION_TIME", 3, 3);
            e = new b("EXPIRATION_TIME", 4, 4);
            f = new b("MISC_DATA", 5, 5);
            g = new b("TYPE", 6, 6);
            h = new b("DIRECTED_ID", 7, 7);
            j = (new b[] {
                a, b, c, d, e, f, g, h
            });
        }

        private b(String s, int k, int l)
        {
            super(s, k);
            i = l;
        }
    }


    public static final String b[] = {
        "Id", "AppId", "Token", "CreationTime", "ExpirationTime", "MiscData", "type", "directedId"
    };
    private static final String j = ga.getName();
    protected String c;
    protected String d;
    protected Date e;
    protected Date f;
    protected byte g[];
    protected a h;
    public String i;

    public ga()
    {
    }

    public ga(String s, String s1, Date date, Date date1, a a1)
    {
        c = s;
        d = s1;
        e = gg.a(date);
        f = gg.a(date1);
        g = null;
        h = a1;
        i = null;
    }

    public static gf d(Context context)
    {
        return gf.a(context);
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(b[b.b.i], c);
        contentvalues.put(b[b.c.i], d);
        contentvalues.put(b[b.d.i], gg.a.format(e));
        contentvalues.put(b[b.e.i], gg.a.format(f));
        contentvalues.put(b[b.f.i], g);
        contentvalues.put(b[b.g.i], Integer.valueOf(h.ordinal()));
        contentvalues.put(b[b.h.i], i);
        return contentvalues;
    }

    public final void a(String s)
    {
        c = s;
    }

    public final void a(Date date)
    {
        e = gg.a(date);
    }

    public final void a(byte abyte0[])
    {
        g = abyte0;
    }

    public final void b(String s)
    {
        d = s;
    }

    public final void b(Date date)
    {
        f = gg.a(date);
    }

    public final gc c(Context context)
    {
        return gf.a(context);
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        flag = flag1;
        if (!(obj instanceof ga))
        {
            break MISSING_BLOCK_LABEL_130;
        }
        boolean flag2;
        try
        {
            obj = (ga)obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            gz.b(j, (new StringBuilder()).append(((NullPointerException) (obj)).toString()).toString());
            return false;
        }
        flag = flag1;
        if (!TextUtils.equals(c, ((ga) (obj)).c))
        {
            break MISSING_BLOCK_LABEL_130;
        }
        flag = flag1;
        if (!TextUtils.equals(d, ((ga) (obj)).d))
        {
            break MISSING_BLOCK_LABEL_130;
        }
        flag = flag1;
        if (!a(e, ((ga) (obj)).e))
        {
            break MISSING_BLOCK_LABEL_130;
        }
        flag = flag1;
        if (!a(f, ((ga) (obj)).f))
        {
            break MISSING_BLOCK_LABEL_130;
        }
        flag = flag1;
        if (!TextUtils.equals(h.toString(), ((ga) (obj)).h.toString()))
        {
            break MISSING_BLOCK_LABEL_130;
        }
        flag2 = TextUtils.equals(i, ((ga) (obj)).i);
        flag = flag1;
        if (flag2)
        {
            flag = true;
        }
        return flag;
    }

    public String toString()
    {
        return d;
    }

}
