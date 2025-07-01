// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Locale;
import java.util.Set;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;

public class sw
{
    static final class a extends c
        implements Runnable
    {

        private final int c;
        private final ta d;

        public final void run()
        {
            a.a(c, d);
        }

        public a(sy sy1, Object obj, int i, ta ta1)
        {
            super(sy1, obj);
            c = i;
            d = ta1;
        }
    }

    static final class b extends c
        implements Runnable
    {

        private final sx c;

        public final void run()
        {
            a.a();
        }

        public b(sy sy1, Object obj, sx sx)
        {
            super(sy1, obj);
            c = sx;
        }
    }

    static abstract class c
    {

        protected final sy a;
        protected final Object b;

        public c(sy sy, Object obj)
        {
            a = sy;
            b = obj;
        }
    }

    public final class d extends c
        implements tl, tn
    {

        final sw c;

        public final void a(sx sx1)
        {
            (new b(a, b, sx1)).run();
        }

        public final void a(tk tk1)
        {
            tk1 = new sx(tk1.a.toString().toLowerCase(Locale.US), tk1.b, tk1.c);
            (new b(a, b, tk1)).run();
        }

        public final void a(tm tm1)
        {
            tm1.a(this);
        }

        public final void a(to to)
        {
            sw.a(c).a(to);
            (new a(a, b, th.b, sw.a(c))).run();
        }

        public d(sy sy)
        {
            c = sw.this;
            super(sy, null);
        }
    }

    public final class e
        implements tl, tn
    {

        static final boolean a;
        final sw b;

        public final void a(sx sx)
        {
        }

        public final void a(tk tk1)
        {
            if (tk1.a == tj.b.b)
            {
                sw.b(b);
            }
        }

        public final void a(tm tm1)
        {
            tm1.a(this);
        }

        public final void a(to to1)
        {
            to1 = to1.d;
            if (!TextUtils.isEmpty(to1))
            {
                if (!a && TextUtils.isEmpty(to1))
                {
                    throw new AssertionError();
                }
                android.content.SharedPreferences.Editor editor = sw.c(b).getSharedPreferences("com.microsoft.live", 0).edit();
                editor.putString("refresh_token", to1);
                editor.commit();
            }
        }

        static 
        {
            boolean flag;
            if (!sw.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        private e()
        {
            b = sw.this;
            super();
        }

        public e(byte byte0)
        {
            this();
        }
    }


    public static final sy a = new sy() {

        public final void a()
        {
        }

        public final void a(int i, ta ta1)
        {
        }

    };
    static final boolean g;
    public final String b;
    public boolean c;
    public HttpClient d;
    public Set e;
    public final ta f = new ta(this);
    private final Context h;

    public sw(Context context, String s)
    {
        d = new DefaultHttpClient();
        c = false;
        tb.a(context, "context");
        tb.a(s, "clientId");
        h = context.getApplicationContext();
        b = s;
    }

    static ta a(sw sw1)
    {
        return sw1.f;
    }

    static boolean b(sw sw1)
    {
        sw1 = sw1.h.getSharedPreferences("com.microsoft.live", 0).edit();
        sw1.remove("refresh_token");
        return sw1.commit();
    }

    static Context c(sw sw1)
    {
        return sw1.h;
    }

    static boolean d(sw sw1)
    {
        sw1.c = false;
        return false;
    }

    static 
    {
        boolean flag;
        if (!sw.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
    }

    // Unreferenced inner class sw$2

/* anonymous class */
    public final class _cls2
        implements tl
    {

        final sw a;

        public final void a(sx sx)
        {
            sw.d(a);
        }

        public final void a(tm tm)
        {
            sw.d(a);
        }

            public 
            {
                a = sw.this;
                super();
            }
    }

}
