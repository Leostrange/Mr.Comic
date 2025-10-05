package defpackage;

import defpackage.ajr;
import java.math.BigDecimal;
import java.math.BigInteger;

/* renamed from: ais  reason: default package */
/* compiled from: JsonParserBase */
public abstract class ais extends ait {
    static final BigDecimal A = new BigDecimal(u);
    static final BigInteger t = BigInteger.valueOf(-2147483648L);
    static final BigInteger u = BigInteger.valueOf(2147483647L);
    static final BigInteger v = BigInteger.valueOf(Long.MIN_VALUE);
    static final BigInteger w = BigInteger.valueOf(Long.MAX_VALUE);
    static final BigDecimal x = new BigDecimal(v);
    static final BigDecimal y = new BigDecimal(w);
    static final BigDecimal z = new BigDecimal(t);
    protected int B = 0;
    protected int C;
    protected long D;
    protected double E;
    protected BigInteger F;
    protected BigDecimal G;
    protected boolean H;
    protected int I;
    protected int J;
    protected int K;
    protected final ajc c;
    protected boolean d;
    protected int e = 0;
    protected int f = 0;
    protected long g = 0;
    protected int h = 1;
    protected int i = 0;
    protected long j = 0;
    protected int k = 1;
    protected int l = 0;
    protected aiu m;
    protected ail n;
    protected final ajw o;
    protected char[] p = null;
    protected boolean q = false;
    protected ajs r = null;
    protected byte[] s;

    protected ais(ajc ajc, int i2) {
        this.a = i2;
        this.c = ajc;
        this.o = ajc.d();
        this.m = new aiu((aiu) null, 0, 1, 0);
    }

    private void c(int i2) {
        if (this.b == ail.VALUE_NUMBER_INT) {
            char[] e2 = this.o.e();
            int d2 = this.o.d();
            int i3 = this.I;
            if (this.H) {
                d2++;
            }
            if (i3 <= 9) {
                int a = ajf.a(e2, d2, i3);
                if (this.H) {
                    a = -a;
                }
                this.C = a;
                this.B = 1;
            } else if (i3 <= 18) {
                long b = ajf.b(e2, d2, i3);
                if (this.H) {
                    b = -b;
                }
                if (i3 == 10) {
                    if (this.H) {
                        if (b >= -2147483648L) {
                            this.C = (int) b;
                            this.B = 1;
                            return;
                        }
                    } else if (b <= 2147483647L) {
                        this.C = (int) b;
                        this.B = 1;
                        return;
                    }
                }
                this.D = b;
                this.B = 2;
            } else {
                String f2 = this.o.f();
                try {
                    if (ajf.a(e2, d2, i3, this.H)) {
                        this.D = Long.parseLong(f2);
                        this.B = 2;
                        return;
                    }
                    this.F = new BigInteger(f2);
                    this.B = 4;
                } catch (NumberFormatException e3) {
                    a("Malformed numeric value '" + f2 + "'", e3);
                }
            }
        } else if (this.b != ail.VALUE_NUMBER_FLOAT) {
            d("Current token (" + this.b + ") not numeric, can not use numeric value accessors");
        } else if (i2 == 16) {
            try {
                ajw ajw = this.o;
                this.G = ajw.k != null ? new BigDecimal(ajw.k) : ajw.d >= 0 ? new BigDecimal(ajw.c, ajw.d, ajw.e) : ajw.g == 0 ? new BigDecimal(ajw.h, 0, ajw.i) : new BigDecimal(ajw.g());
                this.B = 16;
            } catch (NumberFormatException e4) {
                a("Malformed numeric value '" + this.o.f() + "'", e4);
            }
        } else {
            this.E = ajf.a(this.o.f());
            this.B = 8;
        }
    }

    private void y() {
        d("Numeric value (" + f() + ") out of range of int (-2147483648 - 2147483647)");
    }

    private void z() {
        d("Numeric value (" + f() + ") out of range of long (-9223372036854775808 - 9223372036854775807)");
    }

    /* access modifiers changed from: protected */
    public final ail a(String str, double d2) {
        ajw ajw = this.o;
        ajw.c = null;
        ajw.d = -1;
        ajw.e = 0;
        ajw.j = str;
        ajw.k = null;
        if (ajw.f) {
            ajw.b();
        }
        ajw.i = 0;
        this.E = d2;
        this.B = 8;
        return ail.VALUE_NUMBER_FLOAT;
    }

    /* access modifiers changed from: protected */
    public final ail a(boolean z2, int i2) {
        this.H = z2;
        this.I = i2;
        this.J = 0;
        this.K = 0;
        this.B = 0;
        return ail.VALUE_NUMBER_INT;
    }

    /* access modifiers changed from: protected */
    public final ail a(boolean z2, int i2, int i3, int i4) {
        return (i3 > 0 || i4 > 0) ? b(z2, i2, i3, i4) : a(z2, i2);
    }

    /* access modifiers changed from: protected */
    public final void a(int i2, char c2) {
        d("Unexpected close marker '" + ((char) i2) + "': expected '" + c2 + "' (for " + this.m.d() + " starting at " + new StringBuilder().append(this.m.a(this.c.a())).toString() + ")");
    }

    /* access modifiers changed from: protected */
    public final void a(int i2, String str) {
        d(("Unexpected character (" + b(i2) + ") in numeric value") + ": " + str);
    }

    /* access modifiers changed from: protected */
    public final ail b(boolean z2, int i2, int i3, int i4) {
        this.H = z2;
        this.I = i2;
        this.J = i3;
        this.K = i4;
        this.B = 0;
        return ail.VALUE_NUMBER_FLOAT;
    }

    /* access modifiers changed from: protected */
    public final void b(String str) {
        d("Invalid numeric value: " + str);
    }

    public void close() {
        if (!this.d) {
            this.d = true;
            try {
                r();
            } finally {
                s();
            }
        }
    }

    public final String d() {
        return (this.b == ail.START_OBJECT || this.b == ail.START_ARRAY) ? this.m.h().g() : this.m.g();
    }

    public final aig e() {
        return new aig(this.c.a(), (this.g + ((long) this.e)) - 1, this.h, (this.e - this.i) + 1);
    }

    public final int i() {
        if ((this.B & 1) == 0) {
            if (this.B == 0) {
                c(1);
            }
            if ((this.B & 1) == 0) {
                if ((this.B & 2) != 0) {
                    int i2 = (int) this.D;
                    if (((long) i2) != this.D) {
                        d("Numeric value (" + f() + ") out of range of int");
                    }
                    this.C = i2;
                } else if ((this.B & 4) != 0) {
                    if (t.compareTo(this.F) > 0 || u.compareTo(this.F) < 0) {
                        y();
                    }
                    this.C = this.F.intValue();
                } else if ((this.B & 8) != 0) {
                    if (this.E < -2.147483648E9d || this.E > 2.147483647E9d) {
                        y();
                    }
                    this.C = (int) this.E;
                } else if ((this.B & 16) != 0) {
                    if (z.compareTo(this.G) > 0 || A.compareTo(this.G) < 0) {
                        y();
                    }
                    this.C = this.G.intValue();
                } else {
                    x();
                }
                this.B |= 1;
            }
        }
        return this.C;
    }

    public final long j() {
        if ((this.B & 2) == 0) {
            if (this.B == 0) {
                c(2);
            }
            if ((this.B & 2) == 0) {
                if ((this.B & 1) != 0) {
                    this.D = (long) this.C;
                } else if ((this.B & 4) != 0) {
                    if (v.compareTo(this.F) > 0 || w.compareTo(this.F) < 0) {
                        z();
                    }
                    this.D = this.F.longValue();
                } else if ((this.B & 8) != 0) {
                    if (this.E < -9.223372036854776E18d || this.E > 9.223372036854776E18d) {
                        z();
                    }
                    this.D = (long) this.E;
                } else if ((this.B & 16) != 0) {
                    if (x.compareTo(this.G) > 0 || y.compareTo(this.G) < 0) {
                        z();
                    }
                    this.D = this.G.longValue();
                } else {
                    x();
                }
                this.B |= 2;
            }
        }
        return this.D;
    }

    public final BigInteger k() {
        if ((this.B & 4) == 0) {
            if (this.B == 0) {
                c(4);
            }
            if ((this.B & 4) == 0) {
                if ((this.B & 16) != 0) {
                    this.F = this.G.toBigInteger();
                } else if ((this.B & 2) != 0) {
                    this.F = BigInteger.valueOf(this.D);
                } else if ((this.B & 1) != 0) {
                    this.F = BigInteger.valueOf((long) this.C);
                } else if ((this.B & 8) != 0) {
                    this.F = BigDecimal.valueOf(this.E).toBigInteger();
                } else {
                    x();
                }
                this.B |= 4;
            }
        }
        return this.F;
    }

    public final float l() {
        return (float) m();
    }

    public final double m() {
        if ((this.B & 8) == 0) {
            if (this.B == 0) {
                c(8);
            }
            if ((this.B & 8) == 0) {
                if ((this.B & 16) != 0) {
                    this.E = this.G.doubleValue();
                } else if ((this.B & 4) != 0) {
                    this.E = this.F.doubleValue();
                } else if ((this.B & 2) != 0) {
                    this.E = (double) this.D;
                } else if ((this.B & 1) != 0) {
                    this.E = (double) this.C;
                } else {
                    x();
                }
                this.B |= 8;
            }
        }
        return this.E;
    }

    public final BigDecimal n() {
        if ((this.B & 16) == 0) {
            if (this.B == 0) {
                c(16);
            }
            if ((this.B & 16) == 0) {
                if ((this.B & 8) != 0) {
                    this.G = new BigDecimal(f());
                } else if ((this.B & 4) != 0) {
                    this.G = new BigDecimal(this.F);
                } else if ((this.B & 2) != 0) {
                    this.G = BigDecimal.valueOf(this.D);
                } else if ((this.B & 1) != 0) {
                    this.G = BigDecimal.valueOf((long) this.C);
                } else {
                    x();
                }
                this.B |= 16;
            }
        }
        return this.G;
    }

    /* access modifiers changed from: protected */
    public final void o() {
        if (!p()) {
            v();
        }
    }

    /* access modifiers changed from: protected */
    public abstract boolean p();

    /* access modifiers changed from: protected */
    public abstract void q();

    /* access modifiers changed from: protected */
    public abstract void r();

    /* access modifiers changed from: protected */
    public void s() {
        ajw ajw = this.o;
        if (ajw.b == null) {
            ajw.a();
        } else if (ajw.h != null) {
            ajw.a();
            char[] cArr = ajw.h;
            ajw.h = null;
            ajw.b.a(ajr.b.TEXT_BUFFER, cArr);
        }
        char[] cArr2 = this.p;
        if (cArr2 != null) {
            this.p = null;
            this.c.c(cArr2);
        }
    }

    /* access modifiers changed from: protected */
    public final void t() {
        if (!this.m.b()) {
            c(": expected close marker for " + this.m.d() + " (from " + this.m.a(this.c.a()) + ")");
        }
    }

    /* access modifiers changed from: protected */
    public char u() {
        throw new UnsupportedOperationException();
    }
}
