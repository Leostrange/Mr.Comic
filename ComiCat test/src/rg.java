// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Vector;

public final class rg
    implements qr
{
    final class a extends qq
    {

        boolean f;
        byte g[];
        byte h[];
        final rg i;

        final boolean a(String s)
        {
            if (!f)
            {
                return super.a(s);
            }
            rj rj1 = rg.a(i);
            rj1;
            JVM INSTR monitorenter ;
            boolean flag;
            si.a(s);
            s = new byte[rj1.a()];
            flag = si.a(h, s);
            rj1;
            JVM INSTR monitorexit ;
            return flag;
            s;
            rj1;
            JVM INSTR monitorexit ;
            try
            {
                throw s;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                System.out.println(s);
            }
            return false;
        }

        final void f()
        {
            if (f)
            {
                return;
            }
            obj = rg.a(i);
            if (g == null)
            {
                synchronized (ry.g)
                {
                    g = new byte[((rj) (obj)).a()];
                }
            }
            obj;
            JVM INSTR monitorenter ;
            si.a(b);
            h = new byte[((rj) (obj)).a()];
            obj;
            JVM INSTR monitorexit ;
_L2:
            b = (new StringBuilder("|1|")).append(si.a(si.b(g, g.length))).append("|").append(si.a(si.b(h, h.length))).toString();
            f = true;
            return;
            obj;
            ro;
            JVM INSTR monitorexit ;
            throw obj;
            Exception exception1;
            exception1;
            obj;
            JVM INSTR monitorexit ;
            try
            {
                throw exception1;
            }
            catch (Exception exception) { }
            if (true) goto _L2; else goto _L1
_L1:
        }

        private a(String s, String s1, byte abyte0[])
        {
label0:
            {
                i = rg.this;
                super(s, s1, abyte0);
                f = false;
                g = null;
                h = null;
                if (b.startsWith("|1|") && b.substring(3).indexOf("|") > 0)
                {
                    s = b.substring(3);
                    rg1 = s.substring(0, s.indexOf("|"));
                    s = s.substring(s.indexOf("|") + 1);
                    g = si.a(si.a(rg.this), length());
                    h = si.a(si.a(s), s.length());
                    if (g.length == 20 && h.length == 20)
                    {
                        break label0;
                    }
                    g = null;
                    h = null;
                }
                return;
            }
            f = true;
        }

        a(String s, byte abyte0[])
        {
            this(s, abyte0, (byte)0);
        }

        private a(String s, byte abyte0[], byte byte0)
        {
            this("", s, abyte0);
        }
    }


    private static final byte e[] = {
        32
    };
    private static final byte f[] = si.a("\n");
    private qw a;
    private String b;
    private Vector c;
    private rj d;

    rg(qw qw1)
    {
        a = null;
        b = null;
        c = null;
        d = null;
        a = qw1;
        c = new Vector();
    }

    static rj a(rg rg1)
    {
        return rg1.b();
    }

    private void a(OutputStream outputstream)
    {
        Vector vector = c;
        vector;
        JVM INSTR monitorenter ;
        int i = 0;
_L6:
        qq qq1;
        String s;
        String s1;
        String s2;
        String s3;
        if (i >= c.size())
        {
            break MISSING_BLOCK_LABEL_202;
        }
        qq1 = (qq)(qq)c.elementAt(i);
        s = qq1.e();
        s1 = qq1.a();
        s2 = qq1.b();
        s3 = qq1.d();
        if (!s2.equals("UNKNOWN")) goto _L2; else goto _L1
_L1:
        outputstream.write(si.a(s1));
_L4:
        outputstream.write(f);
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        if (s.length() != 0)
        {
            outputstream.write(si.a(s));
            outputstream.write(e);
        }
        outputstream.write(si.a(s1));
        outputstream.write(e);
        outputstream.write(si.a(s2));
        outputstream.write(e);
        outputstream.write(si.a(qq1.c()));
        if (s3 == null) goto _L4; else goto _L3
_L3:
        outputstream.write(e);
        outputstream.write(si.a(s3));
          goto _L4
        outputstream;
        vector;
        JVM INSTR monitorexit ;
        try
        {
            throw outputstream;
        }
        // Misplaced declaration of an exception variable
        catch (OutputStream outputstream)
        {
            System.err.println(outputstream);
        }
        return;
        vector;
        JVM INSTR monitorexit ;
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        s = new FileOutputStream(si.b(s));
        a(((OutputStream) (s)));
        s.close();
        if (true) goto _L1; else goto _L3
_L3:
        s;
        throw s;
    }

    private rj b()
    {
        this;
        JVM INSTR monitorenter ;
        rj rj1 = d;
        if (rj1 != null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        d = (rj)(rj)Class.forName(qw.a("hmac-sha1")).newInstance();
_L1:
        rj1 = d;
        this;
        JVM INSTR monitorexit ;
        return rj1;
        Object obj;
        obj;
        System.err.println((new StringBuilder("hmacsha1: ")).append(obj).toString());
          goto _L1
        obj;
        throw obj;
    }

    public final int a(String s, byte abyte0[])
    {
_L7:
        if (s != null) goto _L2; else goto _L1
_L1:
        int i = 1;
_L4:
        return i;
_L2:
        Vector vector;
        qq qq1;
        byte byte0;
        try
        {
            qq1 = new qq(s, abyte0, (byte)0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return 1;
        }
        vector = c;
        vector;
        JVM INSTR monitorenter ;
        i = 0;
        byte0 = 1;
_L8:
        if (i >= c.size())
        {
            break MISSING_BLOCK_LABEL_102;
        }
        qq qq2 = (qq)(qq)c.elementAt(i);
        if (!qq2.a(s) || qq2.c != qq1.c)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        if (!si.a(qq2.d, abyte0))
        {
            break MISSING_BLOCK_LABEL_167;
        }
        vector;
        JVM INSTR monitorexit ;
        return 0;
        vector;
        JVM INSTR monitorexit ;
        i = byte0;
        if (byte0 != true) goto _L4; else goto _L3
_L3:
        i = byte0;
        if (!s.startsWith("[")) goto _L4; else goto _L5
_L5:
        i = byte0;
        if (s.indexOf("]:") <= 1) goto _L4; else goto _L6
_L6:
        s = s.substring(1, s.indexOf("]:"));
          goto _L7
        s;
        vector;
        JVM INSTR monitorexit ;
        throw s;
        byte0 = 2;
        i++;
          goto _L8
    }

    public final String a()
    {
        return b;
    }

    public final void a(String s, String s1)
    {
        Vector vector = c;
        vector;
        JVM INSTR monitorenter ;
        int i;
        int j;
        j = 0;
        i = 0;
_L8:
        qq qq1;
        if (j >= c.size())
        {
            break MISSING_BLOCK_LABEL_267;
        }
        qq1 = (qq)(qq)c.elementAt(j);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        if (!qq1.a(s))
        {
            break MISSING_BLOCK_LABEL_299;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        if (!qq1.b().equals(s1))
        {
            break MISSING_BLOCK_LABEL_299;
        }
        String s2;
        s2 = qq1.a();
        if (s2.equals(s) || (qq1 instanceof a) && ((a)qq1).f)
        {
            c.removeElement(qq1);
            break MISSING_BLOCK_LABEL_296;
        }
        int k;
        int l;
        k = s.length();
        l = s2.length();
        i = 0;
_L4:
        if (i >= l) goto _L2; else goto _L1
_L1:
        int i1 = s2.indexOf(',', i);
        if (i1 == -1) goto _L2; else goto _L3
_L3:
        if (s.equals(s2.substring(i, i1)))
        {
            break MISSING_BLOCK_LABEL_181;
        }
        i = i1 + 1;
          goto _L4
        s2 = (new StringBuilder()).append(s2.substring(0, i)).append(s2.substring(i1 + 1)).toString();
_L6:
        qq1.b = s2;
        break MISSING_BLOCK_LABEL_296;
        s;
        vector;
        JVM INSTR monitorexit ;
        throw s;
_L2:
        if (!s2.endsWith(s) || l - i != k) goto _L6; else goto _L5
_L5:
        if (k == l)
        {
            i = 0;
        } else
        {
            i = l - k - 1;
        }
        s2 = s2.substring(0, i);
          goto _L6
        vector;
        JVM INSTR monitorexit ;
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_290;
        }
        if (b != null)
        {
            a(b);
        }
        return;
        s;
        return;
        i = 1;
        j++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public final void a(qq qq1, sh sh1)
    {
        String s;
        int i = qq1.c;
        s = qq1.a();
        byte abyte0[] = qq1.d;
        Vector vector = c;
        vector;
        JVM INSTR monitorenter ;
        int j = 0;
_L2:
        if (j < c.size())
        {
            qq qq2 = (qq)(qq)c.elementAt(j);
            int k;
            if (qq2.a(s))
            {
                k = qq2.c;
            }
            break MISSING_BLOCK_LABEL_322;
        }
        vector;
        JVM INSTR monitorexit ;
        c.addElement(qq1);
        qq1 = b;
        if (qq1 == null)
        {
            break MISSING_BLOCK_LABEL_261;
        }
        boolean flag = true;
        File file = new File(si.b(qq1));
        if (!file.exists())
        {
            if (sh1 != null)
            {
                (new StringBuilder()).append(qq1).append(" does not exist.\nAre you sure you want to create it?");
                boolean flag1 = sh1.c();
                file = file.getParentFile();
                flag = flag1;
                if (flag1)
                {
                    flag = flag1;
                    if (file != null)
                    {
                        flag = flag1;
                        if (!file.exists())
                        {
                            (new StringBuilder("The parent directory ")).append(file).append(" does not exist.\nAre you sure you want to create it?");
                            boolean flag2 = sh1.c();
                            flag = flag2;
                            if (flag2)
                            {
                                if (!file.mkdirs())
                                {
                                    (new StringBuilder()).append(file).append(" has not been created.");
                                    flag = false;
                                } else
                                {
                                    (new StringBuilder()).append(file).append(" has been succesfully created.\nPlease check its access permission.");
                                    flag = flag2;
                                }
                            }
                        }
                    }
                }
                if (file == null)
                {
                    flag = false;
                }
            } else
            {
                flag = false;
            }
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_261;
        }
        a(((String) (qq1)));
        return;
        qq1;
        vector;
        JVM INSTR monitorexit ;
        throw qq1;
        qq1;
        System.err.println((new StringBuilder("sync known_hosts: ")).append(qq1).toString());
        return;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final qq[] b(String s, String s1)
    {
        boolean flag = false;
        Vector vector = c;
        vector;
        JVM INSTR monitorenter ;
        ArrayList arraylist = new ArrayList();
        int i = 0;
_L5:
        qq qq1;
        if (i >= c.size())
        {
            break MISSING_BLOCK_LABEL_95;
        }
        qq1 = (qq)c.elementAt(i);
        if (qq1.c == 6)
        {
            break MISSING_BLOCK_LABEL_230;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        if (!qq1.a(s))
        {
            break MISSING_BLOCK_LABEL_230;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        if (!qq1.b().equals(s1))
        {
            break MISSING_BLOCK_LABEL_230;
        }
        arraylist.add(qq1);
        break MISSING_BLOCK_LABEL_230;
        qq aqq[] = new qq[arraylist.size()];
        i = ((flag) ? 1 : 0);
_L2:
        if (i >= arraylist.size())
        {
            break; /* Loop/switch isn't completed */
        }
        aqq[i] = (qq)arraylist.get(i);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_225;
        }
        if (!s.startsWith("[") || s.indexOf("]:") <= 1)
        {
            break MISSING_BLOCK_LABEL_225;
        }
        s1 = b(s.substring(1, s.indexOf("]:")), s1);
        if (s1.length <= 0)
        {
            break MISSING_BLOCK_LABEL_225;
        }
        s = new qq[aqq.length + s1.length];
        System.arraycopy(aqq, 0, s, 0, aqq.length);
        System.arraycopy(s1, 0, s, aqq.length, s1.length);
_L3:
        vector;
        JVM INSTR monitorexit ;
        return s;
        s;
        vector;
        JVM INSTR monitorexit ;
        throw s;
        s = aqq;
          goto _L3
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

}
