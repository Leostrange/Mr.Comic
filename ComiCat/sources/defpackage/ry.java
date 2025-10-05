package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: ry  reason: default package */
/* compiled from: Session */
public final class ry implements Runnable {
    private static final byte[] ak = si.a("keepalive@jcraft.com");
    private static final byte[] al = si.a("no-more-sessions@openssh.com");
    static ro g;
    private byte[] A;
    private byte[] B;
    private byte[] C;
    private byte[] D;
    private byte[] E;
    private byte[] F;
    private byte[] G;
    private byte[] H;
    private byte[] I;
    private int J = 0;
    private int K = 0;
    private ql L;
    private ql M;
    private rj N;
    private rj O;
    private byte[] P;
    private byte[] Q;
    private qm R;
    private qm S;
    private qs T;
    private Socket U;
    private int V = 0;
    private boolean W = false;
    private Thread X = null;
    private Object Y = new Object();
    private Hashtable Z = null;
    String[] a = null;
    private rn aa = null;
    private String ab = null;
    private int ac = 0;
    private int ad = 1;
    private qr ae = null;
    private long af = 0;
    private volatile boolean ag = false;
    private int ah = 8;
    private int ai = 8;
    private a aj = new a(this, (byte) 0);
    private qq am = null;
    volatile boolean b = false;
    boolean c = false;
    boolean d = false;
    InputStream e = null;
    OutputStream f = null;
    qa h;
    rl i;
    se j = null;
    sh k;
    qv l = null;
    protected boolean m = false;
    int n = 6;
    int o = 0;
    String p = "127.0.0.1";
    String q = "127.0.0.1";
    int r = 22;
    String s = null;
    public byte[] t = null;
    qw u;
    int[] v = new int[1];
    int[] w = new int[1];
    Runnable x;
    private byte[] y;
    private byte[] z = si.a("SSH-2.0-JSCH-0.1.53");

    /* renamed from: ry$a */
    /* compiled from: Session */
    class a {
        Thread a;
        int b;
        int c;

        private a() {
            this.a = null;
            this.b = -1;
            this.c = 0;
        }

        /* synthetic */ a(ry ryVar, byte b2) {
            this();
        }
    }

    public ry(qw qwVar, String str, String str2, int i2) {
        this.u = qwVar;
        this.h = new qa();
        this.i = new rl(this.h);
        this.s = str;
        this.p = str2;
        this.q = str2;
        this.r = i2;
        qn qnVar = this.u.c;
        if (qnVar != null) {
            qnVar.a();
        }
        if (this.s == null) {
            try {
                this.s = (String) System.getProperties().get("user.name");
            } catch (SecurityException e2) {
            }
        }
        if (this.s == null) {
            throw new qy("username is not given.");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x00f2  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0128  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.lang.String r12, int r13, defpackage.ra r14) {
        /*
            r11 = this;
            r3 = 0
            r4 = 1
            java.lang.String r0 = "StrictHostKeyChecking"
            java.lang.String r5 = r11.b((java.lang.String) r0)
            java.lang.String r0 = r11.ab
            if (r0 == 0) goto L_0x000e
            java.lang.String r12 = r11.ab
        L_0x000e:
            byte[] r6 = r14.g()
            int r0 = r14.q
            if (r0 != r4) goto L_0x0107
            java.lang.String r0 = "DSA"
            r2 = r0
        L_0x0019:
            java.lang.String r7 = r14.c()
            java.lang.String r0 = r11.ab
            if (r0 != 0) goto L_0x003e
            r0 = 22
            if (r13 == r0) goto L_0x003e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "["
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r12)
            java.lang.String r1 = "]:"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.StringBuilder r0 = r0.append(r13)
            java.lang.String r12 = r0.toString()
        L_0x003e:
            qr r0 = r11.ae
            if (r0 != 0) goto L_0x0115
            qw r0 = r11.u
            qr r1 = r0.d
            if (r1 != 0) goto L_0x004f
            rg r1 = new rg
            r1.<init>(r0)
            r0.d = r1
        L_0x004f:
            qr r1 = r0.d
        L_0x0051:
            java.lang.String r0 = "HashKnownHosts"
            java.lang.String r0 = r11.b((java.lang.String) r0)
            java.lang.String r8 = "yes"
            boolean r0 = r0.equals(r8)
            if (r0 == 0) goto L_0x0119
            boolean r0 = r1 instanceof defpackage.rg
            if (r0 == 0) goto L_0x0119
            r0 = r1
            rg r0 = (defpackage.rg) r0
            rg$a r8 = new rg$a
            r8.<init>(r0, r12, r6)
            r8.f()
            r11.am = r8
        L_0x0070:
            monitor-enter(r1)
            int r8 = r1.a((java.lang.String) r12, (byte[]) r6)     // Catch:{ all -> 0x0122 }
            monitor-exit(r1)     // Catch:{ all -> 0x0122 }
            java.lang.String r0 = "ask"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L_0x0086
            java.lang.String r0 = "yes"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0287
        L_0x0086:
            r0 = 2
            if (r8 != r0) goto L_0x0287
            monitor-enter(r1)
            java.lang.String r0 = r1.a()     // Catch:{ all -> 0x0125 }
            monitor-exit(r1)     // Catch:{ all -> 0x0125 }
            if (r0 != 0) goto L_0x0093
            java.lang.String r0 = "known_hosts"
        L_0x0093:
            sh r9 = r11.k
            if (r9 == 0) goto L_0x0284
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r10 = "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "
            r9.<init>(r10)
            java.lang.StringBuilder r9 = r9.append(r2)
            java.lang.String r10 = " host key has just been changed.\nThe fingerprint for the "
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r2)
            java.lang.String r10 = " key sent by the remote host "
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r12)
            java.lang.String r10 = " is\n"
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r7)
            java.lang.String r10 = ".\nPlease contact your system administrator.\nAdd correct host key in "
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r0 = r9.append(r0)
            java.lang.String r9 = " to get rid of this message."
            java.lang.StringBuilder r0 = r0.append(r9)
            java.lang.String r0 = r0.toString()
            java.lang.String r9 = "ask"
            boolean r9 = r5.equals(r9)
            if (r9 == 0) goto L_0x0284
            sh r9 = r11.k
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.StringBuilder r0 = r10.append(r0)
            java.lang.String r10 = "\nDo you want to delete the old key and insert the new key?"
            r0.append(r10)
            boolean r0 = r9.c()
        L_0x00f0:
            if (r0 != 0) goto L_0x0128
            qy r0 = new qy
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "HostKey has been changed: "
            r1.<init>(r2)
            java.lang.StringBuilder r1 = r1.append(r12)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0107:
            int r0 = r14.q
            if (r0 != 0) goto L_0x0110
            java.lang.String r0 = "RSA"
            r2 = r0
            goto L_0x0019
        L_0x0110:
            java.lang.String r0 = "ECDSA"
            r2 = r0
            goto L_0x0019
        L_0x0115:
            qr r1 = r11.ae
            goto L_0x0051
        L_0x0119:
            qq r0 = new qq
            r0.<init>(r12, r6)
            r11.am = r0
            goto L_0x0070
        L_0x0122:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0122 }
            throw r0
        L_0x0125:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0125 }
            throw r0
        L_0x0128:
            monitor-enter(r1)
            java.lang.String r0 = r14.r     // Catch:{ all -> 0x0163 }
            r1.a((java.lang.String) r12, (java.lang.String) r0)     // Catch:{ all -> 0x0163 }
            monitor-exit(r1)     // Catch:{ all -> 0x0163 }
            r0 = r4
        L_0x0130:
            java.lang.String r9 = "ask"
            boolean r9 = r5.equals(r9)
            if (r9 != 0) goto L_0x0140
            java.lang.String r9 = "yes"
            boolean r9 = r5.equals(r9)
            if (r9 == 0) goto L_0x01b0
        L_0x0140:
            if (r8 == 0) goto L_0x01b0
            if (r0 != 0) goto L_0x01b0
            java.lang.String r0 = "yes"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0166
            qy r0 = new qy
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "reject HostKey: "
            r1.<init>(r2)
            java.lang.String r2 = r11.p
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0163:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0163 }
            throw r0
        L_0x0166:
            sh r0 = r11.k
            if (r0 == 0) goto L_0x0223
            sh r0 = r11.k
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r10 = "The authenticity of host '"
            r9.<init>(r10)
            java.lang.String r10 = r11.p
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r10 = "' can't be established.\n"
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r9 = r9.append(r2)
            java.lang.String r10 = " key fingerprint is "
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.StringBuilder r7 = r9.append(r7)
            java.lang.String r9 = ".\nAre you sure you want to continue connecting?"
            r7.append(r9)
            boolean r0 = r0.c()
            if (r0 != 0) goto L_0x01af
            qy r0 = new qy
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "reject HostKey: "
            r1.<init>(r2)
            java.lang.String r2 = r11.p
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x01af:
            r0 = r4
        L_0x01b0:
            java.lang.String r7 = "no"
            boolean r5 = r5.equals(r7)
            if (r5 == 0) goto L_0x01bb
            if (r4 != r8) goto L_0x01bb
            r0 = r4
        L_0x01bb:
            if (r8 != 0) goto L_0x026b
            java.lang.String r4 = r14.r
            qq[] r4 = r1.b(r12, r4)
            int r5 = r6.length
            byte[] r5 = defpackage.si.b((byte[]) r6, (int) r5)
            java.lang.String r5 = defpackage.si.a((byte[]) r5)
        L_0x01cc:
            int r6 = r4.length
            if (r3 >= r6) goto L_0x026b
            r6 = r4[r8]
            java.lang.String r6 = r6.c()
            boolean r6 = r6.equals(r5)
            if (r6 == 0) goto L_0x0267
            r6 = r4[r3]
            java.lang.String r6 = r6.e()
            java.lang.String r7 = "@revoked"
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L_0x0267
            sh r0 = r11.k
            if (r0 == 0) goto L_0x0209
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "The "
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r1 = " host key for "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = r11.p
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = " is marked as revoked.\nThis could mean that a stolen key is being used to impersonate this host."
            r0.append(r1)
        L_0x0209:
            defpackage.qw.b()
            qy r0 = new qy
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "revoked HostKey: "
            r1.<init>(r2)
            java.lang.String r2 = r11.p
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0223:
            if (r8 != r4) goto L_0x0250
            qy r0 = new qy
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "UnknownHostKey: "
            r1.<init>(r3)
            java.lang.String r3 = r11.p
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r3 = ". "
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " key fingerprint is "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r7)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0250:
            qy r0 = new qy
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "HostKey has been changed: "
            r1.<init>(r2)
            java.lang.String r2 = r11.p
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0267:
            int r3 = r3 + 1
            goto L_0x01cc
        L_0x026b:
            if (r8 != 0) goto L_0x0270
            defpackage.qw.b()
        L_0x0270:
            if (r0 == 0) goto L_0x0275
            defpackage.qw.b()
        L_0x0275:
            if (r0 == 0) goto L_0x0280
            monitor-enter(r1)
            qq r0 = r11.am     // Catch:{ all -> 0x0281 }
            sh r2 = r11.k     // Catch:{ all -> 0x0281 }
            r1.a((defpackage.qq) r0, (defpackage.sh) r2)     // Catch:{ all -> 0x0281 }
            monitor-exit(r1)     // Catch:{ all -> 0x0281 }
        L_0x0280:
            return
        L_0x0281:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0281 }
            throw r0
        L_0x0284:
            r0 = r3
            goto L_0x00f0
        L_0x0287:
            r0 = r3
            goto L_0x0130
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ry.a(java.lang.String, int, ra):void");
    }

    private void a(qa qaVar, ql qlVar, int i2) {
        if (!qlVar.c()) {
            throw new qy("Packet corrupt");
        }
        int i3 = i2 - qaVar.c;
        while (i3 > 0) {
            qaVar.h();
            int length = i3 > qaVar.b.length ? qaVar.b.length : i3;
            this.T.b(qaVar.b, 0, length);
            i3 -= length;
        }
        throw new qy("Packet corrupt");
    }

    private void a(ra raVar) {
        byte[] d2 = raVar.d();
        byte[] e2 = raVar.e();
        qp f2 = raVar.f();
        if (this.C == null) {
            this.C = new byte[e2.length];
            System.arraycopy(e2, 0, this.C, 0, e2.length);
        }
        this.h.h();
        this.h.c(d2);
        this.h.a(e2);
        this.h.a((byte) 65);
        this.h.a(this.C);
        this.D = f2.b();
        int length = (this.h.c - this.C.length) - 1;
        byte[] bArr = this.h.b;
        bArr[length] = (byte) (bArr[length] + 1);
        this.E = f2.b();
        byte[] bArr2 = this.h.b;
        bArr2[length] = (byte) (bArr2[length] + 1);
        this.F = f2.b();
        byte[] bArr3 = this.h.b;
        bArr3[length] = (byte) (bArr3[length] + 1);
        this.G = f2.b();
        byte[] bArr4 = this.h.b;
        bArr4[length] = (byte) (bArr4[length] + 1);
        this.H = f2.b();
        byte[] bArr5 = this.h.b;
        bArr5[length] = (byte) (bArr5[length] + 1);
        this.I = f2.b();
        try {
            this.L = (ql) Class.forName(b(this.a[3])).newInstance();
            while (this.L.b() > this.G.length) {
                this.h.h();
                this.h.c(d2);
                this.h.a(e2);
                this.h.a(this.G);
                byte[] b2 = f2.b();
                byte[] bArr6 = new byte[(this.G.length + b2.length)];
                System.arraycopy(this.G, 0, bArr6, 0, this.G.length);
                System.arraycopy(b2, 0, bArr6, this.G.length, b2.length);
                this.G = bArr6;
            }
            this.ah = this.L.a();
            this.N = (rj) Class.forName(b(this.a[5])).newInstance();
            this.I = a(this.h, d2, e2, this.I, f2, this.N.a());
            this.P = new byte[this.N.a()];
            this.Q = new byte[this.N.a()];
            this.M = (ql) Class.forName(b(this.a[2])).newInstance();
            while (this.M.b() > this.F.length) {
                this.h.h();
                this.h.c(d2);
                this.h.a(e2);
                this.h.a(this.F);
                byte[] b3 = f2.b();
                byte[] bArr7 = new byte[(this.F.length + b3.length)];
                System.arraycopy(this.F, 0, bArr7, 0, this.F.length);
                System.arraycopy(b3, 0, bArr7, this.F.length, b3.length);
                this.F = bArr7;
            }
            this.ai = this.M.a();
            this.O = (rj) Class.forName(b(this.a[4])).newInstance();
            this.H = a(this.h, d2, e2, this.H, f2, this.O.a());
            d(this.a[6]);
            e(this.a[7]);
            this.ag = false;
        } catch (Exception e3) {
            if (e3 instanceof qy) {
                throw e3;
            }
            throw new qy(e3.toString(), e3);
        }
    }

    private static byte[] a(qa qaVar, byte[] bArr, byte[] bArr2, byte[] bArr3, qp qpVar, int i2) {
        int a2 = qpVar.a();
        while (bArr3.length < i2) {
            qaVar.h();
            qaVar.c(bArr);
            qaVar.a(bArr2);
            qaVar.a(bArr3);
            byte[] bArr4 = new byte[(bArr3.length + a2)];
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            System.arraycopy(qpVar.b(), 0, bArr4, bArr3.length, a2);
            si.b(bArr3);
            bArr3 = bArr4;
        }
        return bArr3;
    }

    private ra b(qa qaVar) {
        int b2 = qaVar.b();
        if (b2 != qaVar.a()) {
            qaVar.e();
            this.B = new byte[(qaVar.c - 5)];
        } else {
            this.B = new byte[((b2 - 1) - qaVar.e())];
        }
        System.arraycopy(qaVar.b, qaVar.d, this.B, 0, this.B.length);
        if (!this.ag) {
            b();
        }
        this.a = ra.a(this.B, this.A);
        if (this.a == null) {
            throw new qy("Algorithm negotiation fail");
        } else if (this.W || (!this.a[2].equals("none") && !this.a[3].equals("none"))) {
            try {
                return (ra) Class.forName(b(this.a[0])).newInstance();
            } catch (Exception e2) {
                throw new qy(e2.toString(), e2);
            }
        } else {
            throw new qy("NONE Cipher should not be chosen before authentification is successed.");
        }
    }

    private void b() {
        String[] strArr;
        String str;
        String str2;
        if (!this.ag) {
            String b2 = b("cipher.c2s");
            String b3 = b("cipher.s2c");
            String b4 = b("CheckCiphers");
            if (b4 == null || b4.length() == 0) {
                strArr = null;
            } else {
                qw.b();
                String b5 = b("cipher.c2s");
                String b6 = b("cipher.s2c");
                Vector vector = new Vector();
                String[] a2 = si.a(b4, ",");
                for (String str3 : a2) {
                    if (!(b6.indexOf(str3) == -1 && b5.indexOf(str3) == -1) && !c(b(str3))) {
                        vector.addElement(str3);
                    }
                }
                if (vector.size() == 0) {
                    strArr = null;
                } else {
                    strArr = new String[vector.size()];
                    System.arraycopy(vector.toArray(), 0, strArr, 0, vector.size());
                    qw.b();
                }
            }
            if (strArr == null || strArr.length <= 0) {
                str = b3;
                str2 = b2;
            } else {
                String a3 = si.a(b2, strArr);
                str = si.a(b3, strArr);
                if (a3 == null || str == null) {
                    throw new qy("There are not any available ciphers.");
                }
                str2 = a3;
            }
            String b7 = b("kex");
            String[] f2 = f(b("CheckKexes"));
            if (f2 == null || f2.length <= 0 || (b7 = si.a(b7, f2)) != null) {
                String b8 = b("server_host_key");
                String[] h2 = h(b("CheckSignatures"));
                if (h2 == null || h2.length <= 0 || (b8 = si.a(b8, h2)) != null) {
                    this.ag = true;
                    this.af = System.currentTimeMillis();
                    qa qaVar = new qa();
                    rl rlVar = new rl(qaVar);
                    rlVar.a();
                    qaVar.a((byte) 20);
                    synchronized (g) {
                        qaVar.b(16);
                    }
                    qaVar.b(si.a(b7));
                    qaVar.b(si.a(b8));
                    qaVar.b(si.a(str2));
                    qaVar.b(si.a(str));
                    qaVar.b(si.a(b("mac.c2s")));
                    qaVar.b(si.a(b("mac.s2c")));
                    qaVar.b(si.a(b("compression.c2s")));
                    qaVar.b(si.a(b("compression.s2c")));
                    qaVar.b(si.a(b("lang.c2s")));
                    qaVar.b(si.a(b("lang.s2c")));
                    qaVar.a((byte) 0);
                    qaVar.a(0);
                    qaVar.d = 5;
                    this.A = new byte[qaVar.a()];
                    byte[] bArr = this.A;
                    qaVar.a(bArr, bArr.length);
                    a(rlVar);
                    qw.b();
                    return;
                }
                throw new qy("There are not any available sig algorithm.");
            }
            throw new qy("There are not any available kexes.");
        }
    }

    private void b(rl rlVar) {
        synchronized (this.Y) {
            if (this.R != null) {
                this.w[0] = rlVar.a.c;
                rlVar.a.b = this.R.a();
                rlVar.a.c = this.w[0];
            }
            if (this.M != null) {
                rlVar.a(this.ai);
                synchronized (g) {
                }
            } else {
                rlVar.a(8);
            }
            if (this.O != null) {
                rlVar.a.b(this.O.a());
            }
            if (this.T != null) {
                qs qsVar = this.T;
                qsVar.b.write(rlVar.a.b, 0, rlVar.a.c);
                qsVar.b.flush();
                this.K++;
            }
        }
    }

    private void c() {
        this.i.a();
        this.h.a((byte) 21);
        a(this.i);
        qw.b();
    }

    static boolean c(String str) {
        try {
            Class.forName(str).newInstance();
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    private void d() {
        if (this.b) {
            qw.b();
            qb.a(this);
            this.b = false;
            rm.a(this);
            qf.b(this);
            qk.c(this);
            synchronized (this.Y) {
                if (this.X != null) {
                    Thread.yield();
                    this.X.interrupt();
                    this.X = null;
                }
            }
            this.x = null;
            try {
                if (this.T != null) {
                    if (this.T.a != null) {
                        this.T.a.close();
                    }
                    if (this.T.b != null) {
                        this.T.b.close();
                    }
                    if (this.T.c != null) {
                        this.T.c.close();
                    }
                }
                if (this.aa != null) {
                    synchronized (this.aa) {
                    }
                    this.aa = null;
                } else if (this.U != null) {
                    this.U.close();
                }
            } catch (Exception e2) {
            }
            this.T = null;
            this.U = null;
            this.u.a(this);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0040, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x004a, code lost:
        throw new defpackage.qy(r0.toString(), r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x004b, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0055, code lost:
        throw new defpackage.qy(r0.toString(), r0);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0040 A[ExcHandler: NoClassDefFoundError (r0v4 'e' java.lang.NoClassDefFoundError A[CUSTOM_DECLARE]), Splitter:B:11:0x0026] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r0 = "none"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L_0x000c
            r0 = 0
            r3.R = r0
        L_0x000b:
            return
        L_0x000c:
            java.lang.String r0 = r3.b((java.lang.String) r4)
            if (r0 == 0) goto L_0x000b
            java.lang.String r1 = "zlib"
            boolean r1 = r4.equals(r1)
            if (r1 != 0) goto L_0x0026
            boolean r1 = r3.W
            if (r1 == 0) goto L_0x000b
            java.lang.String r1 = "zlib@openssh.com"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L_0x000b
        L_0x0026:
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ NoClassDefFoundError -> 0x0040, Exception -> 0x004b }
            java.lang.Object r0 = r0.newInstance()     // Catch:{ NoClassDefFoundError -> 0x0040, Exception -> 0x004b }
            qm r0 = (defpackage.qm) r0     // Catch:{ NoClassDefFoundError -> 0x0040, Exception -> 0x004b }
            qm r0 = (defpackage.qm) r0     // Catch:{ NoClassDefFoundError -> 0x0040, Exception -> 0x004b }
            r3.R = r0     // Catch:{ NoClassDefFoundError -> 0x0040, Exception -> 0x004b }
            java.lang.String r0 = "compression_level"
            java.lang.String r0 = r3.b((java.lang.String) r0)     // Catch:{ Exception -> 0x003e, NoClassDefFoundError -> 0x0040 }
            java.lang.Integer.parseInt(r0)     // Catch:{ Exception -> 0x003e, NoClassDefFoundError -> 0x0040 }
            goto L_0x000b
        L_0x003e:
            r0 = move-exception
            goto L_0x000b
        L_0x0040:
            r0 = move-exception
            qy r1 = new qy
            java.lang.String r2 = r0.toString()
            r1.<init>(r2, r0)
            throw r1
        L_0x004b:
            r0 = move-exception
            qy r1 = new qy
            java.lang.String r2 = r0.toString()
            r1.<init>(r2, r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ry.d(java.lang.String):void");
    }

    private void e(String str) {
        if (str.equals("none")) {
            this.S = null;
            return;
        }
        String b2 = b(str);
        if (b2 == null) {
            return;
        }
        if (str.equals("zlib") || (this.W && str.equals("zlib@openssh.com"))) {
            try {
                this.S = (qm) Class.forName(b2).newInstance();
            } catch (Exception e2) {
                throw new qy(e2.toString(), e2);
            }
        }
    }

    private String[] f(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        qw.b();
        Vector vector = new Vector();
        String[] a2 = si.a(str, ",");
        for (int i2 = 0; i2 < a2.length; i2++) {
            if (!g(b(a2[i2]))) {
                vector.addElement(a2[i2]);
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        String[] strArr = new String[vector.size()];
        System.arraycopy(vector.toArray(), 0, strArr, 0, vector.size());
        qw.b();
        return strArr;
    }

    private static boolean g(String str) {
        try {
            Class.forName(str).newInstance();
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    private static String[] h(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        qw.b();
        Vector vector = new Vector();
        String[] a2 = si.a(str, ",");
        for (int i2 = 0; i2 < a2.length; i2++) {
            try {
                Class.forName(qw.a(a2[i2])).newInstance();
            } catch (Exception e2) {
                vector.addElement(a2[i2]);
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        String[] strArr = new String[vector.size()];
        System.arraycopy(vector.toArray(), 0, strArr, 0, vector.size());
        qw.b();
        return strArr;
    }

    public final qa a(qa qaVar) {
        while (true) {
            qaVar.h();
            this.T.b(qaVar.b, qaVar.c, this.ah);
            qaVar.c += this.ah;
            byte b2 = ((qaVar.b[0] << 24) & -16777216) | ((qaVar.b[1] << 16) & 16711680) | ((qaVar.b[2] << 8) & 65280) | (qaVar.b[3] & 255);
            if (b2 < 5 || b2 > 262144) {
                a(qaVar, this.L, 262144);
            }
            int i2 = (b2 + 4) - this.ah;
            if (qaVar.c + i2 > qaVar.b.length) {
                byte[] bArr = new byte[(qaVar.c + i2)];
                System.arraycopy(qaVar.b, 0, bArr, 0, qaVar.c);
                qaVar.b = bArr;
            }
            if (i2 % this.ah != 0) {
                qw.b();
                a(qaVar, this.L, 262144 - this.ah);
            }
            if (i2 > 0) {
                this.T.b(qaVar.b, qaVar.c, i2);
                qaVar.c += i2;
            }
            if (this.N != null) {
                this.T.b(this.Q, 0, this.Q.length);
                if (!Arrays.equals(this.P, this.Q)) {
                    if (i2 > 262144) {
                        throw new IOException("MAC Error");
                    }
                    a(qaVar, this.L, 262144 - i2);
                }
            }
            this.J++;
            if (this.S != null) {
                this.v[0] = (qaVar.c - 5) - qaVar.b[4];
                byte[] b3 = this.S.b();
                if (b3 == null) {
                    System.err.println("fail in inflater");
                    break;
                }
                qaVar.b = b3;
                qaVar.c = this.v[0] + 5;
            }
            byte b4 = qaVar.b[5] & 255;
            if (b4 == 1) {
                qaVar.d = 0;
                qaVar.b();
                qaVar.d();
                throw new qy("SSH_MSG_DISCONNECT: " + qaVar.b() + " " + si.a(qaVar.g()) + " " + si.a(qaVar.g()));
            } else if (b4 == 2) {
                continue;
            } else if (b4 == 3) {
                qaVar.d = 0;
                qaVar.b();
                qaVar.d();
                qaVar.b();
                qw.b();
            } else if (b4 == 4) {
                qaVar.d = 0;
                qaVar.b();
                qaVar.d();
            } else if (b4 == 93) {
                qaVar.d = 0;
                qaVar.b();
                qaVar.d();
                qb a2 = qb.a(qaVar.b(), this);
                if (a2 != null) {
                    a2.b(qaVar.c());
                }
            } else if (b4 == 52) {
                this.W = true;
                if (this.S == null && this.R == null) {
                    d(this.a[6]);
                    e(this.a[7]);
                }
            }
        }
        qaVar.d = 0;
        return qaVar;
    }

    public final qb a(String str) {
        qn qnVar;
        if (!this.b) {
            throw new qy("session is down");
        }
        try {
            qb a2 = qb.a(str);
            a2.t = this;
            a2.a();
            if (!(a2 instanceof qg) || (qnVar = this.u.c) == null) {
                return a2;
            }
            qnVar.a();
            return a2;
        } catch (Exception e2) {
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:191:0x03d6, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:192:0x03d7, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:193:0x03d8, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:194:0x03d9, code lost:
        throw r0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x0356 A[SYNTHETIC, Splitter:B:159:0x0356] */
    /* JADX WARNING: Removed duplicated region for block: B:189:0x03d1 A[Catch:{ qx -> 0x049c, qz -> 0x0496, RuntimeException -> 0x03d6, qy -> 0x03d8, Exception -> 0x0493, Exception -> 0x03a3, NumberFormatException -> 0x0387, qy -> 0x0363, Exception -> 0x00cd, all -> 0x011f }] */
    /* JADX WARNING: Removed duplicated region for block: B:191:0x03d6 A[Catch:{ qx -> 0x049c, qz -> 0x0496, RuntimeException -> 0x03d6, qy -> 0x03d8, Exception -> 0x0493, Exception -> 0x03a3, NumberFormatException -> 0x0387, qy -> 0x0363, Exception -> 0x00cd, all -> 0x011f }, ExcHandler: RuntimeException (r0v93 'e' java.lang.RuntimeException A[CUSTOM_DECLARE, Catch:{  }]), Splitter:B:159:0x0356] */
    /* JADX WARNING: Removed duplicated region for block: B:193:0x03d8 A[Catch:{ qx -> 0x049c, qz -> 0x0496, RuntimeException -> 0x03d6, qy -> 0x03d8, Exception -> 0x0493, Exception -> 0x03a3, NumberFormatException -> 0x0387, qy -> 0x0363, Exception -> 0x00cd, all -> 0x011f }, ExcHandler: qy (r0v92 'e' qy A[CUSTOM_DECLARE, Catch:{  }]), Splitter:B:159:0x0356] */
    /* JADX WARNING: Removed duplicated region for block: B:199:0x03e2 A[Catch:{ qx -> 0x049c, qz -> 0x0496, RuntimeException -> 0x03d6, qy -> 0x03d8, Exception -> 0x0493, Exception -> 0x03a3, NumberFormatException -> 0x0387, qy -> 0x0363, Exception -> 0x00cd, all -> 0x011f }] */
    /* JADX WARNING: Removed duplicated region for block: B:205:0x03f5 A[Catch:{ qx -> 0x049c, qz -> 0x0496, RuntimeException -> 0x03d6, qy -> 0x03d8, Exception -> 0x0493, Exception -> 0x03a3, NumberFormatException -> 0x0387, qy -> 0x0363, Exception -> 0x00cd, all -> 0x011f }] */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x0400 A[Catch:{ qx -> 0x049c, qz -> 0x0496, RuntimeException -> 0x03d6, qy -> 0x03d8, Exception -> 0x0493, Exception -> 0x03a3, NumberFormatException -> 0x0387, qy -> 0x0363, Exception -> 0x00cd, all -> 0x011f }] */
    /* JADX WARNING: Removed duplicated region for block: B:248:0x049f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a() {
        /*
            r14 = this;
            r7 = 3
            r1 = 0
            r8 = 1
            r2 = 0
            int r9 = r14.V
            boolean r0 = r14.b
            if (r0 == 0) goto L_0x0012
            qy r0 = new qy
            java.lang.String r1 = "session is already connected"
            r0.<init>(r1)
            throw r0
        L_0x0012:
            qs r0 = new qs
            r0.<init>()
            r14.T = r0
            ro r0 = g
            if (r0 != 0) goto L_0x0031
            java.lang.String r0 = "random"
            java.lang.String r0 = r14.b((java.lang.String) r0)     // Catch:{ Exception -> 0x0128 }
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ Exception -> 0x0128 }
            java.lang.Object r0 = r0.newInstance()     // Catch:{ Exception -> 0x0128 }
            ro r0 = (defpackage.ro) r0     // Catch:{ Exception -> 0x0128 }
            ro r0 = (defpackage.ro) r0     // Catch:{ Exception -> 0x0128 }
            g = r0     // Catch:{ Exception -> 0x0128 }
        L_0x0031:
            ro r0 = g
            defpackage.rl.a((defpackage.ro) r0)
            defpackage.qw.b()
            rn r0 = r14.aa     // Catch:{ Exception -> 0x00cd }
            if (r0 != 0) goto L_0x0149
            se r0 = r14.j     // Catch:{ Exception -> 0x00cd }
            if (r0 != 0) goto L_0x0133
            java.lang.String r0 = r14.p     // Catch:{ Exception -> 0x00cd }
            int r3 = r14.r     // Catch:{ Exception -> 0x00cd }
            java.net.Socket r0 = defpackage.si.a((java.lang.String) r0, (int) r3, (int) r9)     // Catch:{ Exception -> 0x00cd }
            r14.U = r0     // Catch:{ Exception -> 0x00cd }
            java.net.Socket r0 = r14.U     // Catch:{ Exception -> 0x00cd }
            java.io.InputStream r3 = r0.getInputStream()     // Catch:{ Exception -> 0x00cd }
            java.net.Socket r0 = r14.U     // Catch:{ Exception -> 0x00cd }
            java.io.OutputStream r0 = r0.getOutputStream()     // Catch:{ Exception -> 0x00cd }
        L_0x0057:
            java.net.Socket r4 = r14.U     // Catch:{ Exception -> 0x00cd }
            r5 = 1
            r4.setTcpNoDelay(r5)     // Catch:{ Exception -> 0x00cd }
            qs r4 = r14.T     // Catch:{ Exception -> 0x00cd }
            r4.a = r3     // Catch:{ Exception -> 0x00cd }
            qs r3 = r14.T     // Catch:{ Exception -> 0x00cd }
            r3.b = r0     // Catch:{ Exception -> 0x00cd }
        L_0x0065:
            if (r9 <= 0) goto L_0x0070
            java.net.Socket r0 = r14.U     // Catch:{ Exception -> 0x00cd }
            if (r0 == 0) goto L_0x0070
            java.net.Socket r0 = r14.U     // Catch:{ Exception -> 0x00cd }
            r0.setSoTimeout(r9)     // Catch:{ Exception -> 0x00cd }
        L_0x0070:
            r0 = 1
            r14.b = r0     // Catch:{ Exception -> 0x00cd }
            defpackage.qw.b()     // Catch:{ Exception -> 0x00cd }
            qw r0 = r14.u     // Catch:{ Exception -> 0x00cd }
            java.util.Vector r3 = r0.b     // Catch:{ Exception -> 0x00cd }
            monitor-enter(r3)     // Catch:{ Exception -> 0x00cd }
            java.util.Vector r0 = r0.b     // Catch:{ all -> 0x016e }
            r0.addElement(r14)     // Catch:{ all -> 0x016e }
            monitor-exit(r3)     // Catch:{ all -> 0x016e }
            byte[] r0 = r14.z     // Catch:{ Exception -> 0x00cd }
            int r0 = r0.length     // Catch:{ Exception -> 0x00cd }
            int r0 = r0 + 1
            byte[] r0 = new byte[r0]     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r14.z     // Catch:{ Exception -> 0x00cd }
            r4 = 0
            r5 = 0
            byte[] r6 = r14.z     // Catch:{ Exception -> 0x00cd }
            int r6 = r6.length     // Catch:{ Exception -> 0x00cd }
            java.lang.System.arraycopy(r3, r4, r0, r5, r6)     // Catch:{ Exception -> 0x00cd }
            int r3 = r0.length     // Catch:{ Exception -> 0x00cd }
            int r3 = r3 + -1
            r4 = 10
            r0[r3] = r4     // Catch:{ Exception -> 0x00cd }
            qs r3 = r14.T     // Catch:{ Exception -> 0x00cd }
            r4 = 0
            int r5 = r0.length     // Catch:{ Exception -> 0x00cd }
            r3.a(r0, r4, r5)     // Catch:{ Exception -> 0x00cd }
        L_0x00a0:
            r0 = r2
            r3 = r2
        L_0x00a2:
            qa r4 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r4 = r4.b     // Catch:{ Exception -> 0x00cd }
            int r4 = r4.length     // Catch:{ Exception -> 0x00cd }
            if (r3 >= r4) goto L_0x00c0
            qs r0 = r14.T     // Catch:{ Exception -> 0x00cd }
            java.io.InputStream r0 = r0.a     // Catch:{ Exception -> 0x00cd }
            int r0 = r0.read()     // Catch:{ Exception -> 0x00cd }
            if (r0 < 0) goto L_0x00c0
            qa r4 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r4 = r4.b     // Catch:{ Exception -> 0x00cd }
            byte r5 = (byte) r0     // Catch:{ Exception -> 0x00cd }
            r4[r3] = r5     // Catch:{ Exception -> 0x00cd }
            int r3 = r3 + 1
            r4 = 10
            if (r0 != r4) goto L_0x00a2
        L_0x00c0:
            r13 = r0
            r0 = r3
            r3 = r13
            if (r3 >= 0) goto L_0x0171
            qy r0 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.String r2 = "connection is closed by foreign host"
            r0.<init>(r2)     // Catch:{ Exception -> 0x00cd }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x00cd:
            r0 = move-exception
            r2 = 0
            r14.ag = r2     // Catch:{ all -> 0x011f }
            boolean r2 = r14.b     // Catch:{ Exception -> 0x0490 }
            if (r2 == 0) goto L_0x0112
            java.lang.String r2 = r0.toString()     // Catch:{ Exception -> 0x0490 }
            rl r3 = r14.i     // Catch:{ Exception -> 0x0490 }
            r3.a()     // Catch:{ Exception -> 0x0490 }
            qa r3 = r14.h     // Catch:{ Exception -> 0x0490 }
            int r4 = r2.length()     // Catch:{ Exception -> 0x0490 }
            int r4 = r4 + 13
            int r4 = r4 + 2
            int r4 = r4 + 84
            r3.c((int) r4)     // Catch:{ Exception -> 0x0490 }
            qa r3 = r14.h     // Catch:{ Exception -> 0x0490 }
            r4 = 1
            r3.a((byte) r4)     // Catch:{ Exception -> 0x0490 }
            qa r3 = r14.h     // Catch:{ Exception -> 0x0490 }
            r4 = 3
            r3.a((int) r4)     // Catch:{ Exception -> 0x0490 }
            qa r3 = r14.h     // Catch:{ Exception -> 0x0490 }
            byte[] r2 = defpackage.si.a((java.lang.String) r2)     // Catch:{ Exception -> 0x0490 }
            r3.b((byte[]) r2)     // Catch:{ Exception -> 0x0490 }
            qa r2 = r14.h     // Catch:{ Exception -> 0x0490 }
            java.lang.String r3 = "en"
            byte[] r3 = defpackage.si.a((java.lang.String) r3)     // Catch:{ Exception -> 0x0490 }
            r2.b((byte[]) r3)     // Catch:{ Exception -> 0x0490 }
            rl r2 = r14.i     // Catch:{ Exception -> 0x0490 }
            r14.a((defpackage.rl) r2)     // Catch:{ Exception -> 0x0490 }
        L_0x0112:
            r14.d()     // Catch:{ Exception -> 0x048d }
        L_0x0115:
            r2 = 0
            r14.b = r2     // Catch:{ all -> 0x011f }
            boolean r2 = r0 instanceof java.lang.RuntimeException     // Catch:{ all -> 0x011f }
            if (r2 == 0) goto L_0x0471
            java.lang.RuntimeException r0 = (java.lang.RuntimeException) r0     // Catch:{ all -> 0x011f }
            throw r0     // Catch:{ all -> 0x011f }
        L_0x011f:
            r0 = move-exception
            byte[] r2 = r14.t
            defpackage.si.b((byte[]) r2)
            r14.t = r1
            throw r0
        L_0x0128:
            r0 = move-exception
            qy r1 = new qy
            java.lang.String r2 = r0.toString()
            r1.<init>(r2, r0)
            throw r1
        L_0x0133:
            se r0 = r14.j     // Catch:{ Exception -> 0x00cd }
            java.net.Socket r0 = r0.a()     // Catch:{ Exception -> 0x00cd }
            r14.U = r0     // Catch:{ Exception -> 0x00cd }
            se r0 = r14.j     // Catch:{ Exception -> 0x00cd }
            java.io.InputStream r3 = r0.b()     // Catch:{ Exception -> 0x00cd }
            se r0 = r14.j     // Catch:{ Exception -> 0x00cd }
            java.io.OutputStream r0 = r0.c()     // Catch:{ Exception -> 0x00cd }
            goto L_0x0057
        L_0x0149:
            rn r3 = r14.aa     // Catch:{ Exception -> 0x00cd }
            monitor-enter(r3)     // Catch:{ Exception -> 0x00cd }
            qs r0 = r14.T     // Catch:{ all -> 0x016b }
            rn r4 = r14.aa     // Catch:{ all -> 0x016b }
            java.io.InputStream r4 = r4.a()     // Catch:{ all -> 0x016b }
            r0.a = r4     // Catch:{ all -> 0x016b }
            qs r0 = r14.T     // Catch:{ all -> 0x016b }
            rn r4 = r14.aa     // Catch:{ all -> 0x016b }
            java.io.OutputStream r4 = r4.b()     // Catch:{ all -> 0x016b }
            r0.b = r4     // Catch:{ all -> 0x016b }
            rn r0 = r14.aa     // Catch:{ all -> 0x016b }
            java.net.Socket r0 = r0.c()     // Catch:{ all -> 0x016b }
            r14.U = r0     // Catch:{ all -> 0x016b }
            monitor-exit(r3)     // Catch:{ all -> 0x016b }
            goto L_0x0065
        L_0x016b:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x016b }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x016e:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x016e }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x0171:
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            int r4 = r0 + -1
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            r4 = 10
            if (r3 != r4) goto L_0x018f
            int r0 = r0 + -1
            if (r0 <= 0) goto L_0x018f
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            int r4 = r0 + -1
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            r4 = 13
            if (r3 != r4) goto L_0x018f
            int r0 = r0 + -1
        L_0x018f:
            if (r0 <= r7) goto L_0x00a0
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            int r3 = r3.length     // Catch:{ Exception -> 0x00cd }
            if (r0 == r3) goto L_0x01c4
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 0
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            r4 = 83
            if (r3 != r4) goto L_0x00a0
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 1
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            r4 = 83
            if (r3 != r4) goto L_0x00a0
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 2
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            r4 = 72
            if (r3 != r4) goto L_0x00a0
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 3
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            r4 = 45
            if (r3 != r4) goto L_0x00a0
        L_0x01c4:
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            int r3 = r3.length     // Catch:{ Exception -> 0x00cd }
            if (r0 == r3) goto L_0x01e4
            r3 = 7
            if (r0 < r3) goto L_0x01e4
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 4
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            r4 = 49
            if (r3 != r4) goto L_0x01ec
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 6
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            r4 = 57
            if (r3 == r4) goto L_0x01ec
        L_0x01e4:
            qy r0 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.String r2 = "invalid server's version string"
            r0.<init>(r2)     // Catch:{ Exception -> 0x00cd }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x01ec:
            byte[] r3 = new byte[r0]     // Catch:{ Exception -> 0x00cd }
            r14.y = r3     // Catch:{ Exception -> 0x00cd }
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 0
            byte[] r5 = r14.y     // Catch:{ Exception -> 0x00cd }
            r6 = 0
            java.lang.System.arraycopy(r3, r4, r5, r6, r0)     // Catch:{ Exception -> 0x00cd }
            defpackage.qw.b()     // Catch:{ Exception -> 0x00cd }
            r14.b()     // Catch:{ Exception -> 0x00cd }
            qa r0 = r14.h     // Catch:{ Exception -> 0x00cd }
            qa r0 = r14.a((defpackage.qa) r0)     // Catch:{ Exception -> 0x00cd }
            r14.h = r0     // Catch:{ Exception -> 0x00cd }
            qa r0 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r0 = r0.b     // Catch:{ Exception -> 0x00cd }
            r3 = 5
            byte r0 = r0[r3]     // Catch:{ Exception -> 0x00cd }
            r3 = 20
            if (r0 == r3) goto L_0x0233
            r0 = 0
            r14.ag = r0     // Catch:{ Exception -> 0x00cd }
            qy r0 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00cd }
            java.lang.String r3 = "invalid protocol: "
            r2.<init>(r3)     // Catch:{ Exception -> 0x00cd }
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 5
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Exception -> 0x00cd }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x00cd }
            r0.<init>(r2)     // Catch:{ Exception -> 0x00cd }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x0233:
            defpackage.qw.b()     // Catch:{ Exception -> 0x00cd }
            qa r0 = r14.h     // Catch:{ Exception -> 0x00cd }
            ra r0 = r14.b((defpackage.qa) r0)     // Catch:{ Exception -> 0x00cd }
        L_0x023c:
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            qa r3 = r14.a((defpackage.qa) r3)     // Catch:{ Exception -> 0x00cd }
            r14.h = r3     // Catch:{ Exception -> 0x00cd }
            int r3 = r0.b()     // Catch:{ Exception -> 0x00cd }
            qa r4 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r4 = r4.b     // Catch:{ Exception -> 0x00cd }
            r5 = 5
            byte r4 = r4[r5]     // Catch:{ Exception -> 0x00cd }
            if (r3 != r4) goto L_0x0275
            long r4 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x00cd }
            r14.af = r4     // Catch:{ Exception -> 0x00cd }
            boolean r3 = r0.a()     // Catch:{ Exception -> 0x00cd }
            if (r3 != 0) goto L_0x0294
            r0 = 0
            r14.ag = r0     // Catch:{ Exception -> 0x00cd }
            qy r0 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00cd }
            java.lang.String r4 = "verify: "
            r2.<init>(r4)     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Exception -> 0x00cd }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x00cd }
            r0.<init>(r2)     // Catch:{ Exception -> 0x00cd }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x0275:
            r0 = 0
            r14.ag = r0     // Catch:{ Exception -> 0x00cd }
            qy r0 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00cd }
            java.lang.String r3 = "invalid protocol(kex): "
            r2.<init>(r3)     // Catch:{ Exception -> 0x00cd }
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 5
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Exception -> 0x00cd }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x00cd }
            r0.<init>(r2)     // Catch:{ Exception -> 0x00cd }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x0294:
            int r3 = r0.b()     // Catch:{ Exception -> 0x00cd }
            if (r3 != 0) goto L_0x023c
            java.lang.String r3 = r14.p     // Catch:{ qy -> 0x0363 }
            int r4 = r14.r     // Catch:{ qy -> 0x0363 }
            r14.a((java.lang.String) r3, (int) r4, (defpackage.ra) r0)     // Catch:{ qy -> 0x0363 }
            r14.c()     // Catch:{ Exception -> 0x00cd }
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            qa r3 = r14.a((defpackage.qa) r3)     // Catch:{ Exception -> 0x00cd }
            r14.h = r3     // Catch:{ Exception -> 0x00cd }
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 5
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            r4 = 21
            if (r3 != r4) goto L_0x0368
            defpackage.qw.b()     // Catch:{ Exception -> 0x00cd }
            r14.a((defpackage.ra) r0)     // Catch:{ Exception -> 0x00cd }
            java.lang.String r0 = "MaxAuthTries"
            java.lang.String r0 = r14.b((java.lang.String) r0)     // Catch:{ NumberFormatException -> 0x0387 }
            if (r0 == 0) goto L_0x02cb
            int r0 = java.lang.Integer.parseInt(r0)     // Catch:{ NumberFormatException -> 0x0387 }
            r14.n = r0     // Catch:{ NumberFormatException -> 0x0387 }
        L_0x02cb:
            java.lang.String r0 = "userauth.none"
            java.lang.String r0 = r14.b((java.lang.String) r0)     // Catch:{ Exception -> 0x03a3 }
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ Exception -> 0x03a3 }
            java.lang.Object r0 = r0.newInstance()     // Catch:{ Exception -> 0x03a3 }
            sf r0 = (defpackage.sf) r0     // Catch:{ Exception -> 0x03a3 }
            sf r0 = (defpackage.sf) r0     // Catch:{ Exception -> 0x03a3 }
            boolean r4 = r0.a(r14)     // Catch:{ Exception -> 0x00cd }
            java.lang.String r3 = "PreferredAuthentications"
            java.lang.String r3 = r14.b((java.lang.String) r3)     // Catch:{ Exception -> 0x00cd }
            java.lang.String r5 = ","
            java.lang.String[] r10 = defpackage.si.a((java.lang.String) r3, (java.lang.String) r5)     // Catch:{ Exception -> 0x00cd }
            if (r4 != 0) goto L_0x04ab
            sg r0 = (defpackage.sg) r0     // Catch:{ Exception -> 0x00cd }
            java.lang.String r0 = r0.e     // Catch:{ Exception -> 0x00cd }
            if (r0 == 0) goto L_0x03ae
            java.lang.String r0 = r0.toLowerCase()     // Catch:{ Exception -> 0x00cd }
        L_0x02f9:
            java.lang.String r3 = ","
            java.lang.String[] r3 = defpackage.si.a((java.lang.String) r0, (java.lang.String) r3)     // Catch:{ Exception -> 0x00cd }
            r6 = r0
            r7 = r3
            r5 = r2
            r0 = r2
        L_0x0303:
            if (r4 != 0) goto L_0x04a2
            if (r10 == 0) goto L_0x04a2
            int r3 = r10.length     // Catch:{ Exception -> 0x00cd }
            if (r0 >= r3) goto L_0x04a2
            int r3 = r0 + 1
            r11 = r10[r0]     // Catch:{ Exception -> 0x00cd }
            r0 = r2
        L_0x030f:
            int r12 = r7.length     // Catch:{ Exception -> 0x00cd }
            if (r0 >= r12) goto L_0x04a8
            r12 = r7[r0]     // Catch:{ Exception -> 0x00cd }
            boolean r12 = r12.equals(r11)     // Catch:{ Exception -> 0x00cd }
            if (r12 == 0) goto L_0x03b1
            r0 = r8
        L_0x031b:
            if (r0 == 0) goto L_0x04a5
            defpackage.qw.b()     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x03b5 }
            java.lang.String r12 = "userauth."
            r0.<init>(r12)     // Catch:{ Exception -> 0x03b5 }
            java.lang.StringBuilder r0 = r0.append(r11)     // Catch:{ Exception -> 0x03b5 }
            java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x03b5 }
            java.lang.String r0 = r14.b((java.lang.String) r0)     // Catch:{ Exception -> 0x03b5 }
            if (r0 == 0) goto L_0x03b9
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x03b5 }
            java.lang.String r12 = "userauth."
            r0.<init>(r12)     // Catch:{ Exception -> 0x03b5 }
            java.lang.StringBuilder r0 = r0.append(r11)     // Catch:{ Exception -> 0x03b5 }
            java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x03b5 }
            java.lang.String r0 = r14.b((java.lang.String) r0)     // Catch:{ Exception -> 0x03b5 }
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ Exception -> 0x03b5 }
            java.lang.Object r0 = r0.newInstance()     // Catch:{ Exception -> 0x03b5 }
            sf r0 = (defpackage.sf) r0     // Catch:{ Exception -> 0x03b5 }
            sf r0 = (defpackage.sf) r0     // Catch:{ Exception -> 0x03b5 }
        L_0x0354:
            if (r0 == 0) goto L_0x03f5
            boolean r0 = r0.a(r14)     // Catch:{ qx -> 0x03bb, qz -> 0x03c2, RuntimeException -> 0x03d6, qy -> 0x03d8, Exception -> 0x03da }
            if (r0 == 0) goto L_0x035f
            defpackage.qw.b()     // Catch:{ qx -> 0x049c, qz -> 0x0496, RuntimeException -> 0x03d6, qy -> 0x03d8, Exception -> 0x0493 }
        L_0x035f:
            r5 = r2
            r4 = r0
            r0 = r3
            goto L_0x0303
        L_0x0363:
            r0 = move-exception
            r2 = 0
            r14.ag = r2     // Catch:{ Exception -> 0x00cd }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x0368:
            r0 = 0
            r14.ag = r0     // Catch:{ Exception -> 0x00cd }
            qy r0 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00cd }
            java.lang.String r3 = "invalid protocol(newkyes): "
            r2.<init>(r3)     // Catch:{ Exception -> 0x00cd }
            qa r3 = r14.h     // Catch:{ Exception -> 0x00cd }
            byte[] r3 = r3.b     // Catch:{ Exception -> 0x00cd }
            r4 = 5
            byte r3 = r3[r4]     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ Exception -> 0x00cd }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x00cd }
            r0.<init>(r2)     // Catch:{ Exception -> 0x00cd }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x0387:
            r0 = move-exception
            qy r2 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00cd }
            java.lang.String r4 = "MaxAuthTries: "
            r3.<init>(r4)     // Catch:{ Exception -> 0x00cd }
            java.lang.String r4 = "MaxAuthTries"
            java.lang.String r4 = r14.b((java.lang.String) r4)     // Catch:{ Exception -> 0x00cd }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x00cd }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x00cd }
            r2.<init>(r3, r0)     // Catch:{ Exception -> 0x00cd }
            throw r2     // Catch:{ Exception -> 0x00cd }
        L_0x03a3:
            r0 = move-exception
            qy r2 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.String r3 = r0.toString()     // Catch:{ Exception -> 0x00cd }
            r2.<init>(r3, r0)     // Catch:{ Exception -> 0x00cd }
            throw r2     // Catch:{ Exception -> 0x00cd }
        L_0x03ae:
            r0 = r3
            goto L_0x02f9
        L_0x03b1:
            int r0 = r0 + 1
            goto L_0x030f
        L_0x03b5:
            r0 = move-exception
            defpackage.qw.b()     // Catch:{ Exception -> 0x00cd }
        L_0x03b9:
            r0 = r1
            goto L_0x0354
        L_0x03bb:
            r0 = move-exception
            r0 = r4
        L_0x03bd:
            r5 = r8
            r4 = r0
            r0 = r3
            goto L_0x0303
        L_0x03c2:
            r0 = move-exception
        L_0x03c3:
            java.lang.String r5 = r0.a     // Catch:{ Exception -> 0x00cd }
            java.lang.String r0 = ","
            java.lang.String[] r7 = defpackage.si.a((java.lang.String) r5, (java.lang.String) r0)     // Catch:{ Exception -> 0x00cd }
            boolean r0 = r6.equals(r5)     // Catch:{ Exception -> 0x00cd }
            if (r0 != 0) goto L_0x049f
            r0 = r2
        L_0x03d2:
            r6 = r5
            r5 = r2
            goto L_0x0303
        L_0x03d6:
            r0 = move-exception
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x03d8:
            r0 = move-exception
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x03da:
            r0 = move-exception
            r0 = r4
        L_0x03dc:
            defpackage.qw.b()     // Catch:{ Exception -> 0x00cd }
            r4 = r0
        L_0x03e0:
            if (r4 != 0) goto L_0x0400
            int r0 = r14.o     // Catch:{ Exception -> 0x00cd }
            int r3 = r14.n     // Catch:{ Exception -> 0x00cd }
            if (r0 < r3) goto L_0x03eb
            defpackage.qw.b()     // Catch:{ Exception -> 0x00cd }
        L_0x03eb:
            if (r2 == 0) goto L_0x03f8
            qy r0 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.String r2 = "Auth cancel"
            r0.<init>(r2)     // Catch:{ Exception -> 0x00cd }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x03f5:
            r0 = r3
            goto L_0x0303
        L_0x03f8:
            qy r0 = new qy     // Catch:{ Exception -> 0x00cd }
            java.lang.String r2 = "Auth fail"
            r0.<init>(r2)     // Catch:{ Exception -> 0x00cd }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x0400:
            java.net.Socket r0 = r14.U     // Catch:{ Exception -> 0x00cd }
            if (r0 == 0) goto L_0x0411
            if (r9 > 0) goto L_0x040a
            int r0 = r14.V     // Catch:{ Exception -> 0x00cd }
            if (r0 <= 0) goto L_0x0411
        L_0x040a:
            java.net.Socket r0 = r14.U     // Catch:{ Exception -> 0x00cd }
            int r2 = r14.V     // Catch:{ Exception -> 0x00cd }
            r0.setSoTimeout(r2)     // Catch:{ Exception -> 0x00cd }
        L_0x0411:
            r0 = 1
            r14.W = r0     // Catch:{ Exception -> 0x00cd }
            java.lang.Object r2 = r14.Y     // Catch:{ Exception -> 0x00cd }
            monitor-enter(r2)     // Catch:{ Exception -> 0x00cd }
            boolean r0 = r14.b     // Catch:{ all -> 0x046e }
            if (r0 == 0) goto L_0x0465
            java.lang.Thread r0 = new java.lang.Thread     // Catch:{ all -> 0x046e }
            r0.<init>(r14)     // Catch:{ all -> 0x046e }
            r14.X = r0     // Catch:{ all -> 0x046e }
            java.lang.Thread r0 = r14.X     // Catch:{ all -> 0x046e }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x046e }
            java.lang.String r4 = "Connect thread "
            r3.<init>(r4)     // Catch:{ all -> 0x046e }
            java.lang.String r4 = r14.p     // Catch:{ all -> 0x046e }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x046e }
            java.lang.String r4 = " session"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x046e }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x046e }
            r0.setName(r3)     // Catch:{ all -> 0x046e }
            boolean r0 = r14.m     // Catch:{ all -> 0x046e }
            if (r0 == 0) goto L_0x0449
            java.lang.Thread r0 = r14.X     // Catch:{ all -> 0x046e }
            boolean r3 = r14.m     // Catch:{ all -> 0x046e }
            r0.setDaemon(r3)     // Catch:{ all -> 0x046e }
        L_0x0449:
            java.lang.Thread r0 = r14.X     // Catch:{ all -> 0x046e }
            r0.start()     // Catch:{ all -> 0x046e }
            java.lang.String r0 = "ClearAllForwardings"
            java.lang.String r0 = r14.b((java.lang.String) r0)     // Catch:{ all -> 0x046e }
            java.lang.String r3 = "yes"
            boolean r0 = r0.equals(r3)     // Catch:{ all -> 0x046e }
            if (r0 != 0) goto L_0x0465
            qw r0 = r14.u     // Catch:{ all -> 0x046e }
            qn r0 = r0.c     // Catch:{ all -> 0x046e }
            if (r0 == 0) goto L_0x0465
            r0.a()     // Catch:{ all -> 0x046e }
        L_0x0465:
            monitor-exit(r2)     // Catch:{ all -> 0x046e }
            byte[] r0 = r14.t
            defpackage.si.b((byte[]) r0)
            r14.t = r1
            return
        L_0x046e:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x046e }
            throw r0     // Catch:{ Exception -> 0x00cd }
        L_0x0471:
            boolean r2 = r0 instanceof defpackage.qy     // Catch:{ all -> 0x011f }
            if (r2 == 0) goto L_0x0478
            qy r0 = (defpackage.qy) r0     // Catch:{ all -> 0x011f }
            throw r0     // Catch:{ all -> 0x011f }
        L_0x0478:
            qy r2 = new qy     // Catch:{ all -> 0x011f }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x011f }
            java.lang.String r4 = "Session.connect: "
            r3.<init>(r4)     // Catch:{ all -> 0x011f }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x011f }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x011f }
            r2.<init>(r0)     // Catch:{ all -> 0x011f }
            throw r2     // Catch:{ all -> 0x011f }
        L_0x048d:
            r2 = move-exception
            goto L_0x0115
        L_0x0490:
            r2 = move-exception
            goto L_0x0112
        L_0x0493:
            r3 = move-exception
            goto L_0x03dc
        L_0x0496:
            r4 = move-exception
            r13 = r4
            r4 = r0
            r0 = r13
            goto L_0x03c3
        L_0x049c:
            r4 = move-exception
            goto L_0x03bd
        L_0x049f:
            r0 = r3
            goto L_0x03d2
        L_0x04a2:
            r2 = r5
            goto L_0x03e0
        L_0x04a5:
            r0 = r3
            goto L_0x0303
        L_0x04a8:
            r0 = r2
            goto L_0x031b
        L_0x04ab:
            r0 = r1
            goto L_0x02f9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ry.a():void");
    }

    public final void a(rl rlVar) {
        long j2 = (long) this.V;
        while (this.ag) {
            if (j2 <= 0 || System.currentTimeMillis() - this.af <= j2) {
                byte b2 = rlVar.a.b[5];
                if (b2 == 20 || b2 == 21 || b2 == 30 || b2 == 31 || b2 == 31 || b2 == 32 || b2 == 33 || b2 == 34 || b2 == 1) {
                    break;
                }
                try {
                    Thread.sleep(10);
                } catch (InterruptedException e2) {
                }
            } else {
                throw new qy("timeout in wating for rekeying process.");
            }
        }
        b(rlVar);
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:116:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x006f, code lost:
        if (r13.n != false) goto L_0x0077;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0075, code lost:
        if (r13.g() != false) goto L_0x007f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x007e, code lost:
        throw new java.io.IOException("channel is broken");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x007f, code lost:
        r3 = false;
        r2 = 0;
        r1 = 0;
        r0 = -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0083, code lost:
        monitor-enter(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x008a, code lost:
        if (r13.h <= 0) goto L_0x0129;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x008c, code lost:
        r0 = r13.h;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0091, code lost:
        if (r0 <= ((long) r14)) goto L_0x0186;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0093, code lost:
        r4 = (long) r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0098, code lost:
        if (r4 == ((long) r14)) goto L_0x0116;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x009a, code lost:
        r3 = (int) r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x009d, code lost:
        if (r11.M == null) goto L_0x0167;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x009f, code lost:
        r2 = r11.ai;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x00a4, code lost:
        if (r11.O == null) goto L_0x016c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x00a6, code lost:
        r1 = r11.O.a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x00ad, code lost:
        r8 = (r3 + 5) + 9;
        r0 = (-r8) & (r2 - 1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00b5, code lost:
        if (r0 >= r2) goto L_0x00b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x00b7, code lost:
        r0 = r0 + r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x00b8, code lost:
        r2 = ((r0 + r8) + r1) + 32;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x00cb, code lost:
        if (r12.a.b.length >= ((((r12.a.c + r2) - 5) - 9) - r3)) goto L_0x00eb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x00cd, code lost:
        r0 = new byte[((((r12.a.c + r2) - 5) - 9) - r3)];
        java.lang.System.arraycopy(r12.a.b, 0, r0, 0, r12.a.b.length);
        r12.a.b = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x00eb, code lost:
        java.lang.System.arraycopy(r12.a.b, (r3 + 5) + 9, r12.a.b, r2, ((r12.a.c - 5) - 9) - r3);
        r12.a.c = 10;
        r12.a.a(r3);
        r12.a.c = (r3 + 5) + 9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0116, code lost:
        r1 = r12.a.b[5];
        r0 = r13.c;
        r14 = (int) (((long) r14) - r4);
        r13.h -= r4;
        r3 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0129, code lost:
        monitor-exit(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x012a, code lost:
        if (r3 == false) goto L_0x015c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x012c, code lost:
        b(r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x012f, code lost:
        if (r14 == 0) goto L_0x006b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x0131, code lost:
        java.lang.System.arraycopy(r12.a.b, r2, r12.a.b, 14, r14);
        r12.a.b[5] = r1;
        r12.a.c = 6;
        r12.a.a(r0);
        r12.a.a(r14);
        r12.a.c = (r14 + 5) + 9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x015c, code lost:
        monitor-enter(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x015f, code lost:
        if (r11.ag == false) goto L_0x0173;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0161, code lost:
        monitor-exit(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0167, code lost:
        r2 = 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x016c, code lost:
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0178, code lost:
        if (r13.h < ((long) r14)) goto L_0x0183;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x017a, code lost:
        r13.h -= (long) r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x0180, code lost:
        monitor-exit(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x0183, code lost:
        monitor-exit(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x0186, code lost:
        r4 = r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(defpackage.rl r12, defpackage.qb r13, int r14) {
        /*
            r11 = this;
            int r0 = r11.V
            long r6 = (long) r0
        L_0x0003:
            boolean r0 = r11.ag
            if (r0 == 0) goto L_0x0028
            r0 = 0
            int r0 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r0 <= 0) goto L_0x0020
            long r0 = java.lang.System.currentTimeMillis()
            long r2 = r11.af
            long r0 = r0 - r2
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 <= 0) goto L_0x0020
            qy r0 = new qy
            java.lang.String r1 = "timeout in wating for rekeying process."
            r0.<init>(r1)
            throw r0
        L_0x0020:
            r0 = 10
            java.lang.Thread.sleep(r0)     // Catch:{ InterruptedException -> 0x0026 }
            goto L_0x0003
        L_0x0026:
            r0 = move-exception
            goto L_0x0003
        L_0x0028:
            monitor-enter(r13)
            long r0 = r13.h     // Catch:{ all -> 0x0047 }
            long r2 = (long) r14
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L_0x0041
            int r0 = r13.u     // Catch:{ InterruptedException -> 0x004a, all -> 0x0052 }
            int r0 = r0 + 1
            r13.u = r0     // Catch:{ InterruptedException -> 0x004a, all -> 0x0052 }
            r0 = 100
            r13.wait(r0)     // Catch:{ InterruptedException -> 0x004a, all -> 0x0052 }
            int r0 = r13.u     // Catch:{ all -> 0x0047 }
            int r0 = r0 + -1
            r13.u = r0     // Catch:{ all -> 0x0047 }
        L_0x0041:
            boolean r0 = r11.ag     // Catch:{ all -> 0x0047 }
            if (r0 == 0) goto L_0x005a
            monitor-exit(r13)     // Catch:{ all -> 0x0047 }
            goto L_0x0003
        L_0x0047:
            r0 = move-exception
            monitor-exit(r13)     // Catch:{ all -> 0x0047 }
            throw r0
        L_0x004a:
            r0 = move-exception
            int r0 = r13.u     // Catch:{ all -> 0x0047 }
            int r0 = r0 + -1
            r13.u = r0     // Catch:{ all -> 0x0047 }
            goto L_0x0041
        L_0x0052:
            r0 = move-exception
            int r1 = r13.u     // Catch:{ all -> 0x0047 }
            int r1 = r1 + -1
            r13.u = r1     // Catch:{ all -> 0x0047 }
            throw r0     // Catch:{ all -> 0x0047 }
        L_0x005a:
            long r0 = r13.h     // Catch:{ all -> 0x0047 }
            long r2 = (long) r14     // Catch:{ all -> 0x0047 }
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L_0x006c
            long r0 = r13.h     // Catch:{ all -> 0x0047 }
            long r2 = (long) r14     // Catch:{ all -> 0x0047 }
            long r0 = r0 - r2
            r13.h = r0     // Catch:{ all -> 0x0047 }
            monitor-exit(r13)     // Catch:{ all -> 0x0047 }
        L_0x0068:
            r11.b((defpackage.rl) r12)
        L_0x006b:
            return
        L_0x006c:
            monitor-exit(r13)     // Catch:{ all -> 0x0047 }
            boolean r0 = r13.n
            if (r0 != 0) goto L_0x0077
            boolean r0 = r13.g()
            if (r0 != 0) goto L_0x007f
        L_0x0077:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "channel is broken"
            r0.<init>(r1)
            throw r0
        L_0x007f:
            r3 = 0
            r2 = 0
            r1 = 0
            r0 = -1
            monitor-enter(r13)
            long r4 = r13.h     // Catch:{ all -> 0x0170 }
            r8 = 0
            int r4 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r4 <= 0) goto L_0x0129
            long r0 = r13.h     // Catch:{ all -> 0x0170 }
            long r4 = (long) r14     // Catch:{ all -> 0x0170 }
            int r3 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r3 <= 0) goto L_0x0186
            long r0 = (long) r14     // Catch:{ all -> 0x0170 }
            r4 = r0
        L_0x0095:
            long r0 = (long) r14     // Catch:{ all -> 0x0170 }
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 == 0) goto L_0x0116
            int r3 = (int) r4     // Catch:{ all -> 0x0170 }
            ql r0 = r11.M     // Catch:{ all -> 0x0170 }
            if (r0 == 0) goto L_0x0167
            int r0 = r11.ai     // Catch:{ all -> 0x0170 }
            r2 = r0
        L_0x00a2:
            rj r0 = r11.O     // Catch:{ all -> 0x0170 }
            if (r0 == 0) goto L_0x016c
            rj r0 = r11.O     // Catch:{ all -> 0x0170 }
            int r0 = r0.a()     // Catch:{ all -> 0x0170 }
            r1 = r0
        L_0x00ad:
            int r0 = r3 + 5
            int r8 = r0 + 9
            int r0 = -r8
            int r9 = r2 + -1
            r0 = r0 & r9
            if (r0 >= r2) goto L_0x00b8
            int r0 = r0 + r2
        L_0x00b8:
            int r0 = r0 + r8
            int r0 = r0 + r1
            int r2 = r0 + 32
            qa r0 = r12.a     // Catch:{ all -> 0x0170 }
            byte[] r0 = r0.b     // Catch:{ all -> 0x0170 }
            int r0 = r0.length     // Catch:{ all -> 0x0170 }
            qa r1 = r12.a     // Catch:{ all -> 0x0170 }
            int r1 = r1.c     // Catch:{ all -> 0x0170 }
            int r1 = r1 + r2
            int r1 = r1 + -5
            int r1 = r1 + -9
            int r1 = r1 - r3
            if (r0 >= r1) goto L_0x00eb
            qa r0 = r12.a     // Catch:{ all -> 0x0170 }
            int r0 = r0.c     // Catch:{ all -> 0x0170 }
            int r0 = r0 + r2
            int r0 = r0 + -5
            int r0 = r0 + -9
            int r0 = r0 - r3
            byte[] r0 = new byte[r0]     // Catch:{ all -> 0x0170 }
            qa r1 = r12.a     // Catch:{ all -> 0x0170 }
            byte[] r1 = r1.b     // Catch:{ all -> 0x0170 }
            r8 = 0
            r9 = 0
            qa r10 = r12.a     // Catch:{ all -> 0x0170 }
            byte[] r10 = r10.b     // Catch:{ all -> 0x0170 }
            int r10 = r10.length     // Catch:{ all -> 0x0170 }
            java.lang.System.arraycopy(r1, r8, r0, r9, r10)     // Catch:{ all -> 0x0170 }
            qa r1 = r12.a     // Catch:{ all -> 0x0170 }
            r1.b = r0     // Catch:{ all -> 0x0170 }
        L_0x00eb:
            qa r0 = r12.a     // Catch:{ all -> 0x0170 }
            byte[] r0 = r0.b     // Catch:{ all -> 0x0170 }
            int r1 = r3 + 5
            int r1 = r1 + 9
            qa r8 = r12.a     // Catch:{ all -> 0x0170 }
            byte[] r8 = r8.b     // Catch:{ all -> 0x0170 }
            qa r9 = r12.a     // Catch:{ all -> 0x0170 }
            int r9 = r9.c     // Catch:{ all -> 0x0170 }
            int r9 = r9 + -5
            int r9 = r9 + -9
            int r9 = r9 - r3
            java.lang.System.arraycopy(r0, r1, r8, r2, r9)     // Catch:{ all -> 0x0170 }
            qa r0 = r12.a     // Catch:{ all -> 0x0170 }
            r1 = 10
            r0.c = r1     // Catch:{ all -> 0x0170 }
            qa r0 = r12.a     // Catch:{ all -> 0x0170 }
            r0.a((int) r3)     // Catch:{ all -> 0x0170 }
            qa r0 = r12.a     // Catch:{ all -> 0x0170 }
            int r1 = r3 + 5
            int r1 = r1 + 9
            r0.c = r1     // Catch:{ all -> 0x0170 }
        L_0x0116:
            qa r0 = r12.a     // Catch:{ all -> 0x0170 }
            byte[] r0 = r0.b     // Catch:{ all -> 0x0170 }
            r1 = 5
            byte r1 = r0[r1]     // Catch:{ all -> 0x0170 }
            int r0 = r13.c     // Catch:{ all -> 0x0170 }
            long r8 = (long) r14     // Catch:{ all -> 0x0170 }
            long r8 = r8 - r4
            int r14 = (int) r8     // Catch:{ all -> 0x0170 }
            long r8 = r13.h     // Catch:{ all -> 0x0170 }
            long r4 = r8 - r4
            r13.h = r4     // Catch:{ all -> 0x0170 }
            r3 = 1
        L_0x0129:
            monitor-exit(r13)     // Catch:{ all -> 0x0170 }
            if (r3 == 0) goto L_0x015c
            r11.b((defpackage.rl) r12)
            if (r14 == 0) goto L_0x006b
            qa r3 = r12.a
            byte[] r3 = r3.b
            qa r4 = r12.a
            byte[] r4 = r4.b
            r5 = 14
            java.lang.System.arraycopy(r3, r2, r4, r5, r14)
            qa r2 = r12.a
            byte[] r2 = r2.b
            r3 = 5
            r2[r3] = r1
            qa r1 = r12.a
            r2 = 6
            r1.c = r2
            qa r1 = r12.a
            r1.a((int) r0)
            qa r0 = r12.a
            r0.a((int) r14)
            qa r0 = r12.a
            int r1 = r14 + 5
            int r1 = r1 + 9
            r0.c = r1
        L_0x015c:
            monitor-enter(r13)
            boolean r0 = r11.ag     // Catch:{ all -> 0x0164 }
            if (r0 == 0) goto L_0x0173
            monitor-exit(r13)     // Catch:{ all -> 0x0164 }
            goto L_0x0003
        L_0x0164:
            r0 = move-exception
            monitor-exit(r13)     // Catch:{ all -> 0x0164 }
            throw r0
        L_0x0167:
            r0 = 8
            r2 = r0
            goto L_0x00a2
        L_0x016c:
            r0 = 0
            r1 = r0
            goto L_0x00ad
        L_0x0170:
            r0 = move-exception
            monitor-exit(r13)     // Catch:{ all -> 0x0170 }
            throw r0
        L_0x0173:
            long r0 = r13.h     // Catch:{ all -> 0x0164 }
            long r2 = (long) r14     // Catch:{ all -> 0x0164 }
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L_0x0183
            long r0 = r13.h     // Catch:{ all -> 0x0164 }
            long r2 = (long) r14     // Catch:{ all -> 0x0164 }
            long r0 = r0 - r2
            r13.h = r0     // Catch:{ all -> 0x0164 }
            monitor-exit(r13)     // Catch:{ all -> 0x0164 }
            goto L_0x0068
        L_0x0183:
            monitor-exit(r13)     // Catch:{ all -> 0x0164 }
            goto L_0x0003
        L_0x0186:
            r4 = r0
            goto L_0x0095
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ry.a(rl, qb, int):void");
    }

    public final String b(String str) {
        if (this.Z != null) {
            Object obj = this.Z.get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
        }
        String a2 = qw.a(str);
        if (a2 instanceof String) {
            return a2;
        }
        return null;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
            r15 = this;
            r5 = 0
            r14 = 81
            r1 = 1
            r2 = 0
            r15.x = r15
            qa r0 = new qa
            r0.<init>()
            rl r7 = new rl
            r7.<init>(r0)
            int[] r8 = new int[r1]
            int[] r9 = new int[r1]
            r4 = r5
            r3 = r0
            r0 = r2
        L_0x0018:
            boolean r6 = r15.b     // Catch:{ Exception -> 0x0054 }
            if (r6 == 0) goto L_0x005a
            java.lang.Runnable r6 = r15.x     // Catch:{ Exception -> 0x0054 }
            if (r6 == 0) goto L_0x005a
            qa r6 = r15.a((defpackage.qa) r3)     // Catch:{ InterruptedIOException -> 0x0060 }
            byte[] r0 = r6.b     // Catch:{ Exception -> 0x0054 }
            r3 = 5
            byte r0 = r0[r3]     // Catch:{ Exception -> 0x0054 }
            r3 = r0 & 255(0xff, float:3.57E-43)
            if (r4 == 0) goto L_0x0096
            int r0 = r4.b()     // Catch:{ Exception -> 0x0054 }
            if (r0 != r3) goto L_0x0096
            long r10 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x0054 }
            r15.af = r10     // Catch:{ Exception -> 0x0054 }
            boolean r0 = r4.a()     // Catch:{ Exception -> 0x0054 }
            if (r0 != 0) goto L_0x0390
            qy r1 = new qy     // Catch:{ Exception -> 0x0054 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0054 }
            java.lang.String r4 = "verify: "
            r3.<init>(r4)     // Catch:{ Exception -> 0x0054 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ Exception -> 0x0054 }
            java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x0054 }
            r1.<init>(r0)     // Catch:{ Exception -> 0x0054 }
            throw r1     // Catch:{ Exception -> 0x0054 }
        L_0x0054:
            r0 = move-exception
            r15.ag = r2
            defpackage.qw.b()
        L_0x005a:
            r15.d()     // Catch:{ NullPointerException -> 0x0387, Exception -> 0x038a }
        L_0x005d:
            r15.b = r2
            return
        L_0x0060:
            r6 = move-exception
            boolean r10 = r15.ag     // Catch:{ Exception -> 0x0054 }
            if (r10 != 0) goto L_0x008a
            int r10 = r15.ad     // Catch:{ Exception -> 0x0054 }
            if (r0 >= r10) goto L_0x008a
            qa r6 = new qa     // Catch:{ Exception -> 0x0054 }
            r6.<init>()     // Catch:{ Exception -> 0x0054 }
            rl r10 = new rl     // Catch:{ Exception -> 0x0054 }
            r10.<init>(r6)     // Catch:{ Exception -> 0x0054 }
            r10.a()     // Catch:{ Exception -> 0x0054 }
            r11 = 80
            r6.a((byte) r11)     // Catch:{ Exception -> 0x0054 }
            byte[] r11 = ak     // Catch:{ Exception -> 0x0054 }
            r6.b((byte[]) r11)     // Catch:{ Exception -> 0x0054 }
            r11 = 1
            r6.a((byte) r11)     // Catch:{ Exception -> 0x0054 }
            r15.a((defpackage.rl) r10)     // Catch:{ Exception -> 0x0054 }
            int r0 = r0 + 1
            goto L_0x0018
        L_0x008a:
            boolean r10 = r15.ag     // Catch:{ Exception -> 0x0054 }
            if (r10 == 0) goto L_0x0095
            int r10 = r15.ad     // Catch:{ Exception -> 0x0054 }
            if (r0 >= r10) goto L_0x0095
            int r0 = r0 + 1
            goto L_0x0018
        L_0x0095:
            throw r6     // Catch:{ Exception -> 0x0054 }
        L_0x0096:
            switch(r3) {
                case 20: goto L_0x00ae;
                case 21: goto L_0x00b7;
                case 80: goto L_0x0334;
                case 81: goto L_0x0357;
                case 82: goto L_0x0357;
                case 90: goto L_0x0275;
                case 91: goto L_0x01df;
                case 92: goto L_0x020a;
                case 93: goto L_0x0196;
                case 94: goto L_0x00c2;
                case 95: goto L_0x012e;
                case 96: goto L_0x01b1;
                case 97: goto L_0x01c8;
                case 98: goto L_0x022e;
                case 99: goto L_0x0306;
                case 100: goto L_0x031d;
                default: goto L_0x0099;
            }     // Catch:{ Exception -> 0x0054 }
        L_0x0099:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ Exception -> 0x0054 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0054 }
            java.lang.String r4 = "Unknown SSH message type "
            r1.<init>(r4)     // Catch:{ Exception -> 0x0054 }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ Exception -> 0x0054 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x0054 }
            r0.<init>(r1)     // Catch:{ Exception -> 0x0054 }
            throw r0     // Catch:{ Exception -> 0x0054 }
        L_0x00ae:
            ra r0 = r15.b((defpackage.qa) r6)     // Catch:{ Exception -> 0x0054 }
            r4 = r0
            r3 = r6
            r0 = r2
            goto L_0x0018
        L_0x00b7:
            r15.c()     // Catch:{ Exception -> 0x0054 }
            r15.a((defpackage.ra) r4)     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r4 = r5
            r3 = r6
            goto L_0x0018
        L_0x00c2:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.e()     // Catch:{ Exception -> 0x0054 }
            r6.e()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            qb r3 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            byte[] r0 = r6.a((int[]) r8, (int[]) r9)     // Catch:{ Exception -> 0x0054 }
            if (r3 == 0) goto L_0x0383
            r10 = 0
            r10 = r9[r10]     // Catch:{ Exception -> 0x0054 }
            if (r10 == 0) goto L_0x0383
            r10 = 0
            r10 = r8[r10]     // Catch:{ Exception -> 0x011e }
            r11 = 0
            r11 = r9[r11]     // Catch:{ Exception -> 0x011e }
            r3.a(r0, r10, r11)     // Catch:{ Exception -> 0x011e }
            r0 = 0
            r0 = r9[r0]     // Catch:{ Exception -> 0x0054 }
            int r10 = r3.f     // Catch:{ Exception -> 0x0054 }
            int r0 = r10 - r0
            r3.f = r0     // Catch:{ Exception -> 0x0054 }
            int r0 = r3.f     // Catch:{ Exception -> 0x0054 }
            int r10 = r3.e     // Catch:{ Exception -> 0x0054 }
            int r10 = r10 / 2
            if (r0 >= r10) goto L_0x0383
            r7.a()     // Catch:{ Exception -> 0x0054 }
            r0 = 93
            r6.a((byte) r0)     // Catch:{ Exception -> 0x0054 }
            int r0 = r3.c     // Catch:{ Exception -> 0x0054 }
            r6.a((int) r0)     // Catch:{ Exception -> 0x0054 }
            int r0 = r3.e     // Catch:{ Exception -> 0x0054 }
            int r10 = r3.f     // Catch:{ Exception -> 0x0054 }
            int r0 = r0 - r10
            r6.a((int) r0)     // Catch:{ Exception -> 0x0054 }
            monitor-enter(r3)     // Catch:{ Exception -> 0x0054 }
            boolean r0 = r3.n     // Catch:{ all -> 0x012b }
            if (r0 != 0) goto L_0x0115
            r15.a((defpackage.rl) r7)     // Catch:{ all -> 0x012b }
        L_0x0115:
            monitor-exit(r3)     // Catch:{ all -> 0x012b }
            int r0 = r3.e     // Catch:{ Exception -> 0x0054 }
            r3.f = r0     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x011e:
            r0 = move-exception
            r3.f()     // Catch:{ Exception -> 0x0126 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x0126:
            r0 = move-exception
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x012b:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x012b }
            throw r0     // Catch:{ Exception -> 0x0054 }
        L_0x012e:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            qb r3 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            r6.b()     // Catch:{ Exception -> 0x0054 }
            byte[] r0 = r6.a((int[]) r8, (int[]) r9)     // Catch:{ Exception -> 0x0054 }
            if (r3 == 0) goto L_0x0383
            r10 = 0
            r10 = r9[r10]     // Catch:{ Exception -> 0x0054 }
            if (r10 == 0) goto L_0x0383
            r10 = 0
            r10 = r8[r10]     // Catch:{ Exception -> 0x0054 }
            r11 = 0
            r11 = r9[r11]     // Catch:{ Exception -> 0x0054 }
            qs r12 = r3.j     // Catch:{ NullPointerException -> 0x038d }
            java.io.OutputStream r13 = r12.c     // Catch:{ NullPointerException -> 0x038d }
            r13.write(r0, r10, r11)     // Catch:{ NullPointerException -> 0x038d }
            java.io.OutputStream r0 = r12.c     // Catch:{ NullPointerException -> 0x038d }
            r0.flush()     // Catch:{ NullPointerException -> 0x038d }
        L_0x015c:
            r0 = 0
            r0 = r9[r0]     // Catch:{ Exception -> 0x0054 }
            int r10 = r3.f     // Catch:{ Exception -> 0x0054 }
            int r0 = r10 - r0
            r3.f = r0     // Catch:{ Exception -> 0x0054 }
            int r0 = r3.f     // Catch:{ Exception -> 0x0054 }
            int r10 = r3.e     // Catch:{ Exception -> 0x0054 }
            int r10 = r10 / 2
            if (r0 >= r10) goto L_0x0383
            r7.a()     // Catch:{ Exception -> 0x0054 }
            r0 = 93
            r6.a((byte) r0)     // Catch:{ Exception -> 0x0054 }
            int r0 = r3.c     // Catch:{ Exception -> 0x0054 }
            r6.a((int) r0)     // Catch:{ Exception -> 0x0054 }
            int r0 = r3.e     // Catch:{ Exception -> 0x0054 }
            int r10 = r3.f     // Catch:{ Exception -> 0x0054 }
            int r0 = r0 - r10
            r6.a((int) r0)     // Catch:{ Exception -> 0x0054 }
            monitor-enter(r3)     // Catch:{ Exception -> 0x0054 }
            boolean r0 = r3.n     // Catch:{ all -> 0x0193 }
            if (r0 != 0) goto L_0x018a
            r15.a((defpackage.rl) r7)     // Catch:{ all -> 0x0193 }
        L_0x018a:
            monitor-exit(r3)     // Catch:{ all -> 0x0193 }
            int r0 = r3.e     // Catch:{ Exception -> 0x0054 }
            r3.f = r0     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x0193:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0193 }
            throw r0     // Catch:{ Exception -> 0x0054 }
        L_0x0196:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            qb r0 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            if (r0 == 0) goto L_0x0383
            long r10 = r6.c()     // Catch:{ Exception -> 0x0054 }
            r0.b((long) r10)     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x01b1:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            qb r0 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            if (r0 == 0) goto L_0x0383
            r0.d()     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x01c8:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            qb r0 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            if (r0 == 0) goto L_0x0383
            r0.f()     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x01df:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            qb r0 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            int r3 = r6.b()     // Catch:{ Exception -> 0x0054 }
            long r10 = r6.c()     // Catch:{ Exception -> 0x0054 }
            int r12 = r6.b()     // Catch:{ Exception -> 0x0054 }
            if (r0 == 0) goto L_0x0383
            r0.a((long) r10)     // Catch:{ Exception -> 0x0054 }
            r0.i = r12     // Catch:{ Exception -> 0x0054 }
            r10 = 1
            r0.p = r10     // Catch:{ Exception -> 0x0054 }
            r0.a((int) r3)     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x020a:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            qb r0 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            if (r0 == 0) goto L_0x0383
            int r3 = r6.b()     // Catch:{ Exception -> 0x0054 }
            r0.q = r3     // Catch:{ Exception -> 0x0054 }
            r3 = 1
            r0.n = r3     // Catch:{ Exception -> 0x0054 }
            r3 = 1
            r0.m = r3     // Catch:{ Exception -> 0x0054 }
            r3 = 0
            r0.a((int) r3)     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x022e:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            byte[] r10 = r6.g()     // Catch:{ Exception -> 0x0054 }
            int r3 = r6.e()     // Catch:{ Exception -> 0x0054 }
            if (r3 == 0) goto L_0x0273
            r3 = r1
        L_0x0243:
            qb r11 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            if (r11 == 0) goto L_0x0383
            r0 = 100
            java.lang.String r10 = defpackage.si.a((byte[]) r10)     // Catch:{ Exception -> 0x0054 }
            java.lang.String r12 = "exit-status"
            boolean r10 = r10.equals(r12)     // Catch:{ Exception -> 0x0054 }
            if (r10 == 0) goto L_0x025f
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            r11.q = r0     // Catch:{ Exception -> 0x0054 }
            r0 = 99
        L_0x025f:
            if (r3 == 0) goto L_0x026f
            r7.a()     // Catch:{ Exception -> 0x0054 }
            r6.a((byte) r0)     // Catch:{ Exception -> 0x0054 }
            int r0 = r11.c     // Catch:{ Exception -> 0x0054 }
            r6.a((int) r0)     // Catch:{ Exception -> 0x0054 }
            r15.a((defpackage.rl) r7)     // Catch:{ Exception -> 0x0054 }
        L_0x026f:
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x0273:
            r3 = r2
            goto L_0x0243
        L_0x0275:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            byte[] r0 = r6.g()     // Catch:{ Exception -> 0x0054 }
            java.lang.String r0 = defpackage.si.a((byte[]) r0)     // Catch:{ Exception -> 0x0054 }
            java.lang.String r3 = "forwarded-tcpip"
            boolean r3 = r3.equals(r0)     // Catch:{ Exception -> 0x0054 }
            if (r3 != 0) goto L_0x02c7
            java.lang.String r3 = "x11"
            boolean r3 = r3.equals(r0)     // Catch:{ Exception -> 0x0054 }
            if (r3 == 0) goto L_0x0297
            boolean r3 = r15.c     // Catch:{ Exception -> 0x0054 }
            if (r3 != 0) goto L_0x02c7
        L_0x0297:
            java.lang.String r3 = "auth-agent@openssh.com"
            boolean r3 = r3.equals(r0)     // Catch:{ Exception -> 0x0054 }
            if (r3 == 0) goto L_0x02a3
            boolean r3 = r15.d     // Catch:{ Exception -> 0x0054 }
            if (r3 != 0) goto L_0x02c7
        L_0x02a3:
            r7.a()     // Catch:{ Exception -> 0x0054 }
            r0 = 92
            r6.a((byte) r0)     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.a((int) r0)     // Catch:{ Exception -> 0x0054 }
            r0 = 1
            r6.a((int) r0)     // Catch:{ Exception -> 0x0054 }
            byte[] r0 = defpackage.si.a     // Catch:{ Exception -> 0x0054 }
            r6.b((byte[]) r0)     // Catch:{ Exception -> 0x0054 }
            byte[] r0 = defpackage.si.a     // Catch:{ Exception -> 0x0054 }
            r6.b((byte[]) r0)     // Catch:{ Exception -> 0x0054 }
            r15.a((defpackage.rl) r7)     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x02c7:
            qb r3 = defpackage.qb.a((java.lang.String) r0)     // Catch:{ Exception -> 0x0054 }
            r3.t = r15     // Catch:{ Exception -> 0x0054 }
            r3.a((defpackage.qa) r6)     // Catch:{ Exception -> 0x0054 }
            r3.a()     // Catch:{ Exception -> 0x0054 }
            java.lang.Thread r10 = new java.lang.Thread     // Catch:{ Exception -> 0x0054 }
            r10.<init>(r3)     // Catch:{ Exception -> 0x0054 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0054 }
            java.lang.String r11 = "Channel "
            r3.<init>(r11)     // Catch:{ Exception -> 0x0054 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ Exception -> 0x0054 }
            java.lang.String r3 = " "
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ Exception -> 0x0054 }
            java.lang.String r3 = r15.p     // Catch:{ Exception -> 0x0054 }
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ Exception -> 0x0054 }
            java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x0054 }
            r10.setName(r0)     // Catch:{ Exception -> 0x0054 }
            boolean r0 = r15.m     // Catch:{ Exception -> 0x0054 }
            if (r0 == 0) goto L_0x02ff
            boolean r0 = r15.m     // Catch:{ Exception -> 0x0054 }
            r10.setDaemon(r0)     // Catch:{ Exception -> 0x0054 }
        L_0x02ff:
            r10.start()     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x0306:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            qb r0 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            if (r0 == 0) goto L_0x0383
            r3 = 1
            r0.r = r3     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x031d:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.b()     // Catch:{ Exception -> 0x0054 }
            qb r0 = defpackage.qb.a(r0, r15)     // Catch:{ Exception -> 0x0054 }
            if (r0 == 0) goto L_0x0383
            r3 = 0
            r0.r = r3     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x0334:
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            r6.g()     // Catch:{ Exception -> 0x0054 }
            int r0 = r6.e()     // Catch:{ Exception -> 0x0054 }
            if (r0 == 0) goto L_0x0355
            r0 = r1
        L_0x0344:
            if (r0 == 0) goto L_0x0383
            r7.a()     // Catch:{ Exception -> 0x0054 }
            r0 = 82
            r6.a((byte) r0)     // Catch:{ Exception -> 0x0054 }
            r15.a((defpackage.rl) r7)     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x0355:
            r0 = r2
            goto L_0x0344
        L_0x0357:
            ry$a r0 = r15.aj     // Catch:{ Exception -> 0x0054 }
            java.lang.Thread r10 = r0.a     // Catch:{ Exception -> 0x0054 }
            if (r10 == 0) goto L_0x0383
            ry$a r11 = r15.aj     // Catch:{ Exception -> 0x0054 }
            if (r3 != r14) goto L_0x0381
            r0 = r1
        L_0x0362:
            r11.b = r0     // Catch:{ Exception -> 0x0054 }
            if (r3 != r14) goto L_0x037a
            ry$a r0 = r15.aj     // Catch:{ Exception -> 0x0054 }
            int r0 = r0.c     // Catch:{ Exception -> 0x0054 }
            if (r0 != 0) goto L_0x037a
            r6.b()     // Catch:{ Exception -> 0x0054 }
            r6.d()     // Catch:{ Exception -> 0x0054 }
            ry$a r0 = r15.aj     // Catch:{ Exception -> 0x0054 }
            int r3 = r6.b()     // Catch:{ Exception -> 0x0054 }
            r0.c = r3     // Catch:{ Exception -> 0x0054 }
        L_0x037a:
            r10.interrupt()     // Catch:{ Exception -> 0x0054 }
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x0381:
            r0 = r2
            goto L_0x0362
        L_0x0383:
            r0 = r2
            r3 = r6
            goto L_0x0018
        L_0x0387:
            r0 = move-exception
            goto L_0x005d
        L_0x038a:
            r0 = move-exception
            goto L_0x005d
        L_0x038d:
            r0 = move-exception
            goto L_0x015c
        L_0x0390:
            r0 = r2
            r3 = r6
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ry.run():void");
    }
}
