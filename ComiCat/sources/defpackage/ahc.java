package defpackage;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.format.Time;
import java.io.File;

/* renamed from: ahc  reason: default package */
/* compiled from: SystemUtils */
public final class ahc {
    public static long a() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
    }

    @SuppressLint({"NewApi"})
    public static long a(File file) {
        return Build.VERSION.SDK_INT >= 9 ? file.getUsableSpace() : a();
    }

    public static long b() {
        Time time = new Time();
        time.setToNow();
        return time.toMillis(false);
    }
}
