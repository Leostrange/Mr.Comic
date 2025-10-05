package defpackage;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Vector;

/* renamed from: rm  reason: default package */
/* compiled from: PortWatcher */
final class rm implements Runnable {
    private static Vector g = new Vector();
    private static InetAddress h;
    ry a;
    int b;
    String c;
    Runnable d;
    ServerSocket e;
    int f;

    static {
        h = null;
        try {
            h = InetAddress.getByName("0.0.0.0");
        } catch (UnknownHostException e2) {
        }
    }

    private void a() {
        this.d = null;
        try {
            if (this.e != null) {
                this.e.close();
            }
            this.e = null;
        } catch (Exception e2) {
        }
    }

    static void a(ry ryVar) {
        int i;
        synchronized (g) {
            rm[] rmVarArr = new rm[g.size()];
            int i2 = 0;
            int i3 = 0;
            while (i2 < g.size()) {
                rm rmVar = (rm) g.elementAt(i2);
                if (rmVar.a == ryVar) {
                    rmVar.a();
                    rmVarArr[i3] = rmVar;
                    i = i3 + 1;
                } else {
                    i = i3;
                }
                i2++;
                i3 = i;
            }
            for (int i4 = 0; i4 < i3; i4++) {
                g.removeElement(rmVarArr[i4]);
            }
        }
    }

    public final void run() {
        this.d = this;
        while (this.d != null) {
            try {
                Socket accept = this.e.accept();
                accept.setTcpNoDelay(true);
                InputStream inputStream = accept.getInputStream();
                OutputStream outputStream = accept.getOutputStream();
                qd qdVar = new qd();
                qdVar.a();
                qdVar.j.a = inputStream;
                qdVar.j.b = outputStream;
                qdVar.t = this.a;
                qdVar.v = this.c;
                qdVar.w = this.b;
                qdVar.x = accept.getInetAddress().getHostAddress();
                qdVar.y = accept.getPort();
                qdVar.b(this.f);
                int i = qdVar.q;
            } catch (Exception e2) {
            }
        }
        a();
    }
}
