package defpackage;

/* renamed from: us  reason: default package */
/* compiled from: MarkHeader */
public final class us extends uk {
    public boolean g = false;

    public us(uk ukVar) {
        super(ukVar);
    }

    public final boolean h() {
        byte[] bArr = new byte[7];
        ug.a(bArr, 0, this.b);
        bArr[2] = this.c;
        ug.a(bArr, 3, this.d);
        ug.a(bArr, 5, this.e);
        if (bArr[0] == 82) {
            if (bArr[1] == 69 && bArr[2] == 126 && bArr[3] == 94) {
                this.g = true;
                return true;
            } else if (bArr[1] == 97 && bArr[2] == 114 && bArr[3] == 33 && bArr[4] == 26 && bArr[5] == 7 && bArr[6] == 0) {
                this.g = false;
                return true;
            }
        }
        return false;
    }
}
