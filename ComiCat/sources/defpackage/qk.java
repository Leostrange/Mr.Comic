package defpackage;

import java.io.IOException;
import java.net.Socket;
import java.util.Hashtable;

/* renamed from: qk  reason: default package */
/* compiled from: ChannelX11 */
final class qk extends qb {
    private static Hashtable A = new Hashtable();
    private static Hashtable B = new Hashtable();
    private static byte[] C = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    static byte[] v = null;
    private static String w = "127.0.0.1";
    private static int x = 6000;
    private static byte[] z = null;
    private Socket D = null;
    private byte[] E = new byte[0];
    private boolean y = true;

    qk() {
        this.e = 131072;
        this.f = 131072;
        this.g = 16384;
        this.d = si.a("x11");
        this.o = true;
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    static byte[] b(ry ryVar) {
        byte[] bArr;
        synchronized (B) {
            bArr = (byte[]) B.get(ryVar);
            if (bArr == null) {
                byte[] bArr2 = new byte[16];
                synchronized (ry.g) {
                }
                A.put(ryVar, bArr2);
                bArr = new byte[32];
                for (int i = 0; i < 16; i++) {
                    bArr[i * 2] = C[(bArr2[i] >>> 4) & 15];
                    bArr[(i * 2) + 1] = C[bArr2[i] & 15];
                }
                B.put(ryVar, bArr);
            }
        }
        return bArr;
    }

    static void c(ry ryVar) {
        synchronized (B) {
            B.remove(ryVar);
            A.remove(ryVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte[] bArr2;
        if (this.y) {
            try {
                ry h = h();
                byte[] bArr3 = new byte[(this.E.length + i2)];
                System.arraycopy(bArr, i, bArr3, this.E.length, i2);
                if (this.E.length > 0) {
                    System.arraycopy(this.E, 0, bArr3, 0, this.E.length);
                }
                this.E = bArr3;
                byte[] bArr4 = this.E;
                int length = bArr4.length;
                if (length >= 9) {
                    int i5 = (bArr4[7] & 255) + ((bArr4[6] & 255) * 256);
                    int i6 = ((bArr4[8] & 255) * 256) + (bArr4[9] & 255);
                    if ((bArr4[0] & 255) == 66 || (bArr4[0] & 255) != 108) {
                        i3 = i5;
                        i4 = i6;
                    } else {
                        i3 = ((i5 << 8) & 65280) | ((i5 >>> 8) & 255);
                        i4 = ((i6 << 8) & 65280) | ((i6 >>> 8) & 255);
                    }
                    if (length >= i3 + 12 + ((-i3) & 3) + i4) {
                        byte[] bArr5 = new byte[i4];
                        System.arraycopy(bArr4, i3 + 12 + ((-i3) & 3), bArr5, 0, i4);
                        synchronized (A) {
                            bArr2 = (byte[]) A.get(h);
                        }
                        if (!a(bArr5, bArr2)) {
                            this.k = null;
                            e();
                            this.j.b();
                            f();
                        } else if (v != null) {
                            System.arraycopy(v, 0, bArr4, ((-i3) & 3) + i3 + 12, i4);
                        }
                        this.y = false;
                        this.j.a(bArr4, 0, length);
                        this.E = null;
                    }
                }
            } catch (qy e) {
                throw new IOException(e.toString());
            }
        } else {
            this.j.a(bArr, i, i2);
        }
    }

    public final void run() {
        try {
            this.D = si.a(w, x, 10000);
            this.D.setTcpNoDelay(true);
            this.j = new qs();
            this.j.a = this.D.getInputStream();
            this.j.b = this.D.getOutputStream();
            i();
            this.k = Thread.currentThread();
            qa qaVar = new qa(this.i);
            rl rlVar = new rl(qaVar);
            while (true) {
                try {
                    if (this.k != null && this.j != null && this.j.a != null) {
                        int read = this.j.a.read(qaVar.b, 14, (qaVar.b.length - 14) - 84);
                        if (read > 0) {
                            if (this.n) {
                                break;
                            }
                            rlVar.a();
                            qaVar.a((byte) 94);
                            qaVar.a(this.c);
                            qaVar.a(read);
                            qaVar.b(read);
                            h().a(rlVar, (qb) this, read);
                        } else {
                            e();
                            break;
                        }
                    } else {
                        break;
                    }
                } catch (Exception e) {
                }
            }
            f();
        } catch (Exception e2) {
            j();
            this.n = true;
            f();
        }
    }
}
