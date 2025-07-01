// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import java.io.File;

public class e
{

    private static final String DIR_ANDROID = "Android";
    private static final String DIR_CACHE = "cache";
    private static final String DIR_DATA = "data";
    private static final String DIR_FILES = "files";
    private static final String DIR_OBB = "obb";
    private static final String TAG = "ContextCompat";

    public e()
    {
    }

    private static transient File buildPath(File file, String as[])
    {
        int j = as.length;
        int i = 0;
        while (i < j) 
        {
            String s = as[i];
            if (file == null)
            {
                file = new File(s);
            } else
            if (s != null)
            {
                file = new File(file, s);
            }
            i++;
        }
        return file;
    }

    private static File createFilesDir(File file)
    {
        e;
        JVM INSTR monitorenter ;
        File file1 = file;
        if (file.exists()) goto _L2; else goto _L1
_L1:
        file1 = file;
        if (file.mkdirs()) goto _L2; else goto _L3
_L3:
        boolean flag = file.exists();
        if (!flag) goto _L5; else goto _L4
_L4:
        file1 = file;
_L2:
        e;
        JVM INSTR monitorexit ;
        return file1;
_L5:
        Log.w("ContextCompat", (new StringBuilder("Unable to create files subdir ")).append(file.getPath()).toString());
        file1 = null;
        if (true) goto _L2; else goto _L6
_L6:
        file;
        throw file;
    }

    public static final Drawable getDrawable(Context context, int i)
    {
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            return context.getDrawable(i);
        } else
        {
            return context.getResources().getDrawable(i);
        }
    }

    public static File[] getExternalCacheDirs(Context context)
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 19)
        {
            return context.getExternalCacheDirs();
        }
        if (i >= 8)
        {
            context = context.getExternalCacheDir();
        } else
        {
            context = buildPath(Environment.getExternalStorageDirectory(), new String[] {
                "Android", "data", context.getPackageName(), "cache"
            });
        }
        return (new File[] {
            context
        });
    }

    public static File[] getExternalFilesDirs(Context context, String s)
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 19)
        {
            return context.getExternalFilesDirs(s);
        }
        if (i >= 8)
        {
            context = context.getExternalFilesDir(s);
        } else
        {
            context = buildPath(Environment.getExternalStorageDirectory(), new String[] {
                "Android", "data", context.getPackageName(), "files", s
            });
        }
        return (new File[] {
            context
        });
    }

    public static File[] getObbDirs(Context context)
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 19)
        {
            return context.getObbDirs();
        }
        if (i >= 11)
        {
            context = context.getObbDir();
        } else
        {
            context = buildPath(Environment.getExternalStorageDirectory(), new String[] {
                "Android", "obb", context.getPackageName()
            });
        }
        return (new File[] {
            context
        });
    }

    public static boolean startActivities(Context context, Intent aintent[])
    {
        return startActivities(context, aintent, null);
    }

    public static boolean startActivities(Context context, Intent aintent[], Bundle bundle)
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 16)
        {
            context.startActivities(aintent, bundle);
            return true;
        }
        if (i >= 11)
        {
            context.startActivities(aintent);
            return true;
        } else
        {
            return false;
        }
    }

    public final File getCodeCacheDir(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            return context.getCodeCacheDir();
        } else
        {
            return createFilesDir(new File(context.getApplicationInfo().dataDir, "code_cache"));
        }
    }

    public final File getNoBackupFilesDir(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            return context.getNoBackupFilesDir();
        } else
        {
            return createFilesDir(new File(context.getApplicationInfo().dataDir, "no_backup"));
        }
    }
}
