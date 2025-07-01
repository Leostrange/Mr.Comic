// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import java.beans.PropertyChangeSupport;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

public class ta
{

    protected String a;
    protected String b;
    protected final PropertyChangeSupport c = new PropertyChangeSupport(this);
    protected Date d;
    protected String e;
    protected Set f;
    protected String g;
    protected String h;
    protected boolean i;
    private final sw j;

    public ta(sw sw)
    {
        j = sw;
    }

    public final String a()
    {
        return a;
    }

    final void a(to to1)
    {
        boolean flag1 = true;
        a = to1.a;
        g = to1.f.toString().toLowerCase();
        boolean flag;
        if (to1.b != null && !TextUtils.isEmpty(to1.b))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            b = to1.b;
        }
        if (to1.c != -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            Object obj = Calendar.getInstance();
            ((Calendar) (obj)).add(13, to1.c);
            obj = ((Calendar) (obj)).getTime();
            Date date = d;
            d = new Date(((Date) (obj)).getTime());
            c.firePropertyChange("expiresIn", date, d);
        }
        if (to1.d != null && !TextUtils.isEmpty(to1.d))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            e = to1.d;
        }
        if (to1.e != null && !TextUtils.isEmpty(to1.e))
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            b(Arrays.asList(to1.e.split(" ")));
        }
        c.firePropertyChange("all", "", "");
    }

    final boolean a(int k)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.add(13, k);
        return calendar.getTime().after(d);
    }

    public final boolean a(Iterable iterable)
    {
        if (iterable == null)
        {
            return true;
        }
        if (f == null)
        {
            return false;
        }
        for (iterable = iterable.iterator(); iterable.hasNext();)
        {
            String s = (String)iterable.next();
            if (!f.contains(s))
            {
                return false;
            }
        }

        return true;
    }

    public final String b()
    {
        return b;
    }

    protected final void b(Iterable iterable)
    {
        Set set = f;
        f = new HashSet();
        if (iterable != null)
        {
            String s;
            for (iterable = iterable.iterator(); iterable.hasNext(); f.add(s))
            {
                s = (String)iterable.next();
            }

        }
        f = Collections.unmodifiableSet(f);
        c.firePropertyChange("scopes", set, f);
    }

    public final Date c()
    {
        return new Date(d.getTime());
    }

    public final String d()
    {
        return e;
    }

    public final String e()
    {
        return g;
    }

    public final boolean f()
    {
        if (d == null)
        {
            return true;
        } else
        {
            return (new Date()).after(d);
        }
    }

    final boolean g()
    {
        Object obj = TextUtils.join(" ", f);
        if (TextUtils.isEmpty(e))
        {
            return false;
        }
        obj = new tp(new DefaultHttpClient(), h, e, ((String) (obj)));
        try
        {
            obj = ((tp) (obj)).a();
        }
        catch (sx sx1)
        {
            return false;
        }
        ((tm) (obj)).a(new tn() {

            final ta a;

            public final void a(tk tk)
            {
                a.i = false;
            }

            public final void a(to to1)
            {
                a.a(to1);
                a.i = true;
            }

            
            {
                a = ta.this;
                super();
            }
        });
        return i;
    }

    public String toString()
    {
        return String.format("LiveConnectSession [accessToken=%s, authenticationToken=%s, expiresIn=%s, refreshToken=%s, scopes=%s, tokenType=%s]", new Object[] {
            a, b, d, e, f, g
        });
    }
}
