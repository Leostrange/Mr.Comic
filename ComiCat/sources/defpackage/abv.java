package defpackage;

import java.security.MessageDigest;

/* renamed from: abv  reason: default package */
/* compiled from: HMACT64 */
public final class abv extends MessageDigest implements Cloneable {
    private MessageDigest a;
    private byte[] b = new byte[64];
    private byte[] c = new byte[64];

    private abv(abv abv) {
        super("HMACT64");
        this.b = abv.b;
        this.c = abv.c;
        this.a = (MessageDigest) abv.a.clone();
    }

    public abv(byte[] bArr) {
        super("HMACT64");
        int min = Math.min(bArr.length, 64);
        for (int i = 0; i < min; i++) {
            this.b[i] = (byte) (bArr[i] ^ 54);
            this.c[i] = (byte) (bArr[i] ^ 92);
        }
        while (min < 64) {
            this.b[min] = 54;
            this.c[min] = 92;
            min++;
        }
        try {
            this.a = MessageDigest.getInstance("MD5");
            engineReset();
        } catch (Exception e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public final Object clone() {
        try {
            return new abv(this);
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    /* access modifiers changed from: protected */
    public final int engineDigest(byte[] bArr, int i, int i2) {
        byte[] digest = this.a.digest();
        this.a.update(this.c);
        this.a.update(digest);
        try {
            return this.a.digest(bArr, i, i2);
        } catch (Exception e) {
            throw new IllegalStateException();
        }
    }

    /* access modifiers changed from: protected */
    public final byte[] engineDigest() {
        byte[] digest = this.a.digest();
        this.a.update(this.c);
        return this.a.digest(digest);
    }

    /* access modifiers changed from: protected */
    public final int engineGetDigestLength() {
        return this.a.getDigestLength();
    }

    /* access modifiers changed from: protected */
    public final void engineReset() {
        this.a.reset();
        this.a.update(this.b);
    }

    /* access modifiers changed from: protected */
    public final void engineUpdate(byte b2) {
        this.a.update(b2);
    }

    /* access modifiers changed from: protected */
    public final void engineUpdate(byte[] bArr, int i, int i2) {
        this.a.update(bArr, i, i2);
    }
}
