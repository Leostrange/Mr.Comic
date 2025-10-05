package defpackage;

import java.util.Comparator;

/* renamed from: agk  reason: default package */
/* compiled from: AlphanumComparator */
public final class agk implements Comparator<String> {
    public static int a(String str, String str2) {
        int i;
        int length = str.length();
        int length2 = str2.length();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length && i2 < length2) {
            String a = a(str, length, i3);
            int length3 = i3 + a.length();
            String a2 = a(str2, length2, i2);
            int length4 = i2 + a2.length();
            if (!a(a.charAt(0)) || !a(a2.charAt(0))) {
                i = a.compareToIgnoreCase(a2);
            } else {
                int length5 = a.length();
                i = length5 - a2.length();
                if (i == 0) {
                    for (int i4 = 0; i4 < length5; i4++) {
                        i = a.charAt(i4) - a2.charAt(i4);
                        if (i != 0) {
                            return i;
                        }
                    }
                }
            }
            if (i != 0) {
                return i;
            }
            i2 = length4;
            i3 = length3;
        }
        return length - length2;
    }

    private static final String a(String str, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        char charAt = str.charAt(i2);
        sb.append(charAt);
        int i3 = i2 + 1;
        if (!a(charAt)) {
            while (i3 < i) {
                char charAt2 = str.charAt(i3);
                if (a(charAt2)) {
                    break;
                }
                sb.append(charAt2);
                i3++;
            }
        } else {
            while (i3 < i) {
                char charAt3 = str.charAt(i3);
                if (!a(charAt3)) {
                    break;
                }
                sb.append(charAt3);
                i3++;
            }
        }
        return sb.toString();
    }

    private static final boolean a(char c) {
        return c >= '0' && c <= '9';
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        return a((String) obj, (String) obj2);
    }
}
