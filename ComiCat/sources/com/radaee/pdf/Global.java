package com.radaee.pdf;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Environment;
import android.support.v4.app.FragmentTransaction;
import defpackage.tz;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class Global {
    public static int a = 2;
    public static String b = "radaee";
    public static String c = "radaee_com@yahoo.cn";
    public static String d = "LNJFDN-C89QFX-9ZOU9E-OQ31K2-FADG6Z-XEBCAO";
    public static int e = -2143272896;
    public static float f = 4.0f;
    public static int g = -2134900736;
    public static int h = 1073742016;
    public static int i = 1073742079;
    public static int j = 1077952576;
    public static boolean k = false;
    public static float l = 3.0f;
    public static float m = 1.0f;
    public static float n = 1.0f;
    public static float o = 0.2f;
    public static int p = 0;
    public static int q = 2;
    public static boolean r = false;
    public static String s = null;
    public static boolean t = true;
    public static boolean u = true;
    public static boolean v = true;
    private static boolean w = false;

    private static void a(Resources resources, int i2, File file) {
        if (!file.exists()) {
            try {
                byte[] bArr = new byte[FragmentTransaction.TRANSIT_ENTER_MASK];
                InputStream openRawResource = resources.openRawResource(i2);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                while (true) {
                    int read = openRawResource.read(bArr);
                    if (read > 0) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        fileOutputStream.close();
                        openRawResource.close();
                        return;
                    }
                }
            } catch (Exception e2) {
            }
        }
    }

    private static void a(Resources resources, int i2, File file, int i3, File file2) {
        a(resources, i2, file);
        a(resources, i3, file2);
        setCMapsPath(file.getPath(), file2.getPath());
    }

    public static boolean a(Activity activity, String str, String str2, String str3) {
        if (w) {
            return true;
        }
        if (activity == null) {
            return false;
        }
        System.loadLibrary("rdpdf");
        File file = new File(activity.getFilesDir(), "rdres");
        if (!file.exists()) {
            file.mkdir();
        }
        Resources resources = activity.getResources();
        b(resources, tz.a.rdf013, new File(file, "rdf013"));
        d(resources, tz.a.cmyk_rgb, new File(file, "cmyk_rgb"));
        a(resources, tz.a.cmaps, new File(file, "cmaps"), tz.a.umaps, new File(file, "umaps"));
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        File file2 = (externalStorageDirectory == null || !Environment.getExternalStorageState().equals("mounted")) ? new File(activity.getFilesDir(), "rdtmp") : new File(externalStorageDirectory, "rdtmp");
        if (!file2.exists()) {
            file2.mkdir();
        }
        s = file2.getPath();
        w = activeStandard(activity, str, str2, str3);
        fontfileListStart();
        fontfileListAdd("/system/fonts/DroidSans.ttf");
        fontfileListAdd("/system/fonts/Roboto-Regular.ttf");
        fontfileListAdd("/system/fonts/DroidSansFallback.ttf");
        fontfileListAdd("/system/fonts/NotoSansSC-Regular.otf");
        fontfileListAdd("/system/fonts/NotoSansTC-Regular.otf");
        fontfileListAdd("/system/fonts/NotoSansJP-Regular.otf");
        fontfileListAdd("/system/fonts/NotoSansKR-Regular.otf");
        c(resources, tz.a.arimo, new File(file, "arimo.ttf"));
        c(resources, tz.a.arimob, new File(file, "arimob.ttf"));
        c(resources, tz.a.arimoi, new File(file, "arimoi.ttf"));
        c(resources, tz.a.arimobi, new File(file, "arimobi.ttf"));
        c(resources, tz.a.tinos, new File(file, "tinos.ttf"));
        c(resources, tz.a.tinosb, new File(file, "tinosb.ttf"));
        c(resources, tz.a.tinosi, new File(file, "tinosi.ttf"));
        c(resources, tz.a.tinosbi, new File(file, "tinosbi.ttf"));
        c(resources, tz.a.cousine, new File(file, "cousine.ttf"));
        c(resources, tz.a.cousineb, new File(file, "cousineb.ttf"));
        c(resources, tz.a.cousinei, new File(file, "cousinei.ttf"));
        c(resources, tz.a.cousinebi, new File(file, "cousinebi.ttf"));
        c(resources, tz.a.symbol, new File(file, "symbol.ttf"));
        fontfileListEnd();
        fontfileMapping("Arial", "Arimo");
        fontfileMapping("Arial Bold", "Arimo Bold");
        fontfileMapping("Arial BoldItalic", "Arimo Bold Italic");
        fontfileMapping("Arial Italic", "Arimo Italic");
        fontfileMapping("Arial,Bold", "Arimo Bold");
        fontfileMapping("Arial,BoldItalic", "Arimo Bold Italic");
        fontfileMapping("Arial,Italic", "Arimo Italic");
        fontfileMapping("Arial-Bold", "Arimo Bold");
        fontfileMapping("Arial-BoldItalic", "Arimo Bold Italic");
        fontfileMapping("Arial-Italic", "Arimo Italic");
        fontfileMapping("ArialMT", "Arimo");
        fontfileMapping("Calibri", "Arimo");
        fontfileMapping("Calibri Bold", "Arimo Bold");
        fontfileMapping("Calibri BoldItalic", "Arimo Bold Italic");
        fontfileMapping("Calibri Italic", "Arimo Italic");
        fontfileMapping("Calibri,Bold", "Arimo Bold");
        fontfileMapping("Calibri,BoldItalic", "Arimo Bold Italic");
        fontfileMapping("Calibri,Italic", "Arimo Italic");
        fontfileMapping("Calibri-Bold", "Arimo Bold");
        fontfileMapping("Calibri-BoldItalic", "Arimo Bold Italic");
        fontfileMapping("Calibri-Italic", "Arimo Italic");
        fontfileMapping("Helvetica", "Arimo");
        fontfileMapping("Helvetica Bold", "Arimo Bold");
        fontfileMapping("Helvetica BoldItalic", "Arimo Bold Italic");
        fontfileMapping("Helvetica Italic", "Arimo Italic");
        fontfileMapping("Helvetica,Bold", "Arimo,Bold");
        fontfileMapping("Helvetica,BoldItalic", "Arimo Bold Italic");
        fontfileMapping("Helvetica,Italic", "Arimo Italic");
        fontfileMapping("Helvetica-Bold", "Arimo Bold");
        fontfileMapping("Helvetica-BoldItalic", "Arimo Bold Italic");
        fontfileMapping("Helvetica-Italic", "Arimo Italic");
        fontfileMapping("Garamond", "Tinos");
        fontfileMapping("Garamond,Bold", "Tinos Bold");
        fontfileMapping("Garamond,BoldItalic", "Tinos Bold Italic");
        fontfileMapping("Garamond,Italic", "Tinos Italic");
        fontfileMapping("Garamond-Bold", "Tinos Bold");
        fontfileMapping("Garamond-BoldItalic", "Tinos Bold Italic");
        fontfileMapping("Garamond-Italic", "Tinos Italic");
        fontfileMapping("Times", "Tinos");
        fontfileMapping("Times,Bold", "Tinos Bold");
        fontfileMapping("Times,BoldItalic", "Tinos Bold Italic");
        fontfileMapping("Times,Italic", "Tinos Italic");
        fontfileMapping("Times-Bold", "Tinos Bold");
        fontfileMapping("Times-BoldItalic", "Tinos Bold Italic");
        fontfileMapping("Times-Italic", "Tinos Italic");
        fontfileMapping("Times-Roman", "Tinos");
        fontfileMapping("Times New Roman", "Tinos");
        fontfileMapping("Times New Roman,Bold", "Tinos Bold");
        fontfileMapping("Times New Roman,BoldItalic", "Tinos Bold Italic");
        fontfileMapping("Times New Roman,Italic", "Tinos Italic");
        fontfileMapping("Times New Roman-Bold", "Tinos Bold");
        fontfileMapping("Times New Roman-BoldItalic", "Tinos Bold Italic");
        fontfileMapping("Times New Roman-Italic", "Tinos Italic");
        fontfileMapping("TimesNewRoman", "Tinos");
        fontfileMapping("TimesNewRoman,Bold", "Tinos Bold");
        fontfileMapping("TimesNewRoman,BoldItalic", "Tinos Bold Italic");
        fontfileMapping("TimesNewRoman,Italic", "Tinos Italic");
        fontfileMapping("TimesNewRoman-Bold", "Tinos Bold");
        fontfileMapping("TimesNewRoman-BoldItalic", "Tinos Bold Italic");
        fontfileMapping("TimesNewRoman-Italic", "Tinos Italic");
        fontfileMapping("TimesNewRomanPS", "Tinos");
        fontfileMapping("TimesNewRomanPS,Bold", "Tinos Bold");
        fontfileMapping("TimesNewRomanPS,BoldItalic", "Tinos Bold Italic");
        fontfileMapping("TimesNewRomanPS,Italic", "Tinos Italic");
        fontfileMapping("TimesNewRomanPS-Bold", "Tinos Bold");
        fontfileMapping("TimesNewRomanPS-BoldItalic", "Tinos Bold Italic");
        fontfileMapping("TimesNewRomanPS-Italic", "Tinos Italic");
        fontfileMapping("TimesNewRomanPSMT", "Tinos");
        fontfileMapping("TimesNewRomanPSMT,Bold", "Tinos Bold");
        fontfileMapping("TimesNewRomanPSMT,BoldItalic", "Tinos Bold Italic");
        fontfileMapping("TimesNewRomanPSMT,Italic", "Tinos Italic");
        fontfileMapping("TimesNewRomanPSMT-Bold", "Tinos Bold");
        fontfileMapping("TimesNewRomanPSMT-BoldItalic", "Tinos Bold Italic");
        fontfileMapping("TimesNewRomanPSMT-Italic", "Tinos Italic");
        fontfileMapping("Courier", "Cousine");
        fontfileMapping("Courier Bold", "Cousine Bold");
        fontfileMapping("Courier BoldItalic", "Cousine Bold Italic");
        fontfileMapping("Courier Italic", "Cousine Italic");
        fontfileMapping("Courier,Bold", "Cousine Bold");
        fontfileMapping("Courier,BoldItalic", "Cousine Bold Italic");
        fontfileMapping("Courier,Italic", "Cousine Italic");
        fontfileMapping("Courier-Bold", "Cousine Bold");
        fontfileMapping("Courier-BoldItalic", "Cousine Bold Italic");
        fontfileMapping("Courier-Italic", "Cousine Italic");
        fontfileMapping("Courier New", "Cousine");
        fontfileMapping("Courier New Bold", "Cousine Bold");
        fontfileMapping("Courier New BoldItalic", "Cousine Bold Italic");
        fontfileMapping("Courier New Italic", "Cousine Italic");
        fontfileMapping("Courier New,Bold", "Cousine Bold");
        fontfileMapping("Courier New,BoldItalic", "Cousine Bold Italic");
        fontfileMapping("Courier New,Italic", "Cousine Italic");
        fontfileMapping("Courier New-Bold", "Cousine Bold");
        fontfileMapping("Courier New-BoldItalic", "Cousine Bold Italic");
        fontfileMapping("Courier New-Italic", "Cousine Italic");
        fontfileMapping("CourierNew", "Cousine");
        fontfileMapping("CourierNew Bold", "Cousine Bold");
        fontfileMapping("CourierNew BoldItalic", "Cousine Bold Italic");
        fontfileMapping("CourierNew Italic", "Cousine Italic");
        fontfileMapping("CourierNew,Bold", "Cousine Bold");
        fontfileMapping("CourierNew,BoldItalic", "Cousine Bold Italic");
        fontfileMapping("CourierNew,Italic", "Cousine Italic");
        fontfileMapping("CourierNew-Bold", "Cousine Bold");
        fontfileMapping("CourierNew-BoldItalic", "Cousine Bold Italic");
        fontfileMapping("CourierNew-Italic", "Cousine Italic");
        fontfileMapping("Symbol", "Symbol Neu for Powerline");
        fontfileMapping("Symbol,Bold", "Symbol Neu for Powerline");
        fontfileMapping("Symbol,BoldItalic", "Symbol Neu for Powerline");
        fontfileMapping("Symbol,Italic", "Symbol Neu for Powerline");
        int faceCount = getFaceCount();
        String str4 = null;
        for (int i2 = 0; i2 < faceCount; i2++) {
            str4 = getFaceName(i2);
            if (str4 != null) {
                break;
            }
        }
        if (!setDefaultFont((String) null, "Arimo", true) && !setDefaultFont((String) null, "DroidSansFallback", true) && str4 != null) {
            setDefaultFont((String) null, str4, true);
        }
        if (!setDefaultFont((String) null, "Arimo", false) && !setDefaultFont((String) null, "DroidSansFallback", false) && str4 != null) {
            setDefaultFont((String) null, str4, false);
        }
        if (!setDefaultFont("GB1", "DroidSansFallback", true) && !setDefaultFont("GB1", "Noto Sans SC Regular", true) && str4 != null) {
            setDefaultFont((String) null, str4, true);
        }
        if (!setDefaultFont("GB1", "DroidSansFallback", false) && !setDefaultFont("GB1", "Noto Sans SC Regular", false) && str4 != null) {
            setDefaultFont((String) null, str4, false);
        }
        if (!setDefaultFont("CNS1", "DroidSansFallback", true) && !setDefaultFont("CNS1", "Noto Sans TC Regular", true) && str4 != null) {
            setDefaultFont((String) null, str4, true);
        }
        if (!setDefaultFont("CNS1", "DroidSansFallback", false) && !setDefaultFont("CNS1", "Noto Sans TC Regular", false) && str4 != null) {
            setDefaultFont((String) null, str4, false);
        }
        if (!setDefaultFont("Japan1", "DroidSansFallback", true) && !setDefaultFont("Japan1", "Noto Sans JP Regular", true) && str4 != null) {
            setDefaultFont((String) null, str4, true);
        }
        if (!setDefaultFont("Japan1", "DroidSansFallback", false) && !setDefaultFont("Japan1", "Noto Sans JP Regular", false) && str4 != null) {
            setDefaultFont((String) null, str4, false);
        }
        if (!setDefaultFont("Korea1", "DroidSansFallback", true) && !setDefaultFont("Korea1", "Noto Sans KR Regular", true) && str4 != null) {
            setDefaultFont((String) null, str4, true);
        }
        if (!setDefaultFont("Korea1", "DroidSansFallback", false) && !setDefaultFont("Korea1", "Noto Sans KR Regular", false) && str4 != null) {
            setDefaultFont((String) null, str4, false);
        }
        if (!setAnnotFont("DroidSansFallback") && !setAnnotFont("Arimo") && str4 != null) {
            setAnnotFont(str4);
        }
        h = 1073742016;
        i = 1073742079;
        j = 1077952576;
        n = 1.0f;
        o = 0.1f;
        p = 0;
        q = recommandedRenderMode();
        r = false;
        l = 3.0f;
        t = true;
        u = true;
        setAnnotTransparency(536887551);
        return w;
    }

    private static native boolean activePremium(ContextWrapper contextWrapper, String str, String str2, String str3);

    private static native boolean activePremiumForVer(ContextWrapper contextWrapper, String str, String str2, String str3);

    private static native boolean activePremiumTitanium(ContextWrapper contextWrapper, String str, String str2, String str3);

    private static native boolean activeProfessional(ContextWrapper contextWrapper, String str, String str2, String str3);

    private static native boolean activeProfessionalForVer(ContextWrapper contextWrapper, String str, String str2, String str3);

    private static native boolean activeProfessionalTitanium(ContextWrapper contextWrapper, String str, String str2, String str3);

    private static native boolean activeStandard(ContextWrapper contextWrapper, String str, String str2, String str3);

    private static native boolean activeStandardForVer(ContextWrapper contextWrapper, String str, String str2, String str3);

    private static native boolean activeStandardTitanium(ContextWrapper contextWrapper, String str, String str2, String str3);

    private static native boolean activeTime(ContextWrapper contextWrapper, String str, String str2, String str3, String str4, String str5);

    private static void b(Resources resources, int i2, File file) {
        a(resources, i2, file);
        loadStdFont(13, file.getPath());
    }

    private static void c(Resources resources, int i2, File file) {
        a(resources, i2, file);
        fontfileListAdd(file.getPath());
    }

    private static boolean d(Resources resources, int i2, File file) {
        a(resources, i2, file);
        return setCMYKICCPath(file.getPath());
    }

    private static native void drawScroll(Bitmap bitmap, long j2, long j3, int i2, int i3, int i4);

    private static native void fontfileListAdd(String str);

    private static native void fontfileListEnd();

    private static native void fontfileListStart();

    private static native boolean fontfileMapping(String str, String str2);

    private static native int getFaceCount();

    private static native String getFaceName(int i2);

    private static native String getVersion();

    private static native void hideAnnots(boolean z);

    private static native void loadStdFont(int i2, String str);

    private static native int recommandedRenderMode();

    private static native boolean setAnnotFont(String str);

    private static native void setAnnotTransparency(int i2);

    private static native boolean setCMYKICCPath(String str);

    private static native void setCMapsPath(String str, String str2);

    private static native boolean setDefaultFont(String str, String str2, boolean z);

    public static native float sqrtf(float f2);

    private static native void toDIBPoint(long j2, float[] fArr, float[] fArr2);

    private static native void toDIBRect(long j2, float[] fArr, float[] fArr2);

    private static native void toPDFPoint(long j2, float[] fArr, float[] fArr2);

    private static native void toPDFRect(long j2, float[] fArr, float[] fArr2);
}
