package defpackage;

/* renamed from: abn  reason: default package */
/* compiled from: TransTransactNamedPipeResponse */
final class abn extends aah {
    private aau a;

    abn(aau aau) {
        this.a = aau;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i, int i2) {
        if (this.a.q != null) {
            abq abq = (abq) this.a.q;
            synchronized (abq.b) {
                abq.b(bArr, i, i2);
                abq.b.notify();
            }
        }
        return i2;
    }

    public final String toString() {
        return new String("TransTransactNamedPipeResponse[" + super.toString() + "]");
    }
}
