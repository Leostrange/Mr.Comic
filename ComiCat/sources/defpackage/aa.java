package defpackage;

import java.util.Locale;

/* renamed from: aa  reason: default package */
/* compiled from: TextUtilsCompat */
public final class aa {
    public static final Locale a = new Locale("", "");
    private static String b = "Arab";
    private static String c = "Hebr";

    public static int a(Locale locale) {
        if (locale != null && !locale.equals(a)) {
            String a2 = w.a(w.b(locale.toString()));
            if (a2 == null) {
                switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
                    case 1:
                    case 2:
                        return 1;
                    default:
                        return 0;
                }
            } else if (a2.equalsIgnoreCase(b) || a2.equalsIgnoreCase(c)) {
                return 1;
            }
        }
        return 0;
    }
}
