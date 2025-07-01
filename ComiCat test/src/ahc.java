// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Environment;
import android.os.StatFs;
import android.text.format.Time;
import java.io.File;

public final class ahc
{

    public static long a()
    {
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = statfs.getAvailableBlocks();
        return (long)statfs.getBlockSize() * l;
    }

    public static long a(File file)
    {
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            return file.getUsableSpace();
        } else
        {
            return a();
        }
    }

    public static long b()
    {
        Time time = new Time();
        time.setToNow();
        return time.toMillis(false);
    }
}
