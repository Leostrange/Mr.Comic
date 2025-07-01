// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Build;
import android.text.format.Time;
import java.util.Locale;

public class fi
{

    private static final String A = Time.getCurrentTimezone();
    public static final String a;
    public static final String b;
    public static final String c;
    public static final int d;
    private static final String e = fi.getName();
    private static final String f;
    private static final String g;
    private static final String h;
    private static final String i;
    private static final String j;
    private static final String k;
    private static final String l;
    private static final String m;
    private static final String n;
    private static final String o;
    private static final String p;
    private static final String q;
    private static final String r;
    private static final String s;
    private static final long t;
    private static String u;
    private static String v;
    private static final String w;
    private static final String x;
    private static final String y = Locale.getDefault().getCountry();
    private static final String z = Locale.getDefault().getLanguage();

    public String toString()
    {
        return super.toString();
    }

    static 
    {
        f = Build.BOARD;
        g = Build.BOOTLOADER;
        h = Build.BRAND;
        i = Build.CPU_ABI;
        j = Build.CPU_ABI2;
        k = Build.DEVICE;
        l = Build.DISPLAY;
        m = Build.FINGERPRINT;
        n = Build.HARDWARE;
        o = Build.HOST;
        p = Build.ID;
        a = Build.MANUFACTURER;
        b = Build.MODEL;
        q = Build.PRODUCT;
        r = Build.RADIO;
        s = Build.TAGS;
        t = Build.TIME;
        u = Build.TYPE;
        v = Build.USER;
        w = android.os.Build.VERSION.CODENAME;
        x = android.os.Build.VERSION.INCREMENTAL;
        c = android.os.Build.VERSION.RELEASE;
        d = android.os.Build.VERSION.SDK_INT;
    }
}
