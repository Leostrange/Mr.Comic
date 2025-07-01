// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class gz
{

    public static boolean a = a();
    private static final String b = gz.getName();

    public gz()
    {
    }

    public static int a(String s, String s1)
    {
        return Log.d(s, s1);
    }

    public static int a(String s, String s1, String s2)
    {
        String s3 = s;
        if (s == null)
        {
            s3 = "NULL_TAG";
        }
        byte byte0;
        if (a)
        {
            byte0 = 4;
        } else
        if (gy.a() && Log.isLoggable("com.amazon.identity.pii", 3))
        {
            byte0 = 3;
        } else
        if (!gy.a())
        {
            byte0 = 3;
        } else
        {
            s2 = "<obscured>";
            byte0 = 3;
        }
        if (byte0 == 4)
        {
            return Log.i((new StringBuilder()).append(s3).append(".PII").toString(), e(s1, s2));
        } else
        {
            return Log.d((new StringBuilder()).append(s3).append(".PII").toString(), e(s1, s2));
        }
    }

    public static int a(String s, String s1, Throwable throwable)
    {
        return Log.e(s, s1, throwable);
    }

    private static boolean a()
    {
        boolean flag1 = false;
        String s;
        s = android.os.Build.VERSION.INCREMENTAL;
        if (!TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_24;
        }
        Log.w(b, "Incremental version was empty");
        return false;
        Object obj;
        obj = Pattern.compile("^(?:(.*?)_)??(?:([^_]*)_)?([0-9]+)$");
        a(b, "Extracting verison incremental", (new StringBuilder("Build.VERSION.INCREMENTAL: ")).append(s).toString());
        obj = ((Pattern) (obj)).matcher(s);
        if (((Matcher) (obj)).find())
        {
            break MISSING_BLOCK_LABEL_110;
        }
        a(b, "Incremental version '%s' was in invalid format.", (new StringBuilder("ver=")).append(s).toString());
        Exception exception;
        return false;
        if (((Matcher) (obj)).groupCount() >= 3)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        Log.e(b, "Error parsing build version string.");
        return false;
        boolean flag;
        try
        {
            exception = ((Matcher) (obj)).group(2);
            a(b, "Extracting flavor", (new StringBuilder("Build flavor: ")).append(exception).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            Log.e(b, exception.getMessage(), exception);
            return false;
        }
        flag = flag1;
        if (TextUtils.isEmpty(exception))
        {
            break MISSING_BLOCK_LABEL_200;
        }
        if (exception.equals("userdebug"))
        {
            break MISSING_BLOCK_LABEL_189;
        }
        flag = flag1;
        if (!exception.equals("eng"))
        {
            break MISSING_BLOCK_LABEL_200;
        }
        Log.i(b, "MAP is running on 1st party debug");
        flag = true;
        return flag;
    }

    public static int b(String s, String s1)
    {
        return Log.e(s, s1);
    }

    public static int b(String s, String s1, Throwable throwable)
    {
        return Log.w(s, s1, throwable);
    }

    public static int c(String s, String s1)
    {
        return Log.i(s, s1);
    }

    public static int d(String s, String s1)
    {
        return Log.w(s, s1);
    }

    private static String e(String s, String s1)
    {
        s = new StringBuffer(s);
        if (!TextUtils.isEmpty(s1))
        {
            s.append(":");
            s.append(s1);
        }
        return s.toString();
    }

}
