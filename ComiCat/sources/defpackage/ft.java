package defpackage;

import android.text.TextUtils;

/* renamed from: ft  reason: default package */
/* compiled from: ScopesHelper */
public final class ft {
    private static final String a = ft.class.getName();

    private ft() {
    }

    public static String[] a(String str) {
        gz.c(a, "Extracting scope string array from " + str);
        return str.contains(" ") ? TextUtils.split(str, " ") : TextUtils.split(str, "\\+");
    }
}
