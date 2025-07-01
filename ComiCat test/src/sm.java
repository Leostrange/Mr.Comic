// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.Uri;
import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class sm
{
    public static interface a
    {

        public abstract void a(HttpResponse httpresponse);
    }

    public static abstract class b extends Enum
    {

        public static final b a;
        public static final b b;
        private static final b c[];

        static void a(tt tt1, Boolean boolean1)
        {
            tt1.b("suppress_redirects");
            tt1.a("suppress_redirects", boolean1.toString());
        }

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(sm$b, s);
        }

        public static b[] values()
        {
            return (b[])c.clone();
        }

        protected abstract void a(tt tt1);

        static 
        {
            a = new b("SUPPRESS") {

                protected final void a(tt tt1)
                {
                    b.a(tt1, Boolean.TRUE);
                }

            };
            b = new b("UNSUPPRESSED") {

                protected final void a(tt tt1)
                {
                    b.a(tt1, Boolean.FALSE);
                }

            };
            c = (new b[] {
                a, b
            });
        }

        private b(String s, int j)
        {
            super(s, j);
        }

        b(String s, int j, byte byte0)
        {
            this(s, j);
        }
    }

    public static abstract class c extends Enum
    {

        public static final c a;
        public static final c b;
        private static final c c[];

        static void a(tt tt1, Boolean boolean1)
        {
            tt1.b("suppress_response_codes");
            tt1.a("suppress_response_codes", boolean1.toString());
        }

        public static c valueOf(String s)
        {
            return (c)Enum.valueOf(sm$c, s);
        }

        public static c[] values()
        {
            return (c[])c.clone();
        }

        protected abstract void a(tt tt1);

        static 
        {
            a = new c("SUPPRESS") {

                protected final void a(tt tt1)
                {
                    c.a(tt1, Boolean.TRUE);
                }

            };
            b = new c("UNSUPPRESSED") {

                protected final void a(tt tt1)
                {
                    c.a(tt1, Boolean.FALSE);
                }

            };
            c = (new c[] {
                a, b
            });
        }

        private c(String s, int j)
        {
            super(s, j);
        }

        c(String s, int j, byte byte0)
        {
            this(s, j);
        }
    }


    static final boolean e;
    private static final Header f;
    public final List a;
    public final String b;
    protected final tt c;
    protected final Uri d;
    private final HttpClient g;
    private final ResponseHandler h;
    private final ta i;

    public sm(ta ta1, HttpClient httpclient, ResponseHandler responsehandler, String s)
    {
        this(ta1, httpclient, responsehandler, s, c.a, b.a);
    }

    public sm(ta ta1, HttpClient httpclient, ResponseHandler responsehandler, String s, c c1, b b1)
    {
        boolean flag2;
        flag2 = false;
        super();
        if (!e && ta1 == null)
        {
            throw new AssertionError();
        }
        if (!e && httpclient == null)
        {
            throw new AssertionError();
        }
        if (!e && responsehandler == null)
        {
            throw new AssertionError();
        }
        if (!e && TextUtils.isEmpty(s))
        {
            throw new AssertionError();
        }
        i = ta1;
        g = httpclient;
        a = new ArrayList();
        h = responsehandler;
        b = s;
        d = Uri.parse(s);
        if (!d.isAbsolute()) goto _L2; else goto _L1
_L1:
        ta1 = tt.a(d);
_L4:
        c1.a(ta1);
        b1.a(ta1);
        c = ta1;
        return;
_L2:
        ta1 = tt.a(sp.a.b);
        httpclient = d.getEncodedPath();
        if (!tt.b && httpclient == null)
        {
            throw new AssertionError();
        }
        if (((tt) (ta1)).a != null)
        {
            break; /* Loop/switch isn't completed */
        }
        ta1.a = new StringBuilder(httpclient);
_L5:
        ta1 = ta1.a(d.getQuery());
        if (true) goto _L4; else goto _L3
_L3:
        boolean flag;
        boolean flag1;
        boolean flag3;
        if (!TextUtils.isEmpty(((tt) (ta1)).a) && ((tt) (ta1)).a.charAt(((tt) (ta1)).a.length() - 1) == '/')
        {
            flag = true;
        } else
        {
            flag = false;
        }
        flag3 = TextUtils.isEmpty(httpclient);
        flag1 = flag2;
        if (!flag3)
        {
            flag1 = flag2;
            if (httpclient.charAt(0) == '/')
            {
                flag1 = true;
            }
        }
        if (flag && flag1)
        {
            if (httpclient.length() > 1)
            {
                ((tt) (ta1)).a.append(httpclient.substring(1));
            }
        } else
        if (!flag && !flag1)
        {
            if (!flag3)
            {
                ((tt) (ta1)).a.append('/').append(httpclient);
            }
        } else
        {
            ((tt) (ta1)).a.append(httpclient);
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public final Object a()
    {
        Object obj = c();
        ((HttpUriRequest) (obj)).addHeader(f);
        if (i.a(30))
        {
            i.g();
        }
        if (!i.a(3))
        {
            Object obj1 = i;
            if (!e && obj1 == null)
            {
                throw new AssertionError();
            }
            obj1 = ((ta) (obj1)).a();
            if (!e && TextUtils.isEmpty(((CharSequence) (obj1))))
            {
                throw new AssertionError();
            }
            ((HttpUriRequest) (obj)).addHeader(new BasicHeader("Authorization", TextUtils.join(" ", new String[] {
                tj.e.a.toString().toLowerCase(Locale.US), obj1
            })));
        }
        try
        {
            obj = g.execute(((HttpUriRequest) (obj)));
            for (Iterator iterator = a.iterator(); iterator.hasNext(); ((a)iterator.next()).a(((HttpResponse) (obj)))) { }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new tf("An error occured while communicating with the server during the operation. Please try again later.", ((Throwable) (obj)));
        }
        catch (IOException ioexception)
        {
            try
            {
                new JSONObject(ioexception.getMessage());
                throw new tf(ioexception.getMessage());
            }
            catch (JSONException jsonexception)
            {
                throw new tf("An error occured while communicating with the server during the operation. Please try again later.", ioexception);
            }
        }
        obj = h.handleResponse(((HttpResponse) (obj)));
        return obj;
    }

    public abstract String b();

    protected abstract HttpUriRequest c();

    static 
    {
        boolean flag;
        if (!sm.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
        f = new BasicHeader("X-HTTP-Live-Library", (new StringBuilder("android/")).append(android.os.Build.VERSION.RELEASE).append("_").append(sp.a.c).toString());
    }
}
