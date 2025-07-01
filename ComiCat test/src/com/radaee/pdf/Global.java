// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class Global
{

    public static int a = 2;
    public static String b = "radaee";
    public static String c = "radaee_com@yahoo.cn";
    public static String d = "LNJFDN-C89QFX-9ZOU9E-OQ31K2-FADG6Z-XEBCAO";
    public static int e = 0x80404040;
    public static float f = 4F;
    public static int g = 0x80c00000;
    public static int h = 0x400000c0;
    public static int i = 0x400000ff;
    public static int j = 0x40404040;
    public static boolean k = false;
    public static float l = 3F;
    public static float m = 1.0F;
    public static float n = 1.0F;
    public static float o = 0.2F;
    public static int p = 0;
    public static int q = 2;
    public static boolean r = false;
    public static String s = null;
    public static boolean t = true;
    public static boolean u = true;
    public static boolean v = true;
    private static boolean w = false;

    public Global()
    {
    }

    private static void a(Resources resources, int i1, File file)
    {
        if (file.exists())
        {
            break MISSING_BLOCK_LABEL_58;
        }
        byte abyte0[];
        abyte0 = new byte[4096];
        resources = resources.openRawResource(i1);
        file = new FileOutputStream(file);
_L1:
        i1 = resources.read(abyte0);
        if (i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        file.write(abyte0, 0, i1);
          goto _L1
        try
        {
            file.close();
            resources.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Resources resources) { }
    }

    private static void a(Resources resources, int i1, File file, int j1, File file1)
    {
        a(resources, i1, file);
        a(resources, j1, file1);
        setCMapsPath(file.getPath(), file1.getPath());
    }

    public static boolean a(Activity activity, String s1, String s2, String s3)
    {
        if (w)
        {
            return true;
        }
        if (activity == null)
        {
            return false;
        }
        System.loadLibrary("rdpdf");
        File file1 = new File(activity.getFilesDir(), "rdres");
        if (!file1.exists())
        {
            file1.mkdir();
        }
        Resources resources = activity.getResources();
        b(resources, tz.a.rdf013, new File(file1, "rdf013"));
        d(resources, tz.a.cmyk_rgb, new File(file1, "cmyk_rgb"));
        a(resources, tz.a.cmaps, new File(file1, "cmaps"), tz.a.umaps, new File(file1, "umaps"));
        File file = Environment.getExternalStorageDirectory();
        int i1;
        int j1;
        if (file != null && Environment.getExternalStorageState().equals("mounted"))
        {
            file = new File(file, "rdtmp");
        } else
        {
            file = new File(activity.getFilesDir(), "rdtmp");
        }
        if (!file.exists())
        {
            file.mkdir();
        }
        s = file.getPath();
        w = activeStandard(activity, s1, s2, s3);
        fontfileListStart();
        fontfileListAdd("/system/fonts/DroidSans.ttf");
        fontfileListAdd("/system/fonts/Roboto-Regular.ttf");
        fontfileListAdd("/system/fonts/DroidSansFallback.ttf");
        fontfileListAdd("/system/fonts/NotoSansSC-Regular.otf");
        fontfileListAdd("/system/fonts/NotoSansTC-Regular.otf");
        fontfileListAdd("/system/fonts/NotoSansJP-Regular.otf");
        fontfileListAdd("/system/fonts/NotoSansKR-Regular.otf");
        c(resources, tz.a.arimo, new File(file1, "arimo.ttf"));
        c(resources, tz.a.arimob, new File(file1, "arimob.ttf"));
        c(resources, tz.a.arimoi, new File(file1, "arimoi.ttf"));
        c(resources, tz.a.arimobi, new File(file1, "arimobi.ttf"));
        c(resources, tz.a.tinos, new File(file1, "tinos.ttf"));
        c(resources, tz.a.tinosb, new File(file1, "tinosb.ttf"));
        c(resources, tz.a.tinosi, new File(file1, "tinosi.ttf"));
        c(resources, tz.a.tinosbi, new File(file1, "tinosbi.ttf"));
        c(resources, tz.a.cousine, new File(file1, "cousine.ttf"));
        c(resources, tz.a.cousineb, new File(file1, "cousineb.ttf"));
        c(resources, tz.a.cousinei, new File(file1, "cousinei.ttf"));
        c(resources, tz.a.cousinebi, new File(file1, "cousinebi.ttf"));
        c(resources, tz.a.symbol, new File(file1, "symbol.ttf"));
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
        j1 = getFaceCount();
        i1 = 0;
        activity = null;
        do
        {
            s1 = activity;
            if (i1 >= j1)
            {
                break;
            }
            activity = getFaceName(i1);
            s1 = activity;
            if (activity != null)
            {
                break;
            }
            i1++;
        } while (true);
        if (!setDefaultFont(null, "Arimo", true) && !setDefaultFont(null, "DroidSansFallback", true) && s1 != null)
        {
            setDefaultFont(null, s1, true);
        }
        if (!setDefaultFont(null, "Arimo", false) && !setDefaultFont(null, "DroidSansFallback", false) && s1 != null)
        {
            setDefaultFont(null, s1, false);
        }
        if (!setDefaultFont("GB1", "DroidSansFallback", true) && !setDefaultFont("GB1", "Noto Sans SC Regular", true) && s1 != null)
        {
            setDefaultFont(null, s1, true);
        }
        if (!setDefaultFont("GB1", "DroidSansFallback", false) && !setDefaultFont("GB1", "Noto Sans SC Regular", false) && s1 != null)
        {
            setDefaultFont(null, s1, false);
        }
        if (!setDefaultFont("CNS1", "DroidSansFallback", true) && !setDefaultFont("CNS1", "Noto Sans TC Regular", true) && s1 != null)
        {
            setDefaultFont(null, s1, true);
        }
        if (!setDefaultFont("CNS1", "DroidSansFallback", false) && !setDefaultFont("CNS1", "Noto Sans TC Regular", false) && s1 != null)
        {
            setDefaultFont(null, s1, false);
        }
        if (!setDefaultFont("Japan1", "DroidSansFallback", true) && !setDefaultFont("Japan1", "Noto Sans JP Regular", true) && s1 != null)
        {
            setDefaultFont(null, s1, true);
        }
        if (!setDefaultFont("Japan1", "DroidSansFallback", false) && !setDefaultFont("Japan1", "Noto Sans JP Regular", false) && s1 != null)
        {
            setDefaultFont(null, s1, false);
        }
        if (!setDefaultFont("Korea1", "DroidSansFallback", true) && !setDefaultFont("Korea1", "Noto Sans KR Regular", true) && s1 != null)
        {
            setDefaultFont(null, s1, true);
        }
        if (!setDefaultFont("Korea1", "DroidSansFallback", false) && !setDefaultFont("Korea1", "Noto Sans KR Regular", false) && s1 != null)
        {
            setDefaultFont(null, s1, false);
        }
        if (!setAnnotFont("DroidSansFallback") && !setAnnotFont("Arimo") && s1 != null)
        {
            setAnnotFont(s1);
        }
        h = 0x400000c0;
        i = 0x400000ff;
        j = 0x40404040;
        n = 1.0F;
        o = 0.1F;
        p = 0;
        q = recommandedRenderMode();
        r = false;
        l = 3F;
        t = true;
        u = true;
        setAnnotTransparency(0x200040ff);
        return w;
    }

    private static native boolean activePremium(ContextWrapper contextwrapper, String s1, String s2, String s3);

    private static native boolean activePremiumForVer(ContextWrapper contextwrapper, String s1, String s2, String s3);

    private static native boolean activePremiumTitanium(ContextWrapper contextwrapper, String s1, String s2, String s3);

    private static native boolean activeProfessional(ContextWrapper contextwrapper, String s1, String s2, String s3);

    private static native boolean activeProfessionalForVer(ContextWrapper contextwrapper, String s1, String s2, String s3);

    private static native boolean activeProfessionalTitanium(ContextWrapper contextwrapper, String s1, String s2, String s3);

    private static native boolean activeStandard(ContextWrapper contextwrapper, String s1, String s2, String s3);

    private static native boolean activeStandardForVer(ContextWrapper contextwrapper, String s1, String s2, String s3);

    private static native boolean activeStandardTitanium(ContextWrapper contextwrapper, String s1, String s2, String s3);

    private static native boolean activeTime(ContextWrapper contextwrapper, String s1, String s2, String s3, String s4, String s5);

    private static void b(Resources resources, int i1, File file)
    {
        a(resources, i1, file);
        loadStdFont(13, file.getPath());
    }

    private static void c(Resources resources, int i1, File file)
    {
        a(resources, i1, file);
        fontfileListAdd(file.getPath());
    }

    private static boolean d(Resources resources, int i1, File file)
    {
        a(resources, i1, file);
        return setCMYKICCPath(file.getPath());
    }

    private static native void drawScroll(Bitmap bitmap, long l1, long l2, int i1, int j1, int k1);

    private static native void fontfileListAdd(String s1);

    private static native void fontfileListEnd();

    private static native void fontfileListStart();

    private static native boolean fontfileMapping(String s1, String s2);

    private static native int getFaceCount();

    private static native String getFaceName(int i1);

    private static native String getVersion();

    private static native void hideAnnots(boolean flag);

    private static native void loadStdFont(int i1, String s1);

    private static native int recommandedRenderMode();

    private static native boolean setAnnotFont(String s1);

    private static native void setAnnotTransparency(int i1);

    private static native boolean setCMYKICCPath(String s1);

    private static native void setCMapsPath(String s1, String s2);

    private static native boolean setDefaultFont(String s1, String s2, boolean flag);

    public static native float sqrtf(float f1);

    private static native void toDIBPoint(long l1, float af[], float af1[]);

    private static native void toDIBRect(long l1, float af[], float af1[]);

    private static native void toPDFPoint(long l1, float af[], float af1[]);

    private static native void toPDFRect(long l1, float af[], float af1[]);

}
