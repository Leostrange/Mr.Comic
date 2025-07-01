// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
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
import meanlabs.comicreader.ComicReaderApp;

public final class agv
{

    public static int a(String s, String s1)
    {
        boolean flag = false;
        if (s.length() == s1.length()) goto _L2; else goto _L1
_L1:
        int j = agk.a(s, s1);
_L4:
        return j;
_L2:
        int l = s.length();
        int k = 0;
        do
        {
            j = ((flag) ? 1 : 0);
            if (k >= l)
            {
                continue;
            }
            char c1 = s.charAt(k);
            char c2 = s1.charAt(k);
            if (c1 != c2 && Character.toLowerCase(c1) != Character.toLowerCase(c2))
            {
                return c1 - c2;
            }
            k++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static int a(CharSequence acharsequence[], String s)
    {
        for (int j = 0; j < acharsequence.length; j++)
        {
            if (acharsequence[j].equals(s))
            {
                return j;
            }
        }

        return -1;
    }

    public static int a(String as[], String s)
    {
        for (int j = 0; j < as.length; j++)
        {
            if (as[j].equals(s))
            {
                return j;
            }
        }

        return -1;
    }

    public static long a(List list)
    {
        list = list.iterator();
        long l = 0L;
        do
        {
            if (!list.hasNext())
            {
                break;
            }
            File file = new File(((aeq)list.next()).d);
            if (file.exists())
            {
                l = file.length() + l;
            }
        } while (true);
        return l;
    }

    public static String a(double d1)
    {
        if (d1 == 0.0D)
        {
            return "0";
        } else
        {
            return (new DecimalFormat("0.00")).format(d1);
        }
    }

    public static String a(int j)
    {
        StringBuilder stringbuilder;
        Object obj;
        obj = new BufferedReader(new InputStreamReader(ComicReaderApp.a().getResources().openRawResource(j)));
        stringbuilder = new StringBuilder();
_L2:
        String s = ((BufferedReader) (obj)).readLine();
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append(s);
        stringbuilder.append('\n');
        if (true) goto _L2; else goto _L1
_L4:
        return stringbuilder.toString();
_L1:
        try
        {
            ((BufferedReader) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((IOException) (obj)).printStackTrace();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String a(long l)
    {
        String s = "Bytes";
        double d2 = l;
        double d1 = d2;
        if (d2 > 1024D)
        {
            d1 = d2 / 1024D;
            s = "KB";
        }
        d2 = d1;
        if (d1 > 1024D)
        {
            d2 = d1 / 1024D;
            s = "MB";
        }
        d1 = d2;
        if (d2 > 1024D)
        {
            d1 = d2 / 1024D;
            s = "GB";
        }
        return (new StringBuilder()).append(a(d1)).append(s).toString();
    }

    public static String a(Activity activity, long l)
    {
        activity = activity.getString(0x7f06014d);
        if (l > 0L)
        {
            activity = new Date();
            activity.setTime(l);
            activity = DateFormat.getDateTimeInstance(3, 3).format(activity);
        }
        return activity;
    }

    public static String a(Activity activity, String s)
    {
        long l1 = 0L;
        long l = l1;
        if (s != null)
        {
            l = l1;
            if (s.length() > 0)
            {
                try
                {
                    l = Long.parseLong(s);
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    s.printStackTrace();
                    l = l1;
                }
            }
        }
        return a(activity, l);
    }

    public static String a(File file)
    {
        StringBuffer stringbuffer = new StringBuffer((int)file.length());
        file = new BufferedReader(new FileReader(file));
_L3:
        String s = file.readLine();
        if (s == null) goto _L2; else goto _L1
_L1:
        stringbuffer.append(s);
        stringbuffer.append("\n");
          goto _L3
_L5:
        return stringbuffer.toString();
_L2:
        try
        {
            file.close();
            stringbuffer.deleteCharAt(stringbuffer.length() - 1);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static String a(Exception exception)
    {
        Object obj = exception.getCause();
        if (obj != null)
        {
            exception = ((Throwable) (obj)).getMessage();
        } else
        {
            exception = exception.getMessage();
        }
        obj = exception;
        if (exception != null)
        {
            int j = exception.indexOf("Exception: ");
            obj = exception;
            if (j != -1)
            {
                obj = exception.substring(j + 11).trim();
            }
        }
        if (obj != null)
        {
            return ((String) (obj));
        } else
        {
            return "";
        }
    }

    public static String a(String s)
    {
        String s1 = null;
        int j = s.lastIndexOf('.');
        if (j != -1)
        {
            s = s.substring(j + 1);
            s1 = s;
            if (s != null)
            {
                s1 = s.toLowerCase().trim();
            }
        }
        return s1;
    }

    public static void a(Activity activity)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder("ComiCat App Version: ")).append(d()).append("\n").toString());
        stringbuilder.append((new StringBuilder("Device: ")).append(Build.MODEL).append("\n").toString());
        stringbuilder.append((new StringBuilder("Architecture: ")).append(Build.CPU_ABI).append("\n").toString());
        stringbuilder.append((new StringBuilder("SDK: ")).append(android.os.Build.VERSION.SDK_INT).append("\n").toString());
        stringbuilder.append("\n");
        (new agu("support@meanlabs.com", activity.getString(0x7f060051), stringbuilder.toString())).a(activity);
    }

    public static void a(Context context, String s)
    {
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(s));
            context.startActivity(intent);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    public static boolean a()
    {
        Context context = ComicReaderApp.a();
        return context.getPackageManager().checkPermission("android.permission.SET_WALLPAPER", context.getPackageName()) == 0;
    }

    public static long b()
    {
        return (long)(int)(Runtime.getRuntime().maxMemory() / 0x100000L);
    }

    public static String b(String s)
    {
        String s1 = s;
        if (s.endsWith(File.separator))
        {
            s1 = s.substring(0, s.length() - 1);
        }
        int j = s1.lastIndexOf(File.separatorChar) + 1;
        int k;
        if (j == -1)
        {
            j = 0;
        }
        k = s1.lastIndexOf('.');
        if (k == -1)
        {
            k = s1.length();
        }
        return s1.substring(j, k);
    }

    public static String c(String s)
    {
        String s2 = "";
        int j = s.lastIndexOf(File.separatorChar);
        String s1 = s2;
        if (j != -1)
        {
            if (j != 0)
            {
                s1 = s.substring(0, j);
            } else
            {
                s1 = s2;
                if (s.length() > 1)
                {
                    return File.separator;
                }
            }
        }
        return s1;
    }

    public static boolean c()
    {
        return b() >= 48L;
    }

    public static String d()
    {
        Object obj;
        try
        {
            obj = ComicReaderApp.a();
            obj = ((Context) (obj)).getPackageManager().getPackageInfo(((Context) (obj)).getPackageName(), 0).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.getMessage();
            return "Unknown";
        }
        return ((String) (obj));
    }

    public static String d(String s)
    {
        Object obj = new File(s);
        try
        {
            obj = ((File) (obj)).getCanonicalPath();
        }
        catch (IOException ioexception)
        {
            return s;
        }
        return ((String) (obj));
    }

    public static int e()
    {
        int j;
        try
        {
            Context context = ComicReaderApp.a();
            j = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.getMessage();
            return 0;
        }
        return j;
    }

    public static File f()
    {
        Object obj;
        File file;
        obj = ComicReaderApp.a();
        if (android.os.Build.VERSION.SDK_INT < 8)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        file = ((Context) (obj)).getExternalCacheDir();
        obj = file;
        if (file.exists())
        {
            break MISSING_BLOCK_LABEL_33;
        }
        obj = file;
        file.mkdirs();
        return file;
        file = new File(Environment.getExternalStorageDirectory(), (new StringBuilder("/Android/data/")).append(((Context) (obj)).getApplicationInfo().packageName).append("/cache/").toString());
        obj = file;
        file.mkdirs();
        return file;
        Exception exception;
        exception;
_L2:
        exception.printStackTrace();
        return ((File) (obj));
        exception;
        obj = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean g()
    {
        return ComicReaderApp.a().getPackageName().equals("meanlabs.comicat");
    }

    public static boolean h()
    {
        return android.os.Build.VERSION.SDK_INT >= 11;
    }

    public static boolean i()
    {
        return android.os.Build.VERSION.SDK_INT >= 19;
    }
}
