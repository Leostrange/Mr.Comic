package defpackage;

import java.io.File;
import java.io.Serializable;

/* renamed from: ahw  reason: default package */
/* compiled from: NotFileFilter */
public final class ahw extends ahp implements Serializable {
    private final ahu a;

    public ahw(ahu ahu) {
        if (ahu == null) {
            throw new IllegalArgumentException("The filter must not be null");
        }
        this.a = ahu;
    }

    public final boolean accept(File file) {
        return !this.a.accept(file);
    }

    public final boolean accept(File file, String str) {
        return !this.a.accept(file, str);
    }

    public final String toString() {
        return super.toString() + "(" + this.a.toString() + ")";
    }
}
