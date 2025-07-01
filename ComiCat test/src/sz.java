// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONObject;

public class sz
{
    public static final class a
        implements sm.a
    {

        static final boolean a;
        private final tc b;

        public final void a(HttpResponse httpresponse)
        {
            httpresponse = httpresponse.getFirstHeader("Content-Length");
            if (httpresponse == null)
            {
                return;
            }
            int i1 = Integer.valueOf(httpresponse.getValue()).intValue();
            httpresponse = b;
            if (!tc.c && i1 < 0)
            {
                throw new AssertionError();
            } else
            {
                httpresponse.a = i1;
                return;
            }
        }

        static 
        {
            boolean flag;
            if (!sz.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        public a(tc tc1)
        {
            b = tc1;
        }
    }

    public static final class b
        implements sn.a
    {

        static final boolean a;
        private final tg b;
        private final te c;

        public final void a(Object obj)
        {
            obj = (JSONObject)obj;
            te te1 = c;
            if (!te.b && obj == null)
            {
                throw new AssertionError();
            } else
            {
                te1.a = ((JSONObject) (obj));
                b.a(c);
                return;
            }
        }

        public final void a(tf tf)
        {
            b.a(tf, c);
        }

        static 
        {
            boolean flag;
            if (!sz.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        public b(te te1, tg tg1)
        {
            if (!a && te1 == null)
            {
                throw new AssertionError();
            } else
            {
                c = te1;
                b = tg1;
                return;
            }
        }
    }

    public static abstract class c extends Enum
    {

        public static final c a;
        public static final c b;
        private static final c c[];

        public static c valueOf(String s)
        {
            return (c)Enum.valueOf(sz$c, s);
        }

        public static c[] values()
        {
            return (c[])c.clone();
        }

        public abstract void a();

        static 
        {
            a = new c("LOGGED_IN") {

                public final void a()
                {
                }

            };
            b = new c("LOGGED_OUT") {

                public final void a()
                {
                    throw new IllegalStateException("The user has is logged out.");
                }

            };
            c = (new c[] {
                a, b
            });
        }

        private c(String s, int i1)
        {
            super(s, i1);
        }

        c(String s, int i1, byte byte0)
        {
            this(s, i1);
        }
    }


    public static final tg a = new tg() {

        static final boolean a;

        public final void a(te te)
        {
            if (!a && te == null)
            {
                throw new AssertionError();
            } else
            {
                return;
            }
        }

        public final void a(tf tf, te te)
        {
            if (!a && tf == null)
            {
                throw new AssertionError();
            }
            if (!a && te == null)
            {
                throw new AssertionError();
            } else
            {
                return;
            }
        }

        static 
        {
            boolean flag1;
            if (!sz.desiredAssertionStatus())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            a = flag1;
        }

    };
    static final boolean e;
    private static int f = 1024;
    private static int g = 30000;
    private static volatile HttpClient h;
    private static Object i = new Object();
    private static final td j = new td() {

        static final boolean a;

        static 
        {
            boolean flag1;
            if (!sz.desiredAssertionStatus())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            a = flag1;
        }

    };
    private static final ti k = new ti() {

        static final boolean a;

        static 
        {
            boolean flag1;
            if (!sz.desiredAssertionStatus())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            a = flag1;
        }

    };
    private static int l = 30000;
    public HttpClient b;
    public final ta c;
    public c d;

    public sz(ta ta1)
    {
        tb.a(ta1, "session");
        tb.a(ta1.a(), "session.getAccessToken()");
        c = ta1;
        d = c.a;
        ta1 = c;
        PropertyChangeListener propertychangelistener = new PropertyChangeListener() {

            final sz a;

            public final void propertyChange(PropertyChangeEvent propertychangeevent)
            {
                if (TextUtils.isEmpty((String)propertychangeevent.getNewValue()))
                {
                    sz.a(a, c.b);
                    return;
                } else
                {
                    sz.a(a, c.a);
                    return;
                }
            }

            
            {
                a = sz.this;
                super();
            }
        };
        ta1.c.addPropertyChangeListener("accessToken", propertychangelistener);
        b = a();
    }

    public static URI a(String s)
    {
        try
        {
            s = new URI(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException(String.format("Input parameter '%1$s' is invalid. '%1$s' must be a valid URI.", new Object[] {
                "path"
            }));
        }
        return s;
    }

    private static HttpClient a()
    {
        if (h == null)
        {
            synchronized (i)
            {
                if (h == null)
                {
                    BasicHttpParams basichttpparams = new BasicHttpParams();
                    HttpConnectionParams.setConnectionTimeout(basichttpparams, g);
                    HttpConnectionParams.setSoTimeout(basichttpparams, l);
                    ConnManagerParams.setMaxTotalConnections(basichttpparams, 100);
                    HttpProtocolParams.setVersion(basichttpparams, HttpVersion.HTTP_1_1);
                    SchemeRegistry schemeregistry = new SchemeRegistry();
                    schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
                    schemeregistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
                    h = new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, schemeregistry), basichttpparams);
                }
            }
        }
        return h;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static c a(sz sz1, c c1)
    {
        sz1.d = c1;
        return c1;
    }

    public static void b(String s)
    {
        tb.a(s, "path");
        if (s.toLowerCase().startsWith("http") || s.toLowerCase().startsWith("https"))
        {
            throw new IllegalArgumentException(String.format("Input parameter '%1$s' is invalid. '%1$s' cannot be absolute.", new Object[] {
                "path"
            }));
        } else
        {
            return;
        }
    }

    static 
    {
        boolean flag;
        if (!sz.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
    }
}
