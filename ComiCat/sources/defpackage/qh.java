package defpackage;

import defpackage.qb;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PipedOutputStream;
import java.util.Hashtable;
import org.apache.http.protocol.HTTP;

/* renamed from: qh  reason: default package */
/* compiled from: ChannelSftp */
public final class qh extends qg {
    private static final String U = File.separator;
    private static final char V = File.separatorChar;
    private static boolean W = (((byte) File.separatorChar) == 92);
    private int G = 1;
    private int[] H = new int[1];
    private qa I;
    private rl J;
    private qa K;
    private rl L;
    private int M = 3;
    private int N = 3;
    private String O = String.valueOf(this.M);
    private Hashtable P = null;
    private InputStream Q = null;
    private boolean R = false;
    private boolean S = false;
    private boolean T = false;
    private String X;
    private String Y = HTTP.UTF_8;
    private boolean Z = true;
    private b aa = new b();
    private boolean v = false;

    /* renamed from: qh$a */
    /* compiled from: ChannelSftp */
    class a {
        int a;
        int b;
        int c;

        a() {
        }
    }

    /* renamed from: qh$b */
    /* compiled from: ChannelSftp */
    class b {
        a[] a;
        int b;
        int c;

        /* renamed from: qh$b$a */
        /* compiled from: ChannelSftp */
        class a {
            a() {
            }
        }

        b() {
            this.a = null;
            this.a = new a[16];
            for (int i = 0; i < this.a.length; i++) {
                this.a[i] = new a();
            }
            this.c = 0;
            this.b = 0;
        }
    }

    public qh() {
        this.e = 2097152;
        this.f = 2097152;
        this.g = 32768;
    }

    private int b(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int read = this.Q.read(bArr, i, i2);
            if (read <= 0) {
                throw new IOException("inputstream is closed");
            }
            i += read;
            i2 -= read;
        }
        return i + 0;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
    }

    public final void b() {
        try {
            PipedOutputStream pipedOutputStream = new PipedOutputStream();
            this.j.b = pipedOutputStream;
            this.j.a = new qb.a(pipedOutputStream, this.i);
            this.Q = this.j.a;
            if (this.Q == null) {
                throw new qy("channel is down");
            }
            new ru().a(h(), this);
            this.I = new qa(this.g);
            this.J = new rl(this.I);
            this.K = new qa(this.i);
            this.L = new rl(this.K);
            this.J.a();
            qa qaVar = this.I;
            qaVar.a((byte) 94);
            qaVar.a(this.c);
            qaVar.a(9);
            qaVar.a(5);
            qaVar.a((byte) 1);
            this.I.a(3);
            h().a(this.J, (qb) this, 9);
            a aVar = new a();
            qa qaVar2 = this.I;
            qaVar2.d = 0;
            b(qaVar2.b, 0, 9);
            aVar.a = qaVar2.b() - 5;
            aVar.b = qaVar2.e() & 255;
            aVar.c = qaVar2.b();
            int i = aVar.a;
            if (i > 262144) {
                throw new rz("Received message is too long: " + i);
            }
            this.N = aVar.c;
            this.P = new Hashtable();
            if (i > 0) {
                qa qaVar3 = this.I;
                qaVar3.h();
                b(qaVar3.b, 0, i);
                qaVar3.b(i);
                while (i > 0) {
                    byte[] g = this.I.g();
                    int length = i - (g.length + 4);
                    byte[] g2 = this.I.g();
                    i = length - (g2.length + 4);
                    this.P.put(si.a(g), si.a(g2));
                }
            }
            if (this.P.get("posix-rename@openssh.com") != null && this.P.get("posix-rename@openssh.com").equals("1")) {
                this.R = true;
            }
            if (this.P.get("statvfs@openssh.com") != null && this.P.get("statvfs@openssh.com").equals("2")) {
                this.S = true;
            }
            if (this.P.get("hardlink@openssh.com") != null && this.P.get("hardlink@openssh.com").equals("1")) {
                this.T = true;
            }
            this.X = new File(".").getCanonicalPath();
        } catch (Exception e) {
            if (e instanceof qy) {
                throw ((qy) e);
            }
            throw new qy(e.toString(), e);
        }
    }

    public final void f() {
        super.f();
    }

    public final /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
