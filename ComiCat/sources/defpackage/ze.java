package defpackage;

/* renamed from: ze  reason: default package */
/* compiled from: NetServerEnum2Response */
final class ze extends aah {
    private int S;
    private int T;
    String a;

    /* renamed from: ze$a */
    /* compiled from: NetServerEnum2Response */
    class a implements za {
        String a;
        int b;
        int c;
        int d;
        String e;

        a() {
        }

        public final String a() {
            return this.a;
        }

        public final int b() {
            return (this.d & Integer.MIN_VALUE) != 0 ? 2 : 4;
        }

        public final int c() {
            return 17;
        }

        public final long d() {
            return 0;
        }

        public final long e() {
            return 0;
        }

        public final long f() {
            return 0;
        }

        public final String toString() {
            return new String("ServerInfo1[name=" + this.a + ",versionMajor=" + this.b + ",versionMinor=" + this.c + ",type=0x" + abw.a(this.d, 8) + ",commentOrMasterBrowser=" + this.e + "]");
        }
    }

    ze() {
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        this.P = d(bArr, i);
        int i2 = i + 2;
        this.S = d(bArr, i2);
        int i3 = i2 + 2;
        this.Q = d(bArr, i3);
        int i4 = i3 + 2;
        this.T = d(bArr, i4);
        return (i4 + 2) - i;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i, int i2) {
        String str = null;
        this.R = new a[this.Q];
        a aVar = null;
        int i3 = i;
        for (int i4 = 0; i4 < this.Q; i4++) {
            za[] zaVarArr = this.R;
            aVar = new a();
            zaVarArr[i4] = aVar;
            aVar.a = a(bArr, i3, 16, false);
            int i5 = i3 + 16;
            int i6 = i5 + 1;
            aVar.b = bArr[i5] & 255;
            int i7 = i6 + 1;
            aVar.c = bArr[i6] & 255;
            aVar.d = e(bArr, i7);
            int i8 = i7 + 4;
            int e = e(bArr, i8);
            i3 = i8 + 4;
            aVar.e = a(bArr, ((e & 65535) - this.S) + i, 48, false);
            if (abx.a >= 4) {
                e.println(aVar);
            }
        }
        if (this.Q != 0) {
            str = aVar.a;
        }
        this.a = str;
        return i3 - i;
    }

    public final String toString() {
        return new String("NetServerEnum2Response[" + super.toString() + ",status=" + this.P + ",converter=" + this.S + ",entriesReturned=" + this.Q + ",totalAvailableEntries=" + this.T + ",lastName=" + this.a + "]");
    }
}
