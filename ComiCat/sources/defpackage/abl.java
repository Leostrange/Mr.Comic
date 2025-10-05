package defpackage;

/* renamed from: abl  reason: default package */
/* compiled from: TransPeekNamedPipeResponse */
final class abl extends aah {
    int S;
    private aau T;
    private int U;
    int a;

    abl(aau aau) {
        this.T = aau;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        this.S = d(bArr, i);
        int i2 = i + 2;
        this.U = d(bArr, i2);
        this.a = d(bArr, i2 + 2);
        return 6;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i, int i2) {
        return 0;
    }

    public final String toString() {
        return new String("TransPeekNamedPipeResponse[" + super.toString() + "]");
    }
}
