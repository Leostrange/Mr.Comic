package defpackage;

/* renamed from: abf  reason: default package */
/* compiled from: Trans2QueryFSInformationResponse */
final class abf extends aah {
    private int S = 1;
    yu a;

    /* renamed from: abf$a */
    /* compiled from: Trans2QueryFSInformationResponse */
    class a implements yu {
        long a;
        long b;
        int c;
        int d;

        a() {
        }

        public final long a() {
            return this.a * ((long) this.c) * ((long) this.d);
        }

        public final String toString() {
            return new String("SmbInfoAllocation[alloc=" + this.a + ",free=" + this.b + ",sectPerAlloc=" + this.c + ",bytesPerSect=" + this.d + "]");
        }
    }

    abf() {
        this.g = 50;
        this.L = 3;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i, int i2) {
        switch (this.S) {
            case 1:
                a aVar = new a();
                int i3 = i + 4;
                aVar.c = e(bArr, i3);
                int i4 = i3 + 4;
                aVar.a = (long) e(bArr, i4);
                int i5 = i4 + 4;
                aVar.b = (long) e(bArr, i5);
                int i6 = i5 + 4;
                aVar.d = d(bArr, i6);
                this.a = aVar;
                return (i6 + 4) - i;
            case 259:
                a aVar2 = new a();
                aVar2.a = f(bArr, i);
                int i7 = i + 8;
                aVar2.b = f(bArr, i7);
                int i8 = i7 + 8;
                aVar2.c = e(bArr, i8);
                int i9 = i8 + 4;
                aVar2.d = e(bArr, i9);
                this.a = aVar2;
                return (i9 + 4) - i;
            case 1007:
                a aVar3 = new a();
                aVar3.a = f(bArr, i);
                int i10 = i + 8;
                aVar3.b = f(bArr, i10);
                int i11 = i10 + 8 + 8;
                aVar3.c = e(bArr, i11);
                int i12 = i11 + 4;
                aVar3.d = e(bArr, i12);
                this.a = aVar3;
                return (i12 + 4) - i;
            default:
                return 0;
        }
    }

    public final String toString() {
        return new String("Trans2QueryFSInformationResponse[" + super.toString() + "]");
    }
}
