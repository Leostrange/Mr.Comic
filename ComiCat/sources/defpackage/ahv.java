package defpackage;

import java.io.File;
import java.io.Serializable;

/* renamed from: ahv  reason: default package */
/* compiled from: NameFileFilter */
public final class ahv extends ahp implements Serializable {
    private final String[] a;
    private final ahm b;

    public ahv(String str) {
        this(str, (byte) 0);
    }

    private ahv(String str, byte b2) {
        if (str == null) {
            throw new IllegalArgumentException("The wildcard must not be null");
        }
        this.a = new String[]{str};
        this.b = ahm.SENSITIVE;
    }

    public final boolean accept(File file) {
        String name = file.getName();
        for (String a2 : this.a) {
            if (this.b.a(name, a2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean accept(File file, String str) {
        for (String a2 : this.a) {
            if (this.b.a(str, a2)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("(");
        if (this.a != null) {
            for (int i = 0; i < this.a.length; i++) {
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(this.a[i]);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
