package defpackage;

import java.io.File;

/* renamed from: ahp  reason: default package */
/* compiled from: AbstractFileFilter */
public abstract class ahp implements ahu {
    public boolean accept(File file) {
        return accept(file.getParentFile(), file.getName());
    }

    public boolean accept(File file, String str) {
        return accept(new File(file, str));
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
