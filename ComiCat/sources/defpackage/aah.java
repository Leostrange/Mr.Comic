package defpackage;

import java.util.Enumeration;

/* renamed from: aah  reason: default package */
/* compiled from: SmbComTransactionResponse */
abstract class aah extends zm implements Enumeration {
    protected int D;
    protected int E;
    protected int F;
    protected int G;
    protected int H;
    protected int I;
    protected int J;
    int K;
    byte L;
    boolean M = true;
    boolean N = true;
    byte[] O = null;
    int P;
    int Q;
    za[] R;
    private int S;
    private boolean T;
    private boolean U;
    private int a;
    protected int b;
    protected int c;
    protected int d;

    aah() {
    }

    /* access modifiers changed from: package-private */
    public abstract int a(byte[] bArr, int i);

    /* access modifiers changed from: package-private */
    public abstract int a(byte[] bArr, int i, int i2);

    /* access modifiers changed from: package-private */
    public final void e() {
        super.e();
        this.J = 0;
        this.M = true;
        this.N = true;
        this.U = false;
        this.T = false;
    }

    public boolean hasMoreElements() {
        return this.l == 0 && this.M;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int k(byte[] bArr, int i) {
        this.b = d(bArr, i);
        if (this.J == 0) {
            this.J = this.b;
        }
        int i2 = i + 2;
        this.c = d(bArr, i2);
        int i3 = i2 + 4;
        this.d = d(bArr, i3);
        int i4 = i3 + 2;
        this.D = d(bArr, i4);
        int i5 = i4 + 2;
        this.E = d(bArr, i5);
        int i6 = i5 + 2;
        this.K = d(bArr, i6);
        int i7 = i6 + 2;
        this.F = d(bArr, i7);
        int i8 = i7 + 2;
        this.G = d(bArr, i8);
        int i9 = i8 + 2;
        this.H = bArr[i9] & 255;
        int i10 = i9 + 2;
        if (this.H != 0 && abx.a > 2) {
            e.println("setupCount is not zero: " + this.H);
        }
        return i10 - i;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        this.S = 0;
        this.a = 0;
        if (this.d > 0) {
            int i2 = this.D - (i - this.i);
            this.a = i2;
            int i3 = i2 + i;
            System.arraycopy(bArr, i3, this.O, this.I + this.E, this.d);
            i = i3 + this.d;
        }
        if (this.K > 0) {
            int i4 = this.F - (i - this.i);
            this.S = i4;
            System.arraycopy(bArr, i4 + i, this.O, this.J + this.G, this.K);
        }
        if (!this.T && this.E + this.d == this.b) {
            this.T = true;
        }
        if (!this.U && this.G + this.K == this.c) {
            this.U = true;
        }
        if (this.T && this.U) {
            this.M = false;
            a(this.O, this.I);
            a(this.O, this.J, this.c);
        }
        return this.a + this.d + this.S + this.K;
    }

    public Object nextElement() {
        if (this.N) {
            this.N = false;
        }
        return this;
    }

    public String toString() {
        return new String(super.toString() + ",totalParameterCount=" + this.b + ",totalDataCount=" + this.c + ",parameterCount=" + this.d + ",parameterOffset=" + this.D + ",parameterDisplacement=" + this.E + ",dataCount=" + this.K + ",dataOffset=" + this.F + ",dataDisplacement=" + this.G + ",setupCount=" + this.H + ",pad=" + this.a + ",pad1=" + this.S);
    }
}
