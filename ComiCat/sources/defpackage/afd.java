package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.simple.ISimpleInArchiveItem;

/* renamed from: afd  reason: default package */
/* compiled from: GenericArchivePage */
public final class afd implements aff {
    ISimpleInArchiveItem a;
    File b;

    public afd(ISimpleInArchiveItem iSimpleInArchiveItem, File file) {
        this.a = iSimpleInArchiveItem;
        this.b = file;
    }

    private static void a(ags ags) {
        try {
            ags.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private ags b() {
        if (this.b != null) {
            long c = (long) c();
            if (c == this.b.length()) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(this.b);
                    ags ags = new ags(fileInputStream, (int) c);
                    fileInputStream.close();
                    return ags;
                } catch (Exception e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
        return null;
    }

    private int c() {
        try {
            Long size = this.a.getSize();
            if (size != null) {
                return size.intValue();
            }
            return 4194304;
        } catch (Exception e) {
            e.printStackTrace();
            return 4194304;
        }
    }

    public final InputStream a() {
        ags b2 = b();
        if (b2 != null) {
            return b2;
        }
        try {
            ags ags = new ags(c());
            try {
                if (this.a.extractSlow(ags) == ExtractOperationResult.OK) {
                    return ags;
                }
                a(ags);
                return null;
            } catch (Exception e) {
                Exception exc = e;
                b2 = ags;
                e = exc;
                e.printStackTrace();
                a(b2);
                return null;
            }
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            a(b2);
            return null;
        }
    }
}
