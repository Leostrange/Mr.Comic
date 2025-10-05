package defpackage;

/* renamed from: vo  reason: default package */
/* compiled from: Pointer */
public abstract class vo {
    static final /* synthetic */ boolean m = (!vo.class.desiredAssertionStatus());
    protected byte[] k;
    protected int l;

    public vo(byte[] bArr) {
        this.k = bArr;
    }

    public final int c() {
        if (m || this.k != null) {
            return this.l;
        }
        throw new AssertionError();
    }

    public void c(int i) {
        if (!m && this.k == null) {
            throw new AssertionError();
        } else if (m || (i >= 0 && i < this.k.length)) {
            this.l = i;
        } else {
            throw new AssertionError(i);
        }
    }
}
