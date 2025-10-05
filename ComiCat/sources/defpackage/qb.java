package defpackage;

import com.box.androidsdk.content.auth.OAuthActivity;
import java.io.InputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.Vector;

/* renamed from: qb  reason: default package */
/* compiled from: Channel */
public abstract class qb implements Runnable {
    static int a = 0;
    private static Vector v = new Vector();
    int b;
    volatile int c = -1;
    protected byte[] d = si.a("foo");
    volatile int e = 1048576;
    volatile int f = this.e;
    volatile int g = 16384;
    volatile long h = 0;
    volatile int i = 0;
    qs j = null;
    Thread k = null;
    volatile boolean l = false;
    volatile boolean m = false;
    volatile boolean n = false;
    volatile boolean o = false;
    volatile boolean p = false;
    volatile int q = -1;
    volatile int r = 0;
    volatile int s = 0;
    ry t;
    int u = 0;

    /* renamed from: qb$a */
    /* compiled from: Channel */
    class a extends PipedInputStream {
        private int b;
        private int c;

        private a() {
            this.b = 1024;
            this.c = this.b;
            this.buffer = new byte[32768];
            this.b = 32768;
            this.c = 32768;
        }

        a(qb qbVar, int i) {
            this();
            this.c = i;
        }

        a(PipedOutputStream pipedOutputStream, int i) {
            super(pipedOutputStream);
            this.b = 1024;
            this.c = this.b;
            this.buffer = new byte[i];
            this.b = i;
        }

        /* access modifiers changed from: package-private */
        public final synchronized void a(int i) {
            int i2 = 0;
            synchronized (this) {
                if (this.out < this.in) {
                    i2 = this.buffer.length - this.in;
                } else if (this.in < this.out) {
                    i2 = this.in == -1 ? this.buffer.length : this.out - this.in;
                }
                if (i2 < i) {
                    int length = this.buffer.length - i2;
                    int length2 = this.buffer.length;
                    while (length2 - length < i) {
                        length2 *= 2;
                    }
                    if (length2 > this.c) {
                        length2 = this.c;
                    }
                    if (length2 - length >= i) {
                        byte[] bArr = new byte[length2];
                        if (this.out < this.in) {
                            System.arraycopy(this.buffer, 0, bArr, 0, this.buffer.length);
                        } else if (this.in < this.out) {
                            if (this.in != -1) {
                                System.arraycopy(this.buffer, 0, bArr, 0, this.in);
                                System.arraycopy(this.buffer, this.out, bArr, bArr.length - (this.buffer.length - this.out), this.buffer.length - this.out);
                                this.out = bArr.length - (this.buffer.length - this.out);
                            }
                        } else if (this.in == this.out) {
                            System.arraycopy(this.buffer, 0, bArr, 0, this.buffer.length);
                            this.in = this.buffer.length;
                        }
                        this.buffer = bArr;
                    }
                } else if (this.buffer.length == i2 && i2 > this.b) {
                    int i3 = i2 / 2;
                    if (i3 < this.b) {
                        i3 = this.b;
                    }
                    this.buffer = new byte[i3];
                }
            }
        }
    }

    /* renamed from: qb$b */
    /* compiled from: Channel */
    class b extends a {
        PipedOutputStream b;

        b(PipedOutputStream pipedOutputStream) {
            super(pipedOutputStream, 32768);
            this.b = pipedOutputStream;
        }

        public final void close() {
            if (this.b != null) {
                this.b.close();
            }
            this.b = null;
        }
    }

    /* renamed from: qb$c */
    /* compiled from: Channel */
    class c extends PipedOutputStream {
        private a b = null;

        c(PipedInputStream pipedInputStream, boolean z) {
            super(pipedInputStream);
            if (z) {
                this.b = (a) pipedInputStream;
            }
        }

        public final void write(int i) {
            if (this.b != null) {
                this.b.a(1);
            }
            super.write(i);
        }

        public final void write(byte[] bArr, int i, int i2) {
            if (this.b != null) {
                this.b.a(i2);
            }
            super.write(bArr, i, i2);
        }
    }

    qb() {
        synchronized (v) {
            int i2 = a;
            a = i2 + 1;
            this.b = i2;
            v.addElement(this);
        }
    }

    static qb a(int i2, ry ryVar) {
        synchronized (v) {
            for (int i3 = 0; i3 < v.size(); i3++) {
                qb qbVar = (qb) v.elementAt(i3);
                if (qbVar.b == i2 && qbVar.t == ryVar) {
                    return qbVar;
                }
            }
            return null;
        }
    }

    static qb a(String str) {
        if (str.equals(OAuthActivity.EXTRA_SESSION)) {
            return new qg();
        }
        if (str.equals("shell")) {
            return new qi();
        }
        if (str.equals("exec")) {
            return new qe();
        }
        if (str.equals("x11")) {
            return new qk();
        }
        if (str.equals("auth-agent@openssh.com")) {
            return new qc();
        }
        if (str.equals("direct-tcpip")) {
            return new qd();
        }
        if (str.equals("forwarded-tcpip")) {
            return new qf();
        }
        if (str.equals("sftp")) {
            return new qh();
        }
        if (str.equals("subsystem")) {
            return new qj();
        }
        return null;
    }

    static void a(qb qbVar) {
        synchronized (v) {
            v.removeElement(qbVar);
        }
    }

    static void a(ry ryVar) {
        qb[] qbVarArr;
        int i2;
        int i3;
        synchronized (v) {
            qbVarArr = new qb[v.size()];
            int i4 = 0;
            i2 = 0;
            while (i4 < v.size()) {
                try {
                    qb qbVar = (qb) v.elementAt(i4);
                    if (qbVar.t == ryVar) {
                        int i5 = i2 + 1;
                        try {
                            qbVarArr[i2] = qbVar;
                            i3 = i5;
                        } catch (Exception e2) {
                            i3 = i5;
                        }
                    } else {
                        i3 = i2;
                    }
                } catch (Exception e3) {
                    i3 = i2;
                }
                i4++;
                i2 = i3;
            }
        }
        for (int i6 = 0; i6 < i2; i6++) {
            qbVarArr[i6].f();
        }
    }

    /* access modifiers changed from: package-private */
    public void a() {
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(int i2) {
        this.c = i2;
        if (this.u > 0) {
            notifyAll();
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(long j2) {
        this.h = j2;
    }

    /* access modifiers changed from: package-private */
    public void a(qa qaVar) {
        a(qaVar.b());
        a(qaVar.c());
        this.i = qaVar.b();
    }

    /* access modifiers changed from: package-private */
    public void a(byte[] bArr, int i2, int i3) {
        try {
            this.j.a(bArr, i2, i3);
        } catch (NullPointerException e2) {
        }
    }

    public void b() {
    }

    public void b(int i2) {
        this.s = i2;
        try {
            l();
            b();
        } catch (Exception e2) {
            this.o = false;
            f();
            if (e2 instanceof qy) {
                throw ((qy) e2);
            }
            throw new qy(e2.toString(), e2);
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void b(long j2) {
        this.h += j2;
        if (this.u > 0) {
            notifyAll();
        }
    }

    public final InputStream c() {
        int i2;
        try {
            i2 = Integer.parseInt(h().b("max_input_buffer_size"));
        } catch (Exception e2) {
            i2 = 32768;
        }
        a aVar = new a(this, i2);
        boolean z = 32768 < i2;
        qs qsVar = this.j;
        c cVar = new c(aVar, z);
        qsVar.e = false;
        qsVar.b = cVar;
        return aVar;
    }

    /* access modifiers changed from: package-private */
    public void d() {
        this.m = true;
        try {
            this.j.a();
        } catch (NullPointerException e2) {
        }
    }

    /* access modifiers changed from: package-private */
    public final void e() {
        if (!this.l) {
            this.l = true;
            int i2 = this.c;
            if (i2 != -1) {
                try {
                    qa qaVar = new qa(100);
                    rl rlVar = new rl(qaVar);
                    rlVar.a();
                    qaVar.a((byte) 96);
                    qaVar.a(i2);
                    synchronized (this) {
                        if (!this.n) {
                            h().a(rlVar);
                        }
                    }
                } catch (Exception e2) {
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0010, code lost:
        if (r4.n != false) goto L_0x003f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0012, code lost:
        r4.n = true;
        r4.m = true;
        r4.l = true;
        r0 = r4.c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x001d, code lost:
        if (r0 == -1) goto L_0x003f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
        r1 = new defpackage.qa(100);
        r2 = new defpackage.rl(r1);
        r2.a();
        r1.a((byte) 97);
        r1.a(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0036, code lost:
        monitor-enter(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        h().a(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x003e, code lost:
        monitor-exit(r4);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void f() {
        /*
            r4 = this;
            monitor-enter(r4)     // Catch:{ all -> 0x0057 }
            boolean r0 = r4.o     // Catch:{ all -> 0x0054 }
            if (r0 != 0) goto L_0x000a
            monitor-exit(r4)     // Catch:{ all -> 0x0054 }
            a((defpackage.qb) r4)
        L_0x0009:
            return
        L_0x000a:
            r0 = 0
            r4.o = r0     // Catch:{ all -> 0x0054 }
            monitor-exit(r4)     // Catch:{ all -> 0x0054 }
            boolean r0 = r4.n     // Catch:{ all -> 0x0057 }
            if (r0 != 0) goto L_0x003f
            r0 = 1
            r4.n = r0     // Catch:{ all -> 0x0057 }
            r0 = 1
            r4.m = r0     // Catch:{ all -> 0x0057 }
            r4.l = r0     // Catch:{ all -> 0x0057 }
            int r0 = r4.c     // Catch:{ all -> 0x0057 }
            r1 = -1
            if (r0 == r1) goto L_0x003f
            qa r1 = new qa     // Catch:{ Exception -> 0x005f }
            r2 = 100
            r1.<init>((int) r2)     // Catch:{ Exception -> 0x005f }
            rl r2 = new rl     // Catch:{ Exception -> 0x005f }
            r2.<init>(r1)     // Catch:{ Exception -> 0x005f }
            r2.a()     // Catch:{ Exception -> 0x005f }
            r3 = 97
            r1.a((byte) r3)     // Catch:{ Exception -> 0x005f }
            r1.a((int) r0)     // Catch:{ Exception -> 0x005f }
            monitor-enter(r4)     // Catch:{ Exception -> 0x005f }
            ry r0 = r4.h()     // Catch:{ all -> 0x005c }
            r0.a((defpackage.rl) r2)     // Catch:{ all -> 0x005c }
            monitor-exit(r4)     // Catch:{ all -> 0x005c }
        L_0x003f:
            r0 = 1
            r4.l = r0     // Catch:{ all -> 0x0057 }
            r4.m = r0     // Catch:{ all -> 0x0057 }
            r0 = 0
            r4.k = r0     // Catch:{ all -> 0x0057 }
            qs r0 = r4.j     // Catch:{ Exception -> 0x0061 }
            if (r0 == 0) goto L_0x0050
            qs r0 = r4.j     // Catch:{ Exception -> 0x0061 }
            r0.b()     // Catch:{ Exception -> 0x0061 }
        L_0x0050:
            a((defpackage.qb) r4)
            goto L_0x0009
        L_0x0054:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0054 }
            throw r0     // Catch:{ all -> 0x0057 }
        L_0x0057:
            r0 = move-exception
            a((defpackage.qb) r4)
            throw r0
        L_0x005c:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x005c }
            throw r0     // Catch:{ Exception -> 0x005f }
        L_0x005f:
            r0 = move-exception
            goto L_0x003f
        L_0x0061:
            r0 = move-exception
            goto L_0x0050
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qb.f():void");
    }

    public final boolean g() {
        ry ryVar = this.t;
        return ryVar != null && ryVar.b && this.o;
    }

    public final ry h() {
        ry ryVar = this.t;
        if (ryVar != null) {
            return ryVar;
        }
        throw new qy("session is not available");
    }

    /* access modifiers changed from: protected */
    public final void i() {
        qa qaVar = new qa(100);
        rl rlVar = new rl(qaVar);
        rlVar.a();
        qaVar.a((byte) 91);
        qaVar.a(this.c);
        qaVar.a(this.b);
        qaVar.a(this.f);
        qaVar.a(this.g);
        h().a(rlVar);
    }

    /* access modifiers changed from: protected */
    public final void j() {
        try {
            qa qaVar = new qa(100);
            rl rlVar = new rl(qaVar);
            rlVar.a();
            qaVar.a((byte) 92);
            qaVar.a(this.c);
            qaVar.a(1);
            qaVar.b(si.a("open failed"));
            qaVar.b(si.a);
            h().a(rlVar);
        } catch (Exception e2) {
        }
    }

    /* access modifiers changed from: protected */
    public rl k() {
        qa qaVar = new qa(100);
        rl rlVar = new rl(qaVar);
        rlVar.a();
        qaVar.a((byte) 90);
        qaVar.b(this.d);
        qaVar.a(this.b);
        qaVar.a(this.f);
        qaVar.a(this.g);
        return rlVar;
    }

    /* access modifiers changed from: protected */
    public final void l() {
        int i2;
        ry h2 = h();
        if (!h2.b) {
            throw new qy("session is down");
        }
        h2.a(k());
        int i3 = 2000;
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = (long) this.s;
        if (j2 != 0) {
            i3 = 1;
        }
        synchronized (this) {
            while (this.c == -1 && h2.b && i2 > 0) {
                if (j2 <= 0 || System.currentTimeMillis() - currentTimeMillis <= j2) {
                    long j3 = j2 == 0 ? 10 : j2;
                    try {
                        this.u = 1;
                        wait(j3);
                    } catch (InterruptedException e2) {
                    } finally {
                        this.u = 0;
                    }
                    i2--;
                } else {
                    i2 = 0;
                }
            }
        }
        if (!h2.b) {
            throw new qy("session is down");
        } else if (this.c == -1) {
            throw new qy("channel is not opened.");
        } else if (!this.p) {
            throw new qy("channel is not opened.");
        } else {
            this.o = true;
        }
    }

    public void run() {
    }
}
