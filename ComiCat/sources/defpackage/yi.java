package defpackage;

import java.io.IOException;
import java.io.PrintStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.StringTokenizer;
import org.apache.http.protocol.HttpRequestExecutor;

/* renamed from: yi  reason: default package */
/* compiled from: NameServiceClient */
final class yi implements Runnable {
    private static final int c = xj.a("jcifs.netbios.snd_buf_size", 576);
    private static final int d = xj.a("jcifs.netbios.rcv_buf_size", 576);
    private static final int e = xj.a("jcifs.netbios.soTimeout", 5000);
    private static final int f = xj.a("jcifs.netbios.retryCount", 2);
    private static final int g = xj.a("jcifs.netbios.retryTimeout", (int) HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
    private static final int h = xj.a("jcifs.netbios.lport", 0);
    private static final InetAddress i = xj.a("jcifs.netbios.laddr", (InetAddress) null);
    private static final String j = xj.a("jcifs.resolveOrder");
    private static abx k = abx.a();
    InetAddress a;
    InetAddress b;
    private final Object l;
    private int m;
    private int n;
    private byte[] o;
    private byte[] p;
    private DatagramSocket q;
    private DatagramPacket r;
    private DatagramPacket s;
    private HashMap t;
    private Thread u;
    private int v;
    private int[] w;

    yi() {
        this(h, i);
    }

    private yi(int i2, InetAddress inetAddress) {
        this.l = new Object();
        this.t = new HashMap();
        this.v = 0;
        this.m = i2;
        this.a = inetAddress;
        try {
            this.b = xj.a("jcifs.netbios.baddr", InetAddress.getByName("255.255.255.255"));
        } catch (UnknownHostException e2) {
        }
        this.o = new byte[c];
        this.p = new byte[d];
        this.s = new DatagramPacket(this.o, c, this.b, 137);
        this.r = new DatagramPacket(this.p, d);
        if (j != null && j.length() != 0) {
            int[] iArr = new int[3];
            StringTokenizer stringTokenizer = new StringTokenizer(j, ",");
            int i3 = 0;
            while (stringTokenizer.hasMoreTokens()) {
                String trim = stringTokenizer.nextToken().trim();
                if (trim.equalsIgnoreCase("LMHOSTS")) {
                    iArr[i3] = 1;
                    i3++;
                } else if (trim.equalsIgnoreCase("WINS")) {
                    if (yk.c() != null) {
                        iArr[i3] = 3;
                        i3++;
                    } else if (abx.a > 1) {
                        k.println("NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
                    }
                } else if (trim.equalsIgnoreCase("BCAST")) {
                    iArr[i3] = 2;
                    i3++;
                } else if (!trim.equalsIgnoreCase("DNS") && abx.a > 1) {
                    k.println("unknown resolver method: " + trim);
                }
            }
            this.w = new int[i3];
            System.arraycopy(iArr, 0, this.w, 0, i3);
        } else if (yk.c() == null) {
            this.w = new int[2];
            this.w[0] = 1;
            this.w[1] = 2;
        } else {
            this.w = new int[3];
            this.w[0] = 1;
            this.w[1] = 3;
            this.w[2] = 2;
        }
    }

    private void a() {
        synchronized (this.l) {
            if (this.q != null) {
                this.q.close();
                this.q = null;
            }
            this.u = null;
            this.t.clear();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:103:0x0178, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:106:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:?, code lost:
        r0 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00f9, code lost:
        if (r11 <= 0) goto L_0x0149;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00fb, code lost:
        r10.wait((long) r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0101, code lost:
        if (r10.j == false) goto L_0x013d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0107, code lost:
        if (r9.s != r10.u) goto L_0x013d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:?, code lost:
        r8.t.remove(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0132, code lost:
        throw new java.io.IOException(r0.getMessage());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0133, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:?, code lost:
        r10.j = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x0144, code lost:
        r11 = (int) (((long) r11) - (java.lang.System.currentTimeMillis() - r0));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:?, code lost:
        r8.t.remove(r2);
        r1 = r8.l;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0150, code lost:
        monitor-enter(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0157, code lost:
        if (defpackage.yk.a(r9.y) != false) goto L_0x015c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0159, code lost:
        monitor-exit(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x0162, code lost:
        if (r9.y != defpackage.yk.c()) goto L_0x0167;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x0164, code lost:
        defpackage.yk.d();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0167, code lost:
        r9.y = defpackage.yk.c();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x016d, code lost:
        monitor-exit(r1);
     */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:71:0x0134=Splitter:B:71:0x0134, B:88:0x015a=Splitter:B:88:0x015a} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(defpackage.yj r9, defpackage.yj r10, int r11) {
        /*
            r8 = this;
            r1 = 0
            java.net.InetAddress[] r0 = defpackage.yk.a
            int r0 = r0.length
            if (r0 != 0) goto L_0x0007
            r0 = 1
        L_0x0007:
            monitor-enter(r10)
        L_0x0008:
            int r3 = r0 + -1
            if (r0 <= 0) goto L_0x015a
            java.lang.Object r4 = r8.l     // Catch:{ InterruptedException -> 0x0127, all -> 0x0175 }
            monitor-enter(r4)     // Catch:{ InterruptedException -> 0x0127, all -> 0x0175 }
            int r0 = r8.v     // Catch:{ all -> 0x017a }
            int r0 = r0 + 1
            r8.v = r0     // Catch:{ all -> 0x017a }
            r2 = 65535(0xffff, float:9.1834E-41)
            r0 = r0 & r2
            if (r0 != 0) goto L_0x001e
            r0 = 1
            r8.v = r0     // Catch:{ all -> 0x017a }
        L_0x001e:
            int r0 = r8.v     // Catch:{ all -> 0x017a }
            r9.c = r0     // Catch:{ all -> 0x017a }
            java.lang.Integer r2 = new java.lang.Integer     // Catch:{ all -> 0x017a }
            int r0 = r9.c     // Catch:{ all -> 0x017a }
            r2.<init>(r0)     // Catch:{ all -> 0x017a }
            java.net.DatagramPacket r0 = r8.s     // Catch:{ all -> 0x0123 }
            java.net.InetAddress r1 = r9.y     // Catch:{ all -> 0x0123 }
            r0.setAddress(r1)     // Catch:{ all -> 0x0123 }
            java.net.DatagramPacket r5 = r8.s     // Catch:{ all -> 0x0123 }
            byte[] r6 = r8.o     // Catch:{ all -> 0x0123 }
            int r0 = r9.c     // Catch:{ all -> 0x0123 }
            r1 = 0
            defpackage.yj.a(r0, r6, r1)     // Catch:{ all -> 0x0123 }
            r1 = 2
            boolean r0 = r9.k     // Catch:{ all -> 0x0123 }
            if (r0 == 0) goto L_0x0110
            r0 = 128(0x80, float:1.794E-43)
        L_0x0041:
            int r7 = r9.d     // Catch:{ all -> 0x0123 }
            int r7 = r7 << 3
            r7 = r7 & 120(0x78, float:1.68E-43)
            int r7 = r7 + r0
            boolean r0 = r9.l     // Catch:{ all -> 0x0123 }
            if (r0 == 0) goto L_0x0113
            r0 = 4
        L_0x004d:
            int r7 = r7 + r0
            boolean r0 = r9.m     // Catch:{ all -> 0x0123 }
            if (r0 == 0) goto L_0x0116
            r0 = 2
        L_0x0053:
            int r7 = r7 + r0
            boolean r0 = r9.n     // Catch:{ all -> 0x0123 }
            if (r0 == 0) goto L_0x0119
            r0 = 1
        L_0x0059:
            int r0 = r0 + r7
            byte r0 = (byte) r0     // Catch:{ all -> 0x0123 }
            r6[r1] = r0     // Catch:{ all -> 0x0123 }
            r7 = 3
            boolean r0 = r9.o     // Catch:{ all -> 0x0123 }
            if (r0 == 0) goto L_0x011c
            r0 = 128(0x80, float:1.794E-43)
            r1 = r0
        L_0x0065:
            boolean r0 = r9.p     // Catch:{ all -> 0x0123 }
            if (r0 == 0) goto L_0x0120
            r0 = 16
        L_0x006b:
            int r0 = r0 + r1
            int r1 = r9.e     // Catch:{ all -> 0x0123 }
            r1 = r1 & 15
            int r0 = r0 + r1
            byte r0 = (byte) r0     // Catch:{ all -> 0x0123 }
            r6[r7] = r0     // Catch:{ all -> 0x0123 }
            int r0 = r9.f     // Catch:{ all -> 0x0123 }
            r1 = 4
            defpackage.yj.a(r0, r6, r1)     // Catch:{ all -> 0x0123 }
            int r0 = r9.g     // Catch:{ all -> 0x0123 }
            r1 = 6
            defpackage.yj.a(r0, r6, r1)     // Catch:{ all -> 0x0123 }
            int r0 = r9.h     // Catch:{ all -> 0x0123 }
            r1 = 8
            defpackage.yj.a(r0, r6, r1)     // Catch:{ all -> 0x0123 }
            int r0 = r9.i     // Catch:{ all -> 0x0123 }
            r1 = 10
            defpackage.yj.a(r0, r6, r1)     // Catch:{ all -> 0x0123 }
            int r0 = r9.a(r6)     // Catch:{ all -> 0x0123 }
            int r0 = r0 + 12
            int r0 = r0 + 0
            r5.setLength(r0)     // Catch:{ all -> 0x0123 }
            r0 = 0
            r10.j = r0     // Catch:{ all -> 0x0123 }
            java.util.HashMap r0 = r8.t     // Catch:{ all -> 0x0123 }
            r0.put(r2, r10)     // Catch:{ all -> 0x0123 }
            int r0 = r11 + 1000
            r1 = 0
            r8.n = r1     // Catch:{ all -> 0x0123 }
            int r1 = e     // Catch:{ all -> 0x0123 }
            if (r1 == 0) goto L_0x00b2
            int r1 = e     // Catch:{ all -> 0x0123 }
            int r0 = java.lang.Math.max(r1, r0)     // Catch:{ all -> 0x0123 }
            r8.n = r0     // Catch:{ all -> 0x0123 }
        L_0x00b2:
            java.net.DatagramSocket r0 = r8.q     // Catch:{ all -> 0x0123 }
            if (r0 != 0) goto L_0x00d5
            java.net.DatagramSocket r0 = new java.net.DatagramSocket     // Catch:{ all -> 0x0123 }
            int r1 = r8.m     // Catch:{ all -> 0x0123 }
            java.net.InetAddress r5 = r8.a     // Catch:{ all -> 0x0123 }
            r0.<init>(r1, r5)     // Catch:{ all -> 0x0123 }
            r8.q = r0     // Catch:{ all -> 0x0123 }
            java.lang.Thread r0 = new java.lang.Thread     // Catch:{ all -> 0x0123 }
            java.lang.String r1 = "JCIFS-NameServiceClient"
            r0.<init>(r8, r1)     // Catch:{ all -> 0x0123 }
            r8.u = r0     // Catch:{ all -> 0x0123 }
            java.lang.Thread r0 = r8.u     // Catch:{ all -> 0x0123 }
            r1 = 1
            r0.setDaemon(r1)     // Catch:{ all -> 0x0123 }
            java.lang.Thread r0 = r8.u     // Catch:{ all -> 0x0123 }
            r0.start()     // Catch:{ all -> 0x0123 }
        L_0x00d5:
            java.net.DatagramSocket r0 = r8.q     // Catch:{ all -> 0x0123 }
            java.net.DatagramPacket r1 = r8.s     // Catch:{ all -> 0x0123 }
            r0.send(r1)     // Catch:{ all -> 0x0123 }
            int r0 = defpackage.abx.a     // Catch:{ all -> 0x0123 }
            r1 = 3
            if (r0 <= r1) goto L_0x00f4
            abx r0 = k     // Catch:{ all -> 0x0123 }
            r0.println(r9)     // Catch:{ all -> 0x0123 }
            abx r0 = k     // Catch:{ all -> 0x0123 }
            byte[] r1 = r8.o     // Catch:{ all -> 0x0123 }
            r5 = 0
            java.net.DatagramPacket r6 = r8.s     // Catch:{ all -> 0x0123 }
            int r6 = r6.getLength()     // Catch:{ all -> 0x0123 }
            defpackage.abw.a((java.io.PrintStream) r0, (byte[]) r1, (int) r5, (int) r6)     // Catch:{ all -> 0x0123 }
        L_0x00f4:
            monitor-exit(r4)     // Catch:{ all -> 0x0123 }
            long r0 = java.lang.System.currentTimeMillis()     // Catch:{ InterruptedException -> 0x0178 }
        L_0x00f9:
            if (r11 <= 0) goto L_0x0149
            long r4 = (long) r11     // Catch:{ InterruptedException -> 0x0178 }
            r10.wait(r4)     // Catch:{ InterruptedException -> 0x0178 }
            boolean r4 = r10.j     // Catch:{ InterruptedException -> 0x0178 }
            if (r4 == 0) goto L_0x013d
            int r4 = r9.s     // Catch:{ InterruptedException -> 0x0178 }
            int r5 = r10.u     // Catch:{ InterruptedException -> 0x0178 }
            if (r4 != r5) goto L_0x013d
            java.util.HashMap r0 = r8.t     // Catch:{ all -> 0x013a }
            r0.remove(r2)     // Catch:{ all -> 0x013a }
            monitor-exit(r10)     // Catch:{ all -> 0x013a }
        L_0x010f:
            return
        L_0x0110:
            r0 = 0
            goto L_0x0041
        L_0x0113:
            r0 = 0
            goto L_0x004d
        L_0x0116:
            r0 = 0
            goto L_0x0053
        L_0x0119:
            r0 = 0
            goto L_0x0059
        L_0x011c:
            r0 = 0
            r1 = r0
            goto L_0x0065
        L_0x0120:
            r0 = 0
            goto L_0x006b
        L_0x0123:
            r0 = move-exception
            r1 = r2
        L_0x0125:
            monitor-exit(r4)     // Catch:{ all -> 0x017a }
            throw r0     // Catch:{ InterruptedException -> 0x0127, all -> 0x0175 }
        L_0x0127:
            r0 = move-exception
            r2 = r1
        L_0x0129:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x0133 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0133 }
            r1.<init>(r0)     // Catch:{ all -> 0x0133 }
            throw r1     // Catch:{ all -> 0x0133 }
        L_0x0133:
            r0 = move-exception
        L_0x0134:
            java.util.HashMap r1 = r8.t     // Catch:{ all -> 0x013a }
            r1.remove(r2)     // Catch:{ all -> 0x013a }
            throw r0     // Catch:{ all -> 0x013a }
        L_0x013a:
            r0 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x013a }
            throw r0
        L_0x013d:
            r4 = 0
            r10.j = r4     // Catch:{ InterruptedException -> 0x0178 }
            long r4 = (long) r11     // Catch:{ InterruptedException -> 0x0178 }
            long r6 = java.lang.System.currentTimeMillis()     // Catch:{ InterruptedException -> 0x0178 }
            long r6 = r6 - r0
            long r4 = r4 - r6
            int r11 = (int) r4
            goto L_0x00f9
        L_0x0149:
            java.util.HashMap r0 = r8.t     // Catch:{ all -> 0x013a }
            r0.remove(r2)     // Catch:{ all -> 0x013a }
            java.lang.Object r1 = r8.l     // Catch:{ all -> 0x013a }
            monitor-enter(r1)     // Catch:{ all -> 0x013a }
            java.net.InetAddress r0 = r9.y     // Catch:{ all -> 0x0172 }
            boolean r0 = defpackage.yk.a((java.net.InetAddress) r0)     // Catch:{ all -> 0x0172 }
            if (r0 != 0) goto L_0x015c
            monitor-exit(r1)     // Catch:{ all -> 0x0172 }
        L_0x015a:
            monitor-exit(r10)     // Catch:{ all -> 0x013a }
            goto L_0x010f
        L_0x015c:
            java.net.InetAddress r0 = r9.y     // Catch:{ all -> 0x0172 }
            java.net.InetAddress r4 = defpackage.yk.c()     // Catch:{ all -> 0x0172 }
            if (r0 != r4) goto L_0x0167
            defpackage.yk.d()     // Catch:{ all -> 0x0172 }
        L_0x0167:
            java.net.InetAddress r0 = defpackage.yk.c()     // Catch:{ all -> 0x0172 }
            r9.y = r0     // Catch:{ all -> 0x0172 }
            monitor-exit(r1)     // Catch:{ all -> 0x0172 }
            r0 = r3
            r1 = r2
            goto L_0x0008
        L_0x0172:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0172 }
            throw r0     // Catch:{ all -> 0x013a }
        L_0x0175:
            r0 = move-exception
            r2 = r1
            goto L_0x0134
        L_0x0178:
            r0 = move-exception
            goto L_0x0129
        L_0x017a:
            r0 = move-exception
            goto L_0x0125
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yi.a(yj, yj, int):void");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v6, resolved type: boolean} */
    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r0v1, types: [int] */
    /* JADX WARNING: type inference failed for: r0v17 */
    /* JADX WARNING: type inference failed for: r0v18 */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0070, code lost:
        continue;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0054  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x002c A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final defpackage.yk a(defpackage.yf r9, java.net.InetAddress r10) {
        /*
            r8 = this;
            r7 = 3
            r1 = 1
            r0 = 0
            yg r4 = new yg
            r4.<init>(r9)
            yh r5 = new yh
            r5.<init>()
            if (r10 == 0) goto L_0x0064
            r4.y = r10
            byte[] r2 = r10.getAddress()
            byte r2 = r2[r7]
            r3 = -1
            if (r2 != r3) goto L_0x001b
            r0 = r1
        L_0x001b:
            r4.p = r0
            int r0 = f
        L_0x001f:
            int r2 = g     // Catch:{ IOException -> 0x0042 }
            r8.a(r4, r5, r2)     // Catch:{ IOException -> 0x0042 }
            boolean r2 = r5.j
            if (r2 == 0) goto L_0x0054
            int r2 = r5.e
            if (r2 != 0) goto L_0x0054
            yk[] r0 = r5.b
            int r0 = r0.length
            int r0 = r0 + -1
            yk[] r1 = r5.b
            r1 = r1[r0]
            yf r1 = r1.f
            int r2 = r10.hashCode()
            r1.e = r2
            yk[] r1 = r5.b
            r0 = r1[r0]
        L_0x0041:
            return r0
        L_0x0042:
            r0 = move-exception
            int r2 = defpackage.abx.a
            if (r2 <= r1) goto L_0x004c
            abx r1 = k
            r0.printStackTrace(r1)
        L_0x004c:
            java.net.UnknownHostException r0 = new java.net.UnknownHostException
            java.lang.String r1 = r9.b
            r0.<init>(r1)
            throw r0
        L_0x0054:
            int r0 = r0 + -1
            if (r0 <= 0) goto L_0x005c
            boolean r2 = r4.p
            if (r2 != 0) goto L_0x001f
        L_0x005c:
            java.net.UnknownHostException r0 = new java.net.UnknownHostException
            java.lang.String r1 = r9.b
            r0.<init>(r1)
            throw r0
        L_0x0064:
            int[] r2 = r8.w
            int r2 = r2.length
            if (r0 >= r2) goto L_0x00e8
            int[] r2 = r8.w     // Catch:{ IOException -> 0x00cc }
            r2 = r2[r0]     // Catch:{ IOException -> 0x00cc }
            switch(r2) {
                case 1: goto L_0x0073;
                case 2: goto L_0x0080;
                case 3: goto L_0x0080;
                default: goto L_0x0070;
            }     // Catch:{ IOException -> 0x00cc }
        L_0x0070:
            int r0 = r0 + 1
            goto L_0x0064
        L_0x0073:
            yk r2 = defpackage.ye.a((defpackage.yf) r9)     // Catch:{ IOException -> 0x00cc }
            if (r2 == 0) goto L_0x0070
            yf r3 = r2.f     // Catch:{ IOException -> 0x00cc }
            r6 = 0
            r3.e = r6     // Catch:{ IOException -> 0x00cc }
            r0 = r2
            goto L_0x0041
        L_0x0080:
            int[] r2 = r8.w     // Catch:{ IOException -> 0x00cc }
            r2 = r2[r0]     // Catch:{ IOException -> 0x00cc }
            if (r2 != r7) goto L_0x00c4
            java.lang.String r2 = r9.b     // Catch:{ IOException -> 0x00cc }
            java.lang.String r3 = "\u0001\u0002__MSBROWSE__\u0002"
            if (r2 == r3) goto L_0x00c4
            int r2 = r9.d     // Catch:{ IOException -> 0x00cc }
            r3 = 29
            if (r2 == r3) goto L_0x00c4
            java.net.InetAddress r2 = defpackage.yk.c()     // Catch:{ IOException -> 0x00cc }
            r4.y = r2     // Catch:{ IOException -> 0x00cc }
            r2 = 0
            r4.p = r2     // Catch:{ IOException -> 0x00cc }
        L_0x009b:
            int r2 = f     // Catch:{ IOException -> 0x00cc }
        L_0x009d:
            int r3 = r2 + -1
            if (r2 <= 0) goto L_0x0070
            int r2 = g     // Catch:{ IOException -> 0x00ce }
            r8.a(r4, r5, r2)     // Catch:{ IOException -> 0x00ce }
            boolean r2 = r5.j     // Catch:{ IOException -> 0x00cc }
            if (r2 == 0) goto L_0x00e0
            int r2 = r5.e     // Catch:{ IOException -> 0x00cc }
            if (r2 != 0) goto L_0x00e0
            yk[] r2 = r5.b     // Catch:{ IOException -> 0x00cc }
            r3 = 0
            r2 = r2[r3]     // Catch:{ IOException -> 0x00cc }
            yf r2 = r2.f     // Catch:{ IOException -> 0x00cc }
            java.net.InetAddress r3 = r4.y     // Catch:{ IOException -> 0x00cc }
            int r3 = r3.hashCode()     // Catch:{ IOException -> 0x00cc }
            r2.e = r3     // Catch:{ IOException -> 0x00cc }
            yk[] r2 = r5.b     // Catch:{ IOException -> 0x00cc }
            r3 = 0
            r0 = r2[r3]     // Catch:{ IOException -> 0x00cc }
            goto L_0x0041
        L_0x00c4:
            java.net.InetAddress r2 = r8.b     // Catch:{ IOException -> 0x00cc }
            r4.y = r2     // Catch:{ IOException -> 0x00cc }
            r2 = 1
            r4.p = r2     // Catch:{ IOException -> 0x00cc }
            goto L_0x009b
        L_0x00cc:
            r2 = move-exception
            goto L_0x0070
        L_0x00ce:
            r2 = move-exception
            int r3 = defpackage.abx.a     // Catch:{ IOException -> 0x00cc }
            if (r3 <= r1) goto L_0x00d8
            abx r3 = k     // Catch:{ IOException -> 0x00cc }
            r2.printStackTrace(r3)     // Catch:{ IOException -> 0x00cc }
        L_0x00d8:
            java.net.UnknownHostException r2 = new java.net.UnknownHostException     // Catch:{ IOException -> 0x00cc }
            java.lang.String r3 = r9.b     // Catch:{ IOException -> 0x00cc }
            r2.<init>(r3)     // Catch:{ IOException -> 0x00cc }
            throw r2     // Catch:{ IOException -> 0x00cc }
        L_0x00e0:
            int[] r2 = r8.w     // Catch:{ IOException -> 0x00cc }
            r2 = r2[r0]     // Catch:{ IOException -> 0x00cc }
            if (r2 == r7) goto L_0x0070
            r2 = r3
            goto L_0x009d
        L_0x00e8:
            java.net.UnknownHostException r0 = new java.net.UnknownHostException
            java.lang.String r1 = r9.b
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yi.a(yf, java.net.InetAddress):yk");
    }

    /* access modifiers changed from: package-private */
    public final yk[] a(yk ykVar) {
        yn ynVar = new yn(ykVar);
        ym ymVar = new ym(new yf("*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000", 0, (String) null));
        ymVar.y = InetAddress.getByName(ykVar.g());
        int i2 = f;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                try {
                    a(ymVar, ynVar, g);
                    if (!ynVar.j || ynVar.e != 0) {
                        i2 = i3;
                    } else {
                        int hashCode = ymVar.y.hashCode();
                        for (yk ykVar2 : ynVar.z) {
                            ykVar2.f.e = hashCode;
                        }
                        return ynVar.z;
                    }
                } catch (IOException e2) {
                    if (abx.a > 1) {
                        e2.printStackTrace(k);
                    }
                    throw new UnknownHostException(ykVar.toString());
                }
            } else {
                throw new UnknownHostException(ykVar.f.b);
            }
        }
    }

    public final void run() {
        while (this.u == Thread.currentThread()) {
            try {
                this.r.setLength(d);
                this.q.setSoTimeout(this.n);
                this.q.receive(this.r);
                if (abx.a > 3) {
                    k.println("NetBIOS: new data read from socket");
                }
                yj yjVar = (yj) this.t.get(new Integer(yj.b(this.p, 0)));
                if (yjVar != null && !yjVar.j) {
                    synchronized (yjVar) {
                        byte[] bArr = this.p;
                        yjVar.c = yj.b(bArr, 0);
                        yjVar.k = (bArr[2] & 128) != 0;
                        yjVar.d = (bArr[2] & 120) >> 3;
                        yjVar.l = (bArr[2] & 4) != 0;
                        yjVar.m = (bArr[2] & 2) != 0;
                        yjVar.n = (bArr[2] & 1) != 0;
                        yjVar.o = (bArr[3] & 128) != 0;
                        yjVar.p = (bArr[3] & 16) != 0;
                        yjVar.e = bArr[3] & 15;
                        yjVar.f = yj.b(bArr, 4);
                        yjVar.g = yj.b(bArr, 6);
                        yjVar.h = yj.b(bArr, 8);
                        yjVar.i = yj.b(bArr, 10);
                        yjVar.b(bArr);
                        yjVar.j = true;
                        if (abx.a > 3) {
                            k.println(yjVar);
                            abw.a((PrintStream) k, this.p, 0, this.r.getLength());
                        }
                        yjVar.notify();
                    }
                }
            } catch (SocketTimeoutException e2) {
                a();
                return;
            } catch (Exception e3) {
                try {
                    if (abx.a > 2) {
                        e3.printStackTrace(k);
                    }
                    return;
                } finally {
                    a();
                }
            }
        }
        a();
    }
}
