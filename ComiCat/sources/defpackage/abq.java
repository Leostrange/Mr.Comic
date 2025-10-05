package defpackage;

import android.support.v4.app.FragmentTransaction;
import java.io.IOException;

/* renamed from: abq  reason: default package */
/* compiled from: TransactNamedPipeInputStream */
public final class abq extends aas {
    Object b;
    private byte[] c = new byte[FragmentTransaction.TRANSIT_ENTER_MASK];
    private int d;
    private int e;
    private int f;
    private boolean g;

    public abq(aau aau) {
        super(aau, (aau.s & -65281) | 32);
        this.g = (aau.s & 1536) != 1536;
        this.b = new Object();
    }

    public final int available() {
        abx abx = aar.c;
        if (abx.a < 3) {
            return 0;
        }
        aar.c.println("Named Pipe available() does not apply to TRANSACT Named Pipes");
        return 0;
    }

    /* access modifiers changed from: package-private */
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 > this.c.length - this.f) {
            int length = this.c.length * 2;
            if (i2 > length - this.f) {
                length = this.f + i2;
            }
            byte[] bArr2 = this.c;
            this.c = new byte[length];
            int length2 = bArr2.length - this.d;
            if (this.f > length2) {
                System.arraycopy(bArr2, this.d, this.c, 0, length2);
                System.arraycopy(bArr2, 0, this.c, length2, this.f - length2);
            } else {
                System.arraycopy(bArr2, this.d, this.c, 0, this.f);
            }
            this.d = 0;
            this.e = this.f;
        }
        int length3 = this.c.length - this.e;
        if (i2 > length3) {
            System.arraycopy(bArr, i, this.c, this.e, length3);
            System.arraycopy(bArr, i + length3, this.c, 0, i2 - length3);
        } else {
            System.arraycopy(bArr, i, this.c, this.e, i2);
        }
        this.e = (this.e + i2) % this.c.length;
        this.f += i2;
        return i2;
    }

    public final int read() {
        byte b2;
        synchronized (this.b) {
            while (this.f == 0) {
                try {
                    this.b.wait();
                } catch (InterruptedException e2) {
                    throw new IOException(e2.getMessage());
                }
            }
            b2 = this.c[this.d] & 255;
            this.d = (this.d + 1) % this.c.length;
        }
        return b2;
    }

    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public final int read(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (i2 > 0) {
            synchronized (this.b) {
                while (this.f == 0) {
                    try {
                        this.b.wait();
                    } catch (InterruptedException e2) {
                        throw new IOException(e2.getMessage());
                    }
                }
                int length = this.c.length - this.d;
                i3 = i2 > this.f ? this.f : i2;
                if (this.f <= length || i3 <= length) {
                    System.arraycopy(this.c, this.d, bArr, i, i3);
                } else {
                    System.arraycopy(this.c, this.d, bArr, i, length);
                    System.arraycopy(this.c, 0, bArr, i + length, i3 - length);
                }
                this.f -= i3;
                this.d = (this.d + i3) % this.c.length;
            }
        }
        return i3;
    }
}
