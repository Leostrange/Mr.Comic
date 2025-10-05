package defpackage;

/* renamed from: uu  reason: default package */
/* compiled from: ProtectHeader */
public final class uu extends ul {
    private byte i;
    private short j;
    private int k;
    private byte l;

    public uu(ul ulVar, byte[] bArr) {
        super(ulVar);
        this.i = (byte) (this.i | (bArr[0] & 255));
        this.j = ug.a(bArr, 0);
        this.k = ug.b(bArr, 2);
        this.l = (byte) (this.l | (bArr[6] & 255));
    }
}
