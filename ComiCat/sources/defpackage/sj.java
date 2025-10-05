package defpackage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import net.sf.sevenzipjbinding.ISequentialOutStream;

/* renamed from: sj  reason: default package */
/* compiled from: FileSequentialOutputStream */
public final class sj implements ISequentialOutStream {
    FileOutputStream a;

    public sj(File file) {
        this.a = new FileOutputStream(file);
    }

    public final int write(byte[] bArr) {
        int length = bArr.length;
        try {
            this.a.write(bArr);
            return length;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }
}
