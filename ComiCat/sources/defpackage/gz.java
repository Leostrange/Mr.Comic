package defpackage;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: gz  reason: default package */
/* compiled from: MAPLog */
public final class gz {
    public static boolean a = a();
    private static final String b = gz.class.getName();

    public static int a(String str, String str2) {
        return Log.d(str, str2);
    }

    public static int a(String str, String str2, String str3) {
        boolean z;
        if (str == null) {
            str = "NULL_TAG";
        }
        if (a) {
            z = true;
        } else if (gy.a() && Log.isLoggable("com.amazon.identity.pii", 3)) {
            z = true;
        } else if (!gy.a()) {
            z = true;
        } else {
            str3 = "<obscured>";
            z = true;
        }
        return z ? Log.i(str + ".PII", e(str2, str3)) : Log.d(str + ".PII", e(str2, str3));
    }

    public static int a(String str, String str2, Throwable th) {
        return Log.e(str, str2, th);
    }

    private static boolean a() {
        try {
            String str = Build.VERSION.INCREMENTAL;
            if (TextUtils.isEmpty(str)) {
                Log.w(b, "Incremental version was empty");
                return false;
            }
            Pattern compile = Pattern.compile("^(?:(.*?)_)??(?:([^_]*)_)?([0-9]+)$");
            a(b, "Extracting verison incremental", "Build.VERSION.INCREMENTAL: " + str);
            Matcher matcher = compile.matcher(str);
            if (!matcher.find()) {
                a(b, "Incremental version '%s' was in invalid format.", "ver=" + str);
                return false;
            } else if (matcher.groupCount() < 3) {
                Log.e(b, "Error parsing build version string.");
                return false;
            } else {
                String group = matcher.group(2);
                a(b, "Extracting flavor", "Build flavor: " + group);
                if (TextUtils.isEmpty(group)) {
                    return false;
                }
                if (!group.equals("userdebug") && !group.equals("eng")) {
                    return false;
                }
                Log.i(b, "MAP is running on 1st party debug");
                return true;
            }
        } catch (Exception e) {
            Log.e(b, e.getMessage(), e);
            return false;
        }
    }

    public static int b(String str, String str2) {
        return Log.e(str, str2);
    }

    public static int b(String str, String str2, Throwable th) {
        return Log.w(str, str2, th);
    }

    public static int c(String str, String str2) {
        return Log.i(str, str2);
    }

    public static int d(String str, String str2) {
        return Log.w(str, str2);
    }

    private static String e(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer(str);
        if (!TextUtils.isEmpty(str2)) {
            stringBuffer.append(":");
            stringBuffer.append(str2);
        }
        return stringBuffer.toString();
    }
}
