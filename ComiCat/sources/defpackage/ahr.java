package defpackage;

import java.io.File;
import java.io.Serializable;

/* renamed from: ahr  reason: default package */
/* compiled from: DirectoryFileFilter */
public final class ahr extends ahp implements Serializable {
    public static final ahu a;
    public static final ahu b;

    static {
        ahr ahr = new ahr();
        a = ahr;
        b = ahr;
    }

    protected ahr() {
    }

    public final boolean accept(File file) {
        return file.isDirectory();
    }
}
