package defpackage;

import defpackage.qb;
import java.io.PipedOutputStream;
import java.net.Socket;
import java.util.Vector;

/* renamed from: qf  reason: default package */
/* compiled from: ChannelForwardedTCPIP */
public final class qf extends qb {
    private static Vector v = new Vector();
    private Socket w = null;
    private qo x = null;
    private a y = null;

    /* renamed from: qf$a */
    /* compiled from: ChannelForwardedTCPIP */
    static abstract class a {
        ry a;
        int b;
        int c;
        String d;
        String e;

        a() {
        }
    }

    /* renamed from: qf$b */
    /* compiled from: ChannelForwardedTCPIP */
    static class b extends a {
        b() {
        }
    }

    /* renamed from: qf$c */
    /* compiled from: ChannelForwardedTCPIP */
    static class c extends a {
        int f;
        se g;

        c() {
        }
    }

    qf() {
        this.e = 131072;
        this.f = 131072;
        this.g = 16384;
        this.j = new qs();
        this.o = true;
    }

    private static a a(ry ryVar, String str, int i) {
        a aVar;
        synchronized (v) {
            int i2 = 0;
            while (true) {
                if (i2 >= v.size()) {
                    aVar = null;
                    break;
                }
                aVar = (a) v.elementAt(i2);
                if (aVar.a != ryVar || (!(aVar.b == i || (aVar.b == 0 && aVar.c == i)) || (str != null && !aVar.d.equals(str)))) {
                    i2++;
                }
            }
        }
        return aVar;
    }

    static void b(ry ryVar) {
        int[] iArr;
        int i;
        int i2;
        synchronized (v) {
            iArr = new int[v.size()];
            int i3 = 0;
            i = 0;
            while (i3 < v.size()) {
                a aVar = (a) v.elementAt(i3);
                if (aVar.a == ryVar) {
                    iArr[i] = aVar.b;
                    i2 = i + 1;
                } else {
                    i2 = i;
                }
                i3++;
                i = i2;
            }
        }
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = iArr[i4];
            synchronized (v) {
                a a2 = a(ryVar, "localhost", i5);
                if (a2 == null) {
                    a2 = a(ryVar, (String) null, i5);
                }
                if (a2 != null) {
                    v.removeElement(a2);
                    String str = a2.d;
                    if (str == null) {
                        str = "0.0.0.0";
                    }
                    qa qaVar = new qa(100);
                    rl rlVar = new rl(qaVar);
                    try {
                        rlVar.a();
                        qaVar.a((byte) 80);
                        qaVar.b(si.a("cancel-tcpip-forward"));
                        qaVar.a((byte) 0);
                        qaVar.b(si.a(str));
                        qaVar.a(i5);
                        ryVar.a(rlVar);
                    } catch (Exception e) {
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(qa qaVar) {
        ry ryVar;
        a(qaVar.b());
        a(qaVar.c());
        this.i = qaVar.b();
        byte[] g = qaVar.g();
        int b2 = qaVar.b();
        qaVar.g();
        qaVar.b();
        try {
            ryVar = h();
        } catch (qy e) {
            ryVar = null;
        }
        this.y = a(ryVar, si.a(g), b2);
        if (this.y == null) {
            this.y = a(ryVar, (String) null, b2);
        }
        if (this.y == null) {
            qw.b();
        }
    }

    public final void run() {
        try {
            if (this.y instanceof b) {
                this.x = (qo) Class.forName(((b) this.y).e).newInstance();
                PipedOutputStream pipedOutputStream = new PipedOutputStream();
                qs qsVar = this.j;
                qb.b bVar = new qb.b(pipedOutputStream);
                qsVar.d = false;
                qsVar.a = bVar;
                c();
                new Thread(this.x).start();
            } else {
                c cVar = (c) this.y;
                this.w = cVar.g == null ? si.a(cVar.e, cVar.f, 10000) : cVar.g.a();
                this.w.setTcpNoDelay(true);
                this.j.a = this.w.getInputStream();
                this.j.b = this.w.getOutputStream();
            }
            i();
            this.k = Thread.currentThread();
            qa qaVar = new qa(this.i);
            rl rlVar = new rl(qaVar);
            try {
                ry h = h();
                while (true) {
                    if (this.k == null || this.j == null || this.j.a == null) {
                        break;
                    }
                    int read = this.j.a.read(qaVar.b, 14, (qaVar.b.length - 14) - 84);
                    if (read <= 0) {
                        e();
                        break;
                    }
                    rlVar.a();
                    qaVar.a((byte) 94);
                    qaVar.a(this.c);
                    qaVar.a(read);
                    qaVar.b(read);
                    synchronized (this) {
                        if (!this.n) {
                            h.a(rlVar, (qb) this, read);
                        }
                    }
                }
            } catch (Exception e) {
            }
            f();
        } catch (Exception e2) {
            j();
            this.n = true;
            f();
        }
    }
}
