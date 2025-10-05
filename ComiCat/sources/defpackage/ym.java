package defpackage;

/* renamed from: ym  reason: default package */
/* compiled from: NodeStatusRequest */
final class ym extends yj {
    ym(yf yfVar) {
        this.q = yfVar;
        this.s = 33;
        this.n = false;
        this.p = false;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr) {
        int i = this.q.d;
        this.q.d = 0;
        int c = c(bArr);
        this.q.d = i;
        return c;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr) {
        return 0;
    }

    public final String toString() {
        return new String("NodeStatusRequest[" + super.toString() + "]");
    }
}
