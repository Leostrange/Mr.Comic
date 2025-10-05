package defpackage;

import android.support.v4.app.NotificationCompat;
import com.box.androidsdk.content.BoxConstants;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

/* renamed from: zm  reason: default package */
/* compiled from: ServerMessageBlock */
abstract class zm extends acb implements aap, aca {
    static abx e = abx.a();
    static final byte[] f = {-1, 83, 77, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    String A;
    zn B = null;
    zm C;
    byte g;
    byte h = 24;
    int i;
    int j;
    int k = 0;
    int l;
    int m;
    int n;
    int o = aj;
    int p;
    int q;
    int r;
    int s;
    boolean t;
    boolean u;
    boolean v;
    long w = 1;
    int x;
    boolean y;
    zl z = null;

    zm() {
    }

    static void a(long j2, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((int) j2);
        bArr[i2 + 1] = (byte) ((int) (j2 >> 8));
    }

    static void b(long j2, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((int) j2);
        int i3 = i2 + 1;
        long j3 = j2 >> 8;
        bArr[i3] = (byte) ((int) j3);
        int i4 = i3 + 1;
        long j4 = j3 >> 8;
        bArr[i4] = (byte) ((int) j4);
        bArr[i4 + 1] = (byte) ((int) (j4 >> 8));
    }

    static int d(byte[] bArr, int i2) {
        return (bArr[i2] & 255) + ((bArr[i2 + 1] & 255) << 8);
    }

    static int e(byte[] bArr, int i2) {
        return (bArr[i2] & 255) + ((bArr[i2 + 1] & 255) << 8) + ((bArr[i2 + 2] & 255) << 16) + ((bArr[i2 + 3] & 255) << 24);
    }

    static long f(byte[] bArr, int i2) {
        return (((long) e(bArr, i2)) & 4294967295L) + (((long) e(bArr, i2 + 4)) << 32);
    }

    static long g(byte[] bArr, int i2) {
        return (((((long) e(bArr, i2)) & 4294967295L) | (((long) e(bArr, i2 + 4)) << 32)) / 10000) - 11644473600000L;
    }

    static long h(byte[] bArr, int i2) {
        return ((long) e(bArr, i2)) * 1000;
    }

    /* access modifiers changed from: package-private */
    public final int a(String str, int i2) {
        int length = str.length() + 1;
        if (!this.t) {
            return length;
        }
        int length2 = (str.length() * 2) + 2;
        return i2 % 2 != 0 ? length2 + 1 : length2;
    }

    /* access modifiers changed from: package-private */
    public final int a(String str, byte[] bArr, int i2) {
        return a(str, bArr, i2, this.t);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x004c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int a(java.lang.String r6, byte[] r7, int r8, boolean r9) {
        /*
            r5 = this;
            if (r9 == 0) goto L_0x0032
            int r0 = r5.i     // Catch:{ UnsupportedEncodingException -> 0x0052 }
            int r0 = r8 - r0
            int r0 = r0 % 2
            if (r0 == 0) goto L_0x005b
            int r1 = r8 + 1
            r0 = 0
            r7[r8] = r0     // Catch:{ UnsupportedEncodingException -> 0x0056 }
        L_0x000f:
            java.lang.String r0 = "UTF-16LE"
            byte[] r0 = r6.getBytes(r0)     // Catch:{ UnsupportedEncodingException -> 0x0056 }
            r2 = 0
            int r3 = r6.length()     // Catch:{ UnsupportedEncodingException -> 0x0056 }
            int r3 = r3 * 2
            java.lang.System.arraycopy(r0, r2, r7, r1, r3)     // Catch:{ UnsupportedEncodingException -> 0x0056 }
            int r0 = r6.length()     // Catch:{ UnsupportedEncodingException -> 0x0056 }
            int r0 = r0 * 2
            int r0 = r0 + r1
            int r1 = r0 + 1
            r2 = 0
            r7[r0] = r2     // Catch:{ UnsupportedEncodingException -> 0x0056 }
            int r0 = r1 + 1
            r2 = 0
            r7[r1] = r2     // Catch:{ UnsupportedEncodingException -> 0x0046 }
        L_0x0030:
            int r0 = r0 - r8
            return r0
        L_0x0032:
            java.lang.String r0 = am     // Catch:{ UnsupportedEncodingException -> 0x0052 }
            byte[] r0 = r6.getBytes(r0)     // Catch:{ UnsupportedEncodingException -> 0x0052 }
            r1 = 0
            int r2 = r0.length     // Catch:{ UnsupportedEncodingException -> 0x0052 }
            java.lang.System.arraycopy(r0, r1, r7, r8, r2)     // Catch:{ UnsupportedEncodingException -> 0x0052 }
            int r0 = r0.length     // Catch:{ UnsupportedEncodingException -> 0x0052 }
            int r1 = r8 + r0
            int r0 = r1 + 1
            r2 = 0
            r7[r1] = r2     // Catch:{ UnsupportedEncodingException -> 0x0046 }
            goto L_0x0030
        L_0x0046:
            r1 = move-exception
        L_0x0047:
            int r2 = defpackage.abx.a
            r3 = 1
            if (r2 <= r3) goto L_0x0030
            abx r2 = e
            r1.printStackTrace(r2)
            goto L_0x0030
        L_0x0052:
            r0 = move-exception
            r1 = r0
            r0 = r8
            goto L_0x0047
        L_0x0056:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
            goto L_0x0047
        L_0x005b:
            r1 = r8
            goto L_0x000f
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zm.a(java.lang.String, byte[], int, boolean):int");
    }

    /* access modifiers changed from: package-private */
    public int a(byte[] bArr) {
        this.i = 4;
        c(bArr);
        this.r = i(bArr, 37);
        bArr[36] = (byte) ((this.r / 2) & 255);
        int i2 = this.r + 37;
        this.r /= 2;
        this.s = j(bArr, i2 + 2);
        int i3 = i2 + 1;
        bArr[i2] = (byte) (this.s & 255);
        bArr[i3] = (byte) ((this.s >> 8) & 255);
        this.j = ((i3 + 1) + this.s) - 4;
        if (this.B != null) {
            this.B.a(bArr, this.i, this.j, this, this.C);
        }
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public final String a(byte[] bArr, int i2, int i3, boolean z2) {
        int i4 = NotificationCompat.FLAG_HIGH_PRIORITY;
        int i5 = 0;
        if (z2) {
            try {
                if ((i2 - this.i) % 2 != 0) {
                    i2++;
                }
                do {
                    if (bArr[i2 + i5] == 0 && bArr[i2 + i5 + 1] == 0) {
                        return new String(bArr, i2, i5, "UTF-16LE");
                    }
                    i5 += 2;
                } while (i5 <= i3);
                if (abx.a > 0) {
                    PrintStream printStream = System.err;
                    if (i3 < 128) {
                        i4 = i3 + 8;
                    }
                    abw.a(printStream, bArr, i2, i4);
                }
                throw new RuntimeException("zero termination not found");
            } catch (UnsupportedEncodingException e2) {
                if (abx.a > 1) {
                    e2.printStackTrace(e);
                }
                return null;
            }
        } else {
            while (bArr[i2 + i5] != 0) {
                i5++;
                if (i5 > i3) {
                    if (abx.a > 0) {
                        PrintStream printStream2 = System.err;
                        if (i3 < 128) {
                            i4 = i3 + 8;
                        }
                        abw.a(printStream2, bArr, i2, i4);
                    }
                    throw new RuntimeException("zero termination not found");
                }
            }
            return new String(bArr, i2, i5, am);
        }
    }

    /* access modifiers changed from: package-private */
    public int b(byte[] bArr) {
        int i2 = 37;
        this.i = 4;
        d(bArr);
        this.r = bArr[36];
        if (this.r != 0) {
            int k2 = k(bArr, 37);
            if (k2 != this.r * 2 && abx.a >= 5) {
                e.println("wordCount * 2=" + (this.r * 2) + " but readParameterWordsWireFormat returned " + k2);
            }
            i2 = (this.r * 2) + 37;
        }
        this.s = d(bArr, i2);
        int i3 = i2 + 2;
        if (this.s != 0) {
            int l2 = l(bArr, i3);
            if (l2 != this.s && abx.a >= 5) {
                e.println("byteCount=" + this.s + " but readBytesWireFormat returned " + l2);
            }
            i3 += this.s;
        }
        this.j = i3 - 4;
        return this.j;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:44:?, code lost:
        return new java.lang.String(r5, r6, r2, "UTF-16LE");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String b(byte[] r5, int r6, int r7, boolean r8) {
        /*
            r4 = this;
            r3 = 255(0xff, float:3.57E-43)
            r0 = 0
            r1 = 0
            if (r8 == 0) goto L_0x0053
            int r2 = r4.i     // Catch:{ UnsupportedEncodingException -> 0x003a }
            int r2 = r6 - r2
            int r2 = r2 % 2
            if (r2 == 0) goto L_0x0010
            int r6 = r6 + 1
        L_0x0010:
            r2 = r0
        L_0x0011:
            int r0 = r6 + r2
            int r0 = r0 + 1
            if (r0 >= r7) goto L_0x004b
            int r0 = r6 + r2
            byte r0 = r5[r0]     // Catch:{ UnsupportedEncodingException -> 0x003a }
            if (r0 != 0) goto L_0x0025
            int r0 = r6 + r2
            int r0 = r0 + 1
            byte r0 = r5[r0]     // Catch:{ UnsupportedEncodingException -> 0x003a }
            if (r0 == 0) goto L_0x004b
        L_0x0025:
            if (r2 <= r3) goto L_0x0047
            int r0 = defpackage.abx.a     // Catch:{ UnsupportedEncodingException -> 0x003a }
            if (r0 <= 0) goto L_0x0032
            java.io.PrintStream r0 = java.lang.System.err     // Catch:{ UnsupportedEncodingException -> 0x003a }
            r2 = 128(0x80, float:1.794E-43)
            defpackage.abw.a((java.io.PrintStream) r0, (byte[]) r5, (int) r6, (int) r2)     // Catch:{ UnsupportedEncodingException -> 0x003a }
        L_0x0032:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch:{ UnsupportedEncodingException -> 0x003a }
            java.lang.String r2 = "zero termination not found"
            r0.<init>(r2)     // Catch:{ UnsupportedEncodingException -> 0x003a }
            throw r0     // Catch:{ UnsupportedEncodingException -> 0x003a }
        L_0x003a:
            r0 = move-exception
            int r2 = defpackage.abx.a
            r3 = 1
            if (r2 <= r3) goto L_0x0045
            abx r2 = e
            r0.printStackTrace(r2)
        L_0x0045:
            r0 = r1
        L_0x0046:
            return r0
        L_0x0047:
            int r0 = r2 + 2
            r2 = r0
            goto L_0x0011
        L_0x004b:
            java.lang.String r0 = new java.lang.String     // Catch:{ UnsupportedEncodingException -> 0x003a }
            java.lang.String r3 = "UTF-16LE"
            r0.<init>(r5, r6, r2, r3)     // Catch:{ UnsupportedEncodingException -> 0x003a }
            goto L_0x0046
        L_0x0053:
            r2 = r0
        L_0x0054:
            if (r6 >= r7) goto L_0x0075
            int r0 = r6 + r2
            byte r0 = r5[r0]     // Catch:{ UnsupportedEncodingException -> 0x003a }
            if (r0 == 0) goto L_0x0075
            if (r2 <= r3) goto L_0x0071
            int r0 = defpackage.abx.a     // Catch:{ UnsupportedEncodingException -> 0x003a }
            if (r0 <= 0) goto L_0x0069
            java.io.PrintStream r0 = java.lang.System.err     // Catch:{ UnsupportedEncodingException -> 0x003a }
            r2 = 128(0x80, float:1.794E-43)
            defpackage.abw.a((java.io.PrintStream) r0, (byte[]) r5, (int) r6, (int) r2)     // Catch:{ UnsupportedEncodingException -> 0x003a }
        L_0x0069:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch:{ UnsupportedEncodingException -> 0x003a }
            java.lang.String r2 = "zero termination not found"
            r0.<init>(r2)     // Catch:{ UnsupportedEncodingException -> 0x003a }
            throw r0     // Catch:{ UnsupportedEncodingException -> 0x003a }
        L_0x0071:
            int r0 = r2 + 1
            r2 = r0
            goto L_0x0054
        L_0x0075:
            java.lang.String r0 = new java.lang.String     // Catch:{ UnsupportedEncodingException -> 0x003a }
            java.lang.String r3 = am     // Catch:{ UnsupportedEncodingException -> 0x003a }
            r0.<init>(r5, r6, r2, r3)     // Catch:{ UnsupportedEncodingException -> 0x003a }
            goto L_0x0046
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zm.b(byte[], int, int, boolean):java.lang.String");
    }

    /* access modifiers changed from: package-private */
    public final int c(byte[] bArr) {
        System.arraycopy(f, 0, bArr, 4, f.length);
        bArr[8] = this.g;
        bArr[13] = this.h;
        a((long) this.m, bArr, 14);
        a((long) this.n, bArr, 28);
        a((long) this.o, bArr, 30);
        a((long) this.p, bArr, 32);
        a((long) this.q, bArr, 34);
        return 32;
    }

    /* access modifiers changed from: package-private */
    public final int d(byte[] bArr) {
        this.g = bArr[8];
        this.l = e(bArr, 9);
        this.h = bArr[13];
        this.m = d(bArr, 14);
        this.n = d(bArr, 28);
        this.o = d(bArr, 30);
        this.p = d(bArr, 32);
        this.q = d(bArr, 34);
        return 32;
    }

    /* access modifiers changed from: package-private */
    public void e() {
        this.h = 24;
        this.m = 0;
        this.l = 0;
        this.u = false;
        this.B = null;
    }

    public boolean equals(Object obj) {
        return (obj instanceof zm) && ((zm) obj).q == this.q;
    }

    /* access modifiers changed from: package-private */
    public final boolean f() {
        return (this.h & 128) == 128;
    }

    public int hashCode() {
        return this.q;
    }

    /* access modifiers changed from: package-private */
    public abstract int i(byte[] bArr, int i2);

    /* access modifiers changed from: package-private */
    public abstract int j(byte[] bArr, int i2);

    /* access modifiers changed from: package-private */
    public abstract int k(byte[] bArr, int i2);

    /* access modifiers changed from: package-private */
    public abstract int l(byte[] bArr, int i2);

    public String toString() {
        String str;
        switch (this.g) {
            case -96:
                str = "SMB_COM_NT_TRANSACT";
                break;
            case -95:
                str = "SMB_COM_NT_TRANSACT_SECONDARY";
                break;
            case -94:
                str = "SMB_COM_NT_CREATE_ANDX";
                break;
            case 0:
                str = "SMB_COM_CREATE_DIRECTORY";
                break;
            case 1:
                str = "SMB_COM_DELETE_DIRECTORY";
                break;
            case 4:
                str = "SMB_COM_CLOSE";
                break;
            case 6:
                str = "SMB_COM_DELETE";
                break;
            case 7:
                str = "SMB_COM_RENAME";
                break;
            case 8:
                str = "SMB_COM_QUERY_INFORMATION";
                break;
            case 16:
                str = "SMB_COM_CHECK_DIRECTORY";
                break;
            case 37:
                str = "SMB_COM_TRANSACTION";
                break;
            case 38:
                str = "SMB_COM_TRANSACTION_SECONDARY";
                break;
            case 42:
                str = "SMB_COM_MOVE";
                break;
            case 43:
                str = "SMB_COM_ECHO";
                break;
            case 45:
                str = "SMB_COM_OPEN_ANDX";
                break;
            case 46:
                str = "SMB_COM_READ_ANDX";
                break;
            case 47:
                str = "SMB_COM_WRITE_ANDX";
                break;
            case 50:
                str = "SMB_COM_TRANSACTION2";
                break;
            case 52:
                str = "SMB_COM_FIND_CLOSE2";
                break;
            case 113:
                str = "SMB_COM_TREE_DISCONNECT";
                break;
            case 114:
                str = "SMB_COM_NEGOTIATE";
                break;
            case 115:
                str = "SMB_COM_SESSION_SETUP_ANDX";
                break;
            case 116:
                str = "SMB_COM_LOGOFF_ANDX";
                break;
            case 117:
                str = "SMB_COM_TREE_CONNECT_ANDX";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        return new String("command=" + str + ",received=" + this.u + ",errorCode=" + (this.l == 0 ? BoxConstants.ROOT_FOLDER_ID : aaq.a(this.l)) + ",flags=0x" + abw.a((int) this.h & 255, 4) + ",flags2=0x" + abw.a(this.m, 4) + ",signSeq=" + this.x + ",tid=" + this.n + ",pid=" + this.o + ",uid=" + this.p + ",mid=" + this.q + ",wordCount=" + this.r + ",byteCount=" + this.s);
    }
}
