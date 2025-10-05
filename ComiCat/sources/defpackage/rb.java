package defpackage;

import android.support.v4.app.NotificationCompat;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: rb  reason: default package */
/* compiled from: KeyPair */
public abstract class rb {
    static byte[][] d = {si.a("Proc-Type: 4,ENCRYPTED"), si.a("DEK-Info: DES-EDE3-CBC,")};
    private static final byte[] g = si.a("\n");
    private static byte[] k = si.a(" ");
    private static final String[] n = {"PuTTY-User-Key-File-2: ", "Encryption: ", "Comment: ", "Public-Lines: "};
    private static final String[] o = {"Private-Lines: "};
    private static final String[] p = {"Private-MAC: "};
    int a = 0;
    protected String b = "no comment";
    qw c = null;
    protected boolean e = false;
    protected byte[] f = null;
    private ql h;
    private qp i;
    private byte[] j;
    private byte[] l = null;
    private byte[] m = null;

    /* renamed from: rb$a */
    /* compiled from: KeyPair */
    class a {
        byte[] a;
        int b;
        int c;

        a(rb rbVar, byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        private a(byte[] bArr, int i, int i2) {
            this.a = bArr;
            this.b = i;
            this.c = i2;
            if (i + i2 > bArr.length) {
                throw new b();
            }
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v2, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v5, resolved type: byte} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: byte} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private int a(int[] r7) {
            /*
                r6 = this;
                r4 = 0
                r0 = r7[r4]
                byte[] r2 = r6.a
                int r1 = r0 + 1
                byte r0 = r2[r0]
                r0 = r0 & 255(0xff, float:3.57E-43)
                r2 = r0 & 128(0x80, float:1.794E-43)
                if (r2 == 0) goto L_0x0025
                r0 = r0 & 127(0x7f, float:1.78E-43)
                r2 = r0
                r0 = r4
            L_0x0013:
                int r3 = r2 + -1
                if (r2 <= 0) goto L_0x0025
                int r0 = r0 << 8
                byte[] r5 = r6.a
                int r2 = r1 + 1
                byte r1 = r5[r1]
                r1 = r1 & 255(0xff, float:3.57E-43)
                int r0 = r0 + r1
                r1 = r2
                r2 = r3
                goto L_0x0013
            L_0x0025:
                r7[r4] = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.rb.a.a(int[]):int");
        }

        /* access modifiers changed from: package-private */
        public final byte[] a() {
            int[] iArr = {this.b + 1};
            int a2 = a(iArr);
            byte[] bArr = new byte[a2];
            System.arraycopy(this.a, iArr[0], bArr, 0, bArr.length);
            return bArr;
        }

        /* access modifiers changed from: package-private */
        public final a[] b() {
            int i = 0;
            byte b2 = this.a[this.b];
            int[] iArr = {this.b + 1};
            int a2 = a(iArr);
            if (b2 == 5) {
                return new a[0];
            }
            int i2 = iArr[0];
            Vector vector = new Vector();
            while (a2 > 0) {
                int i3 = i2 + 1;
                iArr[0] = i3;
                int a3 = a(iArr);
                int i4 = iArr[0];
                int i5 = (a2 - 1) - (i4 - i3);
                vector.addElement(new a(this.a, i3 - 1, (i4 - i3) + 1 + a3));
                i2 = i4 + a3;
                a2 = i5 - a3;
            }
            a[] aVarArr = new a[vector.size()];
            while (true) {
                int i6 = i;
                if (i6 >= vector.size()) {
                    return aVarArr;
                }
                aVarArr[i6] = (a) vector.elementAt(i6);
                i = i6 + 1;
            }
        }
    }

    /* renamed from: rb$b */
    /* compiled from: KeyPair */
    class b extends Exception {
        b() {
        }
    }

    public rb(qw qwVar) {
        this.c = qwVar;
    }

    private static byte a(byte b2) {
        return (48 > b2 || b2 > 57) ? (byte) ((b2 - 97) + 10) : (byte) (b2 - 48);
    }

    static int a(int i2) {
        int i3 = 1;
        if (i2 > 127) {
            while (i2 > 0) {
                i2 >>>= 8;
                i3++;
            }
        }
        return i3;
    }

    static int a(byte[] bArr, byte b2, int i2, byte[] bArr2) {
        bArr[i2] = b2;
        int a2 = a(bArr, i2 + 1, bArr2.length);
        System.arraycopy(bArr2, 0, bArr, a2, bArr2.length);
        return a2 + bArr2.length;
    }

    static int a(byte[] bArr, int i2) {
        bArr[0] = 48;
        return a(bArr, 1, i2);
    }

    static int a(byte[] bArr, int i2, int i3) {
        int a2 = a(i3) - 1;
        if (a2 == 0) {
            int i4 = i2 + 1;
            bArr[i2] = (byte) i3;
            return i4;
        }
        int i5 = i2 + 1;
        bArr[i2] = (byte) (a2 | NotificationCompat.FLAG_HIGH_PRIORITY);
        int i6 = i5 + a2;
        while (a2 > 0) {
            bArr[(i5 + a2) - 1] = (byte) (i3 & 255);
            i3 >>>= 8;
            a2--;
        }
        return i6;
    }

    static int a(byte[] bArr, int i2, byte[] bArr2) {
        bArr[i2] = 2;
        int a2 = a(bArr, i2 + 1, bArr2.length);
        System.arraycopy(bArr2, 0, bArr, a2, bArr2.length);
        return a2 + bArr2.length;
    }

    /* JADX WARNING: type inference failed for: r3v118 */
    /* JADX WARNING: type inference failed for: r3v126 */
    /* JADX WARNING: type inference failed for: r3v129 */
    /* JADX WARNING: type inference failed for: r3v132 */
    /* JADX WARNING: type inference failed for: r3v137 */
    /* JADX WARNING: type inference failed for: r3v138 */
    /* JADX WARNING: type inference failed for: r3v143 */
    /* JADX WARNING: CFG modification limit reached, blocks count: 473 */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x0222, code lost:
        if (r15[r0] != 65) goto L_0x02a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:143:0x0226, code lost:
        if ((r0 + 7) >= r1) goto L_0x02a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x022e, code lost:
        if (r15[r0 + 1] != 69) goto L_0x02a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x0236, code lost:
        if (r15[r0 + 2] != 83) goto L_0x02a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:0x023e, code lost:
        if (r15[r0 + 3] != 45) goto L_0x02a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x0246, code lost:
        if (r15[r0 + 4] != 50) goto L_0x02a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x024e, code lost:
        if (r15[r0 + 5] != 53) goto L_0x02a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:155:0x0256, code lost:
        if (r15[r0 + 6] != 54) goto L_0x02a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:157:0x025e, code lost:
        if (r15[r0 + 7] != 45) goto L_0x02a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x0260, code lost:
        r3 = r0 + 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x026c, code lost:
        if (defpackage.ry.c(defpackage.qw.a("aes256-cbc")) == false) goto L_0x028b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x026e, code lost:
        r0 = (defpackage.ql) java.lang.Class.forName(defpackage.qw.a("aes256-cbc")).newInstance();
        r7 = r0;
        r9 = new byte[r0.a()];
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:162:0x029f, code lost:
        throw new defpackage.qy("privatekey: aes256-cbc is not available " + r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:164:0x02a4, code lost:
        if (r15[r0] != 65) goto L_0x0322;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:166:0x02a8, code lost:
        if ((r0 + 7) >= r1) goto L_0x0322;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:168:0x02b0, code lost:
        if (r15[r0 + 1] != 69) goto L_0x0322;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:170:0x02b8, code lost:
        if (r15[r0 + 2] != 83) goto L_0x0322;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:172:0x02c0, code lost:
        if (r15[r0 + 3] != 45) goto L_0x0322;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:174:0x02c8, code lost:
        if (r15[r0 + 4] != 49) goto L_0x0322;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:0x02d0, code lost:
        if (r15[r0 + 5] != 57) goto L_0x0322;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:178:0x02d8, code lost:
        if (r15[r0 + 6] != 50) goto L_0x0322;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:180:0x02e0, code lost:
        if (r15[r0 + 7] != 45) goto L_0x0322;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:181:0x02e2, code lost:
        r3 = r0 + 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:182:0x02ee, code lost:
        if (defpackage.ry.c(defpackage.qw.a("aes192-cbc")) == false) goto L_0x030d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:183:0x02f0, code lost:
        r0 = (defpackage.ql) java.lang.Class.forName(defpackage.qw.a("aes192-cbc")).newInstance();
        r7 = r0;
        r9 = new byte[r0.a()];
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:185:0x0321, code lost:
        throw new defpackage.qy("privatekey: aes192-cbc is not available " + r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:187:0x0326, code lost:
        if (r15[r0] != 65) goto L_0x03a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:189:0x032a, code lost:
        if ((r0 + 7) >= r1) goto L_0x03a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:191:0x0332, code lost:
        if (r15[r0 + 1] != 69) goto L_0x03a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:193:0x033a, code lost:
        if (r15[r0 + 2] != 83) goto L_0x03a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:195:0x0342, code lost:
        if (r15[r0 + 3] != 45) goto L_0x03a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:197:0x034a, code lost:
        if (r15[r0 + 4] != 49) goto L_0x03a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:199:0x0352, code lost:
        if (r15[r0 + 5] != 50) goto L_0x03a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:201:0x035a, code lost:
        if (r15[r0 + 6] != 56) goto L_0x03a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:203:0x0362, code lost:
        if (r15[r0 + 7] != 45) goto L_0x03a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:204:0x0364, code lost:
        r3 = r0 + 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:205:0x0370, code lost:
        if (defpackage.ry.c(defpackage.qw.a("aes128-cbc")) == false) goto L_0x038f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:206:0x0372, code lost:
        r0 = (defpackage.ql) java.lang.Class.forName(defpackage.qw.a("aes128-cbc")).newInstance();
        r7 = r0;
        r9 = new byte[r0.a()];
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:208:0x03a3, code lost:
        throw new defpackage.qy("privatekey: aes128-cbc is not available " + r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:210:0x03a8, code lost:
        if (r15[r0] != 67) goto L_0x03ec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:212:0x03ac, code lost:
        if ((r0 + 3) >= r1) goto L_0x03ec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:214:0x03b4, code lost:
        if (r15[r0 + 1] != 66) goto L_0x03ec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:216:0x03bc, code lost:
        if (r15[r0 + 2] != 67) goto L_0x03ec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:218:0x03c4, code lost:
        if (r15[r0 + 3] != 44) goto L_0x03ec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:219:0x03c6, code lost:
        r3 = r0 + 4;
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:221:0x03ca, code lost:
        if (r0 >= r9.length) goto L_0x03e9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:222:0x03cc, code lost:
        r6 = r3 + 1;
        r11 = (a(r15[r3]) << 4) & 240;
        r3 = r6 + 1;
        r9[r0] = (byte) ((a(r15[r6]) & 15) + r11);
        r0 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:223:0x03e9, code lost:
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:225:0x03f0, code lost:
        if (r15[r0] != 13) goto L_0x0403;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:227:0x03f5, code lost:
        if ((r0 + 1) >= r15.length) goto L_0x0403;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:229:0x03fd, code lost:
        if (r15[r0 + 1] != 10) goto L_0x0403;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:230:0x03ff, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:232:0x0407, code lost:
        if (r15[r0] != 10) goto L_0x046e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:234:0x040c, code lost:
        if ((r0 + 1) >= r15.length) goto L_0x046e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:236:0x0414, code lost:
        if (r15[r0 + 1] != 10) goto L_0x0433;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:237:0x0416, code lost:
        r3 = r4;
        r4 = r0 + 2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:243:0x0439, code lost:
        if (r15[r0 + 1] != 13) goto L_0x044d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:245:0x043e, code lost:
        if ((r0 + 2) >= r15.length) goto L_0x044d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:247:0x0446, code lost:
        if (r15[r0 + 2] != 10) goto L_0x044d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:248:0x0448, code lost:
        r3 = r4;
        r4 = r0 + 3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:249:0x044d, code lost:
        r3 = false;
        r6 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:251:0x0451, code lost:
        if (r6 >= r15.length) goto L_0x0460;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:253:0x0457, code lost:
        if (r15[r6] == 10) goto L_0x0460;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:255:0x045d, code lost:
        if (r15[r6] != 58) goto L_0x046b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:256:0x045f, code lost:
        r3 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:257:0x0460, code lost:
        if (r3 != false) goto L_0x046e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:258:0x0462, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:259:0x0465, code lost:
        if (r2 == 3) goto L_0x05d3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:260:0x0467, code lost:
        r3 = false;
        r4 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:261:0x046b, code lost:
        r6 = r6 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:262:0x046e, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:291:0x04d6, code lost:
        if (r11[r6] == 45) goto L_0x04dc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:292:0x04d8, code lost:
        r6 = r6 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x009c, code lost:
        if (r0 == null) goto L_0x009e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:342:0x05d3, code lost:
        r3 = r4;
        r4 = r0;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:317:0x0567  */
    /* JADX WARNING: Removed duplicated region for block: B:319:0x056e  */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x058f  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.rb a(defpackage.qw r14, byte[] r15) {
        /*
            r0 = 8
            byte[] r7 = new byte[r0]
            r6 = 1
            r5 = 0
            r4 = 0
            r3 = 0
            java.lang.String r10 = ""
            r2 = 0
            if (r15 == 0) goto L_0x0096
            int r0 = r15.length
            r1 = 11
            if (r0 <= r1) goto L_0x0096
            r0 = 0
            byte r0 = r15[r0]
            if (r0 != 0) goto L_0x0096
            r0 = 1
            byte r0 = r15[r0]
            if (r0 != 0) goto L_0x0096
            r0 = 2
            byte r0 = r15[r0]
            if (r0 != 0) goto L_0x0096
            r0 = 3
            byte r0 = r15[r0]
            r1 = 7
            if (r0 == r1) goto L_0x002e
            r0 = 3
            byte r0 = r15[r0]
            r1 = 19
            if (r0 != r1) goto L_0x0096
        L_0x002e:
            qa r0 = new qa
            r0.<init>((byte[]) r15)
            int r1 = r15.length
            r0.b((int) r1)
            java.lang.String r1 = new java.lang.String
            byte[] r2 = r0.g()
            r1.<init>(r2)
            r2 = 0
            r0.d = r2
            java.lang.String r2 = "ssh-rsa"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L_0x0050
            rb r0 = defpackage.rf.a(r14, r0)
        L_0x004f:
            return r0
        L_0x0050:
            java.lang.String r2 = "ssh-dss"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L_0x005d
            rb r0 = defpackage.rc.a(r14, r0)
            goto L_0x004f
        L_0x005d:
            java.lang.String r2 = "ecdsa-sha2-nistp256"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L_0x0075
            java.lang.String r2 = "ecdsa-sha2-nistp384"
            boolean r2 = r1.equals(r2)
            if (r2 != 0) goto L_0x0075
            java.lang.String r2 = "ecdsa-sha2-nistp512"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x007a
        L_0x0075:
            rb r0 = defpackage.rd.a(r14, r0)
            goto L_0x004f
        L_0x007a:
            qy r0 = new qy
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "privatekey: invalid key "
            r1.<init>(r2)
            java.lang.String r2 = new java.lang.String
            r3 = 4
            r4 = 7
            r2.<init>(r15, r3, r4)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0096:
            if (r15 == 0) goto L_0x009e
            rb r0 = b(r14, r15)     // Catch:{ Exception -> 0x012e }
            if (r0 != 0) goto L_0x004f
        L_0x009e:
            if (r15 == 0) goto L_0x00d2
            int r0 = r15.length     // Catch:{ Exception -> 0x012e }
            r1 = r0
        L_0x00a2:
            r0 = 0
        L_0x00a3:
            if (r0 >= r1) goto L_0x05d7
            byte r8 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r9 = 45
            if (r8 != r9) goto L_0x00cf
            int r8 = r0 + 4
            if (r8 >= r1) goto L_0x00cf
            int r8 = r0 + 1
            byte r8 = r15[r8]     // Catch:{ Exception -> 0x012e }
            r9 = 45
            if (r8 != r9) goto L_0x00cf
            int r8 = r0 + 2
            byte r8 = r15[r8]     // Catch:{ Exception -> 0x012e }
            r9 = 45
            if (r8 != r9) goto L_0x00cf
            int r8 = r0 + 3
            byte r8 = r15[r8]     // Catch:{ Exception -> 0x012e }
            r9 = 45
            if (r8 != r9) goto L_0x00cf
            int r8 = r0 + 4
            byte r8 = r15[r8]     // Catch:{ Exception -> 0x012e }
            r9 = 45
            if (r8 == r9) goto L_0x05d7
        L_0x00cf:
            int r0 = r0 + 1
            goto L_0x00a3
        L_0x00d2:
            r0 = 0
            r1 = r0
            goto L_0x00a2
        L_0x00d5:
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 68
            if (r3 != r6) goto L_0x0136
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 83
            if (r3 != r6) goto L_0x0136
            int r3 = r0 + 2
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 65
            if (r3 != r6) goto L_0x0136
            r3 = 1
        L_0x00ec:
            int r0 = r0 + 3
            r8 = r3
        L_0x00ef:
            if (r0 >= r1) goto L_0x05d3
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 66
            if (r3 != r6) goto L_0x021e
            int r3 = r0 + 3
            if (r3 >= r1) goto L_0x021e
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 69
            if (r3 != r6) goto L_0x021e
            int r3 = r0 + 2
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 71
            if (r3 != r6) goto L_0x021e
            int r3 = r0 + 3
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 73
            if (r3 != r6) goto L_0x021e
            int r0 = r0 + 6
            int r3 = r0 + 2
            if (r3 < r1) goto L_0x00d5
            qy r0 = new qy     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x012e }
            java.lang.String r2 = "invalid privatekey: "
            r1.<init>(r2)     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = r1.append(r15)     // Catch:{ Exception -> 0x012e }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x012e }
            r0.<init>(r1)     // Catch:{ Exception -> 0x012e }
            throw r0     // Catch:{ Exception -> 0x012e }
        L_0x012e:
            r0 = move-exception
            boolean r1 = r0 instanceof defpackage.qy
            if (r1 == 0) goto L_0x0585
            qy r0 = (defpackage.qy) r0
            throw r0
        L_0x0136:
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 82
            if (r3 != r6) goto L_0x014e
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 83
            if (r3 != r6) goto L_0x014e
            int r3 = r0 + 2
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 65
            if (r3 != r6) goto L_0x014e
            r3 = 2
            goto L_0x00ec
        L_0x014e:
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 69
            if (r3 != r6) goto L_0x015e
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 67
            if (r3 != r6) goto L_0x015e
            r3 = 3
            goto L_0x00ec
        L_0x015e:
            byte r2 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r3 = 83
            if (r2 != r3) goto L_0x0178
            int r2 = r0 + 1
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 83
            if (r2 != r3) goto L_0x0178
            int r2 = r0 + 2
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 72
            if (r2 != r3) goto L_0x0178
            r3 = 4
            r2 = 1
            goto L_0x00ec
        L_0x0178:
            int r2 = r0 + 6
            if (r2 >= r1) goto L_0x01b9
            byte r2 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r3 = 80
            if (r2 != r3) goto L_0x01b9
            int r2 = r0 + 1
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 82
            if (r2 != r3) goto L_0x01b9
            int r2 = r0 + 2
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 73
            if (r2 != r3) goto L_0x01b9
            int r2 = r0 + 3
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 86
            if (r2 != r3) goto L_0x01b9
            int r2 = r0 + 4
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 65
            if (r2 != r3) goto L_0x01b9
            int r2 = r0 + 5
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 84
            if (r2 != r3) goto L_0x01b9
            int r2 = r0 + 6
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 69
            if (r2 != r3) goto L_0x01b9
            r3 = 4
            r2 = 3
            r4 = 0
            int r0 = r0 + 3
            goto L_0x00ec
        L_0x01b9:
            int r2 = r0 + 8
            if (r2 >= r1) goto L_0x0209
            byte r2 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r3 = 69
            if (r2 != r3) goto L_0x0209
            int r2 = r0 + 1
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 78
            if (r2 != r3) goto L_0x0209
            int r2 = r0 + 2
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 67
            if (r2 != r3) goto L_0x0209
            int r2 = r0 + 3
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 82
            if (r2 != r3) goto L_0x0209
            int r2 = r0 + 4
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 89
            if (r2 != r3) goto L_0x0209
            int r2 = r0 + 5
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 80
            if (r2 != r3) goto L_0x0209
            int r2 = r0 + 6
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 84
            if (r2 != r3) goto L_0x0209
            int r2 = r0 + 7
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 69
            if (r2 != r3) goto L_0x0209
            int r2 = r0 + 8
            byte r2 = r15[r2]     // Catch:{ Exception -> 0x012e }
            r3 = 68
            if (r2 != r3) goto L_0x0209
            r3 = 4
            r2 = 3
            int r0 = r0 + 5
            goto L_0x00ec
        L_0x0209:
            qy r0 = new qy     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x012e }
            java.lang.String r2 = "invalid privatekey: "
            r1.<init>(r2)     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = r1.append(r15)     // Catch:{ Exception -> 0x012e }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x012e }
            r0.<init>(r1)     // Catch:{ Exception -> 0x012e }
            throw r0     // Catch:{ Exception -> 0x012e }
        L_0x021e:
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 65
            if (r3 != r6) goto L_0x02a0
            int r3 = r0 + 7
            if (r3 >= r1) goto L_0x02a0
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 69
            if (r3 != r6) goto L_0x02a0
            int r3 = r0 + 2
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 83
            if (r3 != r6) goto L_0x02a0
            int r3 = r0 + 3
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 45
            if (r3 != r6) goto L_0x02a0
            int r3 = r0 + 4
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 50
            if (r3 != r6) goto L_0x02a0
            int r3 = r0 + 5
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 53
            if (r3 != r6) goto L_0x02a0
            int r3 = r0 + 6
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 54
            if (r3 != r6) goto L_0x02a0
            int r3 = r0 + 7
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 45
            if (r3 != r6) goto L_0x02a0
            int r3 = r0 + 8
            java.lang.String r0 = "aes256-cbc"
            java.lang.String r0 = defpackage.qw.a((java.lang.String) r0)     // Catch:{ Exception -> 0x012e }
            boolean r0 = defpackage.ry.c(r0)     // Catch:{ Exception -> 0x012e }
            if (r0 == 0) goto L_0x028b
            java.lang.String r0 = "aes256-cbc"
            java.lang.String r0 = defpackage.qw.a((java.lang.String) r0)     // Catch:{ Exception -> 0x012e }
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ Exception -> 0x012e }
            java.lang.Object r0 = r0.newInstance()     // Catch:{ Exception -> 0x012e }
            ql r0 = (defpackage.ql) r0     // Catch:{ Exception -> 0x012e }
            ql r0 = (defpackage.ql) r0     // Catch:{ Exception -> 0x012e }
            int r6 = r0.a()     // Catch:{ Exception -> 0x012e }
            byte[] r6 = new byte[r6]     // Catch:{ Exception -> 0x012e }
            r7 = r0
            r9 = r6
            r0 = r3
            goto L_0x00ef
        L_0x028b:
            qy r0 = new qy     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x012e }
            java.lang.String r2 = "privatekey: aes256-cbc is not available "
            r1.<init>(r2)     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = r1.append(r15)     // Catch:{ Exception -> 0x012e }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x012e }
            r0.<init>(r1)     // Catch:{ Exception -> 0x012e }
            throw r0     // Catch:{ Exception -> 0x012e }
        L_0x02a0:
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 65
            if (r3 != r6) goto L_0x0322
            int r3 = r0 + 7
            if (r3 >= r1) goto L_0x0322
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 69
            if (r3 != r6) goto L_0x0322
            int r3 = r0 + 2
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 83
            if (r3 != r6) goto L_0x0322
            int r3 = r0 + 3
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 45
            if (r3 != r6) goto L_0x0322
            int r3 = r0 + 4
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 49
            if (r3 != r6) goto L_0x0322
            int r3 = r0 + 5
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 57
            if (r3 != r6) goto L_0x0322
            int r3 = r0 + 6
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 50
            if (r3 != r6) goto L_0x0322
            int r3 = r0 + 7
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 45
            if (r3 != r6) goto L_0x0322
            int r3 = r0 + 8
            java.lang.String r0 = "aes192-cbc"
            java.lang.String r0 = defpackage.qw.a((java.lang.String) r0)     // Catch:{ Exception -> 0x012e }
            boolean r0 = defpackage.ry.c(r0)     // Catch:{ Exception -> 0x012e }
            if (r0 == 0) goto L_0x030d
            java.lang.String r0 = "aes192-cbc"
            java.lang.String r0 = defpackage.qw.a((java.lang.String) r0)     // Catch:{ Exception -> 0x012e }
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ Exception -> 0x012e }
            java.lang.Object r0 = r0.newInstance()     // Catch:{ Exception -> 0x012e }
            ql r0 = (defpackage.ql) r0     // Catch:{ Exception -> 0x012e }
            ql r0 = (defpackage.ql) r0     // Catch:{ Exception -> 0x012e }
            int r6 = r0.a()     // Catch:{ Exception -> 0x012e }
            byte[] r6 = new byte[r6]     // Catch:{ Exception -> 0x012e }
            r7 = r0
            r9 = r6
            r0 = r3
            goto L_0x00ef
        L_0x030d:
            qy r0 = new qy     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x012e }
            java.lang.String r2 = "privatekey: aes192-cbc is not available "
            r1.<init>(r2)     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = r1.append(r15)     // Catch:{ Exception -> 0x012e }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x012e }
            r0.<init>(r1)     // Catch:{ Exception -> 0x012e }
            throw r0     // Catch:{ Exception -> 0x012e }
        L_0x0322:
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 65
            if (r3 != r6) goto L_0x03a4
            int r3 = r0 + 7
            if (r3 >= r1) goto L_0x03a4
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 69
            if (r3 != r6) goto L_0x03a4
            int r3 = r0 + 2
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 83
            if (r3 != r6) goto L_0x03a4
            int r3 = r0 + 3
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 45
            if (r3 != r6) goto L_0x03a4
            int r3 = r0 + 4
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 49
            if (r3 != r6) goto L_0x03a4
            int r3 = r0 + 5
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 50
            if (r3 != r6) goto L_0x03a4
            int r3 = r0 + 6
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 56
            if (r3 != r6) goto L_0x03a4
            int r3 = r0 + 7
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 45
            if (r3 != r6) goto L_0x03a4
            int r3 = r0 + 8
            java.lang.String r0 = "aes128-cbc"
            java.lang.String r0 = defpackage.qw.a((java.lang.String) r0)     // Catch:{ Exception -> 0x012e }
            boolean r0 = defpackage.ry.c(r0)     // Catch:{ Exception -> 0x012e }
            if (r0 == 0) goto L_0x038f
            java.lang.String r0 = "aes128-cbc"
            java.lang.String r0 = defpackage.qw.a((java.lang.String) r0)     // Catch:{ Exception -> 0x012e }
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ Exception -> 0x012e }
            java.lang.Object r0 = r0.newInstance()     // Catch:{ Exception -> 0x012e }
            ql r0 = (defpackage.ql) r0     // Catch:{ Exception -> 0x012e }
            ql r0 = (defpackage.ql) r0     // Catch:{ Exception -> 0x012e }
            int r6 = r0.a()     // Catch:{ Exception -> 0x012e }
            byte[] r6 = new byte[r6]     // Catch:{ Exception -> 0x012e }
            r7 = r0
            r9 = r6
            r0 = r3
            goto L_0x00ef
        L_0x038f:
            qy r0 = new qy     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x012e }
            java.lang.String r2 = "privatekey: aes128-cbc is not available "
            r1.<init>(r2)     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = r1.append(r15)     // Catch:{ Exception -> 0x012e }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x012e }
            r0.<init>(r1)     // Catch:{ Exception -> 0x012e }
            throw r0     // Catch:{ Exception -> 0x012e }
        L_0x03a4:
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 67
            if (r3 != r6) goto L_0x03ec
            int r3 = r0 + 3
            if (r3 >= r1) goto L_0x03ec
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 66
            if (r3 != r6) goto L_0x03ec
            int r3 = r0 + 2
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 67
            if (r3 != r6) goto L_0x03ec
            int r3 = r0 + 3
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 44
            if (r3 != r6) goto L_0x03ec
            int r3 = r0 + 4
            r0 = 0
        L_0x03c9:
            int r6 = r9.length     // Catch:{ Exception -> 0x012e }
            if (r0 >= r6) goto L_0x03e9
            int r6 = r3 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            byte r3 = a((byte) r3)     // Catch:{ Exception -> 0x012e }
            int r3 = r3 << 4
            r11 = r3 & 240(0xf0, float:3.36E-43)
            int r3 = r6 + 1
            byte r6 = r15[r6]     // Catch:{ Exception -> 0x012e }
            byte r6 = a((byte) r6)     // Catch:{ Exception -> 0x012e }
            r6 = r6 & 15
            int r6 = r6 + r11
            byte r6 = (byte) r6     // Catch:{ Exception -> 0x012e }
            r9[r0] = r6     // Catch:{ Exception -> 0x012e }
            int r0 = r0 + 1
            goto L_0x03c9
        L_0x03e9:
            r0 = r3
            goto L_0x00ef
        L_0x03ec:
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 13
            if (r3 != r6) goto L_0x0403
            int r3 = r0 + 1
            int r6 = r15.length     // Catch:{ Exception -> 0x012e }
            if (r3 >= r6) goto L_0x0403
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 10
            if (r3 != r6) goto L_0x0403
            int r0 = r0 + 1
            goto L_0x00ef
        L_0x0403:
            byte r3 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r6 = 10
            if (r3 != r6) goto L_0x046e
            int r3 = r0 + 1
            int r6 = r15.length     // Catch:{ Exception -> 0x012e }
            if (r3 >= r6) goto L_0x046e
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 10
            if (r3 != r6) goto L_0x0433
            int r0 = r0 + 2
            r3 = r4
            r4 = r0
        L_0x041a:
            if (r15 == 0) goto L_0x05d0
            if (r8 != 0) goto L_0x0472
            qy r0 = new qy     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x012e }
            java.lang.String r2 = "invalid privatekey: "
            r1.<init>(r2)     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = r1.append(r15)     // Catch:{ Exception -> 0x012e }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x012e }
            r0.<init>(r1)     // Catch:{ Exception -> 0x012e }
            throw r0     // Catch:{ Exception -> 0x012e }
        L_0x0433:
            int r3 = r0 + 1
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 13
            if (r3 != r6) goto L_0x044d
            int r3 = r0 + 2
            int r6 = r15.length     // Catch:{ Exception -> 0x012e }
            if (r3 >= r6) goto L_0x044d
            int r3 = r0 + 2
            byte r3 = r15[r3]     // Catch:{ Exception -> 0x012e }
            r6 = 10
            if (r3 != r6) goto L_0x044d
            int r0 = r0 + 3
            r3 = r4
            r4 = r0
            goto L_0x041a
        L_0x044d:
            r3 = 0
            int r6 = r0 + 1
        L_0x0450:
            int r11 = r15.length     // Catch:{ Exception -> 0x012e }
            if (r6 >= r11) goto L_0x0460
            byte r11 = r15[r6]     // Catch:{ Exception -> 0x012e }
            r12 = 10
            if (r11 == r12) goto L_0x0460
            byte r11 = r15[r6]     // Catch:{ Exception -> 0x012e }
            r12 = 58
            if (r11 != r12) goto L_0x046b
            r3 = 1
        L_0x0460:
            if (r3 != 0) goto L_0x046e
            int r0 = r0 + 1
            r3 = 3
            if (r2 == r3) goto L_0x05d3
            r4 = 0
            r3 = r4
            r4 = r0
            goto L_0x041a
        L_0x046b:
            int r6 = r6 + 1
            goto L_0x0450
        L_0x046e:
            int r0 = r0 + 1
            goto L_0x00ef
        L_0x0472:
            r0 = r4
        L_0x0473:
            if (r0 >= r1) goto L_0x047e
            byte r6 = r15[r0]     // Catch:{ Exception -> 0x012e }
            r11 = 45
            if (r6 == r11) goto L_0x047e
            int r0 = r0 + 1
            goto L_0x0473
        L_0x047e:
            int r1 = r1 - r0
            if (r1 == 0) goto L_0x0485
            int r1 = r0 - r4
            if (r1 != 0) goto L_0x049a
        L_0x0485:
            qy r0 = new qy     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x012e }
            java.lang.String r2 = "invalid privatekey: "
            r1.<init>(r2)     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = r1.append(r15)     // Catch:{ Exception -> 0x012e }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x012e }
            r0.<init>(r1)     // Catch:{ Exception -> 0x012e }
            throw r0     // Catch:{ Exception -> 0x012e }
        L_0x049a:
            int r0 = r0 - r4
            byte[] r11 = new byte[r0]     // Catch:{ Exception -> 0x012e }
            r0 = 0
            int r1 = r11.length     // Catch:{ Exception -> 0x012e }
            java.lang.System.arraycopy(r15, r4, r11, r0, r1)     // Catch:{ Exception -> 0x012e }
            r0 = 0
            int r1 = r11.length     // Catch:{ Exception -> 0x012e }
            r6 = r0
            r0 = r1
        L_0x04a6:
            if (r6 >= r0) goto L_0x04dc
            byte r1 = r11[r6]     // Catch:{ Exception -> 0x012e }
            r4 = 10
            if (r1 != r4) goto L_0x04d2
            int r1 = r6 + -1
            byte r1 = r11[r1]     // Catch:{ Exception -> 0x012e }
            r4 = 13
            if (r1 != r4) goto L_0x04cd
            r1 = 1
            r4 = r1
        L_0x04b8:
            int r12 = r6 + 1
            if (r4 == 0) goto L_0x04d0
            r1 = 1
        L_0x04bd:
            int r1 = r6 - r1
            int r13 = r6 + 1
            int r13 = r0 - r13
            java.lang.System.arraycopy(r11, r12, r11, r1, r13)     // Catch:{ Exception -> 0x012e }
            if (r4 == 0) goto L_0x04ca
            int r0 = r0 + -1
        L_0x04ca:
            int r0 = r0 + -1
            goto L_0x04a6
        L_0x04cd:
            r1 = 0
            r4 = r1
            goto L_0x04b8
        L_0x04d0:
            r1 = 0
            goto L_0x04bd
        L_0x04d2:
            byte r1 = r11[r6]     // Catch:{ Exception -> 0x012e }
            r4 = 45
            if (r1 == r4) goto L_0x04dc
            int r1 = r6 + 1
            r6 = r1
            goto L_0x04a6
        L_0x04dc:
            int r0 = r6 + 0
            if (r0 <= 0) goto L_0x05cd
            int r0 = r6 + 0
            byte[] r0 = defpackage.si.a((byte[]) r11, (int) r0)     // Catch:{ Exception -> 0x012e }
        L_0x04e6:
            defpackage.si.b((byte[]) r11)     // Catch:{ Exception -> 0x012e }
        L_0x04e9:
            if (r0 == 0) goto L_0x05cb
            int r1 = r0.length     // Catch:{ Exception -> 0x012e }
            r4 = 4
            if (r1 <= r4) goto L_0x05cb
            r1 = 0
            byte r1 = r0[r1]     // Catch:{ Exception -> 0x012e }
            r4 = 63
            if (r1 != r4) goto L_0x05cb
            r1 = 1
            byte r1 = r0[r1]     // Catch:{ Exception -> 0x012e }
            r4 = 111(0x6f, float:1.56E-43)
            if (r1 != r4) goto L_0x05cb
            r1 = 2
            byte r1 = r0[r1]     // Catch:{ Exception -> 0x012e }
            r4 = -7
            if (r1 != r4) goto L_0x05cb
            r1 = 3
            byte r1 = r0[r1]     // Catch:{ Exception -> 0x012e }
            r4 = -21
            if (r1 != r4) goto L_0x05cb
            qa r4 = new qa     // Catch:{ Exception -> 0x012e }
            r4.<init>((byte[]) r0)     // Catch:{ Exception -> 0x012e }
            r4.b()     // Catch:{ Exception -> 0x012e }
            r4.b()     // Catch:{ Exception -> 0x012e }
            r4.g()     // Catch:{ Exception -> 0x012e }
            byte[] r1 = r4.g()     // Catch:{ Exception -> 0x012e }
            java.lang.String r1 = defpackage.si.a((byte[]) r1)     // Catch:{ Exception -> 0x012e }
            java.lang.String r5 = "3des-cbc"
            boolean r5 = r1.equals(r5)     // Catch:{ Exception -> 0x012e }
            if (r5 == 0) goto L_0x054a
            r4.b()     // Catch:{ Exception -> 0x012e }
            int r0 = r0.length     // Catch:{ Exception -> 0x012e }
            int r1 = r4.d     // Catch:{ Exception -> 0x012e }
            int r0 = r0 - r1
            byte[] r0 = new byte[r0]     // Catch:{ Exception -> 0x012e }
            int r1 = r0.length     // Catch:{ Exception -> 0x012e }
            r4.a((byte[]) r0, (int) r1)     // Catch:{ Exception -> 0x012e }
            qy r0 = new qy     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x012e }
            java.lang.String r2 = "unknown privatekey format: "
            r1.<init>(r2)     // Catch:{ Exception -> 0x012e }
            java.lang.StringBuilder r1 = r1.append(r15)     // Catch:{ Exception -> 0x012e }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x012e }
            r0.<init>(r1)     // Catch:{ Exception -> 0x012e }
            throw r0     // Catch:{ Exception -> 0x012e }
        L_0x054a:
            java.lang.String r5 = "none"
            boolean r1 = r1.equals(r5)     // Catch:{ Exception -> 0x012e }
            if (r1 == 0) goto L_0x05cb
            r4.b()     // Catch:{ Exception -> 0x012e }
            r4.b()     // Catch:{ Exception -> 0x012e }
            r1 = 0
            int r0 = r0.length     // Catch:{ Exception -> 0x012e }
            int r3 = r4.d     // Catch:{ Exception -> 0x012e }
            int r0 = r0 - r3
            byte[] r0 = new byte[r0]     // Catch:{ Exception -> 0x012e }
            int r3 = r0.length     // Catch:{ Exception -> 0x012e }
            r4.a((byte[]) r0, (int) r3)     // Catch:{ Exception -> 0x012e }
        L_0x0563:
            r3 = 0
            r4 = 1
            if (r8 != r4) goto L_0x058f
            rc r3 = new rc
            r3.<init>(r14)
        L_0x056c:
            if (r3 == 0) goto L_0x0582
            r3.e = r1
            r4 = 0
            r3.m = r4
            r3.a = r2
            r3.b = r10
            r3.h = r7
            if (r1 == 0) goto L_0x05aa
            r1 = 1
            r3.e = r1
            r3.l = r9
            r3.f = r0
        L_0x0582:
            r0 = r3
            goto L_0x004f
        L_0x0585:
            qy r1 = new qy
            java.lang.String r2 = r0.toString()
            r1.<init>(r2, r0)
            throw r1
        L_0x058f:
            r4 = 2
            if (r8 != r4) goto L_0x0598
            rf r3 = new rf
            r3.<init>(r14)
            goto L_0x056c
        L_0x0598:
            r4 = 3
            if (r8 != r4) goto L_0x05a1
            rd r3 = new rd
            r3.<init>(r14)
            goto L_0x056c
        L_0x05a1:
            r4 = 3
            if (r2 != r4) goto L_0x056c
            re r3 = new re
            r3.<init>(r14)
            goto L_0x056c
        L_0x05aa:
            boolean r0 = r3.b(r0)
            if (r0 == 0) goto L_0x05b6
            r0 = 0
            r3.e = r0
            r0 = r3
            goto L_0x004f
        L_0x05b6:
            qy r0 = new qy
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "invalid privatekey: "
            r1.<init>(r2)
            java.lang.StringBuilder r1 = r1.append(r15)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x05cb:
            r1 = r3
            goto L_0x0563
        L_0x05cd:
            r0 = r5
            goto L_0x04e6
        L_0x05d0:
            r0 = r5
            goto L_0x04e9
        L_0x05d3:
            r3 = r4
            r4 = r0
            goto L_0x041a
        L_0x05d7:
            r8 = r4
            r9 = r7
            r7 = r2
            r4 = r6
            r2 = r3
            goto L_0x00ef
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rb.a(qw, byte[]):rb");
    }

    private static boolean a(qa qaVar, Hashtable hashtable) {
        String str;
        String str2;
        byte[] bArr = qaVar.b;
        int i2 = qaVar.c;
        int i3 = i2;
        while (true) {
            if (i3 >= bArr.length || bArr[i3] == 13) {
                str = null;
            } else if (bArr[i3] == 58) {
                str = new String(bArr, i2, i3 - i2);
                int i4 = i3 + 1;
                if (i4 < bArr.length && bArr[i4] == 32) {
                    i4++;
                }
                i2 = i4;
            } else {
                i3++;
            }
        }
        str = null;
        if (str == null) {
            return false;
        }
        int i5 = i2;
        while (true) {
            if (i5 >= bArr.length) {
                str2 = null;
                break;
            } else if (bArr[i5] == 13) {
                String str3 = new String(bArr, i2, i5 - i2);
                int i6 = i5 + 1;
                if (i6 < bArr.length && bArr[i6] == 10) {
                    i6++;
                }
                i2 = i6;
                str2 = str3;
            } else {
                i5++;
            }
        }
        if (str2 != null) {
            hashtable.put(str, str2);
            qaVar.c = i2;
        }
        return (str == null || str2 == null) ? false : true;
    }

    private static byte[] a(qa qaVar, int i2) {
        int i3;
        byte[] bArr;
        byte[] bArr2 = qaVar.b;
        int i4 = qaVar.c;
        byte[] bArr3 = null;
        int i5 = i4;
        while (true) {
            int i6 = i2 - 1;
            if (i2 <= 0) {
                break;
            }
            while (true) {
                if (bArr2.length <= i4) {
                    i3 = i4;
                    bArr = bArr3;
                    break;
                }
                i3 = i4 + 1;
                if (bArr2[i4] != 13) {
                    i4 = i3;
                } else if (bArr3 == null) {
                    bArr = new byte[((i3 - i5) - 1)];
                    System.arraycopy(bArr2, i5, bArr, 0, (i3 - i5) - 1);
                } else {
                    bArr = new byte[(((bArr3.length + i3) - i5) - 1)];
                    System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                    System.arraycopy(bArr2, i5, bArr, bArr3.length, (i3 - i5) - 1);
                    for (int i7 = 0; i7 < bArr3.length; i7++) {
                        bArr3[i7] = 0;
                    }
                }
            }
            if (bArr2[i3] == 10) {
                i3++;
            }
            bArr3 = bArr;
            i5 = i3;
            i2 = i6;
            i4 = i3;
        }
        if (bArr3 != null) {
            qaVar.c = i5;
        }
        return bArr3;
    }

    private static rb b(qw qwVar, byte[] bArr) {
        rb rcVar;
        qa qaVar = new qa(bArr);
        Hashtable hashtable = new Hashtable();
        do {
        } while (a(qaVar, hashtable));
        String str = (String) hashtable.get("PuTTY-User-Key-File-2");
        if (str == null) {
            return null;
        }
        byte[] a2 = a(qaVar, Integer.parseInt((String) hashtable.get("Public-Lines")));
        do {
        } while (a(qaVar, hashtable));
        byte[] a3 = a(qaVar, Integer.parseInt((String) hashtable.get("Private-Lines")));
        do {
        } while (a(qaVar, hashtable));
        byte[] a4 = si.a(a3, a3.length);
        byte[] a5 = si.a(a2, a2.length);
        if (str.equals("ssh-rsa")) {
            qa qaVar2 = new qa(a5);
            qaVar2.b(a5.length);
            byte[] bArr2 = new byte[qaVar2.b()];
            qaVar2.a(bArr2, bArr2.length);
            byte[] bArr3 = new byte[qaVar2.b()];
            qaVar2.a(bArr3, bArr3.length);
            byte[] bArr4 = new byte[qaVar2.b()];
            qaVar2.a(bArr4, bArr4.length);
            rcVar = new rf(qwVar, bArr4, bArr3, (byte[]) null);
        } else if (!str.equals("ssh-dss")) {
            return null;
        } else {
            qa qaVar3 = new qa(a5);
            qaVar3.b(a5.length);
            byte[] bArr5 = new byte[qaVar3.b()];
            qaVar3.a(bArr5, bArr5.length);
            byte[] bArr6 = new byte[qaVar3.b()];
            qaVar3.a(bArr6, bArr6.length);
            byte[] bArr7 = new byte[qaVar3.b()];
            qaVar3.a(bArr7, bArr7.length);
            byte[] bArr8 = new byte[qaVar3.b()];
            qaVar3.a(bArr8, bArr8.length);
            byte[] bArr9 = new byte[qaVar3.b()];
            qaVar3.a(bArr9, bArr9.length);
            rcVar = new rc(qwVar, bArr6, bArr7, bArr8, bArr9, (byte[]) null);
        }
        rcVar.e = !hashtable.get("Encryption").equals("none");
        rcVar.a = 2;
        rcVar.b = (String) hashtable.get("Comment");
        if (!rcVar.e) {
            rcVar.f = a4;
            rcVar.b(a4);
        } else if (ry.c(qw.a("aes256-cbc"))) {
            try {
                rcVar.h = (ql) Class.forName(qw.a("aes256-cbc")).newInstance();
                rcVar.l = new byte[rcVar.h.a()];
                rcVar.f = a4;
            } catch (Exception e2) {
                throw new qy("The cipher 'aes256-cbc' is required, but it is not available.");
            }
        } else {
            throw new qy("The cipher 'aes256-cbc' is required, but it is not available.");
        }
        return rcVar;
    }

    private byte[] d(byte[] bArr) {
        try {
            si.b(g());
            return new byte[bArr.length];
        } catch (Exception e2) {
            return null;
        }
    }

    private qp e() {
        try {
            this.i = (qp) Class.forName(qw.a("md5")).newInstance();
        } catch (Exception e2) {
        }
        return this.i;
    }

    private ql f() {
        try {
            this.h = (ql) Class.forName(qw.a("3des-cbc")).newInstance();
        } catch (Exception e2) {
        }
        return this.h;
    }

    private synchronized byte[] g() {
        byte[] bArr;
        int i2 = 0;
        synchronized (this) {
            if (this.h == null) {
                this.h = f();
            }
            if (this.i == null) {
                this.i = e();
            }
            bArr = new byte[this.h.b()];
            int a2 = this.i.a();
            byte[] bArr2 = new byte[((bArr.length % a2 == 0 ? 0 : a2) + ((bArr.length / a2) * a2))];
            try {
                if (this.a == 0) {
                    while (i2 + a2 <= bArr2.length) {
                        byte[] b2 = this.i.b();
                        System.arraycopy(b2, 0, bArr2, i2, b2.length);
                        i2 += b2.length;
                    }
                    System.arraycopy(bArr2, 0, bArr, 0, bArr.length);
                } else if (this.a == 1) {
                    while (i2 + a2 <= bArr2.length) {
                        byte[] b3 = this.i.b();
                        System.arraycopy(b3, 0, bArr2, i2, b3.length);
                        i2 += b3.length;
                    }
                    System.arraycopy(bArr2, 0, bArr, 0, bArr.length);
                } else {
                    if (this.a == 2) {
                        qp qpVar = (qp) Class.forName(qw.a("sha-1")).newInstance();
                        byte[] bArr3 = new byte[4];
                        bArr = new byte[40];
                        while (i2 < 2) {
                            bArr3[3] = (byte) i2;
                            System.arraycopy(qpVar.b(), 0, bArr, i2 * 20, 20);
                            i2++;
                        }
                    }
                    bArr = bArr;
                }
            } catch (Exception e2) {
                System.err.println(e2);
            }
        }
        return bArr;
    }

    /* access modifiers changed from: package-private */
    public final void a(rb rbVar) {
        this.m = rbVar.m;
        this.a = rbVar.a;
        this.b = rbVar.b;
        this.h = rbVar.h;
    }

    /* access modifiers changed from: package-private */
    public abstract byte[] a();

    public abstract byte[] a(byte[] bArr);

    /* access modifiers changed from: package-private */
    public abstract boolean b(byte[] bArr);

    public byte[] b() {
        return this.m;
    }

    public final boolean c() {
        return this.e;
    }

    public boolean c(byte[] bArr) {
        if (!this.e) {
            return true;
        }
        if (bArr == null) {
            return !this.e;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        byte[] d2 = d(this.f);
        si.b(bArr2);
        if (b(d2)) {
            this.e = false;
        }
        return !this.e;
    }

    public void d() {
        si.b(this.j);
    }

    public void finalize() {
        d();
    }
}
