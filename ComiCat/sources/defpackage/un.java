package defpackage;

/* renamed from: un  reason: default package */
/* compiled from: EndArcHeader */
public final class un extends uk {
    private int g;
    private short h;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public un(uk ukVar, byte[] bArr) {
        super(ukVar);
        int i = 0;
        if (a()) {
            this.g = ug.b(bArr, 0);
            i = 4;
        }
        if (b()) {
            this.h = ug.a(bArr, i);
        }
    }
}
