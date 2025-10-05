package defpackage;

import java.util.Date;

/* renamed from: abh  reason: default package */
/* compiled from: Trans2QueryPathInformationResponse */
final class abh extends aah {
    private int S;
    zc a;

    /* renamed from: abh$a */
    /* compiled from: Trans2QueryPathInformationResponse */
    class a implements zc {
        long a;
        long b;
        long c;
        long d;
        int e;

        a() {
        }

        public final int a() {
            return this.e;
        }

        public final long b() {
            return this.a;
        }

        public final long c() {
            return this.c;
        }

        public final long d() {
            return 0;
        }

        public final String toString() {
            return new String("SmbQueryFileBasicInfo[createTime=" + new Date(this.a) + ",lastAccessTime=" + new Date(this.b) + ",lastWriteTime=" + new Date(this.c) + ",changeTime=" + new Date(this.d) + ",attributes=0x" + abw.a(this.e, 4) + "]");
        }
    }

    /* renamed from: abh$b */
    /* compiled from: Trans2QueryPathInformationResponse */
    class b implements zc {
        long a;
        long b;
        int c;
        boolean d;
        boolean e;

        b() {
        }

        public final int a() {
            return 0;
        }

        public final long b() {
            return 0;
        }

        public final long c() {
            return 0;
        }

        public final long d() {
            return this.b;
        }

        public final String toString() {
            return new String("SmbQueryInfoStandard[allocationSize=" + this.a + ",endOfFile=" + this.b + ",numberOfLinks=" + this.c + ",deletePending=" + this.d + ",directory=" + this.e + "]");
        }
    }

    abh(int i) {
        this.S = i;
        this.L = 5;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        return 2;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i, int i2) {
        boolean z = true;
        switch (this.S) {
            case 257:
                a aVar = new a();
                aVar.a = g(bArr, i);
                int i3 = i + 8;
                aVar.b = g(bArr, i3);
                int i4 = i3 + 8;
                aVar.c = g(bArr, i4);
                int i5 = i4 + 8;
                aVar.d = g(bArr, i5);
                int i6 = i5 + 8;
                aVar.e = d(bArr, i6);
                this.a = aVar;
                return (i6 + 2) - i;
            case 258:
                b bVar = new b();
                bVar.a = f(bArr, i);
                int i7 = i + 8;
                bVar.b = f(bArr, i7);
                int i8 = i7 + 8;
                bVar.c = e(bArr, i8);
                int i9 = i8 + 4;
                int i10 = i9 + 1;
                bVar.d = (bArr[i9] & 255) > 0;
                int i11 = i10 + 1;
                if ((bArr[i10] & 255) <= 0) {
                    z = false;
                }
                bVar.e = z;
                this.a = bVar;
                return i11 - i;
            default:
                return 0;
        }
    }

    public final String toString() {
        return new String("Trans2QueryPathInformationResponse[" + super.toString() + "]");
    }
}
