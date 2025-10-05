package defpackage;

/* renamed from: uj  reason: default package */
/* compiled from: AVHeader */
public final class uj extends uk {
    private byte g;
    private byte h;
    private byte i;
    private int j;

    public uj(uk ukVar, byte[] bArr) {
        super(ukVar);
        this.g = (byte) (this.g | (bArr[0] & 255));
        this.h = (byte) (this.h | (bArr[1] & 255));
        this.i = (byte) (this.i | (bArr[2] & 255));
        this.j = ug.b(bArr, 3);
    }
}
