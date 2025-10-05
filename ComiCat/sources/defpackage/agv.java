package defpackage;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import com.box.androidsdk.content.BoxConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: agv  reason: default package */
/* compiled from: MiscUtils */
public final class agv {
    public static int a(String str, String str2) {
        if (str.length() != str2.length()) {
            return agk.a(str, str2);
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            char charAt2 = str2.charAt(i);
            if (charAt != charAt2 && Character.toLowerCase(charAt) != Character.toLowerCase(charAt2)) {
                return charAt - charAt2;
            }
        }
        return 0;
    }

    public static int a(CharSequence[] charSequenceArr, String str) {
        for (int i = 0; i < charSequenceArr.length; i++) {
            if (charSequenceArr[i].equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public static int a(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public static long a(List<aeq> list) {
        long j = 0;
        Iterator<aeq> it = list.iterator();
        while (true) {
            long j2 = j;
            if (!it.hasNext()) {
                return j2;
            }
            File file = new File(it.next().d);
            j = file.exists() ? file.length() + j2 : j2;
        }
    }

    public static String a(double d) {
        return d == 0.0d ? BoxConstants.ROOT_FOLDER_ID : new DecimalFormat("0.00").format(d);
    }

    public static String a(int i) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(ComicReaderApp.a().getResources().openRawResource(i)));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append(10);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        bufferedReader.close();
        return sb.toString();
    }

    public static String a(long j) {
        String str = "Bytes";
        double d = (double) j;
        if (d > 1024.0d) {
            d /= 1024.0d;
            str = "KB";
        }
        if (d > 1024.0d) {
            d /= 1024.0d;
            str = "MB";
        }
        if (d > 1024.0d) {
            d /= 1024.0d;
            str = "GB";
        }
        return a(d) + str;
    }

    public static String a(Activity activity, long j) {
        String string = activity.getString(R.string.never);
        if (j <= 0) {
            return string;
        }
        Date date = new Date();
        date.setTime(j);
        return DateFormat.getDateTimeInstance(3, 3).format(date);
    }

    public static String a(Activity activity, String str) {
        long j = 0;
        if (str != null && str.length() > 0) {
            try {
                j = Long.parseLong(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return a(activity, j);
    }

    public static String a(File file) {
        StringBuffer stringBuffer = new StringBuffer((int) file.length());
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuffer.append(readLine);
                stringBuffer.append("\n");
            }
            bufferedReader.close();
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringBuffer.toString();
    }

    public static String a(Exception exc) {
        int indexOf;
        Throwable cause = exc.getCause();
        String message = cause != null ? cause.getMessage() : exc.getMessage();
        if (!(message == null || (indexOf = message.indexOf("Exception: ")) == -1)) {
            message = message.substring(indexOf + 11).trim();
        }
        return message != null ? message : "";
    }

    public static String a(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return null;
        }
        String substring = str.substring(lastIndexOf + 1);
        return substring != null ? substring.toLowerCase().trim() : substring;
    }

    public static void a(Activity activity) {
        StringBuilder sb = new StringBuilder();
        sb.append("ComiCat App Version: " + d() + "\n");
        sb.append("Device: " + Build.MODEL + "\n");
        sb.append("Architecture: " + Build.CPU_ABI + "\n");
        sb.append("SDK: " + Build.VERSION.SDK_INT + "\n");
        sb.append("\n");
        new agu("support@meanlabs.com", activity.getString(R.string.app_name), sb.toString()).a(activity);
    }

    public static void a(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean a() {
        Context a = ComicReaderApp.a();
        return a.getPackageManager().checkPermission("android.permission.SET_WALLPAPER", a.getPackageName()) == 0;
    }

    public static long b() {
        return (long) ((int) (Runtime.getRuntime().maxMemory() / 1048576));
    }

    public static String b(String str) {
        if (str.endsWith(File.separator)) {
            str = str.substring(0, str.length() - 1);
        }
        int lastIndexOf = str.lastIndexOf(File.separatorChar) + 1;
        if (lastIndexOf == -1) {
            lastIndexOf = 0;
        }
        int lastIndexOf2 = str.lastIndexOf(46);
        if (lastIndexOf2 == -1) {
            lastIndexOf2 = str.length();
        }
        return str.substring(lastIndexOf, lastIndexOf2);
    }

    public static String c(String str) {
        int lastIndexOf = str.lastIndexOf(File.separatorChar);
        return lastIndexOf != -1 ? lastIndexOf != 0 ? str.substring(0, lastIndexOf) : str.length() > 1 ? File.separator : "" : "";
    }

    public static boolean c() {
        return b() >= 48;
    }

    public static String d() {
        try {
            Context a = ComicReaderApp.a();
            return a.getPackageManager().getPackageInfo(a.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.getMessage();
            return "Unknown";
        }
    }

    public static String d(String str) {
        try {
            return new File(str).getCanonicalPath();
        } catch (IOException e) {
            return str;
        }
    }

    public static int e() {
        try {
            Context a = ComicReaderApp.a();
            return a.getPackageManager().getPackageInfo(a.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.getMessage();
            return 0;
        }
    }

    @SuppressLint({"NewApi"})
    public static File f() {
        File file;
        Exception e;
        try {
            Context a = ComicReaderApp.a();
            if (Build.VERSION.SDK_INT >= 8) {
                file = a.getExternalCacheDir();
                try {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                return file;
            }
            file = new File(Environment.getExternalStorageDirectory(), "/Android/data/" + a.getApplicationInfo().packageName + "/cache/");
            file.mkdirs();
            return file;
        } catch (Exception e3) {
            Exception exc = e3;
            file = null;
            e = exc;
            e.printStackTrace();
            return file;
        }
    }

    public static boolean g() {
        return ComicReaderApp.a().getPackageName().equals("meanlabs.comicat");
    }

    public static boolean h() {
        return Build.VERSION.SDK_INT >= 11;
    }

    public static boolean i() {
        return Build.VERSION.SDK_INT >= 19;
    }
}
