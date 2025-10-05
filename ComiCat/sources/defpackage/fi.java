package defpackage;

import android.os.Build;
import android.text.format.Time;
import java.util.Locale;

/* renamed from: fi  reason: default package */
/* compiled from: DeviceInfo */
public class fi {
    private static final String A = Time.getCurrentTimezone();
    public static final String a = Build.MANUFACTURER;
    public static final String b = Build.MODEL;
    public static final String c = Build.VERSION.RELEASE;
    public static final int d = Build.VERSION.SDK_INT;
    private static final String e = fi.class.getName();
    private static final String f = Build.BOARD;
    private static final String g = Build.BOOTLOADER;
    private static final String h = Build.BRAND;
    private static final String i = Build.CPU_ABI;
    private static final String j = Build.CPU_ABI2;
    private static final String k = Build.DEVICE;
    private static final String l = Build.DISPLAY;
    private static final String m = Build.FINGERPRINT;
    private static final String n = Build.HARDWARE;
    private static final String o = Build.HOST;
    private static final String p = Build.ID;
    private static final String q = Build.PRODUCT;
    private static final String r = Build.RADIO;
    private static final String s = Build.TAGS;
    private static final long t = Build.TIME;
    private static String u = Build.TYPE;
    private static String v = Build.USER;
    private static final String w = Build.VERSION.CODENAME;
    private static final String x = Build.VERSION.INCREMENTAL;
    private static final String y = Locale.getDefault().getCountry();
    private static final String z = Locale.getDefault().getLanguage();

    public String toString() {
        return super.toString();
    }
}
