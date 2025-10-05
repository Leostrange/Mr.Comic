package defpackage;

import android.support.v4.app.NotificationCompat;
import java.util.Iterator;

/* renamed from: aib  reason: default package */
/* compiled from: StringUtils */
public final class aib {
    public static String a(Iterable<?> iterable, String str) {
        Iterator<?> it;
        if (iterable == null || (it = iterable.iterator()) == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return aia.a(next);
        }
        StringBuilder sb = new StringBuilder(NotificationCompat.FLAG_LOCAL_ONLY);
        if (next != null) {
            sb.append(next);
        }
        while (it.hasNext()) {
            sb.append(str);
            Object next2 = it.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        boolean z;
        if (charSequence == null || charSequence2 == null) {
            return false;
        }
        int length = charSequence2.length();
        int length2 = charSequence.length() - length;
        for (int i = 0; i <= length2; i++) {
            if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
                int i2 = 0;
                int i3 = length;
                int i4 = i;
                while (true) {
                    int i5 = i3 - 1;
                    if (i3 <= 0) {
                        z = true;
                        break;
                    }
                    int i6 = i4 + 1;
                    char charAt = charSequence.charAt(i4);
                    int i7 = i2 + 1;
                    char charAt2 = charSequence2.charAt(i2);
                    if (charAt != charAt2) {
                        if (Character.toUpperCase(charAt) != Character.toUpperCase(charAt2) && Character.toLowerCase(charAt) != Character.toLowerCase(charAt2)) {
                            z = false;
                            break;
                        }
                        i2 = i7;
                        i4 = i6;
                        i3 = i5;
                    } else {
                        i2 = i7;
                        i4 = i6;
                        i3 = i5;
                    }
                }
            } else {
                z = ((String) charSequence).regionMatches(true, i, (String) charSequence2, 0, length);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }
}
