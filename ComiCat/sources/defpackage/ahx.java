package defpackage;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: ahx  reason: default package */
/* compiled from: OrFileFilter */
public final class ahx extends ahp implements Serializable {
    private final List<ahu> a;

    public ahx() {
        this.a = new ArrayList();
    }

    public ahx(List<ahu> list) {
        if (list == null) {
            this.a = new ArrayList();
        } else {
            this.a = new ArrayList(list);
        }
    }

    public final boolean accept(File file) {
        for (ahu accept : this.a) {
            if (accept.accept(file)) {
                return true;
            }
        }
        return false;
    }

    public final boolean accept(File file, String str) {
        for (ahu accept : this.a) {
            if (accept.accept(file, str)) {
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
            for (int i = 0; i < this.a.size(); i++) {
                if (i > 0) {
                    sb.append(",");
                }
                ahu ahu = this.a.get(i);
                sb.append(ahu == null ? "null" : ahu.toString());
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
