package defpackage;

/* renamed from: yg  reason: default package */
/* compiled from: NameQueryRequest */
final class yg extends yj {
    yg(yf yfVar) {
        this.q = yfVar;
        this.s = 32;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr) {
        return c(bArr);
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr) {
        int a = this.q.a(bArr) + 12;
        this.s = yj.b(bArr, a);
        int i = a + 2;
        this.t = yj.b(bArr, i);
        return (i + 2) - 12;
    }

    public final String toString() {
        return new String("NameQueryRequest[" + super.toString() + "]");
    }
}
