// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class yx
{
    static final class a
    {

        long a;
        HashMap b;

        a(long l)
        {
            long l1 = l;
            if (l == 0L)
            {
                l1 = yx.c;
            }
            a = System.currentTimeMillis() + 1000L * l1;
            b = new HashMap();
        }
    }


    static abx a = abx.a();
    static final boolean b = xj.a("jcifs.smb.client.dfs.strictView", false);
    static final long c = xj.a("jcifs.smb.client.dfs.ttl", 300L);
    static final boolean d = xj.a("jcifs.smb.client.dfs.disabled", false);
    protected static a e = new a(0L);
    protected a f;
    protected a g;

    public yx()
    {
        f = null;
        g = null;
    }

    private static aax a(String s, zl zl1)
    {
        if (d)
        {
            return null;
        }
        zl1 = aax.a(xk.b(s), 0).a(zl1, (new StringBuilder("\\")).append(s).toString(), 1);
        if (zl1 == null)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        s = zl1;
_L2:
        Object obj = aax.a(xk.a(((yy) (s)).c), 0);
        return ((aax) (obj));
        IOException ioexception;
        ioexception;
        obj = ((yy) (s)).i;
        s = ((String) (obj));
        if (obj != zl1) goto _L2; else goto _L1
_L1:
        try
        {
            throw ioexception;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        if (abx.a >= 3)
        {
            s.printStackTrace(a);
        }
        if (b && (s instanceof zo))
        {
            throw (zo)s;
        }
        return null;
    }

    private static yy a(aax aax1, String s, String s1, String s2, zl zl1)
    {
        if (!d) goto _L2; else goto _L1
_L1:
        aax1 = null;
_L4:
        return aax1;
_L2:
        s1 = (new StringBuilder("\\")).append(s).append("\\").append(s1).toString();
        s = s1;
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        s = (new StringBuilder()).append(s1).append(s2).toString();
        s = aax1.a(zl1, s, 0);
        aax1 = s;
        if (s != null) goto _L4; else goto _L3
_L3:
        return null;
        aax1;
        if (abx.a >= 4)
        {
            aax1.printStackTrace(a);
        }
        if (b && (aax1 instanceof zo))
        {
            throw (zo)aax1;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public final HashMap a(zl zl1)
    {
        if (d || zl1.h == "?")
        {
            return null;
        }
        if (f != null && System.currentTimeMillis() > f.a)
        {
            f = null;
        }
        if (f != null)
        {
            return f.b;
        }
        Object obj;
        a a1;
        obj = aax.a(xk.b(zl1.h), 0);
        a1 = new a(c * 10L);
        obj = ((aax) (obj)).a(zl1, "", 0);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_187;
        }
        zl1 = ((zl) (obj));
_L2:
        Object obj1;
        obj1 = ((yy) (zl1)).c.toLowerCase();
        a1.b.put(obj1, new HashMap());
        obj1 = ((yy) (zl1)).i;
        zl1 = ((zl) (obj1));
        if (obj1 != obj) goto _L2; else goto _L1
_L1:
        f = a1;
        zl1 = f.b;
        return zl1;
        zl1;
        if (abx.a >= 3)
        {
            zl1.printStackTrace(a);
        }
        if (b && (zl1 instanceof zo))
        {
            throw (zo)zl1;
        }
        return null;
    }

    public final yy a(String s, String s1, String s2, zl zl1)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj1;
        String s6;
        s6 = null;
        obj1 = null;
        long l = System.currentTimeMillis();
        if (d) goto _L2; else goto _L1
_L1:
        boolean flag = s1.equals("IPC$");
        if (!flag) goto _L3; else goto _L2
_L2:
        s = null;
_L9:
        this;
        JVM INSTR monitorexit ;
        return s;
_L3:
        HashMap hashmap = a(zl1);
        Object obj;
        Object obj2;
        String s4;
        obj = s6;
        obj2 = s;
        s4 = s1;
        if (hashmap == null) goto _L5; else goto _L4
_L4:
        String s5;
        s5 = s.toLowerCase();
        hashmap = (HashMap)hashmap.get(s5);
        obj = s6;
        obj2 = s5;
        s4 = s1;
        if (hashmap == null) goto _L5; else goto _L6
_L6:
        s6 = s1.toLowerCase();
        s1 = (a)hashmap.get(s6);
        s = s1;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        s = s1;
        if (l <= ((a) (s1)).a)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        hashmap.remove(s6);
        s = null;
        if (s != null) goto _L8; else goto _L7
_L7:
        obj = a(s5, zl1);
label0:
        {
            if (obj != null)
            {
                break label0;
            }
            s = null;
        }
          goto _L9
        s1 = a(((aax) (obj)), s5, s6, s2, zl1);
        if (s1 == null) goto _L11; else goto _L10
_L10:
        int i;
        int j;
        i = s5.length();
        j = s6.length();
        obj1 = new a(0L);
        s = s1;
_L13:
        if (s2 != null)
        {
            break MISSING_BLOCK_LABEL_225;
        }
        s.j = ((a) (obj1)).b;
        s.k = "\\";
        s.a = ((yy) (s)).a - (i + 1 + 1 + j);
        obj2 = ((yy) (s)).i;
        s = ((String) (obj2));
        if (obj2 != s1) goto _L13; else goto _L12
_L12:
        if (((yy) (s1)).k != null)
        {
            ((a) (obj1)).b.put(((yy) (s1)).k, s1);
        }
        hashmap.put(s6, obj1);
        s = ((String) (obj));
        obj = s1;
        s1 = ((String) (obj1));
_L21:
        obj2 = s5;
        s4 = s6;
        if (s1 == null) goto _L5; else goto _L14
_L14:
        obj1 = (yy)((a) (s1)).b.get("\\");
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_353;
        }
        if (l <= ((yy) (obj1)).h)
        {
            break MISSING_BLOCK_LABEL_353;
        }
        ((a) (s1)).b.remove("\\");
        obj1 = null;
        obj = obj1;
        obj2 = s5;
        s4 = s6;
        if (obj1 != null) goto _L5; else goto _L15
_L15:
        if (s != null) goto _L17; else goto _L16
_L16:
        obj = a(s5, zl1);
        s = ((String) (obj));
        if (obj != null) goto _L17; else goto _L18
_L18:
        s = null;
          goto _L9
_L11:
        if (s2 != null) goto _L20; else goto _L19
_L19:
        hashmap.put(s6, e);
        obj1 = s;
        s = ((String) (obj));
        obj = s1;
        s1 = ((String) (obj1));
          goto _L21
_L8:
        if (s == e)
        {
            s = null;
            s1 = null;
            obj = obj1;
        } else
        {
            obj = null;
            s1 = s;
            s = ((String) (obj));
            obj = obj1;
        }
          goto _L21
_L17:
        s = a(((aax) (s)), s5, s6, s2, zl1);
        obj = s;
        obj2 = s5;
        s4 = s6;
        if (s == null) goto _L5; else goto _L22
_L22:
        s.a = ((yy) (s)).a - (s5.length() + 1 + 1 + s6.length());
        s.e = "\\";
        ((a) (s1)).b.put("\\", s);
        s4 = s6;
        obj2 = s5;
        obj = s;
_L5:
        s = ((String) (obj));
        if (obj != null) goto _L9; else goto _L23
_L23:
        s = ((String) (obj));
        if (s2 == null) goto _L9; else goto _L24
_L24:
        if (g != null && l > g.a)
        {
            g = null;
        }
        if (g == null)
        {
            g = new a(0L);
        }
        s1 = (new StringBuilder("\\")).append(((String) (obj2))).append("\\").append(s4).toString();
        s = s1;
        if (!s2.equals("\\"))
        {
            s = (new StringBuilder()).append(s1).append(s2).toString();
        }
        s1 = s.toLowerCase();
        s2 = g.b.keySet().iterator();
_L30:
        s = ((String) (obj));
        if (!s2.hasNext()) goto _L9; else goto _L25
_L25:
        s = (String)s2.next();
        i = s.length();
        flag = false;
        if (i != s1.length()) goto _L27; else goto _L26
_L26:
        flag = s.equals(s1);
_L29:
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        s = (yy)g.b.get(s);
        break MISSING_BLOCK_LABEL_826;
_L27:
        if (i >= s1.length())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!s.regionMatches(0, s1, 0, i))
        {
            break MISSING_BLOCK_LABEL_773;
        }
        i = s1.charAt(i);
        if (i == '\\')
        {
            flag = true;
            continue; /* Loop/switch isn't completed */
        }
        flag = false;
        if (true) goto _L29; else goto _L28
        s;
        throw s;
_L28:
        s = ((String) (obj));
        break MISSING_BLOCK_LABEL_826;
_L20:
        String s3 = s;
        s = ((String) (obj));
        obj = s1;
        s1 = s3;
          goto _L21
        obj = s;
          goto _L30
    }

    final void a(String s, yy yy1)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = d;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        String s1;
        String s2;
        String s3;
        int i;
        i = s.indexOf('\\', 1);
        int j = s.indexOf('\\', i + 1);
        s2 = s.substring(1, i);
        s3 = s.substring(i + 1, j);
        s1 = s.substring(0, yy1.a).toLowerCase();
        i = s1.length();
_L4:
        if (i <= 1)
        {
            break; /* Loop/switch isn't completed */
        }
        if (s1.charAt(i - 1) != '\\')
        {
            break; /* Loop/switch isn't completed */
        }
        i--;
        if (true) goto _L4; else goto _L3
_L3:
        s = s1;
        if (i < s1.length())
        {
            s = s1.substring(0, i);
        }
        yy1.a = yy1.a - (s2.length() + 1 + 1 + s3.length());
        if (g != null && System.currentTimeMillis() + 10000L > g.a)
        {
            g = null;
        }
        if (g == null)
        {
            g = new a(0L);
        }
        g.b.put(s, yy1);
        if (true) goto _L1; else goto _L5
_L5:
        s;
        throw s;
    }

}
