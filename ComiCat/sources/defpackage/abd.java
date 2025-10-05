package defpackage;

/* renamed from: abd  reason: default package */
/* compiled from: Trans2GetDfsReferralResponse */
final class abd extends aah {
    int S;
    int T;
    a[] U;
    int a;

    /* renamed from: abd$a */
    /* compiled from: Trans2GetDfsReferralResponse */
    class a {
        int a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        int i;
        String j = null;
        String k = null;
        private String m;

        a() {
        }

        public final String toString() {
            return new String("Referral[version=" + this.a + ",size=" + this.b + ",serverType=" + this.c + ",flags=" + this.d + ",proximity=" + this.e + ",ttl=" + this.i + ",pathOffset=" + this.f + ",altPathOffset=" + this.g + ",nodeOffset=" + this.h + ",path=" + this.j + ",altPath=" + this.m + ",node=" + this.k + "]");
        }
    }

    abd() {
        this.L = 16;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i, int i2) {
        this.a = d(bArr, i);
        int i3 = i + 2;
        if ((this.m & 32768) != 0) {
            this.a /= 2;
        }
        this.S = d(bArr, i3);
        int i4 = i3 + 2;
        this.T = d(bArr, i4);
        this.U = new a[this.S];
        int i5 = i4 + 4;
        int i6 = 0;
        while (i6 < this.S) {
            this.U[i6] = new a();
            a aVar = this.U[i6];
            aVar.a = zm.d(bArr, i5);
            if (aVar.a == 3 || aVar.a == 1) {
                int i7 = i5 + 2;
                aVar.b = zm.d(bArr, i7);
                int i8 = i7 + 2;
                aVar.c = zm.d(bArr, i8);
                int i9 = i8 + 2;
                aVar.d = zm.d(bArr, i9);
                int i10 = i9 + 2;
                if (aVar.a == 3) {
                    aVar.e = zm.d(bArr, i10);
                    int i11 = i10 + 2;
                    aVar.i = zm.d(bArr, i11);
                    int i12 = i11 + 2;
                    aVar.f = zm.d(bArr, i12);
                    int i13 = i12 + 2;
                    aVar.g = zm.d(bArr, i13);
                    aVar.h = zm.d(bArr, i13 + 2);
                    aVar.j = abd.this.a(bArr, i5 + aVar.f, i2, (abd.this.m & 32768) != 0);
                    if (aVar.h > 0) {
                        aVar.k = abd.this.a(bArr, i5 + aVar.h, i2, (abd.this.m & 32768) != 0);
                    }
                } else if (aVar.a == 1) {
                    aVar.k = abd.this.a(bArr, i10, i2, (abd.this.m & 32768) != 0);
                }
                i5 += aVar.b;
                i6++;
            } else {
                throw new RuntimeException("Version " + aVar.a + " referral not supported. Please report this to jcifs at samba dot org.");
            }
        }
        return i5 - i;
    }

    public final String toString() {
        return new String("Trans2GetDfsReferralResponse[" + super.toString() + ",pathConsumed=" + this.a + ",numReferrals=" + this.S + ",flags=" + this.T + "]");
    }
}
