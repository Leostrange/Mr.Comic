package defpackage;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

/* renamed from: uo  reason: default package */
/* compiled from: FileHeader */
public final class uo extends ul {
    private int A = -1;
    public final int i;
    public byte j;
    public byte k;
    public String l;
    public long m;
    public long n;
    private long o;
    private final uq p;
    private final int q;
    private short r;
    private int s;
    private int t;
    private final byte[] u;
    private String v;
    private byte[] w;
    private final byte[] x = new byte[8];
    private Date y;
    private int z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public uo(ul ulVar, byte[] bArr) {
        super(ulVar);
        this.o = ((((long) bArr[3]) & 255) << 24) | ((((long) bArr[2]) & 255) << 16) | ((((long) bArr[1]) & 255) << 8) | (((long) bArr[0]) & 255);
        this.p = uq.a(bArr[4]);
        this.i = ug.b(bArr, 5);
        this.q = ug.b(bArr, 9);
        this.j = (byte) (this.j | (bArr[13] & 255));
        this.k = (byte) (this.k | (bArr[14] & 255));
        this.r = ug.a(bArr, 15);
        this.z = ug.b(bArr, 17);
        int i2 = 21;
        if ((this.d & 256) != 0) {
            this.s = ug.b(bArr, 21);
            this.t = ug.b(bArr, 25);
            i2 = 29;
        } else {
            this.s = 0;
            this.t = 0;
            if (this.o == -1) {
                this.o = -1;
                this.t = Integer.MAX_VALUE;
            }
        }
        this.m |= (long) this.s;
        this.m <<= 32;
        this.m |= (long) this.h;
        this.n |= (long) this.t;
        this.n <<= 32;
        this.n += this.o;
        this.r = this.r > 4096 ? 4096 : this.r;
        this.u = new byte[this.r];
        int i3 = i2;
        for (int i4 = 0; i4 < this.r; i4++) {
            this.u[i4] = bArr[i3];
            i3++;
        }
        if (j()) {
            if ((this.d & 512) != 0) {
                this.l = "";
                this.v = "";
                int i5 = 0;
                while (i5 < this.u.length && this.u[i5] != 0) {
                    i5++;
                }
                byte[] bArr2 = new byte[i5];
                System.arraycopy(this.u, 0, bArr2, 0, bArr2.length);
                this.l = new String(bArr2);
                if (i5 != this.r) {
                    this.v = up.a(this.u, i5 + 1);
                }
            } else {
                this.l = new String(this.u);
                this.v = "";
            }
        }
        if (uw.NewSubHeader.b(this.c)) {
            int i6 = (this.e - 32) - this.r;
            int i7 = l() ? i6 - 8 : i6;
            if (i7 > 0) {
                this.w = new byte[i7];
                for (int i8 = 0; i8 < i7; i8++) {
                    this.w[i8] = bArr[i3];
                    i3++;
                }
            }
            if (Arrays.equals(ut.f.i, this.u)) {
                this.A = this.w[8] + (this.w[9] << 8) + (this.w[10] << 16) + (this.w[11] << 24);
            }
        }
        if (l()) {
            for (int i9 = 0; i9 < 8; i9++) {
                this.x[i9] = bArr[i3];
                i3++;
            }
        }
        int i10 = this.q;
        Calendar instance = Calendar.getInstance();
        instance.set(1, (i10 >>> 25) + 1980);
        instance.set(2, ((i10 >>> 21) & 15) - 1);
        instance.set(5, (i10 >>> 16) & 31);
        instance.set(11, (i10 >>> 11) & 31);
        instance.set(12, (i10 >>> 5) & 63);
        instance.set(13, (i10 & 31) * 2);
        this.y = instance.getTime();
    }

    private boolean l() {
        return (this.d & 1024) != 0;
    }

    public final boolean h() {
        return (this.d & 2) != 0;
    }

    public final boolean i() {
        return (this.d & 16) != 0;
    }

    public final boolean j() {
        return uw.FileHeader.b(this.c);
    }

    public final boolean k() {
        return (this.d & 224) == 224;
    }

    public final String toString() {
        return super.toString();
    }
}
