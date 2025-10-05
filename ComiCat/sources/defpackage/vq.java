package defpackage;

/* renamed from: vq  reason: default package */
/* compiled from: RarMemBlock */
public final class vq extends vo {
    private int a;
    private int b;
    private int c;
    private int d;

    public vq(byte[] bArr) {
        super(bArr);
    }

    private void b(int i) {
        this.c = i;
        if (this.k != null) {
            ug.a(this.k, this.l + 4, i);
        }
    }

    private void d(int i) {
        this.d = i;
        if (this.k != null) {
            ug.a(this.k, this.l + 8, i);
        }
    }

    private int g() {
        if (this.k != null) {
            this.d = ug.b(this.k, this.l + 8);
        }
        return this.d;
    }

    public final void a() {
        vq vqVar = new vq(this.k);
        vqVar.c(g());
        vqVar.b(b());
        vqVar.c(b());
        vqVar.d(g());
    }

    public final void a(int i) {
        this.b = 65535 & i;
        if (this.k != null) {
            ug.a(this.k, this.l + 2, (short) i);
        }
    }

    public final void a(vq vqVar) {
        vq vqVar2 = new vq(this.k);
        d(vqVar.c());
        vqVar2.c(g());
        b(vqVar2.b());
        vqVar2.b(this);
        vqVar2.c(b());
        vqVar2.c(this);
    }

    public final int b() {
        if (this.k != null) {
            this.c = ug.b(this.k, this.l + 4);
        }
        return this.c;
    }

    public final void b(vq vqVar) {
        b(vqVar.c());
    }

    public final void c(vq vqVar) {
        d(vqVar.c());
    }

    public final int d() {
        if (this.k != null) {
            this.b = ug.a(this.k, this.l + 2) & 65535;
        }
        return this.b;
    }

    public final int e() {
        if (this.k != null) {
            this.a = ug.a(this.k, this.l) & 65535;
        }
        return this.a;
    }

    public final void f() {
        this.a = 65535;
        if (this.k != null) {
            ug.a(this.k, this.l, -1);
        }
    }
}
