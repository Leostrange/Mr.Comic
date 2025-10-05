package defpackage;

import java.util.Enumeration;

/* renamed from: aag  reason: default package */
/* compiled from: SmbComTransaction */
abstract class aag extends zm implements Enumeration {
    private static final int a = (xj.a("jcifs.smb.client.transaction_buf_size", 65535) - 512);
    protected int D = 61;
    protected int E = 51;
    protected int F;
    protected int G;
    protected int H;
    protected int I;
    protected int J;
    protected int K;
    int L;
    int M;
    int N = 1024;
    int O = a;
    byte P;
    int Q = 0;
    int R = 1;
    byte S;
    String T = "";
    int U;
    byte[] V;
    private boolean aA = true;
    private boolean aB = true;
    private int aC;
    private int aD;
    private int b = 0;
    private int c = 0;
    private int d = 0;

    aag() {
    }

    /* access modifiers changed from: package-private */
    public abstract int a(byte[] bArr, int i);

    /* access modifiers changed from: package-private */
    public void a(int i, String str) {
        e();
    }

    /* access modifiers changed from: package-private */
    public abstract int b(byte[] bArr, int i);

    /* access modifiers changed from: package-private */
    public abstract int c(byte[] bArr, int i);

    /* access modifiers changed from: package-private */
    public final void e() {
        super.e();
        this.aA = true;
        this.aB = true;
    }

    public boolean hasMoreElements() {
        return this.aA;
    }

    /* access modifiers changed from: package-private */
    public int i(byte[] bArr, int i) {
        int a2;
        a((long) this.L, bArr, i);
        int i2 = i + 2;
        a((long) this.M, bArr, i2);
        int i3 = i2 + 2;
        if (this.g != 38) {
            a((long) this.N, bArr, i3);
            int i4 = i3 + 2;
            a((long) this.O, bArr, i4);
            int i5 = i4 + 2;
            int i6 = i5 + 1;
            bArr[i5] = this.P;
            int i7 = i6 + 1;
            bArr[i6] = 0;
            a((long) this.b, bArr, i7);
            int i8 = i7 + 2;
            b((long) this.Q, bArr, i8);
            int i9 = i8 + 4;
            int i10 = i9 + 1;
            bArr[i9] = 0;
            i3 = i10 + 1;
            bArr[i10] = 0;
        }
        a((long) this.F, bArr, i3);
        int i11 = i3 + 2;
        a((long) this.G, bArr, i11);
        int i12 = i11 + 2;
        if (this.g == 38) {
            a((long) this.H, bArr, i12);
            i12 += 2;
        }
        a((long) this.I, bArr, i12);
        int i13 = i12 + 2;
        a((long) (this.I == 0 ? 0 : this.J), bArr, i13);
        int i14 = i13 + 2;
        if (this.g == 38) {
            a((long) this.K, bArr, i14);
            a2 = i14 + 2;
        } else {
            int i15 = i14 + 1;
            bArr[i14] = (byte) this.R;
            int i16 = i15 + 1;
            bArr[i15] = 0;
            a2 = i16 + a(bArr, i16);
        }
        return a2 - i;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4 = this.c;
        int a2 = (this.g != 37 || f()) ? i : a(this.T, bArr, i) + i;
        if (this.F > 0) {
            while (true) {
                i3 = a2;
                int i5 = i4;
                i4 = i5 - 1;
                if (i5 <= 0) {
                    break;
                }
                a2 = i3 + 1;
                bArr[i3] = 0;
            }
            System.arraycopy(this.V, this.aC, bArr, i3, this.F);
            a2 = this.F + i3;
        }
        if (this.I > 0) {
            int i6 = this.d;
            while (true) {
                i2 = a2;
                int i7 = i6;
                i6 = i7 - 1;
                if (i7 <= 0) {
                    break;
                }
                a2 = i2 + 1;
                bArr[i2] = 0;
            }
            System.arraycopy(this.V, this.aD, bArr, i2, this.I);
            this.aD += this.I;
            a2 = this.I + i2;
        }
        return a2 - i;
    }

    /* access modifiers changed from: package-private */
    public final int k(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public Object nextElement() {
        if (this.aB) {
            this.aB = false;
            this.G = this.D + (this.R * 2) + 2;
            if (this.g != -96) {
                if (this.g == 37 && !f()) {
                    this.G += a(this.T, this.G);
                }
            } else if (this.g == -96) {
                this.G += 2;
            }
            this.c = this.G % 2;
            this.c = this.c == 0 ? 0 : 2 - this.c;
            this.G += this.c;
            this.L = b(this.V, this.aC);
            this.aD = this.L;
            int i = this.U - this.G;
            this.F = Math.min(this.L, i);
            int i2 = i - this.F;
            this.J = this.G + this.F;
            this.d = this.J % 2;
            this.d = this.d == 0 ? 0 : 2 - this.d;
            this.J += this.d;
            this.M = c(this.V, this.aD);
            this.I = Math.min(this.M, i2);
        } else {
            if (this.g != -96) {
                this.g = 38;
            } else {
                this.g = -95;
            }
            this.G = 51;
            if (this.L - this.H > 0) {
                this.c = this.G % 2;
                this.c = this.c == 0 ? 0 : 2 - this.c;
                this.G += this.c;
            }
            this.H += this.F;
            int i3 = (this.U - this.G) - this.c;
            this.F = Math.min(this.L - this.H, i3);
            int i4 = i3 - this.F;
            this.J = this.G + this.F;
            this.d = this.J % 2;
            this.d = this.d == 0 ? 0 : 2 - this.d;
            this.J += this.d;
            this.K += this.I;
            this.I = Math.min(this.M - this.K, i4 - this.d);
        }
        if (this.H + this.F >= this.L && this.K + this.I >= this.M) {
            this.aA = false;
        }
        return this;
    }

    public String toString() {
        return new String(super.toString() + ",totalParameterCount=" + this.L + ",totalDataCount=" + this.M + ",maxParameterCount=" + this.N + ",maxDataCount=" + this.O + ",maxSetupCount=" + this.P + ",flags=0x" + abw.a(this.b, 2) + ",timeout=" + this.Q + ",parameterCount=" + this.F + ",parameterOffset=" + this.G + ",parameterDisplacement=" + this.H + ",dataCount=" + this.I + ",dataOffset=" + this.J + ",dataDisplacement=" + this.K + ",setupCount=" + this.R + ",pad=" + this.c + ",pad1=" + this.d);
    }
}
