package defpackage;

/* renamed from: yh  reason: default package */
/* compiled from: NameQueryResponse */
final class yh extends yj {
    yh() {
        this.r = new yf();
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        boolean z = false;
        if (this.e != 0 || this.d != 0) {
            return 0;
        }
        if ((bArr[i] & 128) == 128) {
            z = true;
        }
        int i2 = (bArr[i] & 96) >> 5;
        int c = c(bArr, i + 2);
        if (c != 0) {
            this.b[this.a] = new yk(this.r, c, z, i2);
        } else {
            this.b[this.a] = null;
        }
        return 6;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr) {
        return d(bArr, 12);
    }

    public final String toString() {
        return new String("NameQueryResponse[" + super.toString() + ",addrEntry=" + this.b + "]");
    }
}
