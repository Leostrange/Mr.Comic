package defpackage;

import defpackage.aax;
import java.io.UnsupportedEncodingException;
import java.util.Date;

/* renamed from: zw  reason: default package */
/* compiled from: SmbComNegotiateResponse */
final class zw extends zm {
    int a;
    aax.a b;

    zw(aax.a aVar) {
        this.b = aVar;
    }

    /* access modifiers changed from: package-private */
    public final int i(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int j(byte[] bArr, int i) {
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int k(byte[] bArr, int i) {
        boolean z = true;
        this.a = d(bArr, i);
        int i2 = i + 2;
        if (this.a > 10) {
            return i2 - i;
        }
        int i3 = i2 + 1;
        this.b.f = bArr[i2] & 255;
        this.b.g = this.b.f & 1;
        this.b.h = (this.b.f & 2) == 2;
        this.b.i = (this.b.f & 4) == 4;
        aax.a aVar = this.b;
        if ((this.b.f & 8) != 8) {
            z = false;
        }
        aVar.j = z;
        this.b.a = d(bArr, i3);
        int i4 = i3 + 2;
        this.b.k = d(bArr, i4);
        int i5 = i4 + 2;
        this.b.b = e(bArr, i5);
        int i6 = i5 + 4;
        this.b.l = e(bArr, i6);
        int i7 = i6 + 4;
        this.b.c = e(bArr, i7);
        int i8 = i7 + 4;
        this.b.d = e(bArr, i8);
        int i9 = i8 + 4;
        this.b.m = g(bArr, i9);
        int i10 = i9 + 8;
        this.b.n = d(bArr, i10);
        int i11 = i10 + 2;
        int i12 = i11 + 1;
        this.b.o = bArr[i11] & 255;
        return i12 - i;
    }

    /* access modifiers changed from: package-private */
    public final int l(byte[] bArr, int i) {
        int i2;
        int i3;
        UnsupportedEncodingException e;
        int i4 = 0;
        if ((this.b.d & Integer.MIN_VALUE) == 0) {
            this.b.p = new byte[this.b.o];
            System.arraycopy(bArr, i, this.b.p, 0, this.b.o);
            int i5 = i + this.b.o;
            if (this.s > this.b.o) {
                try {
                    if ((this.m & 32768) == 32768) {
                        do {
                            i3 = i4;
                            try {
                                if (bArr[i5 + i3] == 0 && bArr[i5 + i3 + 1] == 0) {
                                    this.b.e = new String(bArr, i5, i3, "UTF-16LE");
                                    i2 = i3 + i5;
                                } else {
                                    i4 = i3 + 2;
                                }
                            } catch (UnsupportedEncodingException e2) {
                                e = e2;
                            }
                        } while (i4 <= 256);
                        throw new RuntimeException("zero termination not found");
                    }
                    do {
                        i3 = i4;
                        if (bArr[i5 + i3] != 0) {
                            i4 = i3 + 1;
                        } else {
                            this.b.e = new String(bArr, i5, i3, zm.am);
                            i2 = i3 + i5;
                        }
                    } while (i4 <= 256);
                    throw new RuntimeException("zero termination not found");
                } catch (UnsupportedEncodingException e3) {
                    UnsupportedEncodingException unsupportedEncodingException = e3;
                    i3 = i4;
                    e = unsupportedEncodingException;
                    if (abx.a > 1) {
                        e.printStackTrace(e);
                    }
                    i2 = i3 + i5;
                    return i2 - i;
                }
            } else {
                this.b.e = new String();
                i2 = i5;
            }
        } else {
            this.b.q = new byte[16];
            System.arraycopy(bArr, i, this.b.q, 0, 16);
            this.b.e = new String();
            i2 = i;
        }
        return i2 - i;
    }

    public final String toString() {
        return new String("SmbComNegotiateResponse[" + super.toString() + ",wordCount=" + this.r + ",dialectIndex=" + this.a + ",securityMode=0x" + abw.a(this.b.f, 1) + ",security=" + (this.b.g == 0 ? "share" : "user") + ",encryptedPasswords=" + this.b.h + ",maxMpxCount=" + this.b.a + ",maxNumberVcs=" + this.b.k + ",maxBufferSize=" + this.b.b + ",maxRawSize=" + this.b.l + ",sessionKey=0x" + abw.a(this.b.c, 8) + ",capabilities=0x" + abw.a(this.b.d, 8) + ",serverTime=" + new Date(this.b.m) + ",serverTimeZone=" + this.b.n + ",encryptionKeyLength=" + this.b.o + ",byteCount=" + this.s + ",oemDomainName=" + this.b.e + "]");
    }
}
