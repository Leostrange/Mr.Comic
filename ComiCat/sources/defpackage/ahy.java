package defpackage;

import java.io.File;
import java.io.Serializable;

/* renamed from: ahy  reason: default package */
/* compiled from: TrueFileFilter */
public final class ahy implements ahu, Serializable {
    public static final ahu a;
    public static final ahu b;

    static {
        ahy ahy = new ahy();
        a = ahy;
        b = ahy;
    }

    protected ahy() {
    }

    public final boolean accept(File file) {
        return true;
    }

    public final boolean accept(File file, String str) {
        return true;
    }
}
