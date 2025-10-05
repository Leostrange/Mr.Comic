package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import java.io.File;

/* renamed from: e  reason: default package */
/* compiled from: ContextCompat */
public class e {
    private static final String DIR_ANDROID = "Android";
    private static final String DIR_CACHE = "cache";
    private static final String DIR_DATA = "data";
    private static final String DIR_FILES = "files";
    private static final String DIR_OBB = "obb";
    private static final String TAG = "ContextCompat";

    private static File buildPath(File file, String... strArr) {
        int length = strArr.length;
        int i = 0;
        File file2 = file;
        while (i < length) {
            String str = strArr[i];
            i++;
            file2 = file2 == null ? new File(str) : str != null ? new File(file2, str) : file2;
        }
        return file2;
    }

    private static synchronized File createFilesDir(File file) {
        synchronized (e.class) {
            if (!file.exists() && !file.mkdirs() && !file.exists()) {
                Log.w(TAG, "Unable to create files subdir " + file.getPath());
                file = null;
            }
        }
        return file;
    }

    public static final Drawable getDrawable(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? context.getDrawable(i) : context.getResources().getDrawable(i);
    }

    public static File[] getExternalCacheDirs(Context context) {
        File buildPath;
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return context.getExternalCacheDirs();
        }
        if (i >= 8) {
            buildPath = context.getExternalCacheDir();
        } else {
            buildPath = buildPath(Environment.getExternalStorageDirectory(), DIR_ANDROID, DIR_DATA, context.getPackageName(), DIR_CACHE);
        }
        return new File[]{buildPath};
    }

    public static File[] getExternalFilesDirs(Context context, String str) {
        File buildPath;
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return context.getExternalFilesDirs(str);
        }
        if (i >= 8) {
            buildPath = context.getExternalFilesDir(str);
        } else {
            buildPath = buildPath(Environment.getExternalStorageDirectory(), DIR_ANDROID, DIR_DATA, context.getPackageName(), DIR_FILES, str);
        }
        return new File[]{buildPath};
    }

    public static File[] getObbDirs(Context context) {
        File buildPath;
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return context.getObbDirs();
        }
        if (i >= 11) {
            buildPath = context.getObbDir();
        } else {
            buildPath = buildPath(Environment.getExternalStorageDirectory(), DIR_ANDROID, DIR_OBB, context.getPackageName());
        }
        return new File[]{buildPath};
    }

    public static boolean startActivities(Context context, Intent[] intentArr) {
        return startActivities(context, intentArr, (Bundle) null);
    }

    public static boolean startActivities(Context context, Intent[] intentArr, Bundle bundle) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 16) {
            context.startActivities(intentArr, bundle);
            return true;
        } else if (i < 11) {
            return false;
        } else {
            context.startActivities(intentArr);
            return true;
        }
    }

    public final File getCodeCacheDir(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? context.getCodeCacheDir() : createFilesDir(new File(context.getApplicationInfo().dataDir, "code_cache"));
    }

    public final File getNoBackupFilesDir(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? context.getNoBackupFilesDir() : createFilesDir(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }
}
