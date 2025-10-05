package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.os.Bundle;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: go  reason: default package */
/* compiled from: ServerCommunication */
public class go {
    private static final String a = go.class.getName();

    private static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            gz.d(a, "Unable to get verison info from app" + e.getMessage());
            return "N/A";
        }
    }

    public static ga[] a(String str, String str2, String str3, String str4, String[] strArr, Context context) {
        gz.c(a, "getAccessAuthorizationToken : appId=" + str4 + ", scopes=" + Arrays.toString(strArr));
        if (((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() == null) {
            throw new IOException("Network is not available!");
        }
        gm gmVar = (gm) new gl(b(context), a(context), "1.0.1", new Bundle(), str, str2, str4, str3, context).e();
        gmVar.b();
        return gmVar.c();
    }

    private static String b(Context context) {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : context.getPackageName());
    }
}
