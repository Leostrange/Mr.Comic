package defpackage;

/* renamed from: yo  reason: default package */
/* compiled from: SessionRequestPacket */
public final class yo extends yp {
    private yf c;
    private yf d;

    yo() {
        this.c = new yf();
        this.d = new yf();
    }

    public yo(yf yfVar, yf yfVar2) {
        this.a = 129;
        this.c = yfVar;
        this.d = yfVar2;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr) {
        int a = this.c.a(bArr, 4) + 4;
        return (a + this.d.a(bArr, a)) - 4;
    }
}
