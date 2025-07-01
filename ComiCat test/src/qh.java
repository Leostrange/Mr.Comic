// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PipedOutputStream;
import java.util.Hashtable;

public final class qh extends qg
{
    final class a
    {

        int a;
        int b;
        int c;
        final qh d;

        a()
        {
            d = qh.this;
            super();
        }
    }

    final class b
    {

        a a[];
        int b;
        int c;
        final qh d;

        b()
        {
            d = qh.this;
            super();
            a = null;
            a = new a[16];
            for (int i = 0; i < a.length; i++)
            {
                a[i] = new a(this);
            }

            c = 0;
            b = 0;
        }
    }

    final class b.a
    {

        final b a;

        b.a(b b1)
        {
            a = b1;
            super();
        }
    }


    private static final String U;
    private static final char V;
    private static boolean W;
    private int G;
    private int H[];
    private qa I;
    private rl J;
    private qa K;
    private rl L;
    private int M;
    private int N;
    private String O;
    private Hashtable P;
    private InputStream Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private String X;
    private String Y;
    private boolean Z;
    private b aa;
    private boolean v;

    public qh()
    {
        v = false;
        G = 1;
        H = new int[1];
        M = 3;
        N = 3;
        O = String.valueOf(M);
        P = null;
        Q = null;
        R = false;
        S = false;
        T = false;
        Y = "UTF-8";
        Z = true;
        aa = new b();
        super.e = 0x200000;
        super.f = 0x200000;
        super.g = 32768;
    }

    private int b(byte abyte0[], int i, int j)
    {
        int k;
        for (; j > 0; j -= k)
        {
            k = Q.read(abyte0, i, j);
            if (k <= 0)
            {
                throw new IOException("inputstream is closed");
            }
            i += k;
        }

        return i + 0;
    }

    final void a()
    {
    }

    public final void b()
    {
        Object obj1;
        qa qa1;
        int i;
        try
        {
            Object obj = new PipedOutputStream();
            this.j.b = ((java.io.OutputStream) (obj));
            obj = new qb.a(this, ((PipedOutputStream) (obj)), this.i);
            this.j.a = ((InputStream) (obj));
            Q = this.j.a;
            if (Q == null)
            {
                throw new qy("channel is down");
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            if (obj1 instanceof qy)
            {
                throw (qy)obj1;
            } else
            {
                throw new qy(((Exception) (obj1)).toString(), ((Throwable) (obj1)));
            }
        }
        (new ru()).a(h(), this);
        I = new qa(g);
        J = new rl(I);
        K = new qa(this.i);
        L = new rl(K);
        J.a();
        obj1 = I;
        ((qa) (obj1)).a((byte)94);
        ((qa) (obj1)).a(c);
        ((qa) (obj1)).a(9);
        ((qa) (obj1)).a(5);
        ((qa) (obj1)).a((byte)1);
        I.a(3);
        h().a(J, this, 9);
        obj1 = new a();
        qa1 = I;
        qa1.d = 0;
        b(qa1.b, 0, 9);
        obj1.a = qa1.b() - 5;
        obj1.b = qa1.e() & 0xff;
        obj1.c = qa1.b();
        i = ((a) (obj1)).a;
        if (i <= 0x40000)
        {
            break MISSING_BLOCK_LABEL_314;
        }
        throw new rz((new StringBuilder("Received message is too long: ")).append(i).toString());
        N = ((a) (obj1)).c;
        P = new Hashtable();
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_417;
        }
        obj1 = I;
        ((qa) (obj1)).h();
        b(((qa) (obj1)).b, 0, i);
        ((qa) (obj1)).b(i);
_L1:
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_417;
        }
        obj1 = I.g();
        int j = obj1.length;
        byte abyte0[] = I.g();
        i = i - (j + 4) - (abyte0.length + 4);
        P.put(si.a(((byte []) (obj1))), si.a(abyte0));
          goto _L1
        if (P.get("posix-rename@openssh.com") != null && P.get("posix-rename@openssh.com").equals("1"))
        {
            R = true;
        }
        if (P.get("statvfs@openssh.com") != null && P.get("statvfs@openssh.com").equals("2"))
        {
            S = true;
        }
        if (P.get("hardlink@openssh.com") != null && P.get("hardlink@openssh.com").equals("1"))
        {
            T = true;
        }
        X = (new File(".")).getCanonicalPath();
        return;
    }

    public final void f()
    {
        super.f();
    }

    public final volatile void run()
    {
        super.run();
    }

    static 
    {
        U = File.separator;
        V = File.separatorChar;
        boolean flag;
        if ((byte)File.separatorChar == 92)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        W = flag;
    }
}
