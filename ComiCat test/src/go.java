// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.os.Bundle;
import java.io.IOException;
import java.util.Arrays;

public class go
{

    private static final String a = go.getName();

    public go()
    {
    }

    private static String a(Context context)
    {
        try
        {
            context = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            gz.d(a, (new StringBuilder("Unable to get verison info from app")).append(context.getMessage()).toString());
            return "N/A";
        }
        return context;
    }

    public static ga[] a(String s, String s1, String s2, String s3, String as[], Context context)
    {
        gz.c(a, (new StringBuilder("getAccessAuthorizationToken : appId=")).append(s3).append(", scopes=").append(Arrays.toString(as)).toString());
        if (((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo() == null)
        {
            throw new IOException("Network is not available!");
        } else
        {
            s = (gm)(new gl(b(context), a(context), "1.0.1", new Bundle(), s, s1, s3, s2, context)).e();
            s.b();
            return s.c();
        }
    }

    private static String b(Context context)
    {
        PackageManager packagemanager = context.getApplicationContext().getPackageManager();
        android.content.pm.ApplicationInfo applicationinfo;
        try
        {
            applicationinfo = packagemanager.getApplicationInfo(context.getPackageName(), 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception = null;
        }
        if (applicationinfo != null)
        {
            context = packagemanager.getApplicationLabel(applicationinfo);
        } else
        {
            context = context.getPackageName();
        }
        return (String)(String)context;
    }

}
