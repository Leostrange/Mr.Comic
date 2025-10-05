package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.SevenZipException;

/* renamed from: ags  reason: default package */
/* compiled from: InputOutputStream */
public final class ags extends ByteArrayInputStream implements ISequentialOutStream {
    public ags(int i) {
        super(new byte[i]);
        this.count = 0;
    }

    public ags(InputStream inputStream, int i) {
        super(new byte[i]);
        int i2 = 0;
        while (i2 < i) {
            try {
                i2 = inputStream.read(this.buf, i2, i - i2) + i2;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public ags(byte[] bArr) {
        super(bArr);
    }

    public final void a(byte[] bArr, int i, int i2) {
        if (this.count + i2 > this.buf.length) {
            throw new IOException("Writing more bytes than the buffer");
        }
        System.arraycopy(bArr, i, this.buf, this.count, i2);
        this.count += i2;
    }

    public final byte[] a() {
        return this.buf;
    }

    public final int write(byte[] bArr) {
        try {
            a(bArr, 0, bArr.length);
            return bArr.length;
        } catch (IOException e) {
            e.printStackTrace();
            throw new SevenZipException("Writng to stream failed", e);
        }
    }
}
