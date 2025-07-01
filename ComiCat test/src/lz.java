// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class lz
{

    public lv a;
    public lw b;
    public lw c;
    int d;
    boolean e;
    public ls f;
    public final mf g;
    public String h;
    public lr i;
    public mg j;
    public lx k;
    public me l;
    public of m;
    public lt n;
    public boolean o;
    private int p;
    private boolean q;
    private int r;
    private int s;
    private ln t;
    private boolean u;
    private boolean v;
    private boolean w;
    private oi x;

    lz(mf mf1)
    {
        b = new lw();
        c = new lw();
        p = 10;
        d = 16384;
        e = true;
        q = true;
        r = 20000;
        s = 20000;
        u = true;
        o = true;
        v = false;
        x = oi.a;
        g = mf1;
        a(((String) (null)));
    }

    public final lz a(String s1)
    {
        boolean flag;
        if (s1 == null || ly.b(s1))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        h = s1;
        return this;
    }

    public final lz a(lr lr1)
    {
        i = (lr)ni.a(lr1);
        return this;
    }

    public final mc a()
    {
        Object obj;
        Object obj1;
        Object obj2;
        Logger logger;
        int i1;
        int j1;
        boolean flag;
        boolean flag1;
        Object obj4;
        String s1;
        mi mi1;
        String s2;
        String s3;
        if (p >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        i1 = p;
        obj = null;
        ni.a(h);
        ni.a(i);
_L27:
        if (obj != null)
        {
            ((mc) (obj)).c();
        }
        obj4 = null;
        if (a != null)
        {
            a.b(this);
        }
        s1 = i.e();
        mi1 = g.a(h, s1);
        logger = mf.a;
        if (e && logger.isLoggable(Level.CONFIG))
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        if (j1 != 0)
        {
            obj2 = new StringBuilder();
            ((StringBuilder) (obj2)).append("-------------- REQUEST  --------------").append(ok.a);
            ((StringBuilder) (obj2)).append(h).append(' ').append(s1).append(ok.a);
            Object obj3;
            int k1;
            long l1;
            boolean flag2;
            if (q)
            {
                obj1 = new StringBuilder("curl -v --compressed");
                if (!h.equals("GET"))
                {
                    ((StringBuilder) (obj1)).append(" -X ").append(h);
                }
            } else
            {
                obj1 = null;
            }
        } else
        {
            obj2 = null;
            obj1 = null;
        }
        obj = (String)lw.a(b.userAgent);
        if (!w)
        {
            if (obj == null)
            {
                b.e("Google-HTTP-Java-Client/1.22.0 (gzip)");
            } else
            {
                b.e((new StringBuilder()).append(((String) (obj))).append(" Google-HTTP-Java-Client/1.22.0 (gzip)").toString());
            }
        }
        lw.a(b, ((StringBuilder) (obj2)), ((StringBuilder) (obj1)), logger, mi1);
        if (!w)
        {
            b.e(((String) (obj)));
        }
        obj = f;
        if (obj == null || f.d())
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
        obj3 = obj;
        if (obj != null)
        {
            s2 = f.c();
            if (j1 != 0)
            {
                obj = new od(((oj) (obj)), mf.a, Level.CONFIG, d);
            }
            if (n == null)
            {
                l1 = f.a();
                obj3 = null;
            } else
            {
                obj3 = n.a();
                obj = new lu(((oj) (obj)), n);
                if (k1 != 0)
                {
                    l1 = nx.a(((oj) (obj)));
                } else
                {
                    l1 = -1L;
                }
            }
            if (j1 != 0)
            {
                if (s2 != null)
                {
                    s3 = (new StringBuilder("Content-Type: ")).append(s2).toString();
                    ((StringBuilder) (obj2)).append(s3).append(ok.a);
                    if (obj1 != null)
                    {
                        ((StringBuilder) (obj1)).append((new StringBuilder(" -H '")).append(s3).append("'").toString());
                    }
                }
                if (obj3 != null)
                {
                    s3 = (new StringBuilder("Content-Encoding: ")).append(((String) (obj3))).toString();
                    ((StringBuilder) (obj2)).append(s3).append(ok.a);
                    if (obj1 != null)
                    {
                        ((StringBuilder) (obj1)).append((new StringBuilder(" -H '")).append(s3).append("'").toString());
                    }
                }
                if (l1 >= 0L)
                {
                    ((StringBuilder) (obj2)).append((new StringBuilder("Content-Length: ")).append(l1).toString()).append(ok.a);
                }
            }
            if (obj1 != null)
            {
                ((StringBuilder) (obj1)).append(" -d '@-'");
            }
            mi1.c = s2;
            mi1.b = ((String) (obj3));
            mi1.a = l1;
            mi1.d = ((oj) (obj));
            obj3 = obj;
        }
        if (j1 != 0)
        {
            logger.config(((StringBuilder) (obj2)).toString());
            if (obj1 != null)
            {
                ((StringBuilder) (obj1)).append(" -- '");
                ((StringBuilder) (obj1)).append(s1.replaceAll("'", "'\"'\"'"));
                ((StringBuilder) (obj1)).append("'");
                if (obj3 != null)
                {
                    ((StringBuilder) (obj1)).append(" << $$$");
                }
                logger.config(((StringBuilder) (obj1)).toString());
            }
        }
        if (k1 != 0 && i1 > 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        mi1.a(r, s);
        obj1 = mi1.a();
        obj = new mc(this, ((mj) (obj1)));
        obj1 = obj4;
_L19:
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (((mc) (obj)).a()) goto _L2; else goto _L3
_L3:
        flag = false;
        if (j != null)
        {
            flag = j.a(this, ((mc) (obj)), flag2);
        }
        flag1 = flag;
        if (flag) goto _L5; else goto _L4
_L4:
        k1 = ((mc) (obj)).c;
        obj2 = ((mc) (obj)).e.c.a();
        if (!u) goto _L7; else goto _L6
_L6:
        k1;
        JVM INSTR tableswitch 301 307: default 1328
    //                   301 1128
    //                   302 1128
    //                   303 1128
    //                   304 1328
    //                   305 1328
    //                   306 1328
    //                   307 1128;
           goto _L8 _L9 _L9 _L9 _L8 _L8 _L8 _L9
_L20:
        if (j1 == 0 || obj2 == null) goto _L7; else goto _L10
_L10:
        a(new lr(i.f(((String) (obj2)))));
        if (k1 != 303) goto _L12; else goto _L11
_L11:
        a("GET");
        f = null;
_L12:
        b.a(null);
        b.ifMatch = lw.a(null);
        b.ifNoneMatch = lw.a(null);
        b.ifModifiedSince = lw.a(null);
        b.ifUnmodifiedSince = lw.a(null);
        b.ifRange = lw.a(null);
        j1 = 1;
          goto _L13
_L5:
        k1 = flag2 & flag1;
        j1 = k1;
        if (k1 == 0)
        {
            break MISSING_BLOCK_LABEL_947;
        }
        ((mc) (obj)).c();
        j1 = k1;
_L24:
        if (obj == null);
        if (j1 != 0) goto _L15; else goto _L14
_L14:
        if (obj == null)
        {
            throw obj1;
        }
        if (l != null)
        {
            l.a(((mc) (obj)));
        }
          goto _L16
        obj;
        obj1 = ((mj) (obj1)).a();
        if (obj1 == null) goto _L18; else goto _L17
_L17:
        ((InputStream) (obj1)).close();
_L18:
        throw obj;
        obj1;
        if (!v && (k == null || !k.a(this, flag2)))
        {
            throw obj1;
        }
        logger.log(Level.WARNING, "exception thrown while executing request", ((Throwable) (obj1)));
        obj = null;
          goto _L19
_L9:
        j1 = 1;
          goto _L20
_L7:
        j1 = 0;
          goto _L13
_L29:
        flag1 = flag;
        if (!flag2) goto _L5; else goto _L21
_L21:
        flag1 = flag;
        if (t == null) goto _L5; else goto _L22
_L22:
        flag1 = flag;
        if (!t.a()) goto _L5; else goto _L23
_L23:
        l1 = t.b();
        flag1 = flag;
        if (l1 != -1L)
        {
            try
            {
                x.a(l1);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj2) { }
            finally
            {
                if (obj == null) goto _L0; else goto _L0
            }
            flag1 = true;
        }
          goto _L5
_L2:
        if (obj == null)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        j1 = flag2 & j1;
          goto _L24
        ((mc) (obj)).d();
        throw obj1;
_L16:
        if (!o || ((mc) (obj)).a()) goto _L26; else goto _L25
_L25:
        throw new md(((mc) (obj)));
        obj1;
        ((mc) (obj)).d();
        throw obj1;
_L26:
        return ((mc) (obj));
_L15:
        i1--;
          goto _L27
_L8:
        j1 = 0;
          goto _L20
_L13:
        if (j1 == 0) goto _L29; else goto _L28
_L28:
        flag1 = true;
          goto _L5
    }
}
