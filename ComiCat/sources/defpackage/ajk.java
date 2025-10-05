package defpackage;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ajk  reason: default package */
/* compiled from: BytesToNameCanonicalizer */
public final class ajk {
    protected final ajk a;
    protected final AtomicReference<b> b;
    protected final boolean c;
    protected int d;
    protected int e;
    protected int f;
    protected int[] g;
    protected ajm[] h;
    protected a[] i;
    protected int j;
    protected int k;
    private final int l;
    private transient boolean m;
    private boolean n;
    private boolean o;
    private boolean p;

    /* renamed from: ajk$a */
    /* compiled from: BytesToNameCanonicalizer */
    static final class a {
        protected final ajm a;
        protected final a b;
        final int c;

        a(ajm ajm, a aVar) {
            this.a = ajm;
            this.b = aVar;
            this.c = aVar == null ? 1 : aVar.c + 1;
        }

        public final ajm a(int i, int i2, int i3) {
            if (this.a.hashCode() == i && this.a.a(i2, i3)) {
                return this.a;
            }
            for (a aVar = this.b; aVar != null; aVar = aVar.b) {
                ajm ajm = aVar.a;
                if (ajm.hashCode() == i && ajm.a(i2, i3)) {
                    return ajm;
                }
            }
            return null;
        }

        public final ajm a(int i, int[] iArr, int i2) {
            if (this.a.hashCode() == i && this.a.a(iArr, i2)) {
                return this.a;
            }
            for (a aVar = this.b; aVar != null; aVar = aVar.b) {
                ajm ajm = aVar.a;
                if (ajm.hashCode() == i && ajm.a(iArr, i2)) {
                    return ajm;
                }
            }
            return null;
        }
    }

    /* renamed from: ajk$b */
    /* compiled from: BytesToNameCanonicalizer */
    static final class b {
        public final int a;
        public final int b;
        public final int[] c;
        public final ajm[] d;
        public final a[] e;
        public final int f;
        public final int g;
        public final int h;

        public b(ajk ajk) {
            this.a = ajk.d;
            this.b = ajk.f;
            this.c = ajk.g;
            this.d = ajk.h;
            this.e = ajk.i;
            this.f = ajk.j;
            this.g = ajk.k;
            this.h = ajk.e;
        }

        public b(int[] iArr, ajm[] ajmArr) {
            this.a = 0;
            this.b = 63;
            this.c = iArr;
            this.d = ajmArr;
            this.e = null;
            this.f = 0;
            this.g = 0;
            this.h = 0;
        }
    }

    public ajk(int i2) {
        this.a = null;
        this.l = i2;
        this.c = true;
        this.b = new AtomicReference<>(b());
    }

    private ajk(ajk ajk, boolean z, int i2, b bVar) {
        this.a = ajk;
        this.l = i2;
        this.c = z;
        this.b = null;
        this.d = bVar.a;
        this.f = bVar.b;
        this.g = bVar.c;
        this.h = bVar.d;
        this.i = bVar.e;
        this.j = bVar.f;
        this.k = bVar.g;
        this.e = bVar.h;
        this.m = false;
        this.n = true;
        this.o = true;
        this.p = true;
    }

    private int b(int i2) {
        int i3 = this.l ^ i2;
        int i4 = i3 + (i3 >>> 15);
        return i4 ^ (i4 >>> 9);
    }

    private int b(int i2, int i3) {
        int i4 = (((i2 >>> 15) ^ i2) + (i3 * 33)) ^ this.l;
        return i4 + (i4 >>> 7);
    }

    private int b(int[] iArr, int i2) {
        if (i2 < 3) {
            throw new IllegalArgumentException();
        }
        int i3 = iArr[0] ^ this.l;
        int i4 = (((i3 + (i3 >>> 9)) * 33) + iArr[1]) * 65599;
        int i5 = (i4 + (i4 >>> 15)) ^ iArr[2];
        int i6 = i5 + (i5 >>> 17);
        for (int i7 = 3; i7 < i2; i7++) {
            int i8 = (i6 * 31) ^ iArr[i7];
            int i9 = i8 + (i8 >>> 3);
            i6 = i9 ^ (i9 << 7);
        }
        int i10 = (i6 >>> 15) + i6;
        return i10 ^ (i10 << 9);
    }

    private static b b() {
        return new b(new int[64], new ajm[64]);
    }

    private int c() {
        a[] aVarArr = this.i;
        int i2 = Integer.MAX_VALUE;
        int i3 = -1;
        int i4 = 0;
        int i5 = this.k;
        while (i4 < i5) {
            int i6 = aVarArr[i4].c;
            if (i6 >= i2) {
                i6 = i2;
            } else if (i6 == 1) {
                return i4;
            } else {
                i3 = i4;
            }
            i4++;
            i2 = i6;
        }
        return i3;
    }

    private void d() {
        a[] aVarArr = this.i;
        int length = aVarArr.length;
        this.i = new a[(length + length)];
        System.arraycopy(aVarArr, 0, this.i, 0, length);
    }

    public final ajk a(boolean z) {
        return new ajk(this, z, this.l, this.b.get());
    }

    public final ajm a(int i2) {
        a aVar;
        int b2 = b(i2);
        int i3 = this.f & b2;
        int i4 = this.g[i3];
        if ((((i4 >> 8) ^ b2) << 8) == 0) {
            ajm ajm = this.h[i3];
            if (ajm == null) {
                return null;
            }
            if (ajm.a(i2)) {
                return ajm;
            }
        } else if (i4 == 0) {
            return null;
        }
        int i5 = i4 & 255;
        if (i5 <= 0 || (aVar = this.i[i5 - 1]) == null) {
            return null;
        }
        return aVar.a(b2, i2, 0);
    }

    public final ajm a(int i2, int i3) {
        a aVar;
        int b2 = i3 == 0 ? b(i2) : b(i2, i3);
        int i4 = this.f & b2;
        int i5 = this.g[i4];
        if ((((i5 >> 8) ^ b2) << 8) == 0) {
            ajm ajm = this.h[i4];
            if (ajm == null) {
                return null;
            }
            if (ajm.a(i2, i3)) {
                return ajm;
            }
        } else if (i5 == 0) {
            return null;
        }
        int i6 = i5 & 255;
        if (i6 <= 0 || (aVar = this.i[i6 - 1]) == null) {
            return null;
        }
        return aVar.a(b2, i2, i3);
    }

    public final ajm a(String str, int[] iArr, int i2) {
        int b2;
        ajm ajm;
        int i3;
        int i4;
        int max;
        String a2 = this.c ? ajv.a.a(str) : str;
        if (i2 < 3) {
            b2 = i2 == 1 ? b(iArr[0]) : b(iArr[0], iArr[1]);
        } else {
            b2 = b(iArr, i2);
        }
        if (i2 < 4) {
            switch (i2) {
                case 1:
                    ajm = new ajn(a2, b2, iArr[0]);
                    break;
                case 2:
                    ajm = new ajo(a2, b2, iArr[0], iArr[1]);
                    break;
                case 3:
                    ajm = new ajp(a2, b2, iArr[0], iArr[1], iArr[2]);
                    break;
            }
        }
        int[] iArr2 = new int[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            iArr2[i5] = iArr[i5];
        }
        ajm = new ajq(a2, b2, iArr2, i2);
        if (this.n) {
            int[] iArr3 = this.g;
            int length = this.g.length;
            this.g = new int[length];
            System.arraycopy(iArr3, 0, this.g, 0, length);
            this.n = false;
        }
        if (this.m) {
            this.m = false;
            this.o = false;
            int length2 = this.g.length;
            int i6 = length2 + length2;
            if (i6 > 65536) {
                this.d = 0;
                this.e = 0;
                Arrays.fill(this.g, 0);
                Arrays.fill(this.h, (Object) null);
                Arrays.fill(this.i, (Object) null);
                this.j = 0;
                this.k = 0;
            } else {
                this.g = new int[i6];
                this.f = i6 - 1;
                ajm[] ajmArr = this.h;
                this.h = new ajm[i6];
                int i7 = 0;
                for (int i8 = 0; i8 < length2; i8++) {
                    ajm ajm2 = ajmArr[i8];
                    if (ajm2 != null) {
                        i7++;
                        int hashCode = ajm2.hashCode();
                        int i9 = this.f & hashCode;
                        this.h[i9] = ajm2;
                        this.g[i9] = hashCode << 8;
                    }
                }
                int i10 = this.k;
                if (i10 == 0) {
                    this.e = 0;
                } else {
                    this.j = 0;
                    this.k = 0;
                    this.p = false;
                    a[] aVarArr = this.i;
                    this.i = new a[aVarArr.length];
                    int i11 = 0;
                    int i12 = 0;
                    while (i12 < i10) {
                        a aVar = aVarArr[i12];
                        int i13 = i7;
                        while (aVar != null) {
                            i13++;
                            ajm ajm3 = aVar.a;
                            int hashCode2 = ajm3.hashCode();
                            int i14 = this.f & hashCode2;
                            int i15 = this.g[i14];
                            if (this.h[i14] == null) {
                                this.g[i14] = hashCode2 << 8;
                                this.h[i14] = ajm3;
                                max = i11;
                            } else {
                                this.j++;
                                int i16 = i15 & 255;
                                if (i16 == 0) {
                                    if (this.k <= 254) {
                                        i4 = this.k;
                                        this.k++;
                                        if (i4 >= this.i.length) {
                                            d();
                                        }
                                    } else {
                                        i4 = c();
                                    }
                                    this.g[i14] = (i15 & -256) | (i4 + 1);
                                } else {
                                    i4 = i16 - 1;
                                }
                                a aVar2 = new a(ajm3, this.i[i4]);
                                this.i[i4] = aVar2;
                                max = Math.max(i11, aVar2.c);
                            }
                            aVar = aVar.b;
                            i11 = max;
                        }
                        i12++;
                        i7 = i13;
                    }
                    this.e = i11;
                    if (i7 != this.d) {
                        throw new RuntimeException("Internal error: count after rehash " + i7 + "; should be " + this.d);
                    }
                }
            }
        }
        this.d++;
        int i17 = b2 & this.f;
        if (this.h[i17] == null) {
            this.g[i17] = b2 << 8;
            if (this.o) {
                ajm[] ajmArr2 = this.h;
                int length3 = ajmArr2.length;
                this.h = new ajm[length3];
                System.arraycopy(ajmArr2, 0, this.h, 0, length3);
                this.o = false;
            }
            this.h[i17] = ajm;
        } else {
            if (this.p) {
                a[] aVarArr2 = this.i;
                if (aVarArr2 == null) {
                    this.i = new a[32];
                } else {
                    int length4 = aVarArr2.length;
                    this.i = new a[length4];
                    System.arraycopy(aVarArr2, 0, this.i, 0, length4);
                }
                this.p = false;
            }
            this.j++;
            int i18 = this.g[i17];
            int i19 = i18 & 255;
            if (i19 == 0) {
                if (this.k <= 254) {
                    i3 = this.k;
                    this.k++;
                    if (i3 >= this.i.length) {
                        d();
                    }
                } else {
                    i3 = c();
                }
                this.g[i17] = (i18 & -256) | (i3 + 1);
            } else {
                i3 = i19 - 1;
            }
            a aVar3 = new a(ajm, this.i[i3]);
            this.i[i3] = aVar3;
            this.e = Math.max(aVar3.c, this.e);
            if (this.e > 255) {
                throw new IllegalStateException("Longest collision chain in symbol table (of size " + this.d + ") now exceeds maximum, 255 -- suspect a DoS attack based on hash collisions");
            }
        }
        int length5 = this.g.length;
        if (this.d > (length5 >> 1)) {
            int i20 = length5 >> 2;
            if (this.d > length5 - i20) {
                this.m = true;
            } else if (this.j >= i20) {
                this.m = true;
            }
        }
        return ajm;
    }

    public final ajm a(int[] iArr, int i2) {
        a aVar;
        int i3 = 0;
        if (i2 < 3) {
            int i4 = iArr[0];
            if (i2 >= 2) {
                i3 = iArr[1];
            }
            return a(i4, i3);
        }
        int b2 = b(iArr, i2);
        int i5 = this.f & b2;
        int i6 = this.g[i5];
        if ((((i6 >> 8) ^ b2) << 8) == 0) {
            ajm ajm = this.h[i5];
            if (ajm == null || ajm.a(iArr, i2)) {
                return ajm;
            }
        } else if (i6 == 0) {
            return null;
        }
        int i7 = i6 & 255;
        if (i7 <= 0 || (aVar = this.i[i7 - 1]) == null) {
            return null;
        }
        return aVar.a(b2, iArr, i2);
    }

    public final void a() {
        if (this.a != null) {
            if (!this.n) {
                ajk ajk = this.a;
                b bVar = new b(this);
                int i2 = bVar.a;
                b bVar2 = ajk.b.get();
                if (i2 > bVar2.a) {
                    if (i2 > 6000 || bVar.h > 63) {
                        bVar = b();
                    }
                    ajk.b.compareAndSet(bVar2, bVar);
                }
                this.n = true;
                this.o = true;
                this.p = true;
            }
        }
    }
}
