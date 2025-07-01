// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.Socket;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Vector;

public final class ry
    implements Runnable
{
    final class a
    {

        Thread a;
        int b;
        int c;
        final ry d;

        private a()
        {
            d = ry.this;
            super();
            a = null;
            b = -1;
            c = 0;
        }

        a(byte byte0)
        {
            this();
        }
    }


    private static final byte ak[] = si.a("keepalive@jcraft.com");
    private static final byte al[] = si.a("no-more-sessions@openssh.com");
    static ro g;
    private byte A[];
    private byte B[];
    private byte C[];
    private byte D[];
    private byte E[];
    private byte F[];
    private byte G[];
    private byte H[];
    private byte I[];
    private int J;
    private int K;
    private ql L;
    private ql M;
    private rj N;
    private rj O;
    private byte P[];
    private byte Q[];
    private qm R;
    private qm S;
    private qs T;
    private Socket U;
    private int V;
    private boolean W;
    private Thread X;
    private Object Y;
    private Hashtable Z;
    String a[];
    private rn aa;
    private String ab;
    private int ac;
    private int ad;
    private qr ae;
    private long af;
    private volatile boolean ag;
    private int ah;
    private int ai;
    private a aj;
    private qq am;
    volatile boolean b;
    boolean c;
    boolean d;
    InputStream e;
    OutputStream f;
    qa h;
    rl i;
    se j;
    sh k;
    qv l;
    protected boolean m;
    int n;
    int o;
    String p;
    String q;
    int r;
    String s;
    public byte t[];
    qw u;
    int v[];
    int w[];
    Runnable x;
    private byte y[];
    private byte z[];

    public ry(qw qw1, String s1, String s2, int i1)
    {
        z = si.a("SSH-2.0-JSCH-0.1.53");
        J = 0;
        K = 0;
        a = null;
        V = 0;
        b = false;
        W = false;
        X = null;
        Y = new Object();
        c = false;
        d = false;
        e = null;
        f = null;
        j = null;
        Z = null;
        aa = null;
        ab = null;
        ac = 0;
        ad = 1;
        l = null;
        ae = null;
        m = false;
        af = 0L;
        n = 6;
        o = 0;
        p = "127.0.0.1";
        q = "127.0.0.1";
        r = 22;
        s = null;
        t = null;
        ag = false;
        v = new int[1];
        w = new int[1];
        ah = 8;
        ai = 8;
        aj = new a((byte)0);
        am = null;
        u = qw1;
        h = new qa();
        i = new rl(h);
        s = s1;
        p = s2;
        q = s2;
        r = i1;
        qw1 = u.c;
        if (qw1 != null)
        {
            qw1.a();
        }
        if (s == null)
        {
            try
            {
                s = (String)(String)System.getProperties().get("user.name");
            }
            // Misplaced declaration of an exception variable
            catch (qw qw1) { }
        }
        if (s == null)
        {
            throw new qy("username is not given.");
        } else
        {
            return;
        }
    }

    private void a(String s1, int i1, ra ra1)
    {
        Object obj;
        String s2;
        String s3;
        byte abyte0[];
        String s4;
        boolean flag;
        int k1;
        boolean flag1;
        flag = false;
        s3 = b("StrictHostKeyChecking");
        obj = s1;
        if (ab != null)
        {
            obj = ab;
        }
        abyte0 = ra1.g();
        Object obj1;
        Object obj2;
        if (ra1.q == 1)
        {
            s1 = "DSA";
        } else
        if (ra1.q == 0)
        {
            s1 = "RSA";
        } else
        {
            s1 = "ECDSA";
        }
        s4 = ra1.c();
        s2 = ((String) (obj));
        if (ab == null)
        {
            s2 = ((String) (obj));
            if (i1 != 22)
            {
                s2 = (new StringBuilder("[")).append(((String) (obj))).append("]:").append(i1).toString();
            }
        }
        if (ae == null)
        {
            obj = u;
            if (((qw) (obj)).d == null)
            {
                obj.d = new rg(((qw) (obj)));
            }
            obj = ((qw) (obj)).d;
        } else
        {
            obj = ae;
        }
        if (!b("HashKnownHosts").equals("yes") || !(obj instanceof rg)) goto _L2; else goto _L1
_L1:
        obj1 = new rg.a((rg)obj, s2, abyte0);
        ((rg.a) (obj1)).f();
        am = ((qq) (obj1));
_L22:
        obj;
        JVM INSTR monitorenter ;
        k1 = ((qr) (obj)).a(s2, abyte0);
        obj;
        JVM INSTR monitorexit ;
        if (!s3.equals("ask") && !s3.equals("yes") || k1 != 2) goto _L4; else goto _L3
_L3:
        obj;
        JVM INSTR monitorenter ;
        obj2 = ((qr) (obj)).a();
        obj;
        JVM INSTR monitorexit ;
        obj1 = obj2;
        if (obj2 == null)
        {
            obj1 = "known_hosts";
        }
        if (k == null) goto _L6; else goto _L5
_L5:
        obj1 = (new StringBuilder("WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the ")).append(s1).append(" host key has just been changed.\nThe fingerprint for the ").append(s1).append(" key sent by the remote host ").append(s2).append(" is\n").append(s4).append(".\nPlease contact your system administrator.\nAdd correct host key in ").append(((String) (obj1))).append(" to get rid of this message.").toString();
        if (!s3.equals("ask")) goto _L6; else goto _L7
_L7:
        obj2 = k;
        (new StringBuilder()).append(((String) (obj1))).append("\nDo you want to delete the old key and insert the new key?");
        flag1 = ((sh) (obj2)).c();
_L19:
        if (!flag1)
        {
            throw new qy((new StringBuilder("HostKey has been changed: ")).append(s2).toString());
        }
          goto _L8
_L2:
        am = new qq(s2, abyte0);
        continue; /* Loop/switch isn't completed */
        s1;
        obj;
        JVM INSTR monitorexit ;
        throw s1;
        s1;
        obj;
        JVM INSTR monitorexit ;
        throw s1;
_L8:
        obj;
        JVM INSTR monitorenter ;
        ((qr) (obj)).a(s2, ra1.r);
        obj;
        JVM INSTR monitorexit ;
        int j1 = 1;
_L20:
        if (s3.equals("ask")) goto _L10; else goto _L9
_L9:
        i1 = j1;
        if (!s3.equals("yes")) goto _L11; else goto _L10
_L10:
        i1 = j1;
        if (k1 != 0)
        {
            i1 = j1;
            if (j1 == 0)
            {
                if (s3.equals("yes"))
                {
                    throw new qy((new StringBuilder("reject HostKey: ")).append(p).toString());
                }
                break MISSING_BLOCK_LABEL_592;
            }
        }
          goto _L11
        s1;
        obj;
        JVM INSTR monitorexit ;
        throw s1;
        if (k == null) goto _L13; else goto _L12
_L12:
        sh sh1 = k;
        (new StringBuilder("The authenticity of host '")).append(p).append("' can't be established.\n").append(s1).append(" key fingerprint is ").append(s4).append(".\nAre you sure you want to continue connecting?");
        if (!sh1.c())
        {
            throw new qy((new StringBuilder("reject HostKey: ")).append(p).toString());
        }
        i1 = 1;
_L11:
        j1 = i1;
        if (s3.equals("no"))
        {
            j1 = i1;
            if (1 == k1)
            {
                j1 = 1;
            }
        }
        if (k1 != 0) goto _L15; else goto _L14
_L14:
        ra1 = ((qr) (obj)).b(s2, ra1.r);
        s2 = si.a(si.b(abyte0, abyte0.length));
        i1 = ((flag) ? 1 : 0);
_L16:
        if (i1 >= ra1.length)
        {
            break; /* Loop/switch isn't completed */
        }
        if (ra1[k1].c().equals(s2) && ra1[i1].e().equals("@revoked"))
        {
            if (k != null)
            {
                (new StringBuilder("The ")).append(s1).append(" host key for ").append(p).append(" is marked as revoked.\nThis could mean that a stolen key is being used to impersonate this host.");
            }
            qw.b();
            throw new qy((new StringBuilder("revoked HostKey: ")).append(p).toString());
        }
        i1++;
        continue; /* Loop/switch isn't completed */
_L13:
        if (k1 == 1)
        {
            throw new qy((new StringBuilder("UnknownHostKey: ")).append(p).append(". ").append(s1).append(" key fingerprint is ").append(s4).toString());
        } else
        {
            throw new qy((new StringBuilder("HostKey has been changed: ")).append(p).toString());
        }
        if (true) goto _L16; else goto _L15
_L15:
        if (k1 == 0)
        {
            qw.b();
        }
        if (j1 != 0)
        {
            qw.b();
        }
        if (j1 == 0) goto _L18; else goto _L17
_L17:
        obj;
        JVM INSTR monitorenter ;
        ((qr) (obj)).a(am, k);
        obj;
        JVM INSTR monitorexit ;
        return;
        s1;
        obj;
        JVM INSTR monitorexit ;
        throw s1;
_L6:
        flag1 = false;
          goto _L19
_L4:
        j1 = 0;
          goto _L20
_L18:
        return;
        if (true) goto _L22; else goto _L21
_L21:
    }

    private void a(qa qa1, ql ql1, int i1)
    {
        if (!ql1.c())
        {
            throw new qy("Packet corrupt");
        }
        i1 -= qa1.c;
        while (i1 > 0) 
        {
            qa1.h();
            int j1;
            if (i1 > qa1.b.length)
            {
                j1 = qa1.b.length;
            } else
            {
                j1 = i1;
            }
            T.b(qa1.b, 0, j1);
            i1 -= j1;
        }
        throw new qy("Packet corrupt");
    }

    private void a(ra ra1)
    {
        byte abyte0[] = ra1.d();
        byte abyte1[] = ra1.e();
        ra1 = ra1.f();
        if (C == null)
        {
            C = new byte[abyte1.length];
            System.arraycopy(abyte1, 0, C, 0, abyte1.length);
        }
        h.h();
        h.c(abyte0);
        h.a(abyte1);
        h.a((byte)65);
        h.a(C);
        D = ra1.b();
        int i1 = h.c - C.length - 1;
        byte abyte2[] = h.b;
        abyte2[i1] = (byte)(abyte2[i1] + 1);
        E = ra1.b();
        abyte2 = h.b;
        abyte2[i1] = (byte)(abyte2[i1] + 1);
        F = ra1.b();
        abyte2 = h.b;
        abyte2[i1] = (byte)(abyte2[i1] + 1);
        G = ra1.b();
        abyte2 = h.b;
        abyte2[i1] = (byte)(abyte2[i1] + 1);
        H = ra1.b();
        abyte2 = h.b;
        abyte2[i1] = (byte)(abyte2[i1] + 1);
        I = ra1.b();
        byte abyte4[];
        try
        {
            byte abyte3[];
            for (L = (ql)(ql)Class.forName(b(a[3])).newInstance(); L.b() > G.length; G = abyte3)
            {
                h.h();
                h.c(abyte0);
                h.a(abyte1);
                h.a(G);
                abyte2 = ra1.b();
                abyte3 = new byte[G.length + abyte2.length];
                System.arraycopy(G, 0, abyte3, 0, G.length);
                System.arraycopy(abyte2, 0, abyte3, G.length, abyte2.length);
            }

        }
        // Misplaced declaration of an exception variable
        catch (ra ra1)
        {
            if (ra1 instanceof qy)
            {
                throw ra1;
            } else
            {
                throw new qy(ra1.toString(), ra1);
            }
        }
        ah = L.a();
        N = (rj)(rj)Class.forName(b(a[5])).newInstance();
        I = a(h, abyte0, abyte1, I, ((qp) (ra1)), N.a());
        P = new byte[N.a()];
        Q = new byte[N.a()];
        for (M = (ql)(ql)Class.forName(b(a[2])).newInstance(); M.b() > F.length; F = abyte4)
        {
            h.h();
            h.c(abyte0);
            h.a(abyte1);
            h.a(F);
            abyte2 = ra1.b();
            abyte4 = new byte[F.length + abyte2.length];
            System.arraycopy(F, 0, abyte4, 0, F.length);
            System.arraycopy(abyte2, 0, abyte4, F.length, abyte2.length);
        }

        ai = M.a();
        O = (rj)(rj)Class.forName(b(a[4])).newInstance();
        H = a(h, abyte0, abyte1, H, ((qp) (ra1)), O.a());
        d(a[6]);
        e(a[7]);
        ag = false;
        return;
    }

    private static byte[] a(qa qa1, byte abyte0[], byte abyte1[], byte abyte2[], qp qp1, int i1)
    {
        int j1 = qp1.a();
        byte abyte3[];
        for (; abyte2.length < i1; abyte2 = abyte3)
        {
            qa1.h();
            qa1.c(abyte0);
            qa1.a(abyte1);
            qa1.a(abyte2);
            abyte3 = new byte[abyte2.length + j1];
            System.arraycopy(abyte2, 0, abyte3, 0, abyte2.length);
            System.arraycopy(qp1.b(), 0, abyte3, abyte2.length, j1);
            si.b(abyte2);
        }

        return abyte2;
    }

    private ra b(qa qa1)
    {
        int i1 = qa1.b();
        if (i1 != qa1.a())
        {
            qa1.e();
            B = new byte[qa1.c - 5];
        } else
        {
            B = new byte[i1 - 1 - qa1.e()];
        }
        System.arraycopy(qa1.b, qa1.d, B, 0, B.length);
        if (!ag)
        {
            b();
        }
        a = ra.a(B, A);
        if (a == null)
        {
            throw new qy("Algorithm negotiation fail");
        }
        if (!W && (a[2].equals("none") || a[3].equals("none")))
        {
            throw new qy("NONE Cipher should not be chosen before authentification is successed.");
        }
        try
        {
            qa1 = (ra)(ra)Class.forName(b(a[0])).newInstance();
        }
        // Misplaced declaration of an exception variable
        catch (qa qa1)
        {
            throw new qy(qa1.toString(), qa1);
        }
        return qa1;
    }

    private void b()
    {
        if (ag)
        {
            return;
        }
        String s1 = b("cipher.c2s");
        String s2 = b("cipher.s2c");
        Object obj2 = b("CheckCiphers");
        if (obj2 == null || ((String) (obj2)).length() == 0)
        {
            obj = null;
        } else
        {
            qw.b();
            obj = b("cipher.c2s");
            String s4 = b("cipher.s2c");
            Vector vector = new Vector();
            String as1[] = si.a(((String) (obj2)), ",");
            for (int i1 = 0; i1 < as1.length; i1++)
            {
                String s5 = as1[i1];
                if ((s4.indexOf(s5) != -1 || ((String) (obj)).indexOf(s5) != -1) && !c(b(s5)))
                {
                    vector.addElement(s5);
                }
            }

            if (vector.size() == 0)
            {
                obj = null;
            } else
            {
                obj = new String[vector.size()];
                System.arraycopy(((Object) (vector.toArray())), 0, obj, 0, vector.size());
                qw.b();
            }
        }
        String s3;
        String as[];
        Object obj1;
        String as2[];
        if (obj != null && obj.length > 0)
        {
            s1 = si.a(s1, ((String []) (obj)));
            obj = si.a(s2, ((String []) (obj)));
            if (s1 == null || obj == null)
            {
                throw new qy("There are not any available ciphers.");
            }
        } else
        {
            obj = s2;
        }
        s3 = b("kex");
        as = f(b("CheckKexes"));
        s2 = s3;
        if (as != null)
        {
            s2 = s3;
            if (as.length > 0)
            {
                s3 = si.a(s3, as);
                s2 = s3;
                if (s3 == null)
                {
                    throw new qy("There are not any available kexes.");
                }
            }
        }
        obj1 = b("server_host_key");
        as2 = h(b("CheckSignatures"));
        s3 = ((String) (obj1));
        if (as2 != null)
        {
            s3 = ((String) (obj1));
            if (as2.length > 0)
            {
                obj1 = si.a(((String) (obj1)), as2);
                s3 = ((String) (obj1));
                if (obj1 == null)
                {
                    throw new qy("There are not any available sig algorithm.");
                }
            }
        }
        ag = true;
        af = System.currentTimeMillis();
        obj1 = new qa();
        as2 = new rl(((qa) (obj1)));
        as2.a();
        ((qa) (obj1)).a((byte)20);
        synchronized (g)
        {
            ((qa) (obj1)).b(16);
        }
        ((qa) (obj1)).b(si.a(s2));
        ((qa) (obj1)).b(si.a(s3));
        ((qa) (obj1)).b(si.a(s1));
        ((qa) (obj1)).b(si.a(((String) (obj))));
        ((qa) (obj1)).b(si.a(b("mac.c2s")));
        ((qa) (obj1)).b(si.a(b("mac.s2c")));
        ((qa) (obj1)).b(si.a(b("compression.c2s")));
        ((qa) (obj1)).b(si.a(b("compression.s2c")));
        ((qa) (obj1)).b(si.a(b("lang.c2s")));
        ((qa) (obj1)).b(si.a(b("lang.s2c")));
        ((qa) (obj1)).a((byte)0);
        ((qa) (obj1)).a(0);
        obj1.d = 5;
        A = new byte[((qa) (obj1)).a()];
        obj = A;
        ((qa) (obj1)).a(((byte []) (obj)), obj.length);
        a(as2);
        qw.b();
        return;
        obj;
        ro1;
        JVM INSTR monitorexit ;
        throw obj;
    }

    private void b(rl rl1)
    {
        Object obj = Y;
        obj;
        JVM INSTR monitorenter ;
        if (R != null)
        {
            w[0] = rl1.a.c;
            rl1.a.b = R.a();
            rl1.a.c = w[0];
        }
        if (M == null)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        rl1.a(ai);
        synchronized (g) { }
_L1:
        if (O != null)
        {
            rl1.a.b(O.a());
        }
        if (T != null)
        {
            obj1 = T;
            ((qs) (obj1)).b.write(rl1.a.b, 0, rl1.a.c);
            ((qs) (obj1)).b.flush();
            K = K + 1;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        rl1;
        obj1;
        JVM INSTR monitorexit ;
        throw rl1;
        rl1;
        obj;
        JVM INSTR monitorexit ;
        throw rl1;
        rl1.a(8);
          goto _L1
    }

    private void c()
    {
        i.a();
        h.a((byte)21);
        a(i);
        qw.b();
    }

    static boolean c(String s1)
    {
        try
        {
            Class.forName(s1).newInstance();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return false;
        }
        return true;
    }

    private void d()
    {
        if (!b)
        {
            return;
        }
        qw.b();
        qb.a(this);
        b = false;
        rm.a(this);
        qf.b(this);
        qk.c(this);
        synchronized (Y)
        {
            if (X != null)
            {
                Thread.yield();
                X.interrupt();
                X = null;
            }
        }
        x = null;
        if (T != null)
        {
            if (T.a != null)
            {
                T.a.close();
            }
            if (T.b != null)
            {
                T.b.close();
            }
            if (T.c != null)
            {
                T.c.close();
            }
        }
        if (aa != null) goto _L2; else goto _L1
_L1:
        if (U != null)
        {
            U.close();
        }
_L4:
        T = null;
        U = null;
        u.a(this);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        synchronized (aa) { }
        try
        {
            aa = null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1) { }
        if (true) goto _L4; else goto _L3
_L3:
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    private void d(String s1)
    {
        if (!s1.equals("none")) goto _L2; else goto _L1
_L1:
        R = null;
_L4:
        return;
_L2:
        String s2 = b(s1);
        if (s2 == null || !s1.equals("zlib") && (!W || !s1.equals("zlib@openssh.com"))) goto _L4; else goto _L3
_L3:
        try
        {
            R = (qm)(qm)Class.forName(s2).newInstance();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            throw new qy(s1.toString(), s1);
        }
        try
        {
            Integer.parseInt(b("compression_level"));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return;
        }
        s1;
        throw new qy(s1.toString(), s1);
    }

    private void e(String s1)
    {
        if (s1.equals("none"))
        {
            S = null;
        } else
        {
            String s2 = b(s1);
            if (s2 != null && (s1.equals("zlib") || W && s1.equals("zlib@openssh.com")))
            {
                try
                {
                    S = (qm)(qm)Class.forName(s2).newInstance();
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (String s1)
                {
                    throw new qy(s1.toString(), s1);
                }
            }
        }
    }

    private String[] f(String s1)
    {
        if (s1 == null || s1.length() == 0)
        {
            return null;
        }
        qw.b();
        Vector vector = new Vector();
        s1 = si.a(s1, ",");
        for (int i1 = 0; i1 < s1.length; i1++)
        {
            if (!g(b(s1[i1])))
            {
                vector.addElement(s1[i1]);
            }
        }

        if (vector.size() == 0)
        {
            return null;
        } else
        {
            s1 = new String[vector.size()];
            System.arraycopy(((Object) (vector.toArray())), 0, s1, 0, vector.size());
            qw.b();
            return s1;
        }
    }

    private static boolean g(String s1)
    {
        try
        {
            Class.forName(s1).newInstance();
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return false;
        }
        return true;
    }

    private static String[] h(String s1)
    {
        if (s1 == null || s1.length() == 0)
        {
            return null;
        }
        qw.b();
        Vector vector = new Vector();
        s1 = si.a(s1, ",");
        int i1 = 0;
        while (i1 < s1.length) 
        {
            try
            {
                Class.forName(qw.a(s1[i1])).newInstance();
            }
            catch (Exception exception)
            {
                vector.addElement(s1[i1]);
            }
            i1++;
        }
        if (vector.size() == 0)
        {
            return null;
        } else
        {
            s1 = new String[vector.size()];
            System.arraycopy(((Object) (vector.toArray())), 0, s1, 0, vector.size());
            qw.b();
            return s1;
        }
    }

    public final qa a(qa qa1)
    {
_L2:
        int j1;
        do
        {
label0:
            {
                qa1.h();
                T.b(qa1.b, qa1.c, ah);
                qa1.c = qa1.c + ah;
                int i1 = qa1.b[0] << 24 & 0xff000000 | qa1.b[1] << 16 & 0xff0000 | qa1.b[2] << 8 & 0xff00 | qa1.b[3] & 0xff;
                if (i1 < 5 || i1 > 0x40000)
                {
                    a(qa1, L, 0x40000);
                }
                i1 = (i1 + 4) - ah;
                if (qa1.c + i1 > qa1.b.length)
                {
                    byte abyte0[] = new byte[qa1.c + i1];
                    System.arraycopy(qa1.b, 0, abyte0, 0, qa1.c);
                    qa1.b = abyte0;
                }
                if (i1 % ah != 0)
                {
                    qw.b();
                    a(qa1, L, 0x40000 - ah);
                }
                if (i1 > 0)
                {
                    T.b(qa1.b, qa1.c, i1);
                    qa1.c = qa1.c + i1;
                }
                if (N == null)
                {
                    break label0;
                }
                T.b(Q, 0, Q.length);
                if (Arrays.equals(P, Q))
                {
                    break label0;
                }
                if (i1 > 0x40000)
                {
                    throw new IOException("MAC Error");
                }
                a(qa1, L, 0x40000 - i1);
            }
        } while (true);
_L1:
        System.err.println("fail in inflater");
_L3:
        qa1.d = 0;
        return qa1;
        J = J + 1;
        if (S != null)
        {
            byte byte0 = qa1.b[4];
            v[0] = qa1.c - 5 - byte0;
            byte abyte1[] = S.b();
            if (abyte1 == null)
            {
                break MISSING_BLOCK_LABEL_463;
            }
            qa1.b = abyte1;
            qa1.c = v[0] + 5;
        }
        j1 = qa1.b[5] & 0xff;
        if (j1 == 1)
        {
            qa1.d = 0;
            qa1.b();
            qa1.d();
            j1 = qa1.b();
            byte abyte2[] = qa1.g();
            qa1 = qa1.g();
            throw new qy((new StringBuilder("SSH_MSG_DISCONNECT: ")).append(j1).append(" ").append(si.a(abyte2)).append(" ").append(si.a(qa1)).toString());
        }
        if (j1 != 2)
        {
            if (j1 == 3)
            {
                qa1.d = 0;
                qa1.b();
                qa1.d();
                qa1.b();
                qw.b();
            } else
            if (j1 == 4)
            {
                qa1.d = 0;
                qa1.b();
                qa1.d();
            } else
            {
label1:
                {
                    if (j1 != 93)
                    {
                        break label1;
                    }
                    qa1.d = 0;
                    qa1.b();
                    qa1.d();
                    qb qb1 = qb.a(qa1.b(), this);
                    if (qb1 != null)
                    {
                        qb1.b(qa1.c());
                    }
                }
            }
        }
        if (true) goto _L2; else goto _L1
        if (j1 == 52)
        {
            W = true;
            if (S == null && R == null)
            {
                d(a[6]);
                e(a[7]);
            }
        }
          goto _L3
    }

    public final qb a(String s1)
    {
        if (!b)
        {
            throw new qy("session is down");
        }
        qn qn1;
        s1 = qb.a(s1);
        s1.t = this;
        s1.a();
        if (!(s1 instanceof qg))
        {
            break MISSING_BLOCK_LABEL_58;
        }
        qn1 = u.c;
        if (qn1 != null)
        {
            try
            {
                qn1.a();
            }
            // Misplaced declaration of an exception variable
            catch (String s1)
            {
                return null;
            }
        }
        return s1;
    }

    public final void a()
    {
        Object obj1;
        int i1;
        int j1;
        boolean flag;
        int j2;
        flag = false;
        j2 = V;
        if (b)
        {
            throw new qy("session is already connected");
        }
        T = new qs();
        int k1;
        int i2;
        if (g == null)
        {
            try
            {
                g = (ro)(ro)Class.forName(b("random")).newInstance();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new qy(((Exception) (obj)).toString(), ((Throwable) (obj)));
            }
        }
        rl.a(g);
        qw.b();
        if (aa != null) goto _L2; else goto _L1
_L1:
        if (j != null) goto _L4; else goto _L3
_L3:
        U = si.a(p, r, j2);
        obj1 = U.getInputStream();
        obj = U.getOutputStream();
_L11:
        U.setTcpNoDelay(true);
        T.a = ((InputStream) (obj1));
        T.b = ((OutputStream) (obj));
_L12:
        if (j2 <= 0)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        if (U != null)
        {
            U.setSoTimeout(j2);
        }
        b = true;
        qw.b();
        obj1 = u;
        synchronized (((qw) (obj1)).b)
        {
            ((qw) (obj1)).b.addElement(this);
        }
        obj = new byte[z.length + 1];
        System.arraycopy(z, 0, obj, 0, z.length);
        obj[obj.length - 1] = 10;
        T.a(((byte []) (obj)), 0, obj.length);
          goto _L5
_L7:
        i2 = j1;
        j1 = i1;
        if (i1 >= h.b.length)
        {
            break MISSING_BLOCK_LABEL_334;
        }
        k1 = T.a.read();
        i2 = k1;
        j1 = i1;
        if (k1 < 0)
        {
            break MISSING_BLOCK_LABEL_334;
        }
        h.b[i1] = (byte)k1;
        i2 = i1 + 1;
        j1 = k1;
        i1 = i2;
        if (k1 != 10) goto _L7; else goto _L6
_L6:
        j1 = i2;
        i2 = k1;
        if (i2 >= 0) goto _L9; else goto _L8
_L8:
        try
        {
            throw new qy("connection is closed by foreign host");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally
        {
            si.b(t);
        }
        ag = false;
        Object obj2;
        int l1;
        String as[];
        boolean flag1;
        boolean flag2;
        try
        {
            if (b)
            {
                obj1 = ((Exception) (obj)).toString();
                i.a();
                h.c(((String) (obj1)).length() + 13 + 2 + 84);
                h.a((byte)1);
                h.a(3);
                h.b(si.a(((String) (obj1))));
                h.b(si.a("en"));
                a(i);
            }
        }
        catch (Exception exception4) { }
        try
        {
            d();
        }
        catch (Exception exception3) { }
        b = false;
        if (obj instanceof RuntimeException)
        {
            throw (RuntimeException)obj;
        }
        if (false)
        {
            t = null;
            throw obj;
        }
          goto _L10
_L4:
        U = j.a();
        obj1 = j.b();
        obj = j.c();
          goto _L11
_L2:
        synchronized (aa)
        {
            T.a = aa.a();
            T.b = aa.b();
            U = aa.c();
        }
          goto _L12
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        exception2;
        obj;
        JVM INSTR monitorexit ;
        throw exception2;
_L9:
        i1 = j1;
        if (h.b[j1 - 1] != 10)
        {
            break MISSING_BLOCK_LABEL_658;
        }
        j1--;
        i1 = j1;
        if (j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_658;
        }
        i1 = j1;
        if (h.b[j1 - 1] == 13)
        {
            i1 = j1 - 1;
        }
        if (i1 <= 3) goto _L5; else goto _L13
_L13:
        if (i1 != h.b.length && (h.b[0] != 83 || h.b[1] != 83 || h.b[2] != 72 || h.b[3] != 45)) goto _L5; else goto _L14
_L14:
        if (i1 == h.b.length || i1 < 7)
        {
            break MISSING_BLOCK_LABEL_782;
        }
        if (h.b[4] != 49 || h.b[6] == 57)
        {
            break MISSING_BLOCK_LABEL_793;
        }
        throw new qy("invalid server's version string");
        y = new byte[i1];
        System.arraycopy(h.b, 0, y, 0, i1);
        qw.b();
        b();
        h = a(h);
        if (h.b[5] != 20)
        {
            ag = false;
            throw new qy((new StringBuilder("invalid protocol: ")).append(h.b[5]).toString());
        }
        qw.b();
        obj = b(h);
_L20:
        h = a(h);
        if (((ra) (obj)).b() != h.b[5]) goto _L16; else goto _L15
_L15:
        af = System.currentTimeMillis();
        flag1 = ((ra) (obj)).a();
        if (flag1) goto _L18; else goto _L17
_L17:
        ag = false;
        throw new qy((new StringBuilder("verify: ")).append(flag1).toString());
_L16:
        ag = false;
        throw new qy((new StringBuilder("invalid protocol(kex): ")).append(h.b[5]).toString());
_L18:
        i1 = ((ra) (obj)).b();
        if (i1 != 0) goto _L20; else goto _L19
_L19:
        a(p, r, ((ra) (obj)));
        c();
        h = a(h);
        if (h.b[5] != 21) goto _L22; else goto _L21
_L21:
        qw.b();
        a(((ra) (obj)));
        obj = b("MaxAuthTries");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_1102;
        }
        n = Integer.parseInt(((String) (obj)));
        exception2 = (sf)(sf)Class.forName(b("userauth.none")).newInstance();
        flag1 = exception2.a(this);
        obj = b("PreferredAuthentications");
        as = si.a(((String) (obj)), ",");
        if (flag1) goto _L24; else goto _L23
_L23:
        exception2 = ((sg)exception2).e;
        if (exception2 == null)
        {
            break MISSING_BLOCK_LABEL_1168;
        }
        obj = exception2.toLowerCase();
_L43:
        exception2 = si.a(((String) (obj)), ",");
        j1 = 0;
        i1 = 0;
_L36:
        if (flag1 || as == null) goto _L26; else goto _L25
_L25:
        if (i1 >= as.length) goto _L26; else goto _L27
_L27:
        l1 = i1 + 1;
        obj2 = as[i1];
        i1 = 0;
_L44:
        if (i1 >= exception2.length) goto _L29; else goto _L28
_L28:
        if (!exception2[i1].equals(obj2)) goto _L31; else goto _L30
_L30:
        i1 = 1;
_L42:
        if (i1 == 0) goto _L33; else goto _L32
_L32:
        qw.b();
        if (b((new StringBuilder("userauth.")).append(((String) (obj2))).toString()) == null) goto _L35; else goto _L34
_L34:
        obj2 = (sf)(sf)Class.forName(b((new StringBuilder("userauth.")).append(((String) (obj2))).toString())).newInstance();
_L45:
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_1842;
        }
        flag2 = ((sf) (obj2)).a(this);
        flag1 = flag2;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_1327;
        }
        qw.b();
        j1 = 0;
        i1 = l1;
          goto _L36
        obj;
        ag = false;
        throw obj;
_L22:
        ag = false;
        throw new qy((new StringBuilder("invalid protocol(newkyes): ")).append(h.b[5]).toString());
        obj;
        throw new qy((new StringBuilder("MaxAuthTries: ")).append(b("MaxAuthTries")).toString(), ((Throwable) (obj)));
        obj;
        throw new qy(((Exception) (obj)).toString(), ((Throwable) (obj)));
        obj2;
        qw.b();
          goto _L35
_L39:
        obj2 = ((qz) (exception2)).a;
        exception2 = si.a(((String) (obj2)), ",");
          goto _L37
        obj;
        throw obj;
        obj;
        throw obj;
_L38:
        qw.b();
        i1 = ((flag) ? 1 : 0);
_L41:
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_1526;
        }
        if (o >= n)
        {
            qw.b();
        }
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_1515;
        }
        throw new qy("Auth cancel");
        throw new qy("Auth fail");
        if (U == null)
        {
            break MISSING_BLOCK_LABEL_1556;
        }
        if (j2 > 0)
        {
            break MISSING_BLOCK_LABEL_1545;
        }
        if (V <= 0)
        {
            break MISSING_BLOCK_LABEL_1556;
        }
        U.setSoTimeout(V);
        W = true;
        obj = Y;
        obj;
        JVM INSTR monitorenter ;
        if (!b)
        {
            break MISSING_BLOCK_LABEL_1680;
        }
        X = new Thread(this);
        X.setName((new StringBuilder("Connect thread ")).append(p).append(" session").toString());
        if (m)
        {
            X.setDaemon(m);
        }
        X.start();
        if (b("ClearAllForwardings").equals("yes"))
        {
            break MISSING_BLOCK_LABEL_1680;
        }
        exception2 = u.c;
        if (exception2 == null)
        {
            break MISSING_BLOCK_LABEL_1680;
        }
        exception2.a();
        obj;
        JVM INSTR monitorexit ;
        si.b(t);
        t = null;
        return;
        exception2;
        obj;
        JVM INSTR monitorexit ;
        throw exception2;
_L10:
        if (obj instanceof qy)
        {
            throw (qy)obj;
        } else
        {
            throw new qy((new StringBuilder("Session.connect: ")).append(obj).toString());
        }
        obj;
          goto _L38
        exception4;
          goto _L39
        obj2;
          goto _L40
_L26:
        i1 = j1;
          goto _L41
_L33:
        i1 = l1;
          goto _L36
_L29:
        i1 = 0;
          goto _L42
_L24:
        obj = null;
          goto _L43
_L5:
        j1 = 0;
        i1 = 0;
          goto _L7
_L31:
        i1++;
          goto _L44
_L35:
        obj2 = null;
          goto _L45
        qx1;
_L40:
        j1 = 1;
        i1 = l1;
          goto _L36
        exception4;
          goto _L39
_L37:
        qx qx1;
        if (!((String) (obj)).equals(obj2))
        {
            i1 = 0;
        } else
        {
            i1 = l1;
        }
        obj = qx1;
        j1 = 0;
          goto _L36
        Exception exception;
        exception;
          goto _L38
        i1 = l1;
          goto _L36
    }

    public final void a(rl rl1)
    {
        long l1 = V;
        do
        {
            if (!ag)
            {
                break;
            }
            if (l1 > 0L && System.currentTimeMillis() - af > l1)
            {
                throw new qy("timeout in wating for rekeying process.");
            }
            byte byte0 = rl1.a.b[5];
            if (byte0 == 20 || byte0 == 21 || byte0 == 30 || byte0 == 31 || byte0 == 31 || byte0 == 32 || byte0 == 33 || byte0 == 34 || byte0 == 1)
            {
                break;
            }
            try
            {
                Thread.sleep(10L);
            }
            catch (InterruptedException interruptedexception) { }
        } while (true);
        b(rl1);
    }

    final void a(rl rl1, qb qb1, int i1)
    {
        int j1;
        long l3;
        l3 = V;
        j1 = i1;
_L14:
        while (ag) 
        {
            if (l3 > 0L && System.currentTimeMillis() - af > l3)
            {
                throw new qy("timeout in wating for rekeying process.");
            }
            try
            {
                Thread.sleep(10L);
            }
            catch (InterruptedException interruptedexception) { }
        }
        qb1;
        JVM INSTR monitorenter ;
        long l2 = qb1.h;
        if (l2 >= (long)j1)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        qb1.u = qb1.u + 1;
        qb1.wait(100L);
        qb1.u = qb1.u - 1;
_L1:
        if (!ag)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        qb1;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        rl1;
        qb1;
        JVM INSTR monitorexit ;
        throw rl1;
        InterruptedException interruptedexception1;
        interruptedexception1;
        qb1.u = qb1.u - 1;
          goto _L1
        rl1;
        qb1.u = qb1.u - 1;
        throw rl1;
        if (qb1.h < (long)j1) goto _L3; else goto _L2
_L2:
        qb1.h = qb1.h - (long)j1;
        qb1;
        JVM INSTR monitorexit ;
_L12:
        b(rl1);
_L9:
        return;
_L3:
        qb1;
        JVM INSTR monitorexit ;
        byte byte0;
        int l1;
        int i2;
        int j2;
        if (qb1.n || !qb1.g())
        {
            throw new IOException("channel is broken");
        }
        i2 = 0;
        l1 = 0;
        j2 = 0;
        byte0 = 0;
        i1 = -1;
        qb1;
        JVM INSTR monitorenter ;
        int k1 = j1;
        if (qb1.h <= 0L) goto _L5; else goto _L4
_L4:
        l2 = qb1.h;
        if (l2 > (long)j1)
        {
            l2 = j1;
        }
        i1 = j2;
        if (l2 == (long)j1) goto _L7; else goto _L6
_L6:
        j2 = (int)l2;
        if (M != null)
        {
            i1 = ai;
            break MISSING_BLOCK_LABEL_288;
        }
        break MISSING_BLOCK_LABEL_633;
        k2 = j2 + 5 + 9;
        i2 = -k2 & i1 - 1;
        l1 = i2;
        if (i2 < i1)
        {
            l1 = i2 + i1;
        }
        i1 = l1 + k2 + k1 + 32;
        if (rl1.a.b.length < (rl1.a.c + i1) - 5 - 9 - j2)
        {
            abyte0 = new byte[(rl1.a.c + i1) - 5 - 9 - j2];
            System.arraycopy(rl1.a.b, 0, abyte0, 0, rl1.a.b.length);
            rl1.a.b = abyte0;
        }
        System.arraycopy(rl1.a.b, j2 + 5 + 9, rl1.a.b, i1, rl1.a.c - 5 - 9 - j2);
        rl1.a.c = 10;
        rl1.a.a(j2);
        rl1.a.c = j2 + 5 + 9;
_L7:
        byte0 = rl1.a.b[5];
        j2 = qb1.c;
        k1 = (int)((long)j1 - l2);
        qb1.h = qb1.h - l2;
        i2 = 1;
        l1 = i1;
        i1 = j2;
_L5:
        qb1;
        JVM INSTR monitorexit ;
        if (!i2)
        {
            break MISSING_BLOCK_LABEL_610;
        }
        b(rl1);
        if (k1 == 0) goto _L9; else goto _L8
_L8:
        System.arraycopy(rl1.a.b, l1, rl1.a.b, 14, k1);
        rl1.a.b[5] = byte0;
        rl1.a.c = 6;
        rl1.a.a(i1);
        rl1.a.a(k1);
        rl1.a.c = k1 + 5 + 9;
        qb1;
        JVM INSTR monitorenter ;
        if (!ag)
        {
            break MISSING_BLOCK_LABEL_650;
        }
        qb1;
        JVM INSTR monitorexit ;
        j1 = k1;
        continue; /* Loop/switch isn't completed */
        rl1;
        qb1;
        JVM INSTR monitorexit ;
        throw rl1;
        i1 = 8;
        if (O != null)
        {
            k1 = O.a();
            break MISSING_BLOCK_LABEL_690;
        }
        k1 = 0;
        break MISSING_BLOCK_LABEL_690;
        rl1;
        qb1;
        JVM INSTR monitorexit ;
        throw rl1;
        if (qb1.h < (long)k1) goto _L11; else goto _L10
_L10:
        qb1.h = qb1.h - (long)k1;
        qb1;
        JVM INSTR monitorexit ;
          goto _L12
_L11:
        qb1;
        JVM INSTR monitorexit ;
        j1 = k1;
        if (true) goto _L14; else goto _L13
_L13:
    }

    public final String b(String s1)
    {
        if (Z != null)
        {
            Object obj = Z.get(s1);
            if (obj instanceof String)
            {
                return (String)obj;
            }
        }
        s1 = qw.a(s1);
        if (s1 instanceof String)
        {
            return (String)s1;
        } else
        {
            return null;
        }
    }

    public final void run()
    {
        Object obj;
        ra ra1;
        rl rl1;
        int ai1[];
        int ai2[];
        int i1;
        x = this;
        obj = new qa();
        rl1 = new rl(((qa) (obj)));
        ai1 = new int[1];
        ai2 = new int[1];
        ra1 = null;
        i1 = 0;
_L45:
        if (!b) goto _L2; else goto _L1
_L1:
        Object obj1 = x;
        if (obj1 == null) goto _L2; else goto _L3
_L3:
        obj1 = a(((qa) (obj)));
        int j1 = ((qa) (obj1)).b[5] & 0xff;
        if (ra1 == null) goto _L5; else goto _L4
_L4:
        if (ra1.b() != j1) goto _L5; else goto _L6
_L6:
        boolean flag;
        af = System.currentTimeMillis();
        flag = ra1.a();
        if (flag) goto _L8; else goto _L7
_L7:
        try
        {
            throw new qy((new StringBuilder("verify: ")).append(flag).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ag = false;
        }
        qw.b();
_L2:
        byte byte0;
        Object obj2;
        byte abyte0[];
        Exception exception;
        qs qs1;
        long l1;
        try
        {
            d();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        b = false;
        return;
        obj1;
        if (ag || i1 >= ad)
        {
            break MISSING_BLOCK_LABEL_226;
        }
        obj1 = new qa();
        obj2 = new rl(((qa) (obj1)));
        ((rl) (obj2)).a();
        ((qa) (obj1)).a((byte)80);
        ((qa) (obj1)).b(ak);
        ((qa) (obj1)).a((byte)1);
        a(((rl) (obj2)));
        i1++;
        continue; /* Loop/switch isn't completed */
        if (ag && i1 < ad)
        {
            i1++;
            continue; /* Loop/switch isn't completed */
        }
        throw obj1;
_L28:
        throw new IOException((new StringBuilder("Unknown SSH message type ")).append(j1).toString());
_L29:
        ra1 = b(((qa) (obj1)));
        obj = obj1;
        i1 = 0;
        continue; /* Loop/switch isn't completed */
_L30:
        c();
        a(ra1);
        i1 = 0;
        ra1 = null;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L37:
        ((qa) (obj1)).b();
        ((qa) (obj1)).e();
        ((qa) (obj1)).e();
        obj = qb.a(((qa) (obj1)).b(), this);
        abyte0 = ((qa) (obj1)).a(ai1, ai2);
        if (obj == null) goto _L10; else goto _L9
_L9:
        i1 = ai2[0];
        if (i1 == 0) goto _L10; else goto _L11
_L11:
        try
        {
            ((qb) (obj)).a(abyte0, ai1[0], ai2[0]);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            try
            {
                ((qb) (obj)).f();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                i1 = 0;
                obj = obj1;
                continue; /* Loop/switch isn't completed */
            }
            i1 = 0;
            obj = obj1;
            continue; /* Loop/switch isn't completed */
        }
        i1 = ai2[0];
        obj.f = ((qb) (obj)).f - i1;
        if (((qb) (obj)).f >= ((qb) (obj)).e / 2) goto _L10; else goto _L12
_L12:
        rl1.a();
        ((qa) (obj1)).a((byte)93);
        ((qa) (obj1)).a(((qb) (obj)).c);
        ((qa) (obj1)).a(((qb) (obj)).e - ((qb) (obj)).f);
        obj;
        JVM INSTR monitorenter ;
        if (!((qb) (obj)).n)
        {
            a(rl1);
        }
        obj;
        JVM INSTR monitorexit ;
        obj.f = ((qb) (obj)).e;
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
_L38:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        obj = qb.a(((qa) (obj1)).b(), this);
        ((qa) (obj1)).b();
        exception = ((qa) (obj1)).a(ai1, ai2);
        if (obj == null || ai2[0] == 0) goto _L10; else goto _L13
_L13:
        i1 = ai1[0];
        j1 = ai2[0];
        qs1 = ((qb) (obj)).j;
        qs1.c.write(exception, i1, j1);
        qs1.c.flush();
_L27:
        i1 = ai2[0];
        obj.f = ((qb) (obj)).f - i1;
        if (((qb) (obj)).f >= ((qb) (obj)).e / 2) goto _L10; else goto _L14
_L14:
        rl1.a();
        ((qa) (obj1)).a((byte)93);
        ((qa) (obj1)).a(((qb) (obj)).c);
        ((qa) (obj1)).a(((qb) (obj)).e - ((qb) (obj)).f);
        obj;
        JVM INSTR monitorenter ;
        if (!((qb) (obj)).n)
        {
            a(rl1);
        }
        obj;
        JVM INSTR monitorexit ;
        obj.f = ((qb) (obj)).e;
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
_L36:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        obj = qb.a(((qa) (obj1)).b(), this);
        if (obj == null) goto _L10; else goto _L15
_L15:
        ((qb) (obj)).b(((qa) (obj1)).c());
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L39:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        obj = qb.a(((qa) (obj1)).b(), this);
        if (obj == null) goto _L10; else goto _L16
_L16:
        ((qb) (obj)).d();
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L40:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        obj = qb.a(((qa) (obj1)).b(), this);
        if (obj == null) goto _L10; else goto _L17
_L17:
        ((qb) (obj)).f();
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L34:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        obj = qb.a(((qa) (obj1)).b(), this);
        i1 = ((qa) (obj1)).b();
        l1 = ((qa) (obj1)).c();
        j1 = ((qa) (obj1)).b();
        if (obj == null) goto _L10; else goto _L18
_L18:
        ((qb) (obj)).a(l1);
        obj.i = j1;
        obj.p = true;
        ((qb) (obj)).a(i1);
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L35:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        obj = qb.a(((qa) (obj1)).b(), this);
        if (obj == null) goto _L10; else goto _L19
_L19:
        obj.q = ((qa) (obj1)).b();
        obj.n = true;
        obj.m = true;
        ((qb) (obj)).a(0);
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L41:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        j1 = ((qa) (obj1)).b();
        obj = ((qa) (obj1)).g();
        NullPointerException nullpointerexception;
        if (((qa) (obj1)).e() != 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        exception = qb.a(j1, this);
        if (exception == null) goto _L10; else goto _L20
_L20:
        byte0 = 100;
        if (!si.a(((byte []) (obj))).equals("exit-status"))
        {
            break MISSING_BLOCK_LABEL_993;
        }
        exception.q = ((qa) (obj1)).b();
        byte0 = 99;
        if (i1 == 0) goto _L22; else goto _L21
_L21:
        rl1.a();
        ((qa) (obj1)).a(byte0);
        ((qa) (obj1)).a(((qb) (exception)).c);
        a(rl1);
          goto _L22
_L33:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        obj = si.a(((qa) (obj1)).g());
        if ("forwarded-tcpip".equals(obj) || "x11".equals(obj) && c || "auth-agent@openssh.com".equals(obj) && d)
        {
            break MISSING_BLOCK_LABEL_1140;
        }
        rl1.a();
        ((qa) (obj1)).a((byte)92);
        ((qa) (obj1)).a(((qa) (obj1)).b());
        ((qa) (obj1)).a(1);
        ((qa) (obj1)).b(si.a);
        ((qa) (obj1)).b(si.a);
        a(rl1);
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
        exception = qb.a(((String) (obj)));
        exception.t = this;
        exception.a(((qa) (obj1)));
        exception.a();
        exception = new Thread(exception);
        exception.setName((new StringBuilder("Channel ")).append(((String) (obj))).append(" ").append(p).toString());
        if (m)
        {
            exception.setDaemon(m);
        }
        exception.start();
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L42:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        obj = qb.a(((qa) (obj1)).b(), this);
        if (obj == null) goto _L10; else goto _L23
_L23:
        obj.r = 1;
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L43:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        obj = qb.a(((qa) (obj1)).b(), this);
        if (obj == null) goto _L10; else goto _L24
_L24:
        obj.r = 0;
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L31:
        ((qa) (obj1)).b();
        ((qa) (obj1)).d();
        ((qa) (obj1)).g();
        if (((qa) (obj1)).e() != 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 == 0) goto _L10; else goto _L25
_L25:
        rl1.a();
        ((qa) (obj1)).a((byte)82);
        a(rl1);
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L32:
        obj = aj.a;
        if (obj == null) goto _L10; else goto _L26
_L26:
        exception = aj;
        if (j1 == 81)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        exception.b = i1;
        if (j1 != 81)
        {
            break MISSING_BLOCK_LABEL_1438;
        }
        if (aj.c == 0)
        {
            ((qa) (obj1)).b();
            ((qa) (obj1)).d();
            aj.c = ((qa) (obj1)).b();
        }
        ((Thread) (obj)).interrupt();
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L10:
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
        nullpointerexception;
          goto _L27
_L8:
        i1 = 0;
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L5:
        j1;
        JVM INSTR lookupswitch 16: default 1624
    //                   20: 279
    //                   21: 294
    //                   80: 1310
    //                   81: 1365
    //                   82: 1365
    //                   90: 1026
    //                   91: 795
    //                   92: 867
    //                   93: 686
    //                   94: 315
    //                   95: 501
    //                   96: 725
    //                   97: 760
    //                   98: 921
    //                   99: 1238
    //                   100: 1274;
           goto _L28 _L29 _L30 _L31 _L32 _L32 _L33 _L34 _L35 _L36 _L37 _L38 _L39 _L40 _L41 _L42 _L43
_L22:
        i1 = 0;
        obj = obj1;
        if (true) goto _L45; else goto _L44
_L44:
    }

}
