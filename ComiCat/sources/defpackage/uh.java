package defpackage;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* renamed from: uh  reason: default package */
/* compiled from: ReadOnlyAccessFile */
public class uh extends RandomAccessFile implements uf {
    static final /* synthetic */ boolean a = (!uh.class.desiredAssertionStatus());

    public uh(File file) {
        super(file, "r");
    }

    public final int a(byte[] bArr, int i) {
        if (a || i > 0) {
            readFully(bArr, 0, i);
            return i;
        }
        throw new AssertionError(i);
    }

    public final long a() {
        return getFilePointer();
    }

    public final void a(long j) {
        seek(j);
    }

    public long length() {
        try {
            return super.length();
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }
}
