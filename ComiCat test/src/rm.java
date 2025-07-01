// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Vector;

final class rm
    implements Runnable
{

    private static Vector g = new Vector();
    private static InetAddress h = null;
    ry a;
    int b;
    String c;
    Runnable d;
    ServerSocket e;
    int f;

    private void a()
    {
        d = null;
        try
        {
            if (e != null)
            {
                e.close();
            }
            e = null;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    static void a(ry ry)
    {
        Vector vector = g;
        vector;
        JVM INSTR monitorenter ;
        rm arm[] = new rm[g.size()];
        int i;
        int j;
        j = 0;
        i = 0;
_L3:
        rm rm1;
        if (j >= g.size())
        {
            break MISSING_BLOCK_LABEL_120;
        }
        rm1 = (rm)(rm)g.elementAt(j);
        if (rm1.a != ry)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        rm1.a();
        arm[i] = rm1;
        i++;
        break MISSING_BLOCK_LABEL_111;
_L1:
        j++;
        for (; j >= i; j = 0)
        {
            break MISSING_BLOCK_LABEL_103;
        }

        ry = arm[j];
        g.removeElement(ry);
          goto _L1
        vector;
        JVM INSTR monitorexit ;
        return;
        ry;
        vector;
        JVM INSTR monitorexit ;
        throw ry;
        j++;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public final void run()
    {
        d = this;
        try
        {
            while (d != null) 
            {
                Socket socket = e.accept();
                socket.setTcpNoDelay(true);
                java.io.InputStream inputstream = socket.getInputStream();
                java.io.OutputStream outputstream = socket.getOutputStream();
                qd qd1 = new qd();
                qd1.a();
                qd1.j.a = inputstream;
                qd1.j.b = outputstream;
                qd1.t = a;
                qd1.v = c;
                qd1.w = b;
                qd1.x = socket.getInetAddress().getHostAddress();
                qd1.y = socket.getPort();
                qd1.b(f);
                int i = qd1.q;
            }
        }
        catch (Exception exception) { }
        a();
    }

    static 
    {
        try
        {
            h = InetAddress.getByName("0.0.0.0");
        }
        catch (UnknownHostException unknownhostexception) { }
    }
}
