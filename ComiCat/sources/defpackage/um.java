package defpackage;

/* renamed from: um  reason: default package */
/* compiled from: CommentHeader */
public final class um extends uk {
    private short g;
    private byte h;
    private byte i;
    private short j;

    public um(uk ukVar, byte[] bArr) {
        super(ukVar);
        this.g = ug.a(bArr, 0);
        this.h = (byte) (this.h | (bArr[2] & 255));
        this.i = (byte) (this.i | (bArr[3] & 255));
        this.j = ug.a(bArr, 4);
    }
}
