package defpackage;

/* renamed from: aae  reason: default package */
/* compiled from: SmbComSessionSetupAndX */
final class aae extends yv {
    private static final boolean D = xj.a("jcifs.smb.client.disablePlainTextPasswords", true);
    private static final int d = xj.a("jcifs.smb.client.SessionSetupAndX.TreeConnectAndX", 1);
    private byte[] E;
    private byte[] F;
    private byte[] G = null;
    private int H;
    private int I;
    private String J;
    private String K;
    aav b;
    Object c;

    aae(aav aav, zm zmVar, Object obj) {
        super(zmVar);
        this.g = 115;
        this.b = aav;
        this.c = obj;
        this.H = aav.e.y;
        this.I = aav.e.x;
        if (aav.e.s.g == 1) {
            if (obj instanceof zl) {
                zl zlVar = (zl) obj;
                if (zlVar == zl.d) {
                    this.E = new byte[0];
                    this.F = new byte[0];
                    this.I &= Integer.MAX_VALUE;
                } else if (aav.e.s.h) {
                    this.E = zlVar.a(aav.e.s.p);
                    this.F = zlVar.b(aav.e.s.p);
                    if (this.E.length == 0 && this.F.length == 0) {
                        throw new RuntimeException("Null setup prohibited.");
                    }
                } else if (D) {
                    throw new RuntimeException("Plain text passwords are disabled");
                } else if (this.t) {
                    String str = zlVar.j;
                    this.E = new byte[0];
                    this.F = new byte[((str.length() + 1) * 2)];
                    a(str, this.F, 0);
                } else {
                    String str2 = zlVar.j;
                    this.E = new byte[((str2.length() + 1) * 2)];
                    this.F = new byte[0];
                    a(str2, this.E, 0);
                }
                this.J = zlVar.i;
                if (this.t) {
                    this.J = this.J.toUpperCase();
                }
                this.K = zlVar.h.toUpperCase();
            } else if (obj instanceof byte[]) {
                this.G = (byte[]) obj;
            } else {
                throw new aaq("Unsupported credential type");
            }
        } else if (aav.e.s.g != 0) {
            throw new aaq("Unsupported");
        } else if (obj instanceof zl) {
            zl zlVar2 = (zl) obj;
            this.E = new byte[0];
            this.F = new byte[0];
            this.J = zlVar2.i;
            if (this.t) {
                this.J = this.J.toUpperCase();
            }
            this.K = zlVar2.h.toUpperCase();
        } else {
            throw new aaq("Unsupported credential type");
        }
    }

    /* access modifiers changed from: package-private */
    public final int a(byte b2) {
        if (b2 == 117) {
            return d;
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        int i2;
        a((long) this.b.e.v, bArr, i);
        int i3 = i + 2;
        a((long) this.b.e.u, bArr, i3);
        int i4 = i3 + 2;
        aax aax = this.b.e;
        a(1, bArr, i4);
        int i5 = i4 + 2;
        b((long) this.H, bArr, i5);
        int i6 = i5 + 4;
        if (this.G != null) {
            a((long) this.G.length, bArr, i6);
            i2 = i6 + 2;
        } else {
            a((long) this.E.length, bArr, i6);
            int i7 = i6 + 2;
            a((long) this.F.length, bArr, i7);
            i2 = i7 + 2;
        }
        int i8 = i2 + 1;
        bArr[i2] = 0;
        int i9 = i8 + 1;
        bArr[i8] = 0;
        int i10 = i9 + 1;
        bArr[i9] = 0;
        int i11 = i10 + 1;
        bArr[i10] = 0;
        b((long) this.I, bArr, i11);
        return (i11 + 4) - i;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        int a;
        if (this.G != null) {
            System.arraycopy(this.G, 0, bArr, i, this.G.length);
            a = this.G.length + i;
        } else {
            System.arraycopy(this.E, 0, bArr, i, this.E.length);
            int length = this.E.length + i;
            System.arraycopy(this.F, 0, bArr, length, this.F.length);
            int length2 = length + this.F.length;
            int a2 = length2 + a(this.J, bArr, length2);
            a = a2 + a(this.K, bArr, a2);
        }
        aax aax = this.b.e;
        int a3 = a + a(aax.ax, bArr, a);
        aax aax2 = this.b.e;
        return (a3 + a(aax.ay, bArr, a3)) - i;
    }

    /* access modifiers changed from: package-private */
    public final int k(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        return 0;
    }

    public final String toString() {
        int i = 0;
        StringBuilder append = new StringBuilder("SmbComSessionSetupAndX[").append(super.toString()).append(",snd_buf_size=").append(this.b.e.v).append(",maxMpxCount=").append(this.b.e.u).append(",VC_NUMBER=");
        aax aax = this.b.e;
        StringBuilder append2 = append.append(1).append(",sessionKey=").append(this.H).append(",lmHash.length=").append(this.E == null ? 0 : this.E.length).append(",ntHash.length=");
        if (this.F != null) {
            i = this.F.length;
        }
        StringBuilder append3 = append2.append(i).append(",capabilities=").append(this.I).append(",accountName=").append(this.J).append(",primaryDomain=").append(this.K).append(",NATIVE_OS=");
        aax aax2 = this.b.e;
        StringBuilder append4 = append3.append(aax.ax).append(",NATIVE_LANMAN=");
        aax aax3 = this.b.e;
        return new String(append4.append(aax.ay).append("]").toString());
    }
}
