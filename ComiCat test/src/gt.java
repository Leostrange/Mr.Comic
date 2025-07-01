// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public final class gt
{

    public static final Executor a = Executors.newCachedThreadPool(new ThreadFactory() {

        public final Thread newThread(Runnable runnable)
        {
            return new Thread(runnable, (new StringBuilder("AmazonAuthorzationLibrary#")).append(gt.b()).toString());
        }

    });
    private static int b = 0;

    public static boolean a()
    {
        return Looper.getMainLooper() != null && Looper.getMainLooper() == Looper.myLooper();
    }

    static int b()
    {
        int i = b + 1;
        b = i;
        return i;
    }

}
