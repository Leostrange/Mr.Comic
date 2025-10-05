package defpackage;

/* renamed from: vr  reason: default package */
/* compiled from: RarNode */
public final class vr extends vo {
    private int a;

    public vr(byte[] bArr) {
        super(bArr);
    }

    public final int a() {
        if (this.k != null) {
            this.a = ug.b(this.k, this.l);
        }
        return this.a;
    }

    public final void a(int i) {
        this.a = i;
        if (this.k != null) {
            ug.a(this.k, this.l, i);
        }
    }

    public final void a(vr vrVar) {
        a(vrVar.c());
    }

    public final String toString() {
        return "State[" + "\n  pos=" + this.l + "\n  size=" + 4 + "\n  next=" + a() + "\n]";
    }
}
