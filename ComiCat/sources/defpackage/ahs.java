package defpackage;

import java.io.File;
import java.io.Serializable;

/* renamed from: ahs  reason: default package */
/* compiled from: FalseFileFilter */
public final class ahs implements ahu, Serializable {
    public static final ahu a;
    public static final ahu b;

    static {
        ahs ahs = new ahs();
        a = ahs;
        b = ahs;
    }

    protected ahs() {
    }

    public final boolean accept(File file) {
        return false;
    }

    public final boolean accept(File file, String str) {
        return false;
    }
}
