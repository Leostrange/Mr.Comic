package defpackage;

import java.util.Iterator;
import java.util.List;

/* renamed from: ahb  reason: default package */
/* compiled from: SyncUtils */
public final class ahb {
    public static boolean a(String str) {
        return agv.a(afa.j(), agv.a(str)) != -1;
    }

    public static boolean a(String str, List<String> list) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        Iterator<String> it = list.iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            String next = it.next();
            z = str.equals(agv.c(next)) ? a(next) : z2;
            if (z) {
                return z;
            }
        }
    }
}
