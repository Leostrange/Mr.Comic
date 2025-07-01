// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class kl
    implements lv, mb, mg
{
    public static interface a
    {

        public abstract String a(lz lz1);

        public abstract void a(lz lz1, String s);
    }


    static final Logger a = Logger.getLogger(kl.getName());
    private final Lock b;
    private final a c;
    private final nr d;
    private String e;
    private Long f;
    private String g;
    private final mf h;
    private final lv i;
    private final mv j;
    private final String k;
    private final Collection l;
    private final mb m;

    private Long a()
    {
        b.lock();
        Long long1 = f;
        if (long1 == null)
        {
            b.unlock();
            return null;
        }
        long l1 = (f.longValue() - d.a()) / 1000L;
        b.unlock();
        return Long.valueOf(l1);
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    private kl a(Long long1)
    {
        b.lock();
        f = long1;
        b.unlock();
        return this;
        long1;
        b.unlock();
        throw long1;
    }

    private kl a(String s)
    {
        b.lock();
        e = s;
        b.unlock();
        return this;
        s;
        b.unlock();
        throw s;
    }

    private kl b(Long long1)
    {
        if (long1 == null)
        {
            long1 = null;
        } else
        {
            long1 = Long.valueOf(d.a() + long1.longValue() * 1000L);
        }
        return a(long1);
    }

    private kl b(String s)
    {
        b.lock();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        boolean flag;
        if (j != null && h != null && i != null && k != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        oh.a(flag, "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl");
        g = s;
        b.unlock();
        return this;
        s;
        b.unlock();
        throw s;
    }

    private boolean b()
    {
        Object obj;
        boolean flag;
        flag = true;
        obj = null;
        b.lock();
        if (g != null) goto _L2; else goto _L1
_L1:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        Iterator iterator;
        try
        {
            a(((kq) (obj)).accessToken);
            if (((kq) (obj)).refreshToken != null)
            {
                b(((kq) (obj)).refreshToken);
            }
            b(((kq) (obj)).expiresInSeconds);
            for (obj = l.iterator(); ((Iterator) (obj)).hasNext(); ((Iterator) (obj)).next()) { }
            break; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally
        {
            b.unlock();
            throw obj;
        }
        if (400 > ((md) (obj)).b || ((md) (obj)).b >= 500)
        {
            flag = false;
        }
        if (((kr) (obj)).a == null || !flag)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        a(((String) (null)));
        b(((Long) (null)));
        for (iterator = l.iterator(); iterator.hasNext(); iterator.next()) { }
        break MISSING_BLOCK_LABEL_239;
_L2:
        obj = (new kn(h, j, new lr(k), g)).a(i).a(m).b();
        if (true) goto _L1; else goto _L3
_L3:
        b.unlock();
        return true;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        throw obj;
        b.unlock();
        return false;
    }

    public final void a(lz lz1)
    {
        lz1.a = this;
        lz1.j = this;
    }

    public final boolean a(lz lz1, mc mc1, boolean flag)
    {
        boolean flag1;
        boolean flag2;
        flag2 = true;
        Object obj = mc1.e.c.authenticate;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        obj = ((List) (obj)).iterator();
        String s;
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break MISSING_BLOCK_LABEL_179;
            }
            s = (String)((Iterator) (obj)).next();
        } while (!s.startsWith("Bearer "));
        flag = kj.a.matcher(s).find();
        flag1 = true;
_L1:
        if (!flag1)
        {
            if (mc1.c == 401)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_177;
        }
        b.lock();
        flag = flag2;
        if (!og.a(e, c.a(lz1)))
        {
            break MISSING_BLOCK_LABEL_141;
        }
        flag = b();
        if (flag)
        {
            flag = flag2;
        } else
        {
            flag = false;
        }
        b.unlock();
        return flag;
        lz1;
        try
        {
            b.unlock();
            throw lz1;
        }
        // Misplaced declaration of an exception variable
        catch (lz lz1)
        {
            a.log(Level.SEVERE, "unable to refresh token", lz1);
        }
        return false;
        flag1 = false;
        flag = false;
          goto _L1
    }

    public final void b(lz lz1)
    {
        b.lock();
        Object obj;
        obj = a();
        if (e == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        if (((Long) (obj)).longValue() > 60L)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        b();
        obj = e;
        if (obj == null)
        {
            b.unlock();
            return;
        }
        c.a(lz1, e);
        b.unlock();
        return;
        lz1;
        b.unlock();
        throw lz1;
    }

}
