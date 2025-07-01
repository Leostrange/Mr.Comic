// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class aar extends URLConnection
    implements aap
{

    static final int a = ".".hashCode();
    static final int b = "..".hashCode();
    static abx c = abx.a();
    static long d = xj.a("jcifs.smb.client.attrExpirationPeriod", 5000L);
    static boolean e = xj.a("jcifs.smb.client.ignoreCopyToException", true);
    protected static yx g = new yx();
    private yy A;
    int f;
    zl h;
    aay i;
    String j;
    int k;
    int l;
    boolean m;
    int n;
    xk o[];
    int p;
    private String q;
    private String r;
    private long s;
    private long t;
    private long u;
    private long v;
    private long w;
    private boolean x;
    private int y;
    private zp z;

    private aar(aar aar1, String s1, int i1, int j1, long l1, long l2, long l3)
    {
        Object obj;
        int k1;
        if (aar1.l == 2 || aar1.url.getHost().length() == 0)
        {
            aar1.l = 2;
            k1 = 1;
        } else
        {
label0:
            {
                aar1.q();
                if (aar1.r != null)
                {
                    break MISSING_BLOCK_LABEL_280;
                }
                obj = aar1.l();
                if (!(((xk) (obj)).a instanceof yk))
                {
                    break label0;
                }
                k1 = ((yk)((xk) (obj)).a).f.d;
                if (k1 != 29 && k1 != 27)
                {
                    break label0;
                }
                aar1.l = 2;
                k1 = 1;
            }
        }
_L1:
        if (k1 != 0)
        {
            obj = new URL(null, (new StringBuilder("smb://")).append(s1).append("/").toString(), zb.a);
        } else
        {
            URL url = aar1.url;
            StringBuilder stringbuilder = (new StringBuilder()).append(s1);
            if ((j1 & 0x10) > 0)
            {
                obj = "/";
            } else
            {
                obj = "";
            }
            obj = new URL(url, stringbuilder.append(((String) (obj))).toString());
        }
        this(((URL) (obj)));
        h = aar1.h;
        if (aar1.r != null)
        {
            i = aar1.i;
            A = aar1.A;
        }
        k1 = s1.length() - 1;
        obj = s1;
        if (s1.charAt(k1) == '/')
        {
            obj = s1.substring(0, k1);
        }
        if (aar1.r == null)
        {
            j = "\\";
        } else
        if (aar1.j.equals("\\"))
        {
            j = (new StringBuilder("\\")).append(((String) (obj))).toString();
        } else
        {
            j = (new StringBuilder()).append(aar1.j).append('\\').append(((String) (obj))).toString();
        }
        l = i1;
        f = j1;
        s = l1;
        t = l2;
        v = l3;
        x = true;
        l1 = System.currentTimeMillis() + d;
        w = l1;
        u = l1;
        return;
        aar1.l = 4;
        k1 = 0;
          goto _L1
    }

    public aar(String s1)
    {
        this(new URL(null, s1, zb.a));
    }

    public aar(String s1, zl zl1)
    {
        this(new URL(null, s1, zb.a), zl1);
    }

    public aar(URL url)
    {
        this(url, new zl(url.getUserInfo()));
    }

    private aar(URL url, zl zl1)
    {
        super(url);
        y = 7;
        z = null;
        A = null;
        i = null;
        zl zl2 = zl1;
        if (zl1 == null)
        {
            zl2 = new zl(url.getUserInfo());
        }
        h = zl2;
        q();
    }

    private static String a(String s1, String s2)
    {
        int l1 = 0;
        s1 = s1.toCharArray();
        int k1 = 0;
        int i1 = 0;
        while (i1 < s1.length) 
        {
            char c1 = s1[i1];
            int i2;
            if (c1 == '&')
            {
                if (l1 > k1 && (new String(s1, k1, l1 - k1)).equalsIgnoreCase(s2))
                {
                    k1 = l1 + 1;
                    return new String(s1, k1, i1 - k1);
                }
                i2 = i1 + 1;
            } else
            {
                i2 = k1;
                if (c1 == '=')
                {
                    l1 = i1;
                    i2 = k1;
                }
            }
            i1++;
            k1 = i2;
        }
        if (l1 > k1 && (new String(s1, k1, l1 - k1)).equalsIgnoreCase(s2))
        {
            int j1 = l1 + 1;
            return new String(s1, j1, s1.length - j1);
        } else
        {
            return null;
        }
    }

    private zc a(String s1, int i1)
    {
        a();
        if (abx.a >= 3)
        {
            c.println((new StringBuilder("queryPath: ")).append(s1).toString());
        }
        if (i.f.e.a(16))
        {
            abh abh1 = new abh(i1);
            a(((zm) (new abg(s1, i1))), ((zm) (abh1)));
            return abh1.a;
        } else
        {
            aab aab1 = new aab((long)(i.f.e.s.n * 1000) * 60L);
            a(((zm) (new aaa(s1))), ((zm) (aab1)));
            return aab1;
        }
    }

    private void a(ArrayList arraylist)
    {
        HashMap hashmap;
        int i1 = 1;
        String s1 = url.getPath();
        if (s1.lastIndexOf('/') != s1.length() - 1)
        {
            throw new aaq((new StringBuilder()).append(url.toString()).append(" directory must end with '/'").toString());
        }
        if (s() != 4)
        {
            throw new aaq((new StringBuilder("The requested list operations is invalid: ")).append(url.toString()).toString());
        }
        hashmap = new HashMap();
        Object obj1 = g;
        s1 = r();
        obj1 = ((yx) (obj1)).a(h);
        za aza[];
        if (obj1 == null || ((HashMap) (obj1)).get(s1.toLowerCase()) == null)
        {
            i1 = 0;
        }
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_213;
        }
        aza = u();
        i1 = 0;
_L1:
        if (i1 >= aza.length)
        {
            break MISSING_BLOCK_LABEL_213;
        }
        obj1 = aza[i1];
        if (!hashmap.containsKey(obj1))
        {
            hashmap.put(obj1, obj1);
        }
        i1++;
          goto _L1
        IOException ioexception;
        ioexception;
        if (abx.a >= 4)
        {
            ioexception.printStackTrace(c);
        }
        Object obj;
        Object obj2;
        obj2 = m();
        obj = null;
_L5:
        if (obj2 == null) goto _L3; else goto _L2
_L2:
        o();
        obj2 = v();
_L6:
        int j1 = 0;
_L7:
        if (j1 >= obj2.length) goto _L3; else goto _L4
_L4:
        Object obj3;
        obj3 = obj2[j1];
        try
        {
            if (!hashmap.containsKey(obj3))
            {
                hashmap.put(obj3, obj3);
            }
            break MISSING_BLOCK_LABEL_481;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            if (abx.a >= 3)
            {
                ((IOException) (obj)).printStackTrace(c);
            }
            obj2 = n();
        }
          goto _L5
        obj2;
        if (abx.a >= 3)
        {
            ((IOException) (obj2)).printStackTrace(c);
        }
        obj2 = new zf();
        obj3 = new zg();
        a(((zm) (obj2)), ((zm) (obj3)));
        if (((aah) (obj3)).P != 0)
        {
            throw new aaq(((aah) (obj3)).P, true);
        }
        obj2 = ((aah) (obj3)).R;
          goto _L6
_L3:
        if (obj != null && hashmap.isEmpty())
        {
            if (!(obj instanceof aaq))
            {
                throw new aaq(url.toString(), ((Throwable) (obj)));
            } else
            {
                throw (aaq)obj;
            }
        }
        obj = hashmap.keySet().iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            za za1 = (za)((Iterator) (obj)).next();
            String s2 = za1.a();
            if (s2.length() > 0)
            {
                arraylist.add(new aar(this, s2, za1.b(), 17, 0L, 0L, 0L));
            }
        } while (true);
        return;
        j1++;
          goto _L7
    }

    private int b(int i1, int j1)
    {
        a();
        if (abx.a >= 3)
        {
            c.println((new StringBuilder("open0: ")).append(j).toString());
        }
        if (i.f.e.a(16))
        {
            zu zu1 = new zu();
            zt zt1 = new zt(j, i1, j1, y);
            if (this instanceof aau)
            {
                zt1.b = zt1.b | 0x16;
                zt1.c = zt1.c | 0x20000;
                zu1.N = true;
            }
            a(zt1, zu1);
            i1 = zu1.c;
            f = zu1.D & 0x7fff;
            u = System.currentTimeMillis() + d;
            x = true;
            return i1;
        } else
        {
            zz zz1 = new zz();
            a(new zy(j, j1, i1), zz1);
            return zz1.b;
        }
    }

    private void b(ArrayList arraylist, String s1)
    {
        int j1;
        Object obj = q();
        String s2 = url.getPath();
        if (s2.lastIndexOf('/') != s2.length() - 1)
        {
            throw new aaq((new StringBuilder()).append(url.toString()).append(" directory must end with '/'").toString());
        }
        obj = new aaz(((String) (obj)), s1);
        s1 = new aba();
        if (abx.a >= 3)
        {
            c.println((new StringBuilder("doFindFirstNext: ")).append(((aag) (obj)).A).toString());
        }
        a(((zm) (obj)), s1);
        j1 = ((aba) (s1)).a;
        obj = new abb(j1, ((aba) (s1)).aB, ((aba) (s1)).aA);
        s1.L = 2;
        do
        {
            for (int i1 = 0; i1 < ((aba) (s1)).Q; i1++)
            {
                za za1 = ((aba) (s1)).R[i1];
                String s3 = za1.a();
                if (s3.length() < 3)
                {
                    int k1 = s3.hashCode();
                    if ((k1 == a || k1 == b) && (s3.equals(".") || s3.equals("..")))
                    {
                        continue;
                    }
                }
                if (s3.length() > 0)
                {
                    arraylist.add(new aar(this, s3, 1, za1.c(), za1.d(), za1.e(), za1.f()));
                }
            }

            if (((aba) (s1)).S || ((aba) (s1)).Q == 0)
            {
                break;
            }
            ((aag) (obj)).a(((aba) (s1)).aB, ((aba) (s1)).aA);
            s1.e();
            a(((zm) (obj)), s1);
        } while (true);
        a(new zr(j1), k());
_L1:
        return;
        arraylist;
        if (abx.a >= 4)
        {
            arraylist.printStackTrace(c);
            return;
        }
          goto _L1
    }

    private zp k()
    {
        if (z == null)
        {
            z = new zp();
        }
        return z;
    }

    private xk l()
    {
        if (p == 0)
        {
            return m();
        } else
        {
            return o[p - 1];
        }
    }

    private xk m()
    {
        p = 0;
        Object obj = url.getHost();
        byte abyte0[] = url.getPath();
        String s1 = url.getQuery();
        if (s1 != null)
        {
            String s2 = a(s1, "server");
            if (s2 != null && s2.length() > 0)
            {
                o = new xk[1];
                o[0] = xk.a(s2);
                return n();
            }
            s1 = a(s1, "address");
            if (s1 != null && s1.length() > 0)
            {
                abyte0 = InetAddress.getByName(s1).getAddress();
                o = new xk[1];
                o[0] = new xk(InetAddress.getByAddress(((String) (obj)), abyte0));
                return n();
            }
        }
        if (((String) (obj)).length() == 0)
        {
            try
            {
                obj = yk.b("\001\002__MSBROWSE__\002");
                o = new xk[1];
                o[0] = xk.a(((yk) (obj)).g());
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                zl.a();
                if (zl.a.equals("?"))
                {
                    throw obj;
                }
                o = xk.a(zl.a, true);
            }
        } else
        if (abyte0.length() == 0 || abyte0.equals("/"))
        {
            o = xk.a(((String) (obj)), true);
        } else
        {
            o = xk.a(((String) (obj)), false);
        }
        return n();
    }

    private xk n()
    {
        Object obj = null;
        if (p < o.length)
        {
            obj = o;
            int i1 = p;
            p = i1 + 1;
            obj = obj[i1];
        }
        return ((xk) (obj));
    }

    private void o()
    {
        boolean flag = true;
        xk xk1 = l();
        aax aax1;
        String s1;
        aay aay1;
        boolean flag1;
        if (i != null)
        {
            aax1 = i.f.e;
        } else
        {
            aax1 = aax.a(xk1, url.getPort());
            i = aax1.a(h).a(r, null);
        }
        if (A != null)
        {
            s1 = A.c;
        } else
        {
            s1 = r();
        }
        aay1 = i;
        if (g.a(s1, i.c, null, h) != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        aay1.h = flag1;
        if (i.h)
        {
            i.a = 2;
        }
        try
        {
            if (abx.a >= 3)
            {
                c.println((new StringBuilder("doConnect: ")).append(xk1).toString());
            }
            i.b(null, null);
            return;
        }
        catch (zo zo1)
        {
            if (r == null)
            {
                i = aax1.a(zl.e).a(null, null);
                i.b(null, null);
                return;
            }
            zj.a(url.toString(), zo1);
            if (abx.a > 0)
            {
                if (p >= o.length)
                {
                    flag = false;
                }
                if (flag)
                {
                    zo1.printStackTrace(c);
                }
            }
            throw zo1;
        }
    }

    private boolean p()
    {
        return i != null && i.a == 2;
    }

    private String q()
    {
        if (j != null) goto _L2; else goto _L1
_L1:
        char ac[];
        char ac1[];
        int i1;
        int i2;
        int j2;
        int i3;
        ac1 = url.getPath().toCharArray();
        ac = new char[ac1.length];
        i3 = ac1.length;
        j2 = 0;
        i2 = 0;
        i1 = 0;
_L14:
        int k2;
        if (i1 >= i3)
        {
            break MISSING_BLOCK_LABEL_322;
        }
        k2 = j2;
        j2;
        JVM INSTR tableswitch 0 2: default 72
    //                   0 95
    //                   1 124
    //                   2 295;
           goto _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_295;
_L3:
        int k1;
        k1 = i2;
        k2 = j2;
_L7:
        i1++;
        j2 = k2;
        i2 = k1;
        continue; /* Loop/switch isn't completed */
_L4:
        if (ac1[i1] != '/')
        {
            return null;
        }
        ac[i2] = ac1[i1];
        k1 = i2 + 1;
        k2 = 1;
          goto _L7
_L5:
        if (ac1[i1] == '/') goto _L3; else goto _L8
_L8:
label0:
        {
            if (ac1[i1] != '.' || i1 + 1 < i3 && ac1[i1 + 1] != '/')
            {
                break label0;
            }
            i1++;
            k2 = j2;
            k1 = i2;
        }
          goto _L7
        int l2;
        if (i1 + 1 >= i3 || ac1[i1] != '.' || ac1[i1 + 1] != '.' || i1 + 2 < i3 && ac1[i1 + 2] != '/')
        {
            break MISSING_BLOCK_LABEL_292;
        }
        l2 = i1 + 2;
        k2 = j2;
        k1 = i2;
        i1 = l2;
        if (i2 == 1) goto _L7; else goto _L9
_L9:
        i1 = i2;
_L12:
        i2 = i1 - 1;
        k2 = j2;
        k1 = i2;
        i1 = l2;
        if (i2 <= 1) goto _L7; else goto _L10
_L10:
        i1 = i2;
        if (ac[i2 - 1] != '/') goto _L12; else goto _L11
_L11:
        k2 = j2;
        k1 = i2;
        i1 = l2;
          goto _L7
        k2 = 2;
        if (ac1[i1] == '/')
        {
            k2 = 1;
        }
        ac[i2] = ac1[i1];
        k1 = i2 + 1;
          goto _L7
        q = new String(ac, 0, i2);
        if (i2 > 1)
        {
            int j1 = i2 - 1;
            int l1 = q.indexOf('/', 1);
            if (l1 < 0)
            {
                r = q.substring(1);
                j = "\\";
            } else
            if (l1 == j1)
            {
                r = q.substring(1, l1);
                j = "\\";
            } else
            {
                r = q.substring(1, l1);
                String s1 = q;
                if (ac[j1] != '/')
                {
                    j1++;
                }
                j = s1.substring(l1, j1);
                j = j.replace('/', '\\');
            }
        } else
        {
            r = null;
            j = "\\";
        }
_L2:
        return j;
        if (true) goto _L14; else goto _L13
_L13:
    }

    private String r()
    {
        String s2 = url.getHost();
        String s1 = s2;
        if (s2.length() == 0)
        {
            s1 = null;
        }
        return s1;
    }

    private int s()
    {
        if (l == 0)
        {
            if (q().length() > 1)
            {
                l = 1;
            } else
            if (r != null)
            {
                a();
                if (r.equals("IPC$"))
                {
                    l = 16;
                } else
                if (i.d.equals("LPT1:"))
                {
                    l = 32;
                } else
                if (i.d.equals("COMM"))
                {
                    l = 64;
                } else
                {
                    l = 8;
                }
            } else
            if (url.getAuthority() == null || url.getAuthority().length() == 0)
            {
                l = 2;
            } else
            {
                xk xk1;
                try
                {
                    xk1 = l();
                }
                catch (UnknownHostException unknownhostexception)
                {
                    throw new aaq(url.toString(), unknownhostexception);
                }
                if (xk1.a instanceof yk)
                {
                    int i1 = ((yk)xk1.a).f.d;
                    if (i1 == 29 || i1 == 27)
                    {
                        l = 2;
                        return l;
                    }
                }
                l = 4;
            }
        }
        return l;
    }

    private long t()
    {
        if (q().length() > 1)
        {
            f();
            return t;
        } else
        {
            return 0L;
        }
    }

    private za[] u()
    {
        xq xq1 = xq.a((new StringBuilder("ncacn_np:")).append(l().c()).append("[\\PIPE\\netdfs]").toString(), h);
        Object obj;
        obj = new xv(r());
        xq1.a(((xr) (obj)));
        if (((xv) (obj)).a != 0)
        {
            throw new aaq(((xv) (obj)).a, true);
        }
          goto _L1
        obj;
        xq1.a();
_L5:
        throw obj;
_L1:
        za aza[] = ((xv) (obj)).d();
        xq1.a();
_L3:
        return aza;
        IOException ioexception;
        ioexception;
        if (abx.a < 4) goto _L3; else goto _L2
_L2:
        ioexception.printStackTrace(c);
        return aza;
        ioexception;
        if (abx.a >= 4)
        {
            ioexception.printStackTrace(c);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    private za[] v()
    {
        xq xq1;
        Object obj;
        obj = new xw(url.getHost());
        xq1 = xq.a((new StringBuilder("ncacn_np:")).append(l().c()).append("[\\PIPE\\srvsvc]").toString(), h);
        xq1.a(((xr) (obj)));
        if (((xw) (obj)).a != 0)
        {
            throw new aaq(((xw) (obj)).a, true);
        }
          goto _L1
        obj;
        xq1.a();
_L5:
        throw obj;
_L1:
        za aza[] = ((xw) (obj)).d();
        xq1.a();
_L3:
        return aza;
        IOException ioexception;
        ioexception;
        if (abx.a < 4) goto _L3; else goto _L2
_L2:
        ioexception.printStackTrace(c);
        return aza;
        ioexception;
        if (abx.a >= 4)
        {
            ioexception.printStackTrace(c);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    final void a()
    {
        try
        {
            connect();
            return;
        }
        catch (UnknownHostException unknownhostexception)
        {
            throw new aaq("Failed to connect to server", unknownhostexception);
        }
        catch (aaq aaq1)
        {
            throw aaq1;
        }
        catch (IOException ioexception)
        {
            throw new aaq("Failed to connect to server", ioexception);
        }
    }

    final void a(int i1, int j1)
    {
        if (b())
        {
            return;
        } else
        {
            k = b(i1, j1);
            m = true;
            n = i.i;
            return;
        }
    }

    public final void a(ArrayList arraylist, String s1)
    {
        if (url.getHost().length() != 0 && s() != 2) goto _L2; else goto _L1
_L1:
        zd zd1;
        int i1;
        if (url.getHost().length() == 0)
        {
            i1 = 0;
        } else
        {
            try
            {
                i1 = s();
            }
            // Misplaced declaration of an exception variable
            catch (ArrayList arraylist)
            {
                throw new aaq(url.toString(), arraylist);
            }
            // Misplaced declaration of an exception variable
            catch (ArrayList arraylist)
            {
                throw new aaq(url.toString(), arraylist);
            }
        }
        if (i1 != 0) goto _L4; else goto _L3
_L3:
        a();
        zd1 = new zd(i.f.e.s.e, 0x80000000);
        s1 = new ze();
_L6:
        a(((zm) (zd1)), ((zm) (s1)));
        if (((aah) (s1)).P != 0 && ((aah) (s1)).P != 234)
        {
            throw new aaq(((aah) (s1)).P, true);
        }
          goto _L5
_L4:
        if (i1 != 2)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        zd1 = new zd(url.getHost(), -1);
        s1 = new ze();
          goto _L6
        throw new aaq((new StringBuilder("The requested list operations is invalid: ")).append(url.toString()).toString());
_L5:
        boolean flag;
        int j1;
        int k1;
        if (((aah) (s1)).P == 234)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag) goto _L8; else goto _L7
_L7:
        j1 = ((aah) (s1)).Q - 1;
          goto _L9
_L13:
        if (k1 >= j1) goto _L11; else goto _L10
_L10:
        za za1 = ((aah) (s1)).R[k1];
        String s2 = za1.a();
        if (s2.length() > 0)
        {
            arraylist.add(new aar(this, s2, za1.b(), 17, 0L, 0L, 0L));
        }
        break MISSING_BLOCK_LABEL_387;
_L8:
        j1 = ((aah) (s1)).Q;
          goto _L9
_L11:
        if (s() != 2)
        {
            break MISSING_BLOCK_LABEL_402;
        }
        zd1.S = -41;
        zd1.a(0, ((ze)s1).a);
        s1.e();
        if (flag) goto _L6; else goto _L12
_L12:
        return;
_L2:
        if (r == null)
        {
            a(arraylist);
            return;
        }
        b(arraylist, s1);
        return;
_L9:
        k1 = 0;
          goto _L13
        k1++;
          goto _L13
    }

    final void a(zm zm1, zm zm2)
    {
_L18:
        if (zm1 instanceof zq) goto _L2; else goto _L1
_L1:
        yy yy2;
        a();
        yy2 = g.a(i.f.e.A, i.c, j, h);
        if (yy2 == null) goto _L4; else goto _L3
_L3:
        if (zm1 == null) goto _L6; else goto _L5
_L5:
        zm1.g;
        JVM INSTR lookupswitch 2: default 88
    //                   37: 219
    //                   50: 219;
           goto _L7 _L8 _L8
_L7:
        Object obj = "A:";
_L17:
        yy yy1 = yy2;
_L15:
        if (abx.a >= 2)
        {
            c.println((new StringBuilder("DFS redirect: ")).append(yy1).toString());
        }
        aax aax1 = aax.a(xk.a(yy1.c), url.getPort());
        aax1.a();
        i = aax1.a(h).a(yy1.d, ((String) (obj)));
        if (yy1 == yy2) goto _L10; else goto _L9
_L9:
        if (yy1.k != null)
        {
            yy1.j.put(yy1.k, yy1);
        }
_L10:
        Object obj1;
        obj = null;
        obj1 = yy1;
_L13:
        if (obj != null)
        {
            throw obj;
        }
        break; /* Loop/switch isn't completed */
_L8:
        switch (((aag)zm1).S & 0xff)
        {
        default:
            obj = "A:";
            break;

        case 16: // '\020'
            obj = null;
            break;
        }
          goto _L11
        obj1;
        if (obj1 instanceof aaq)
        {
            obj1 = (aaq)obj1;
        } else
        {
            obj1 = new aaq(yy1.c, ((Throwable) (obj1)));
        }
        yy1 = yy1.i;
        if (yy1 != yy2)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = obj1;
        obj1 = yy1;
        if (true) goto _L13; else goto _L12
_L12:
        if (true) goto _L15; else goto _L14
_L14:
        if (abx.a >= 3)
        {
            c.println(obj1);
        }
        A = ((yy) (obj1));
        String s1;
        if (((yy) (obj1)).a < 0)
        {
            obj1.a = 0;
        } else
        if (((yy) (obj1)).a > j.length())
        {
            obj1.a = j.length();
        }
        s1 = j.substring(((yy) (obj1)).a);
        obj = s1;
        if (s1.equals(""))
        {
            obj = "\\";
        }
        s1 = ((String) (obj));
        if (!((yy) (obj1)).f.equals(""))
        {
            s1 = (new StringBuilder("\\")).append(((yy) (obj1)).f).append(((String) (obj))).toString();
        }
        j = s1;
        obj = s1;
        if (zm1 != null)
        {
            obj = s1;
            if (zm1.A != null)
            {
                obj = s1;
                if (zm1.A.endsWith("\\"))
                {
                    obj = s1;
                    if (!s1.endsWith("\\"))
                    {
                        obj = (new StringBuilder()).append(s1).append("\\").toString();
                    }
                }
            }
        }
        if (zm1 != null)
        {
            zm1.A = ((String) (obj));
            zm1.m = zm1.m | 0x1000;
        }
          goto _L2
_L11:
        if (true) goto _L17; else goto _L16
_L16:
_L4:
        if (i.h && !(zm1 instanceof zi) && !(zm1 instanceof zq) && !(zm1 instanceof zr))
        {
            throw new aaq(0xc0000225, false);
        }
        if (zm1 != null)
        {
            zm1.m = zm1.m & 0xffffefff;
        }
_L2:
        try
        {
            i.a(zm1, zm2);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        if (((yy) (obj)).g)
        {
            throw obj;
        }
        zm1.e();
          goto _L18
_L6:
        obj = null;
          goto _L17
    }

    public final boolean b()
    {
        return m && p() && n == i.i;
    }

    final void c()
    {
        if (b())
        {
            int i1 = k;
            if (abx.a >= 3)
            {
                c.println((new StringBuilder("close: ")).append(i1).toString());
            }
            a(new zq(i1), k());
            m = false;
        }
    }

    public void connect()
    {
        if (p() && i.f.e.A == null)
        {
            i.a(true);
        }
        if (p())
        {
            return;
        }
        q();
        m();
        do
        {
            try
            {
                o();
                return;
            }
            catch (zo zo1)
            {
                throw zo1;
            }
            catch (aaq aaq1)
            {
                if (n() == null)
                {
                    throw aaq1;
                }
                if (abx.a >= 3)
                {
                    aaq1.printStackTrace(c);
                }
            }
        } while (true);
    }

    public final String d()
    {
        q();
        if (q.length() > 1)
        {
            int i1;
            for (i1 = q.length() - 2; q.charAt(i1) != '/'; i1--) { }
            return q.substring(i1 + 1);
        }
        if (r != null)
        {
            return (new StringBuilder()).append(r).append('/').toString();
        }
        if (url.getHost().length() > 0)
        {
            return (new StringBuilder()).append(url.getHost()).append('/').toString();
        } else
        {
            return "smb://";
        }
    }

    public final String e()
    {
        return url.toString();
    }

    public boolean equals(Object obj)
    {
        String s1;
        String s2;
        boolean flag1;
        int i1;
        int j1;
        int k1;
        int l1;
        flag1 = true;
        if (!(obj instanceof aar))
        {
            break MISSING_BLOCK_LABEL_212;
        }
        obj = (aar)obj;
        if (this == obj)
        {
            return true;
        }
        s1 = url.getPath();
        s2 = ((aar) (obj)).url.getPath();
        i1 = s1.lastIndexOf('/');
        j1 = s2.lastIndexOf('/');
        k1 = s1.length() - i1;
        l1 = s2.length() - j1;
        if (k1 <= 1 || s1.charAt(i1 + 1) != '.') goto _L2; else goto _L1
_L1:
        boolean flag = flag1;
_L5:
        if (flag)
        {
            q();
            ((aar) (obj)).q();
            if (q.equalsIgnoreCase(((aar) (obj)).q))
            {
                boolean flag2;
                try
                {
                    flag2 = l().equals(((aar) (obj)).l());
                }
                catch (UnknownHostException unknownhostexception)
                {
                    flag2 = r().equalsIgnoreCase(((aar) (obj)).r());
                }
                return flag2;
            }
        }
        break MISSING_BLOCK_LABEL_212;
_L2:
        if (l1 <= 1) goto _L4; else goto _L3
_L3:
        flag = flag1;
        if (s2.charAt(j1 + 1) == '.') goto _L5; else goto _L4
_L4:
        if (k1 != l1) goto _L7; else goto _L6
_L6:
        flag = flag1;
        if (s1.regionMatches(true, i1, s2, j1, k1)) goto _L5; else goto _L7
_L7:
        flag = false;
          goto _L5
        return false;
    }

    public final boolean f()
    {
        if (u > System.currentTimeMillis())
        {
            return x;
        }
        f = 17;
        s = 0L;
        t = 0L;
        x = false;
        if (url.getHost().length() == 0) goto _L2; else goto _L1
_L1:
        if (r != null) goto _L4; else goto _L3
_L3:
        if (s() != 2) goto _L6; else goto _L5
_L5:
        xk.b(url.getHost());
_L2:
        x = true;
_L7:
        u = System.currentTimeMillis() + d;
        return x;
_L6:
        xk.a(url.getHost()).b();
          goto _L2
_L4:
        if (q().length() != 1 && !r.equalsIgnoreCase("IPC$"))
        {
            break MISSING_BLOCK_LABEL_194;
        }
        a();
          goto _L2
        Object obj;
        obj;
        switch (((aaq) (obj)).n)
        {
        default:
            throw obj;

        case -1073741809: 
        case -1073741773: 
        case -1073741772: 
        case -1073741766: 
            break;
        }
          goto _L7
        zc zc1 = a(q(), 257);
        f = zc1.a();
        s = zc1.b();
        t = zc1.c();
          goto _L2
        zc1;
          goto _L7
    }

    public final boolean g()
    {
        if (s() == 16)
        {
            return true;
        } else
        {
            return f();
        }
    }

    public int getContentLength()
    {
        long l1;
        try
        {
            l1 = j();
        }
        catch (aaq aaq1)
        {
            return 0;
        }
        return (int)(l1 & 0xffffffffL);
    }

    public long getDate()
    {
        long l1;
        try
        {
            l1 = t();
        }
        catch (aaq aaq1)
        {
            return 0L;
        }
        return l1;
    }

    public InputStream getInputStream()
    {
        return new aas(this);
    }

    public long getLastModified()
    {
        long l1;
        try
        {
            l1 = t();
        }
        catch (aaq aaq1)
        {
            return 0L;
        }
        return l1;
    }

    public OutputStream getOutputStream()
    {
        return new aat(this);
    }

    public final boolean h()
    {
        if (q().length() != 1)
        {
            if (!f())
            {
                return false;
            }
            if ((f & 0x10) != 16)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i1;
        try
        {
            i1 = l().hashCode();
        }
        catch (UnknownHostException unknownhostexception)
        {
            i1 = r().toUpperCase().hashCode();
        }
        q();
        return i1 + q.toUpperCase().hashCode();
    }

    public final boolean i()
    {
        if (r != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (q().length() != 1)
        {
            break; /* Loop/switch isn't completed */
        }
        if (r.endsWith("$"))
        {
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        f();
        if ((f & 2) == 2)
        {
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public final long j()
    {
        if (w > System.currentTimeMillis())
        {
            return v;
        }
        if (s() == 8)
        {
            abf abf1 = new abf();
            a(new abe(), abf1);
            v = abf1.a.a();
        } else
        if (q().length() > 1 && l != 16)
        {
            v = a(q(), 258).d();
        } else
        {
            v = 0L;
        }
        w = System.currentTimeMillis() + d;
        return v;
    }

    public String toString()
    {
        return url.toString();
    }

    static 
    {
        try
        {
            Class.forName("xj");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
        }
    }
}
