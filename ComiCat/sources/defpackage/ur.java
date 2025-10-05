package defpackage;

/* renamed from: ur  reason: default package */
/* compiled from: MainHeader */
public final class ur extends uk {
    private short g;
    private int h;
    private byte i;

    public ur(uk ukVar, byte[] bArr) {
        super(ukVar);
        this.g = ug.a(bArr, 0);
        this.h = ug.b(bArr, 2);
        if (c()) {
            this.i = (byte) (this.i | (bArr[6] & 255));
        }
    }

    public final boolean h() {
        return (this.d & 128) != 0;
    }
}
